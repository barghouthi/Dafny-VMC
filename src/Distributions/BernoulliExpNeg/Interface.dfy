/*******************************************************************************
 *  Copyright by the contributors to the Dafny Project
 *  SPDX-License-Identifier: MIT
 *******************************************************************************/

include "../../Math/Rationals.dfy"
include "../Bernoulli/Bernoulli.dfy"

module BernoulliExpNegInterface {
  import Rationals
  import Bernoulli

  trait {:termination false} Trait extends Bernoulli.Interface.Trait {

    method BernoulliExpNegSample(gamma: Rationals.Rational) returns (c: bool)
      modifies this
      decreases *
      requires gamma.numer >= 0

  }
}
