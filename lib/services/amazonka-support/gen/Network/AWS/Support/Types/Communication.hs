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
-- Module      : Network.AWS.Support.Types.Communication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Support.Types.Communication where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Support.Types.AttachmentDetails

-- | A communication associated with a support case. The communication
-- consists of the case ID, the message body, attachment information, the
-- submitter of the communication, and the date and time of the
-- communication.
--
-- /See:/ 'newCommunication' smart constructor.
data Communication = Communication'
  { -- | The text of the communication between the customer and AWS Support.
    body :: Prelude.Maybe Prelude.Text,
    -- | The support case ID requested or returned in the call. The case ID is an
    -- alphanumeric string formatted as shown in this example:
    -- case-/12345678910-2013-c4c1d2bf33c5cf47/
    caseId :: Prelude.Maybe Prelude.Text,
    -- | The identity of the account that submitted, or responded to, the support
    -- case. Customer entries include the role or IAM user as well as the email
    -- address. For example, \"AdminRole (Role) \<janedoe\@example.com>.
    -- Entries from the AWS Support team display \"Amazon Web Services,\" and
    -- don\'t show an email address.
    submittedBy :: Prelude.Maybe Prelude.Text,
    -- | The time the communication was created.
    timeCreated :: Prelude.Maybe Prelude.Text,
    -- | Information about the attachments to the case communication.
    attachmentSet :: Prelude.Maybe [AttachmentDetails]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Communication' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'body', 'communication_body' - The text of the communication between the customer and AWS Support.
--
-- 'caseId', 'communication_caseId' - The support case ID requested or returned in the call. The case ID is an
-- alphanumeric string formatted as shown in this example:
-- case-/12345678910-2013-c4c1d2bf33c5cf47/
--
-- 'submittedBy', 'communication_submittedBy' - The identity of the account that submitted, or responded to, the support
-- case. Customer entries include the role or IAM user as well as the email
-- address. For example, \"AdminRole (Role) \<janedoe\@example.com>.
-- Entries from the AWS Support team display \"Amazon Web Services,\" and
-- don\'t show an email address.
--
-- 'timeCreated', 'communication_timeCreated' - The time the communication was created.
--
-- 'attachmentSet', 'communication_attachmentSet' - Information about the attachments to the case communication.
newCommunication ::
  Communication
newCommunication =
  Communication'
    { body = Prelude.Nothing,
      caseId = Prelude.Nothing,
      submittedBy = Prelude.Nothing,
      timeCreated = Prelude.Nothing,
      attachmentSet = Prelude.Nothing
    }

-- | The text of the communication between the customer and AWS Support.
communication_body :: Lens.Lens' Communication (Prelude.Maybe Prelude.Text)
communication_body = Lens.lens (\Communication' {body} -> body) (\s@Communication' {} a -> s {body = a} :: Communication)

-- | The support case ID requested or returned in the call. The case ID is an
-- alphanumeric string formatted as shown in this example:
-- case-/12345678910-2013-c4c1d2bf33c5cf47/
communication_caseId :: Lens.Lens' Communication (Prelude.Maybe Prelude.Text)
communication_caseId = Lens.lens (\Communication' {caseId} -> caseId) (\s@Communication' {} a -> s {caseId = a} :: Communication)

-- | The identity of the account that submitted, or responded to, the support
-- case. Customer entries include the role or IAM user as well as the email
-- address. For example, \"AdminRole (Role) \<janedoe\@example.com>.
-- Entries from the AWS Support team display \"Amazon Web Services,\" and
-- don\'t show an email address.
communication_submittedBy :: Lens.Lens' Communication (Prelude.Maybe Prelude.Text)
communication_submittedBy = Lens.lens (\Communication' {submittedBy} -> submittedBy) (\s@Communication' {} a -> s {submittedBy = a} :: Communication)

-- | The time the communication was created.
communication_timeCreated :: Lens.Lens' Communication (Prelude.Maybe Prelude.Text)
communication_timeCreated = Lens.lens (\Communication' {timeCreated} -> timeCreated) (\s@Communication' {} a -> s {timeCreated = a} :: Communication)

-- | Information about the attachments to the case communication.
communication_attachmentSet :: Lens.Lens' Communication (Prelude.Maybe [AttachmentDetails])
communication_attachmentSet = Lens.lens (\Communication' {attachmentSet} -> attachmentSet) (\s@Communication' {} a -> s {attachmentSet = a} :: Communication) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON Communication where
  parseJSON =
    Core.withObject
      "Communication"
      ( \x ->
          Communication'
            Prelude.<$> (x Core..:? "body")
            Prelude.<*> (x Core..:? "caseId")
            Prelude.<*> (x Core..:? "submittedBy")
            Prelude.<*> (x Core..:? "timeCreated")
            Prelude.<*> (x Core..:? "attachmentSet" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable Communication

instance Prelude.NFData Communication
