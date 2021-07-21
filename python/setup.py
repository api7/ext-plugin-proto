#!/usr/bin/env python
# -*- coding:utf-8 -*-

from setuptools import setup
from setuptools import find_packages

setup(
    name="a6pluginproto",
    version="0.2.0",
    description="Proto of APISIX Python plugin runner.",
    license="Apache License 2.0",
    url="https://github.com/api7/ext-plugin-proto",
    author="Jinchao Shuai",
    author_email="shuaijinchao@apache.org",
    packages=find_packages(),
    install_requires=["flatbuffers", "minicache", "click"]
)
