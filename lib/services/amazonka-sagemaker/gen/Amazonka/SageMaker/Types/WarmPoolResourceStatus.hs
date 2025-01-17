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
-- Module      : Amazonka.SageMaker.Types.WarmPoolResourceStatus
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SageMaker.Types.WarmPoolResourceStatus
  ( WarmPoolResourceStatus
      ( ..,
        WarmPoolResourceStatus_Available,
        WarmPoolResourceStatus_InUse,
        WarmPoolResourceStatus_Reused,
        WarmPoolResourceStatus_Terminated
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype WarmPoolResourceStatus = WarmPoolResourceStatus'
  { fromWarmPoolResourceStatus ::
      Data.Text
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
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern WarmPoolResourceStatus_Available :: WarmPoolResourceStatus
pattern WarmPoolResourceStatus_Available = WarmPoolResourceStatus' "Available"

pattern WarmPoolResourceStatus_InUse :: WarmPoolResourceStatus
pattern WarmPoolResourceStatus_InUse = WarmPoolResourceStatus' "InUse"

pattern WarmPoolResourceStatus_Reused :: WarmPoolResourceStatus
pattern WarmPoolResourceStatus_Reused = WarmPoolResourceStatus' "Reused"

pattern WarmPoolResourceStatus_Terminated :: WarmPoolResourceStatus
pattern WarmPoolResourceStatus_Terminated = WarmPoolResourceStatus' "Terminated"

{-# COMPLETE
  WarmPoolResourceStatus_Available,
  WarmPoolResourceStatus_InUse,
  WarmPoolResourceStatus_Reused,
  WarmPoolResourceStatus_Terminated,
  WarmPoolResourceStatus'
  #-}
