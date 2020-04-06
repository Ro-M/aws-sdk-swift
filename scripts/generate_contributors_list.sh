#!/bin/bash
##===----------------------------------------------------------------------===##
##
## This source file is part of the SwiftNIO open source project
##
## Copyright (c) 2017-2018 Apple Inc. and the SwiftNIO project authors
## Licensed under Apache License v2.0
##
## See LICENSE.txt for license information
## See CONTRIBUTORS.txt for the list of SwiftNIO project authors
##
## SPDX-License-Identifier: Apache-2.0
##
##===----------------------------------------------------------------------===##

set -eu
here="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
contributors=$( cd "$here"/.. && git shortlog -es | cut -f2 | sed 's/^/- /' )

git clone https://github.com/swift-aws/aws-sdk-swift-core "$here"/temp_folder
core_contributors=$( cd "$here"/temp_folder && git shortlog -es | cut -f2 | sed 's/^/- /' )
rm -rf "$here"/temp_folder

cat > "$here/../CONTRIBUTORS.txt" <<- EOF
	For the purpose of tracking copyright, this is the list of individuals and
	organizations who have contributed source code to aws-sdk-swift.

	For employees of an organization/company where the copyright of work done
	by employees of that company is held by the company itself, only the company
	needs to be listed here.

	## COPYRIGHT HOLDERS

	### Contributors - AWSSDKSwift

	$contributors

	### Contributors - AWSSDKSwiftCore

	$core_contributors

	**Updating this list**

	Please do not edit this file manually. It is generated using \`./scripts/generate_contributors_list.sh\`. If a name is misspelled or appearing multiple times: add an entry in \`./.mailmap\`
EOF