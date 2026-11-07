#!/usr/bin/env bash

expected='Hello, World!'

if ! output=$(dotnet run --project ./src/MyApp.csproj); then
  echo "❌ Build or run failed." >&2
  exit 1
fi

if [[ "$output" == "$expected" ]]; then
  echo "✅ Test passed!"
  exit 0
fi

printf "❌ Test failed. Expected '%s' but got '%s'\n" "$expected" "$output" >&2
exit 1