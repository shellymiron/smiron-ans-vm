#!/bin/bash
echo "Updating packages"
apt-get update

echo "Installing dependencies"
apt-get install -y git ansible python3 python3-pip python3-venv python3-dev

echo "Cleaning up"
apt-get clean
rm -rf /var/lib/apt/lists/*

echo "Creating virtual environment"
python3 -m venv /venv

echo "Upgrading pip"
/venv/bin/pip install --upgrade pip

