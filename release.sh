#!/usr/bin/bash

tk_test()
{
    # do this once more, just to be sure...
    perl generate-tasks

    dzil test --release
    if [[ $? -ne 0 ]]; then
        echo "uh oh something went wrong; testing halted"
        return 1
    fi
    for f in Task-Kensho-[A-Z]*/
    do
        pushd $f
        dzil test --release
        if [[ $? -ne 0 ]]; then
            echo "uh oh something went wrong; testing halted"
            popd
            return 1
        fi
        popd
    done
}

tk_release()
{
    # do this once more, just to be sure...
    # releases will be halted if there are any uncommited changes as a result
    # of running this.
    perl generate-tasks

    for f in Task-Kensho-[A-Z]*/
    do
        pushd $f
        dzil release
        if [[ $? -ne 0 ]]; then
            echo "uh oh something went wrong; releases halted"
            popd
            return 1
        fi
        popd
    done
    dzil release
}
