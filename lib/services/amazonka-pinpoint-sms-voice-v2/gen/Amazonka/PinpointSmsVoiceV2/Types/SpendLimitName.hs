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
-- Module      : Amazonka.PinpointSmsVoiceV2.Types.SpendLimitName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.PinpointSmsVoiceV2.Types.SpendLimitName
  ( SpendLimitName
      ( ..,
        SpendLimitName_TEXT_MESSAGE_MONTHLY_SPEND_LIMIT,
        SpendLimitName_VOICE_MESSAGE_MONTHLY_SPEND_LIMIT
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype SpendLimitName = SpendLimitName'
  { fromSpendLimitName ::
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

pattern SpendLimitName_TEXT_MESSAGE_MONTHLY_SPEND_LIMIT :: SpendLimitName
pattern SpendLimitName_TEXT_MESSAGE_MONTHLY_SPEND_LIMIT = SpendLimitName' "TEXT_MESSAGE_MONTHLY_SPEND_LIMIT"

pattern SpendLimitName_VOICE_MESSAGE_MONTHLY_SPEND_LIMIT :: SpendLimitName
pattern SpendLimitName_VOICE_MESSAGE_MONTHLY_SPEND_LIMIT = SpendLimitName' "VOICE_MESSAGE_MONTHLY_SPEND_LIMIT"

{-# COMPLETE
  SpendLimitName_TEXT_MESSAGE_MONTHLY_SPEND_LIMIT,
  SpendLimitName_VOICE_MESSAGE_MONTHLY_SPEND_LIMIT,
  SpendLimitName'
  #-}