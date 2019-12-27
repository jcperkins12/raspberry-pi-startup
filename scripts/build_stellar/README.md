# Building Stellar-Core Binary from Source on Raspberry Pi

## __I have not attempted this yet. These notes are for when I try this at a later date__

Mostly following the instructions at https://github.com/stellar/stellar-core/blob/master/INSTALL.md on 12/27/19

My targeted OS is the [raspbian-nspawn-64](../../os/HowTo_rasbian-nspawn-64.md) and I will be building in the x64 debian Buster Shell


I will be installing the test toolchain instead of using clang and libc++
* My understanding of what is required to use CLANG and libc++ will be commented out in the bash scripts in case I want to try that method in the future
