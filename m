Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E53F606A699
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 15:14:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XDY3EEIh;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=evHh8rcC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=iqIZPUGaf/+TeVnhYKxVh3GNKVFuT0qgVm3j/K26j3c=; b=XDY3EEIhYGNClReuBP0kZMU5oQ
	zNuEim95nSQA178qmApr0xbeaGgtQdBNrFJL/jPSrv5gffyAgAKrnudWL4UwWCJWN4YcdajpoVrfl
	MzZs9s37n4K0Ns94x774Qq9W5X8oLZkn2QIY1M9cxUCXUPd/pl2nWktlGHqq2HlIKrtgYsvguwGSL
	siPaGrU0F6lO6omoKlXz7Z3qAh5B3gBWTyblgSuZrONCH5rbb4HV5Wzwvk9UxkYppz5Ao69P2X30y
	8JtnDlrE9uhEetlowchR1oRdxiMj5Fy7pYi7ZSWP3IcPkyxKy7kZ4gYGeSMQIhDxOZDloGh6CvONV
	S6ECEKfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWEhS-0000000AJ2V-0apU;
	Wed, 25 Nov 2026 15:14:22 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWEhO-0000000AJ1S-2PXz;
	Wed, 25 Nov 2026 15:14:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1795619655;
	bh=RaqDyMC8lJJL26aGZDAiBmWLdnQfQtaIC5pvpzawh1I=;
	h=From:Subject:Date:To:Cc:From;
	b=evHh8rcCs6Hsz2zemn7qsnsihPQ6u+yTrJxFKNa1fTqvQfi/f8BCyylT3Dy2PjvVH
	 nFmQ+afzJWPC5W2LVkXV+NLP5pPxVsbEP3OJQlLc8W+0ZYlsAY/zEH9DwI8ygHs2Vb
	 4Xkiyq41B9WF4BPGgp/BcYaWS6MTqHTjf3rQX1lDG2xKCJHbROHGQeWs2LbgQRV8ta
	 5bK8HQJBsoU46/JkCWkgUHZszwcCSUC4LSM5YbEdmKsX1HHELzx7wgeUkUPZHuQwIW
	 U/QnxvDWwOp7GxCQ6bzVHmv9iaZzfmuRxzd0TA/NfaC3hHYruOLwHkNnSWFTaVzYJN
	 DGVLo1Eb8pN6A==
Received: from [192.168.0.15] (unknown [100.64.0.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BC45417E0075;
	Wed, 25 Nov 2026 16:14:13 +0100 (CET)
From: Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v4 0/5] media: Add fdinfo support for v4l2 drivers
Date: Wed, 25 Nov 2026 10:11:57 -0500
Message-Id: <20261125-v4l2-add-fdinfo-v4-0-2dc73fad9932@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/23NQQ7CIBQE0KsY1mLgYyl15T2MCwofxdRiQInG9
 O4WjdFYl5PMvLmThNFjIqvZnUTMPvnQj2E5nxGz1/0OqbdjJsBAMskZzcsOqLaWOut7F6iuG+Y
 M6lZAQ8bVKaLz16e42b5yurQHNOfClMbep3OIt+dl5qX31mGiZ04ZrUEA57o1SvK1CV2n2xD1w
 oQjKQ8Zvo16asBoWGgUNsogk/qfIT5GzeTUEMWoKllJZZxQ+GsMw/AAGGCulUwBAAA=
X-Change-ID: 20260610-v4l2-add-fdinfo-a790fceab329
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, kernel@collabora.com, 
 Detlev Casanova <detlev.casanova@collabora.com>, 
 linux-arm-kernel@lists.infradead.org, 
 Christopher Healy <healych@amazon.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_071418_821998_EA025E2F 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-21.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

fdinfo is useful to poll information from the driver.
Unlike the ftrace interface, it lets userspace tools get a snapshot of
the state of the driver at their own pace, instead of getting events for
each driver status change.

This works better to get information like HW usage time or clock
frequencies, as well as memory usage.
This patch set focuses on mem2mem drivers that are per-frame based and
an implementation is proposed for the Verisilicon Hantro and Rockchip
rkvdec drivers, limited to main clock frequency and HW usage time, as
well as HW cycles counting in Hantro.

Even though it is not used yet, per core fields are appended with 
`-<core_id>` to support multi-core drivers.

To ease support in drivers, a v4l2_metrics struct is added.
It stores metrics information and provides helper functions to write
the fdinfo file in a standard way.

An example of usage of this from userspace is implemented in v4l2top:

https://github.com/cazou/v4l2top (Check the upstream branch)

checkpatch.pl warning: The 2 arguments in the show_fdinfo callback
definition are kept unnamed to match with the rest of the struct
definition.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
Changes in v4:
- Rebase on master branch
- Add missing documenation fields
- Fix missing indentation spaces
- Link to v3: https://patch.msgid.link/20260706-v4l2-add-fdinfo-v3-0-d556568cf38e@collabora.com

Changes in v3:
- Rename the fdinfo key prefix from "media-" to "v4l2-", and "stats" to
  "metrics"
- Restructure the documentation to have mandatory and optional keys
- Add core ID to fields
- Add HW cycles count support
- Add ABI documentation
- Link to v2: https://patch.msgid.link/20260617-v4l2-add-fdinfo-v2-0-d298e98ce06a@collabora.com

Changes in v2:
- Simplify key/value pairs by removing repeated <eng> suffix
- Add media type support
- Add v4l2_stats helpers
- Add support in rkvdec too
- Link to v1: https://patch.msgid.link/20260612-v4l2-add-fdinfo-v1-0-723211abc861@collabora.com

To: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
To: Detlev Casanova <detlev.casanova@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com
Cc: linux-media@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org

---
Christopher Healy (2):
      docs: media: add documentation for V4L2 driver usage metrics
      media: hantro: Add per-context fdinfo usage metrics

Detlev Casanova (3):
      media: v4l2: Add callback for show_fdinfo
      media: v4l2-core: Add v4l2-metrics interface
      media: rkvdec: Add per-context fdinfo usage metrics

 Documentation/ABI/testing/procfs-fdinfo-v4l2       | 129 +++++++++++++++++++
 .../userspace-api/media/drivers/index.rst          |   1 +
 .../media/drivers/v4l2-usage-metrics.rst           | 137 +++++++++++++++++++++
 drivers/media/platform/rockchip/rkvdec/rkvdec.c    |  19 +++
 drivers/media/platform/rockchip/rkvdec/rkvdec.h    |   1 +
 drivers/media/platform/verisilicon/hantro.h        |   4 +
 drivers/media/platform/verisilicon/hantro_drv.c    |  19 +++
 drivers/media/platform/verisilicon/hantro_hw.h     |   1 +
 .../platform/verisilicon/rockchip_vpu981_regs.h    |   1 +
 .../media/platform/verisilicon/rockchip_vpu_hw.c   |   6 +
 drivers/media/v4l2-core/Makefile                   |   2 +-
 drivers/media/v4l2-core/v4l2-dev.c                 |  12 ++
 drivers/media/v4l2-core/v4l2-fh.c                  |   3 +
 drivers/media/v4l2-core/v4l2-metrics.c             |  78 ++++++++++++
 include/media/v4l2-dev.h                           |   2 +
 include/media/v4l2-fh.h                            |   3 +
 include/media/v4l2-metrics.h                       |  47 +++++++
 17 files changed, 464 insertions(+), 1 deletion(-)
---
base-commit: 8d7fe9885c62fc9a95bf55d9db244d9672a8aadc
change-id: 20260610-v4l2-add-fdinfo-a790fceab329

Best regards,
--  
Detlev Casanova <detlev.casanova@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
