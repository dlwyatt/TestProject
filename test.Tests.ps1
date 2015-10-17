Describe 'Test' {
    It 'Succeeds' {
        $true | Should Be $true
    }

    It 'Fails' {
        $true | Should Be $false
    }

    It 'Marks an empty test as pending' {
        
    }

    It 'Marks a tagged test as pending' -Pending {
        $true | Should Be $false
    }

    It 'Marks a tagged test as skipped' -Skip {
        $true | Should Be $false
    }

    It 'Marks a test as inconclusive with a message' {
        Set-TestInconclusive -Message 'Message passed to Set-TestInconclusive'
        $true | Should Be $false
    }

    It 'Marks a test as inconclusive without a message' {
        Set-TestInconclusive
        $true | Should Be $false
    }
}