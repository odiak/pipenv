rem imdisk  -a -s 964515b -m R: -p "/FS:NTFS /Y"

virtualenv R:\.venv
R:\.venv\Scripts\pip install -e . --upgrade --upgrade-strategy=only-if-needed
R:\.venv\Scripts\pipenv install --dev

SET RAM_DISK=R:&& SET PYPI_VENDOR_DIR=".\tests\pypi\" && R:\.venv\Scripts\pipenv run pytest -n auto -v tests --tap-stream > report.tap

