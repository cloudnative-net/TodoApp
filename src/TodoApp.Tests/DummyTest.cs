using System;
using Shouldly;
using Xunit;

namespace TodoApp.Tests
{
    public class DummyTest
    {
        [Fact]
        public void GivenCalculatorAddIsCalled_WhenIAdd_ThenResultIsAsExpected()
        {
            var result = 2 + 3;
            
            result.ShouldBe(5);
        }
    }
}
