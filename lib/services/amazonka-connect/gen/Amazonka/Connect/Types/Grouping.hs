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
-- Module      : Amazonka.Connect.Types.Grouping
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Connect.Types.Grouping
  ( Grouping
      ( ..,
        Grouping_CHANNEL,
        Grouping_QUEUE,
        Grouping_ROUTING_PROFILE
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype Grouping = Grouping'
  { fromGrouping ::
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

pattern Grouping_CHANNEL :: Grouping
pattern Grouping_CHANNEL = Grouping' "CHANNEL"

pattern Grouping_QUEUE :: Grouping
pattern Grouping_QUEUE = Grouping' "QUEUE"

pattern Grouping_ROUTING_PROFILE :: Grouping
pattern Grouping_ROUTING_PROFILE = Grouping' "ROUTING_PROFILE"

{-# COMPLETE
  Grouping_CHANNEL,
  Grouping_QUEUE,
  Grouping_ROUTING_PROFILE,
  Grouping'
  #-}
