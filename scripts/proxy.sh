#!/bin/sh

export https_proxy=http://127.0.0.1:1080
export http_proxy=http://127.0.0.1:1080
export all_proxy=http://127.0.0.1:1080

$*
