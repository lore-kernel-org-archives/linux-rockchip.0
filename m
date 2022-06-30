Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D74BCCA48B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 23:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o1MQLw+z6mNyt3bE8hNla2KdhHvpck22nFh8Gxy7/wA=; b=bA0252XeU+mfL+
	rNmL9xP19nwagKxTVbcNBWUsYTOZGm14WKSJSgkjP6oln+8zlEp7eUnNLwqdkfG6VS9INszHqTJ1y
	/5HzAq0vvAvle8qc/0cMWPLWsLCTna4jOLyJ4cieE1ciFKMCrXL1OLxRfhouAv4vJTGFstOnVC8wK
	w/76VkgERFGAswfgU8nFi+w/esYflDyWRvMG5Kg4zuA19kVfYFAOEeAteNFE1e47dzRnrFa2+yH4j
	/vTzWTedNbGlGhsOJTpJssw4sbd5zq9JZjZgOr0/8wxgwf/i9j9zFcMlPKULGfzsIsKZbCUDihRUz
	Bgv/ZbO/J5iQHnI5X+jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73H0-0020oH-Nq; Thu, 30 Jun 2022 23:08:34 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73Ga-0020UP-TD
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:21 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 210CF2A46;
	Fri,  1 Jul 2022 01:08:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630487;
	bh=G4mNoFZm56+NhGZ+0ecZg/n4KD0LfmkLbZkPqGIpanc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kRLNPBMVDPdjz3NSUSWE1tWdvPJQZtB2aj1J0Oni+97ViEqOD4umLoc3wqNmMRb1u
	 Go7xVuDq1ZEVgK6jjX5zRAjI8iiDU89spNCdvhIeilj59kmM11cZOUQsDvV5mx6lhd
	 YcwZ5I5GHxgcO3XKGHNuIv9GINz7tpAxiNcnfQZk=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 46/55] media: rkisp1: debug: Add dump file in debugfs for MI buffer registers
Date: Fri,  1 Jul 2022 02:07:04 +0300
Message-Id: <20220630230713.10580-47-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160809_145524_150950E9 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
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
registers in MI, for the base address, the size, and the offset. Also
dump the appropriate shadow registers.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-debug.c   | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
index e76dc2b164b6..1a59c00fabdd 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
@@ -121,6 +121,24 @@ static int rkisp1_debug_dump_rsz_regs_show(struct seq_file *m, void *p)
 }
 DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_rsz_regs);
 
+static int rkisp1_debug_dump_mi_mp_y_offs_cnt_show(struct seq_file *m, void *p)
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
+DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_mi_mp_y_offs_cnt);
+
 #define RKISP1_DEBUG_DATA_COUNT_BINS	32
 #define RKISP1_DEBUG_DATA_COUNT_STEP	(4096 / RKISP1_DEBUG_DATA_COUNT_BINS)
 
@@ -214,6 +232,9 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
 	debugfs_create_file("srsz", 0444, regs_dir,
 			    &rkisp1->resizer_devs[RKISP1_SELFPATH],
 			    &rkisp1_debug_dump_rsz_regs_fops);
+
+	debugfs_create_file("mi_mp_y_bufs", 0444, regs_dir, rkisp1,
+			    &rkisp1_debug_dump_mi_mp_y_offs_cnt_fops);
 }
 
 void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
