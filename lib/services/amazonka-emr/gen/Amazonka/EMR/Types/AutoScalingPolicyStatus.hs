{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.EMR.Types.AutoScalingPolicyStatus
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.EMR.Types.AutoScalingPolicyStatus where

import qualified Amazonka.Core as Core
import Amazonka.EMR.Types.AutoScalingPolicyState
import Amazonka.EMR.Types.AutoScalingPolicyStateChangeReason
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude

-- | The status of an automatic scaling policy.
--
-- /See:/ 'newAutoScalingPolicyStatus' smart constructor.
data AutoScalingPolicyStatus = AutoScalingPolicyStatus'
  { -- | The reason for a change in status.
    stateChangeReason :: Prelude.Maybe AutoScalingPolicyStateChangeReason,
    -- | Indicates the status of the automatic scaling policy.
    state :: Prelude.Maybe AutoScalingPolicyState
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AutoScalingPolicyStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stateChangeReason', 'autoScalingPolicyStatus_stateChangeReason' - The reason for a change in status.
--
-- 'state', 'autoScalingPolicyStatus_state' - Indicates the status of the automatic scaling policy.
newAutoScalingPolicyStatus ::
  AutoScalingPolicyStatus
newAutoScalingPolicyStatus =
  AutoScalingPolicyStatus'
    { stateChangeReason =
        Prelude.Nothing,
      state = Prelude.Nothing
    }

-- | The reason for a change in status.
autoScalingPolicyStatus_stateChangeReason :: Lens.Lens' AutoScalingPolicyStatus (Prelude.Maybe AutoScalingPolicyStateChangeReason)
autoScalingPolicyStatus_stateChangeReason = Lens.lens (\AutoScalingPolicyStatus' {stateChangeReason} -> stateChangeReason) (\s@AutoScalingPolicyStatus' {} a -> s {stateChangeReason = a} :: AutoScalingPolicyStatus)

-- | Indicates the status of the automatic scaling policy.
autoScalingPolicyStatus_state :: Lens.Lens' AutoScalingPolicyStatus (Prelude.Maybe AutoScalingPolicyState)
autoScalingPolicyStatus_state = Lens.lens (\AutoScalingPolicyStatus' {state} -> state) (\s@AutoScalingPolicyStatus' {} a -> s {state = a} :: AutoScalingPolicyStatus)

instance Core.FromJSON AutoScalingPolicyStatus where
  parseJSON =
    Core.withObject
      "AutoScalingPolicyStatus"
      ( \x ->
          AutoScalingPolicyStatus'
            Prelude.<$> (x Core..:? "StateChangeReason")
            Prelude.<*> (x Core..:? "State")
      )

instance Prelude.Hashable AutoScalingPolicyStatus where
  hashWithSalt _salt AutoScalingPolicyStatus' {..} =
    _salt `Prelude.hashWithSalt` stateChangeReason
      `Prelude.hashWithSalt` state

instance Prelude.NFData AutoScalingPolicyStatus where
  rnf AutoScalingPolicyStatus' {..} =
    Prelude.rnf stateChangeReason
      `Prelude.seq` Prelude.rnf state
