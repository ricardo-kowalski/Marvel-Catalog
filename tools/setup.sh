#!/bin/bash
# gera todos os arquivos necessários para iniciar o desenvolvimento
# caso tenha problemas com permissão para execução do arquivo use no terminal "chmod +x tools/setup.sh"

set -e # para a execução no primeiro erro
set -x # adiciona, ao log, o output de todos os comandos executados

flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs