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
-- Module      : Network.AWS.QLDB.Types.KinesisConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QLDB.Types.KinesisConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens

-- | The configuration settings of the Amazon Kinesis Data Streams
-- destination for your Amazon QLDB journal stream.
--
-- /See:/ 'newKinesisConfiguration' smart constructor.
data KinesisConfiguration = KinesisConfiguration'
  { -- | Enables QLDB to publish multiple data records in a single Kinesis Data
    -- Streams record. To learn more, see
    -- <https://docs.aws.amazon.com/streams/latest/dev/kinesis-kpl-concepts.html KPL Key Concepts>
    -- in the /Amazon Kinesis Data Streams Developer Guide/.
    aggregationEnabled :: Core.Maybe Core.Bool,
    -- | The Amazon Resource Name (ARN) of the Kinesis data stream resource.
    streamArn :: Core.Text
  }
  deriving (Core.Eq, Core.Read, Core.Show, Core.Generic)

-- |
-- Create a value of 'KinesisConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'aggregationEnabled', 'kinesisConfiguration_aggregationEnabled' - Enables QLDB to publish multiple data records in a single Kinesis Data
-- Streams record. To learn more, see
-- <https://docs.aws.amazon.com/streams/latest/dev/kinesis-kpl-concepts.html KPL Key Concepts>
-- in the /Amazon Kinesis Data Streams Developer Guide/.
--
-- 'streamArn', 'kinesisConfiguration_streamArn' - The Amazon Resource Name (ARN) of the Kinesis data stream resource.
newKinesisConfiguration ::
  -- | 'streamArn'
  Core.Text ->
  KinesisConfiguration
newKinesisConfiguration pStreamArn_ =
  KinesisConfiguration'
    { aggregationEnabled =
        Core.Nothing,
      streamArn = pStreamArn_
    }

-- | Enables QLDB to publish multiple data records in a single Kinesis Data
-- Streams record. To learn more, see
-- <https://docs.aws.amazon.com/streams/latest/dev/kinesis-kpl-concepts.html KPL Key Concepts>
-- in the /Amazon Kinesis Data Streams Developer Guide/.
kinesisConfiguration_aggregationEnabled :: Lens.Lens' KinesisConfiguration (Core.Maybe Core.Bool)
kinesisConfiguration_aggregationEnabled = Lens.lens (\KinesisConfiguration' {aggregationEnabled} -> aggregationEnabled) (\s@KinesisConfiguration' {} a -> s {aggregationEnabled = a} :: KinesisConfiguration)

-- | The Amazon Resource Name (ARN) of the Kinesis data stream resource.
kinesisConfiguration_streamArn :: Lens.Lens' KinesisConfiguration Core.Text
kinesisConfiguration_streamArn = Lens.lens (\KinesisConfiguration' {streamArn} -> streamArn) (\s@KinesisConfiguration' {} a -> s {streamArn = a} :: KinesisConfiguration)

instance Core.FromJSON KinesisConfiguration where
  parseJSON =
    Core.withObject
      "KinesisConfiguration"
      ( \x ->
          KinesisConfiguration'
            Core.<$> (x Core..:? "AggregationEnabled")
            Core.<*> (x Core..: "StreamArn")
      )

instance Core.Hashable KinesisConfiguration

instance Core.NFData KinesisConfiguration

instance Core.ToJSON KinesisConfiguration where
  toJSON KinesisConfiguration' {..} =
    Core.object
      ( Core.catMaybes
          [ ("AggregationEnabled" Core..=)
              Core.<$> aggregationEnabled,
            Core.Just ("StreamArn" Core..= streamArn)
          ]
      )