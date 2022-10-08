{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.PrivateNetworks.Types.HealthStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.PrivateNetworks.Types.HealthStatus
  ( HealthStatus
      ( ..,
        HealthStatus_HEALTHY,
        HealthStatus_INITIAL,
        HealthStatus_UNHEALTHY
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype HealthStatus = HealthStatus'
  { fromHealthStatus ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern HealthStatus_HEALTHY :: HealthStatus
pattern HealthStatus_HEALTHY = HealthStatus' "HEALTHY"

pattern HealthStatus_INITIAL :: HealthStatus
pattern HealthStatus_INITIAL = HealthStatus' "INITIAL"

pattern HealthStatus_UNHEALTHY :: HealthStatus
pattern HealthStatus_UNHEALTHY = HealthStatus' "UNHEALTHY"

{-# COMPLETE
  HealthStatus_HEALTHY,
  HealthStatus_INITIAL,
  HealthStatus_UNHEALTHY,
  HealthStatus'
  #-}