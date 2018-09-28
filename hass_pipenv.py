import sys
import logging
import os
from subprocess import PIPE, Popen
import sys
from typing import Optional

from homeassistant.__main__ import main
from homeassistant.util.package import is_virtual_env

_LOGGER = logging.getLogger(__name__)


def install_package_with_pipenv(package: str, upgrade: bool = True,
                    target: Optional[str] = None,
                    constraints: Optional[str] = None) -> bool:
    """Install a package on PyPi. Accepts pip compatible package strings.
    Return boolean if install successful.
    """
    # Not using 'import pip; pip.main([])' because it breaks the logger
    _LOGGER.info('Attempting install of %s', package)
    env = os.environ.copy()
    args = [sys.executable, '-m', 'pipenv', 'install', package]
    process = Popen(args, stdin=PIPE, stdout=PIPE, stderr=PIPE, env=env)
    _, stderr = process.communicate()
    if process.returncode != 0:
        _LOGGER.error("Unable to install package %s: %s",
                      package, stderr.decode('utf-8').lstrip().strip())
        return False

    return True

from homeassistant import util

util.install_package = install_package_with_pipenv

sys.exit(main())
