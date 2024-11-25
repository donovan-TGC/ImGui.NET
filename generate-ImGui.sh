#!/usr/bin/env bash

SCRIPT_ROOT=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
rm -f $SCRIPT_ROOT/src/ImGui.NET/Generated/*.cs
mkdir -p "$SCRIPT_ROOT/src/ImGui.NET/Generated"
rm -rf "$SCRIPT_ROOT/generated_ImGui"
$SCRIPT_ROOT/bin/Debug/CodeGenerator/net8.0/CodeGenerator $SCRIPT_ROOT/generated_ImGui
cp $SCRIPT_ROOT/generated_ImGui/*.cs "$SCRIPT_ROOT/src/ImGui.NET/Generated/"

