Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0196C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWmtPr7f10JdO07o+P/E/mnAiPNHQDWXPcFLRF2fbhs=; b=DMNlgSgIE80gx2
	hRFeAkPFQVCuBnx+RKTTHZlAGWV5YrgccmSF/7yWo1lLblYbW/JDRG3puYzM6/RWd5ZMpGO5QS/r7
	E4+1uBjXqK+VwZZ612KyCDTtKTo2YgjYPT2AmsF804BnqBmlYtxEducNkV0P51wHgTRlBst3hw1u2
	K98H9yLj3QvmvEtGQvpAjVJUs+HhNl9rW667tApifz0uOdc6jucSVnasj2PCfM5/i8JYwEO0t0Vw0
	qqFz9cTFuEeUoKg3Im7IDlpSh6bYkw+mT5I07gSgdwnnRdhgTfSfR32qJ9v3GsTELGqrs5xN/BIjg
	iCVEsG9PwevZToHjHGpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAszy-001hSK-W7; Mon, 11 Jul 2022 12:58:51 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAslR-001YNP-CF
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:51 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6F96E3072;
	Mon, 11 Jul 2022 14:43:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543427;
	bh=XSZtVM1Bez/cB6qE60ZF5HBiqVYgE/JYhlVPr4v2UJo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=uYDRVPnU/yT2yELUQRMV6xWOsTcONb7pq11gf9pWri3HB861QS2CisYMuylhF2pw+
	 mL1e8kidgI2TjZAzE0BWN+S8wmpjCdxeGUiJ+h6LE8V0TQ4QEeGc9mrzJfSmmRK7SB
	 hI6jj7qF0yTLnstjYxnpUnO3MeqtysCeeQiOTCaY=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 46/46] media: rkisp1: debug: Add dump file in debugfs for MI main path registers
Date: Mon, 11 Jul 2022 15:42:48 +0300
Message-Id: <20220711124248.2683-47-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054349_637294_D00C1192 
X-CRM114-Status: GOOD (  10.17  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Paul Elder <paul.elder@ideasonboard.com>

Add a register dump file in debugfs for some of the buffer-related
registers for the main path in MI (for the base address, the size, and
the offset). Also dump the corresponding shadow registers.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
---
Changes since v2:

- Rename file from mi_mp_y_bufs to mi_mp
---
 .../platform/rockchip/rkisp1/rkisp1-debug.c   | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
index e76dc2b164b6..71df3dc95e6f 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
@@ -121,6 +121,24 @@ static int rkisp1_debug_dump_rsz_regs_show(struct seq_file *m, void *p)
 }
 DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_rsz_regs);
 
+static int rkisp1_debug_dump_mi_mp_show(struct seq_file *m, void *p)
+{
+	static const struct rkisp1_debug_register registers[] = {
+		RKISP1_DEBUG_REG(MI_MP_Y_BASE_AD_INIT),
+		RKISP1_DEBUG_REG(MI_MP_Y_BASE_AD_INIT2),
+		RKISP1_DEBUG_REG(MI_MP_Y_BASE_AD_SHD),
+		RKISP1_DEBUG_REG(MI_MP_Y_SIZE_INIT),
+		RKISP1_DEBUG_REG(MI_MP_Y_SIZE_INIT),
+		RKISP1_DEBUG_REG(MI_MP_Y_SIZE_SHD),
+		RKISP1_DEBUG_REG(MI_MP_Y_OFFS_CNT_SHD),
+		{ /* Sentinel */ },
+	};
+	struct rkisp1_device *rkisp1 = m->private;
+
+	return rkisp1_debug_dump_regs(rkisp1, m, 0, registers);
+}
+DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_mi_mp);
+
 #define RKISP1_DEBUG_DATA_COUNT_BINS	32
 #define RKISP1_DEBUG_DATA_COUNT_STEP	(4096 / RKISP1_DEBUG_DATA_COUNT_BINS)
 
@@ -214,6 +232,9 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
 	debugfs_create_file("srsz", 0444, regs_dir,
 			    &rkisp1->resizer_devs[RKISP1_SELFPATH],
 			    &rkisp1_debug_dump_rsz_regs_fops);
+
+	debugfs_create_file("mi_mp", 0444, regs_dir, rkisp1,
+			    &rkisp1_debug_dump_mi_mp_fops);
 }
 
 void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
