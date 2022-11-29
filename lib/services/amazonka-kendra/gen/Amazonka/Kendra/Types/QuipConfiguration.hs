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
-- Module      : Amazonka.Kendra.Types.QuipConfiguration
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Kendra.Types.QuipConfiguration where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.Kendra.Types.DataSourceToIndexFieldMapping
import Amazonka.Kendra.Types.DataSourceVpcConfiguration
import qualified Amazonka.Prelude as Prelude

-- | Provides the configuration information to connect to Quip as your data
-- source.
--
-- /See:/ 'newQuipConfiguration' smart constructor.
data QuipConfiguration = QuipConfiguration'
  { -- | Configuration information for an Amazon Virtual Private Cloud (VPC) to
    -- connect to your Quip. For more information, see
    -- <https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html Configuring a VPC>.
    vpcConfiguration :: Prelude.Maybe DataSourceVpcConfiguration,
    -- | A list of @DataSourceToIndexFieldMapping@ objects that map attributes or
    -- field names of Quip attachments to Amazon Kendra index field names. To
    -- create custom fields, use the @UpdateIndex@ API before you map to Quip
    -- fields. For more information, see
    -- <https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html Mapping data source fields>.
    -- The Quip field names must exist in your Quip custom metadata.
    attachmentFieldMappings :: Prelude.Maybe (Prelude.NonEmpty DataSourceToIndexFieldMapping),
    -- | @TRUE@ to index attachments.
    crawlAttachments :: Prelude.Maybe Prelude.Bool,
    -- | A list of @DataSourceToIndexFieldMapping@ objects that map attributes or
    -- field names of Quip messages to Amazon Kendra index field names. To
    -- create custom fields, use the @UpdateIndex@ API before you map to Quip
    -- fields. For more information, see
    -- <https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html Mapping data source fields>.
    -- The Quip field names must exist in your Quip custom metadata.
    messageFieldMappings :: Prelude.Maybe (Prelude.NonEmpty DataSourceToIndexFieldMapping),
    -- | A list of regular expression patterns to include certain files in your
    -- Quip file system. Files that match the patterns are included in the
    -- index. Files that don\'t match the patterns are excluded from the index.
    -- If a file matches both an inclusion pattern and an exclusion pattern,
    -- the exclusion pattern takes precedence, and the file isn\'t included in
    -- the index.
    inclusionPatterns :: Prelude.Maybe [Prelude.Text],
    -- | @TRUE@ to index file comments.
    crawlFileComments :: Prelude.Maybe Prelude.Bool,
    -- | The identifiers of the Quip folders you want to index. You can find the
    -- folder ID in your browser URL when you access your folder in Quip. For
    -- example,
    -- /https:\/\/quip-company.quipdomain.com\/zlLuOVNSarTL\/folder-name/. The
    -- folder ID in this example is \"zlLuOVNSarTL\".
    folderIds :: Prelude.Maybe [Prelude.Text],
    -- | @TRUE@ to index the contents of chat rooms.
    crawlChatRooms :: Prelude.Maybe Prelude.Bool,
    -- | A list of @DataSourceToIndexFieldMapping@ objects that map attributes or
    -- field names of Quip threads to Amazon Kendra index field names. To
    -- create custom fields, use the @UpdateIndex@ API before you map to Quip
    -- fields. For more information, see
    -- <https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html Mapping data source fields>.
    -- The Quip field names must exist in your Quip custom metadata.
    threadFieldMappings :: Prelude.Maybe (Prelude.NonEmpty DataSourceToIndexFieldMapping),
    -- | A list of regular expression patterns to exclude certain files in your
    -- Quip file system. Files that match the patterns are excluded from the
    -- index. Files that don’t match the patterns are included in the index. If
    -- a file matches both an inclusion pattern and an exclusion pattern, the
    -- exclusion pattern takes precedence, and the file isn\'t included in the
    -- index.
    exclusionPatterns :: Prelude.Maybe [Prelude.Text],
    -- | The Quip site domain. For example,
    -- /https:\/\/quip-company.quipdomain.com\/browse/. The domain in this
    -- example is \"quipdomain\".
    domain :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of an Secrets Manager secret that
    -- contains the key-value pairs that are required to connect to your Quip.
    -- The secret must contain a JSON structure with the following keys:
    --
    -- -   accessToken—The token created in Quip. For more information, see
    --     <https://docs.aws.amazon.com/kendra/latest/dg/data-source-slack.html#quip-authentication Authentication for a Quip data source>.
    secretArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'QuipConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vpcConfiguration', 'quipConfiguration_vpcConfiguration' - Configuration information for an Amazon Virtual Private Cloud (VPC) to
-- connect to your Quip. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html Configuring a VPC>.
--
-- 'attachmentFieldMappings', 'quipConfiguration_attachmentFieldMappings' - A list of @DataSourceToIndexFieldMapping@ objects that map attributes or
-- field names of Quip attachments to Amazon Kendra index field names. To
-- create custom fields, use the @UpdateIndex@ API before you map to Quip
-- fields. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html Mapping data source fields>.
-- The Quip field names must exist in your Quip custom metadata.
--
-- 'crawlAttachments', 'quipConfiguration_crawlAttachments' - @TRUE@ to index attachments.
--
-- 'messageFieldMappings', 'quipConfiguration_messageFieldMappings' - A list of @DataSourceToIndexFieldMapping@ objects that map attributes or
-- field names of Quip messages to Amazon Kendra index field names. To
-- create custom fields, use the @UpdateIndex@ API before you map to Quip
-- fields. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html Mapping data source fields>.
-- The Quip field names must exist in your Quip custom metadata.
--
-- 'inclusionPatterns', 'quipConfiguration_inclusionPatterns' - A list of regular expression patterns to include certain files in your
-- Quip file system. Files that match the patterns are included in the
-- index. Files that don\'t match the patterns are excluded from the index.
-- If a file matches both an inclusion pattern and an exclusion pattern,
-- the exclusion pattern takes precedence, and the file isn\'t included in
-- the index.
--
-- 'crawlFileComments', 'quipConfiguration_crawlFileComments' - @TRUE@ to index file comments.
--
-- 'folderIds', 'quipConfiguration_folderIds' - The identifiers of the Quip folders you want to index. You can find the
-- folder ID in your browser URL when you access your folder in Quip. For
-- example,
-- /https:\/\/quip-company.quipdomain.com\/zlLuOVNSarTL\/folder-name/. The
-- folder ID in this example is \"zlLuOVNSarTL\".
--
-- 'crawlChatRooms', 'quipConfiguration_crawlChatRooms' - @TRUE@ to index the contents of chat rooms.
--
-- 'threadFieldMappings', 'quipConfiguration_threadFieldMappings' - A list of @DataSourceToIndexFieldMapping@ objects that map attributes or
-- field names of Quip threads to Amazon Kendra index field names. To
-- create custom fields, use the @UpdateIndex@ API before you map to Quip
-- fields. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html Mapping data source fields>.
-- The Quip field names must exist in your Quip custom metadata.
--
-- 'exclusionPatterns', 'quipConfiguration_exclusionPatterns' - A list of regular expression patterns to exclude certain files in your
-- Quip file system. Files that match the patterns are excluded from the
-- index. Files that don’t match the patterns are included in the index. If
-- a file matches both an inclusion pattern and an exclusion pattern, the
-- exclusion pattern takes precedence, and the file isn\'t included in the
-- index.
--
-- 'domain', 'quipConfiguration_domain' - The Quip site domain. For example,
-- /https:\/\/quip-company.quipdomain.com\/browse/. The domain in this
-- example is \"quipdomain\".
--
-- 'secretArn', 'quipConfiguration_secretArn' - The Amazon Resource Name (ARN) of an Secrets Manager secret that
-- contains the key-value pairs that are required to connect to your Quip.
-- The secret must contain a JSON structure with the following keys:
--
-- -   accessToken—The token created in Quip. For more information, see
--     <https://docs.aws.amazon.com/kendra/latest/dg/data-source-slack.html#quip-authentication Authentication for a Quip data source>.
newQuipConfiguration ::
  -- | 'domain'
  Prelude.Text ->
  -- | 'secretArn'
  Prelude.Text ->
  QuipConfiguration
newQuipConfiguration pDomain_ pSecretArn_ =
  QuipConfiguration'
    { vpcConfiguration =
        Prelude.Nothing,
      attachmentFieldMappings = Prelude.Nothing,
      crawlAttachments = Prelude.Nothing,
      messageFieldMappings = Prelude.Nothing,
      inclusionPatterns = Prelude.Nothing,
      crawlFileComments = Prelude.Nothing,
      folderIds = Prelude.Nothing,
      crawlChatRooms = Prelude.Nothing,
      threadFieldMappings = Prelude.Nothing,
      exclusionPatterns = Prelude.Nothing,
      domain = pDomain_,
      secretArn = pSecretArn_
    }

-- | Configuration information for an Amazon Virtual Private Cloud (VPC) to
-- connect to your Quip. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html Configuring a VPC>.
quipConfiguration_vpcConfiguration :: Lens.Lens' QuipConfiguration (Prelude.Maybe DataSourceVpcConfiguration)
quipConfiguration_vpcConfiguration = Lens.lens (\QuipConfiguration' {vpcConfiguration} -> vpcConfiguration) (\s@QuipConfiguration' {} a -> s {vpcConfiguration = a} :: QuipConfiguration)

-- | A list of @DataSourceToIndexFieldMapping@ objects that map attributes or
-- field names of Quip attachments to Amazon Kendra index field names. To
-- create custom fields, use the @UpdateIndex@ API before you map to Quip
-- fields. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html Mapping data source fields>.
-- The Quip field names must exist in your Quip custom metadata.
quipConfiguration_attachmentFieldMappings :: Lens.Lens' QuipConfiguration (Prelude.Maybe (Prelude.NonEmpty DataSourceToIndexFieldMapping))
quipConfiguration_attachmentFieldMappings = Lens.lens (\QuipConfiguration' {attachmentFieldMappings} -> attachmentFieldMappings) (\s@QuipConfiguration' {} a -> s {attachmentFieldMappings = a} :: QuipConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | @TRUE@ to index attachments.
quipConfiguration_crawlAttachments :: Lens.Lens' QuipConfiguration (Prelude.Maybe Prelude.Bool)
quipConfiguration_crawlAttachments = Lens.lens (\QuipConfiguration' {crawlAttachments} -> crawlAttachments) (\s@QuipConfiguration' {} a -> s {crawlAttachments = a} :: QuipConfiguration)

-- | A list of @DataSourceToIndexFieldMapping@ objects that map attributes or
-- field names of Quip messages to Amazon Kendra index field names. To
-- create custom fields, use the @UpdateIndex@ API before you map to Quip
-- fields. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html Mapping data source fields>.
-- The Quip field names must exist in your Quip custom metadata.
quipConfiguration_messageFieldMappings :: Lens.Lens' QuipConfiguration (Prelude.Maybe (Prelude.NonEmpty DataSourceToIndexFieldMapping))
quipConfiguration_messageFieldMappings = Lens.lens (\QuipConfiguration' {messageFieldMappings} -> messageFieldMappings) (\s@QuipConfiguration' {} a -> s {messageFieldMappings = a} :: QuipConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | A list of regular expression patterns to include certain files in your
-- Quip file system. Files that match the patterns are included in the
-- index. Files that don\'t match the patterns are excluded from the index.
-- If a file matches both an inclusion pattern and an exclusion pattern,
-- the exclusion pattern takes precedence, and the file isn\'t included in
-- the index.
quipConfiguration_inclusionPatterns :: Lens.Lens' QuipConfiguration (Prelude.Maybe [Prelude.Text])
quipConfiguration_inclusionPatterns = Lens.lens (\QuipConfiguration' {inclusionPatterns} -> inclusionPatterns) (\s@QuipConfiguration' {} a -> s {inclusionPatterns = a} :: QuipConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | @TRUE@ to index file comments.
quipConfiguration_crawlFileComments :: Lens.Lens' QuipConfiguration (Prelude.Maybe Prelude.Bool)
quipConfiguration_crawlFileComments = Lens.lens (\QuipConfiguration' {crawlFileComments} -> crawlFileComments) (\s@QuipConfiguration' {} a -> s {crawlFileComments = a} :: QuipConfiguration)

-- | The identifiers of the Quip folders you want to index. You can find the
-- folder ID in your browser URL when you access your folder in Quip. For
-- example,
-- /https:\/\/quip-company.quipdomain.com\/zlLuOVNSarTL\/folder-name/. The
-- folder ID in this example is \"zlLuOVNSarTL\".
quipConfiguration_folderIds :: Lens.Lens' QuipConfiguration (Prelude.Maybe [Prelude.Text])
quipConfiguration_folderIds = Lens.lens (\QuipConfiguration' {folderIds} -> folderIds) (\s@QuipConfiguration' {} a -> s {folderIds = a} :: QuipConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | @TRUE@ to index the contents of chat rooms.
quipConfiguration_crawlChatRooms :: Lens.Lens' QuipConfiguration (Prelude.Maybe Prelude.Bool)
quipConfiguration_crawlChatRooms = Lens.lens (\QuipConfiguration' {crawlChatRooms} -> crawlChatRooms) (\s@QuipConfiguration' {} a -> s {crawlChatRooms = a} :: QuipConfiguration)

-- | A list of @DataSourceToIndexFieldMapping@ objects that map attributes or
-- field names of Quip threads to Amazon Kendra index field names. To
-- create custom fields, use the @UpdateIndex@ API before you map to Quip
-- fields. For more information, see
-- <https://docs.aws.amazon.com/kendra/latest/dg/field-mapping.html Mapping data source fields>.
-- The Quip field names must exist in your Quip custom metadata.
quipConfiguration_threadFieldMappings :: Lens.Lens' QuipConfiguration (Prelude.Maybe (Prelude.NonEmpty DataSourceToIndexFieldMapping))
quipConfiguration_threadFieldMappings = Lens.lens (\QuipConfiguration' {threadFieldMappings} -> threadFieldMappings) (\s@QuipConfiguration' {} a -> s {threadFieldMappings = a} :: QuipConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | A list of regular expression patterns to exclude certain files in your
-- Quip file system. Files that match the patterns are excluded from the
-- index. Files that don’t match the patterns are included in the index. If
-- a file matches both an inclusion pattern and an exclusion pattern, the
-- exclusion pattern takes precedence, and the file isn\'t included in the
-- index.
quipConfiguration_exclusionPatterns :: Lens.Lens' QuipConfiguration (Prelude.Maybe [Prelude.Text])
quipConfiguration_exclusionPatterns = Lens.lens (\QuipConfiguration' {exclusionPatterns} -> exclusionPatterns) (\s@QuipConfiguration' {} a -> s {exclusionPatterns = a} :: QuipConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The Quip site domain. For example,
-- /https:\/\/quip-company.quipdomain.com\/browse/. The domain in this
-- example is \"quipdomain\".
quipConfiguration_domain :: Lens.Lens' QuipConfiguration Prelude.Text
quipConfiguration_domain = Lens.lens (\QuipConfiguration' {domain} -> domain) (\s@QuipConfiguration' {} a -> s {domain = a} :: QuipConfiguration)

-- | The Amazon Resource Name (ARN) of an Secrets Manager secret that
-- contains the key-value pairs that are required to connect to your Quip.
-- The secret must contain a JSON structure with the following keys:
--
-- -   accessToken—The token created in Quip. For more information, see
--     <https://docs.aws.amazon.com/kendra/latest/dg/data-source-slack.html#quip-authentication Authentication for a Quip data source>.
quipConfiguration_secretArn :: Lens.Lens' QuipConfiguration Prelude.Text
quipConfiguration_secretArn = Lens.lens (\QuipConfiguration' {secretArn} -> secretArn) (\s@QuipConfiguration' {} a -> s {secretArn = a} :: QuipConfiguration)

instance Core.FromJSON QuipConfiguration where
  parseJSON =
    Core.withObject
      "QuipConfiguration"
      ( \x ->
          QuipConfiguration'
            Prelude.<$> (x Core..:? "VpcConfiguration")
            Prelude.<*> (x Core..:? "AttachmentFieldMappings")
            Prelude.<*> (x Core..:? "CrawlAttachments")
            Prelude.<*> (x Core..:? "MessageFieldMappings")
            Prelude.<*> ( x Core..:? "InclusionPatterns"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "CrawlFileComments")
            Prelude.<*> (x Core..:? "FolderIds" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "CrawlChatRooms")
            Prelude.<*> (x Core..:? "ThreadFieldMappings")
            Prelude.<*> ( x Core..:? "ExclusionPatterns"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..: "Domain")
            Prelude.<*> (x Core..: "SecretArn")
      )

instance Prelude.Hashable QuipConfiguration where
  hashWithSalt _salt QuipConfiguration' {..} =
    _salt `Prelude.hashWithSalt` vpcConfiguration
      `Prelude.hashWithSalt` attachmentFieldMappings
      `Prelude.hashWithSalt` crawlAttachments
      `Prelude.hashWithSalt` messageFieldMappings
      `Prelude.hashWithSalt` inclusionPatterns
      `Prelude.hashWithSalt` crawlFileComments
      `Prelude.hashWithSalt` folderIds
      `Prelude.hashWithSalt` crawlChatRooms
      `Prelude.hashWithSalt` threadFieldMappings
      `Prelude.hashWithSalt` exclusionPatterns
      `Prelude.hashWithSalt` domain
      `Prelude.hashWithSalt` secretArn

instance Prelude.NFData QuipConfiguration where
  rnf QuipConfiguration' {..} =
    Prelude.rnf vpcConfiguration
      `Prelude.seq` Prelude.rnf attachmentFieldMappings
      `Prelude.seq` Prelude.rnf crawlAttachments
      `Prelude.seq` Prelude.rnf messageFieldMappings
      `Prelude.seq` Prelude.rnf inclusionPatterns
      `Prelude.seq` Prelude.rnf crawlFileComments
      `Prelude.seq` Prelude.rnf folderIds
      `Prelude.seq` Prelude.rnf crawlChatRooms
      `Prelude.seq` Prelude.rnf threadFieldMappings
      `Prelude.seq` Prelude.rnf exclusionPatterns
      `Prelude.seq` Prelude.rnf domain
      `Prelude.seq` Prelude.rnf secretArn

instance Core.ToJSON QuipConfiguration where
  toJSON QuipConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("VpcConfiguration" Core..=)
              Prelude.<$> vpcConfiguration,
            ("AttachmentFieldMappings" Core..=)
              Prelude.<$> attachmentFieldMappings,
            ("CrawlAttachments" Core..=)
              Prelude.<$> crawlAttachments,
            ("MessageFieldMappings" Core..=)
              Prelude.<$> messageFieldMappings,
            ("InclusionPatterns" Core..=)
              Prelude.<$> inclusionPatterns,
            ("CrawlFileComments" Core..=)
              Prelude.<$> crawlFileComments,
            ("FolderIds" Core..=) Prelude.<$> folderIds,
            ("CrawlChatRooms" Core..=)
              Prelude.<$> crawlChatRooms,
            ("ThreadFieldMappings" Core..=)
              Prelude.<$> threadFieldMappings,
            ("ExclusionPatterns" Core..=)
              Prelude.<$> exclusionPatterns,
            Prelude.Just ("Domain" Core..= domain),
            Prelude.Just ("SecretArn" Core..= secretArn)
          ]
      )
