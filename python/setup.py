#!/usr/bin/env python3
# -*- coding:utf-8 -*-

from setuptools import setup
from setuptools import find_packages

setup(
    name="a6pluginprotos",
    version="0.2.0",
    python_requires=">=3.6",
    description="Proto of APISIX Python Plugin Runner.",
    license="Apache License 2.0",
    url="https://github.com/api7/ext-plugin-proto",
    author="Jinchao Shuai",
    author_email="shuaijinchao@apache.org",
    packages=find_packages(),
    install_requires=["flatbuffers"]
)
