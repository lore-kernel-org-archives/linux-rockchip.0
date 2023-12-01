Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F882C10F05
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Dec 2023 14:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I4SdeYGPrvP9pKdpJBtuXeA8VnCE/7q+niMtD0mtRsc=; b=0x1bjTnJ/Kpj+6
	48muxVC3gQeFOgZloKUSg3I9tUhBZKGzg9fkZ1ktf9a45qpHhjMhp3/M4EcEdf5TFs0Vrqp4RtfHk
	jy2GOWZ3hgkIhagJqQjMoDsrgxbTGc/JDMFmyx8/emAk3072kBFr4rgEhAUoC2eIb02woN1cBy6/T
	UX7JMDgFIhVismomdlx0be418legXIWl+SbRTO/a7PyBH9fCNCXIbyguUiF1yV3eho2nw0b4BowOz
	fDkomF4LUkQGKOTz6yQYec6CnRfoXoSKHGa9MQ/NE3+PuwoDQEuwubVr9/Y0TnzHDdYEUdb156OjX
	tqdzN7lZgZAoL3KWnoFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r948d-00DtEz-32;
	Fri, 01 Dec 2023 14:05:03 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r948a-00DtCL-0W;
	Fri, 01 Dec 2023 14:05:01 +0000
Received: from pyrite.hamster-moth.ts.net (h175-177-049-156.catv02.itscom.jp [175.177.49.156])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E3A3118A2;
	Fri,  1 Dec 2023 15:04:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701439462;
	bh=GCySINWmuCR5JodNHhNRp4B30t3rx5GHASe7kUWliPk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Bn5kQflYY6ZjgS3HSwJuWGk06QH7hZbvaEufHauqZ8LtlOMT0f3Ob9ErzD5scA+MX
	 i+DjWr/Z8tjLamXiSMxFBHzBdYekA3spRIeZiAMLD2E15GempKuwoQNWg5Gmi/yQCh
	 Nw7LbxSuHjE/MCUOV1LqL//sPyfgn8pSkDDCloVo=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: laurent.pinchart@ideasonboard.com,
	kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com,
	Paul Elder <paul.elder@ideasonboard.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2 2/4] media: rkisp1: debug: Add register dump for IS
Date: Fri,  1 Dec 2023 23:04:31 +0900
Message-Id: <20231201140433.2126011-3-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231201140433.2126011-1-paul.elder@ideasonboard.com>
References: <20231201140433.2126011-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_060500_338998_84C83E14 
X-CRM114-Status: UNSURE (   9.97  )
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

Add register dump for the ISP image stabilizer module to debugfs. This
helps debugging issues related to digital zoom.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

---
Changes in v2:
- Move from IS debugfs file into the ISP debugfs file

 drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
index 71df3dc95e6f..d2fbed42164e 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
@@ -92,6 +92,10 @@ static int rkisp1_debug_dump_isp_regs_show(struct seq_file *m, void *p)
 		RKISP1_DEBUG_REG(ISP_FLAGS_SHD),
 		RKISP1_DEBUG_REG(ISP_RIS),
 		RKISP1_DEBUG_REG(ISP_ERR),
+		RKISP1_DEBUG_SHD_REG(ISP_IS_H_OFFS),
+		RKISP1_DEBUG_SHD_REG(ISP_IS_V_OFFS),
+		RKISP1_DEBUG_SHD_REG(ISP_IS_H_SIZE),
+		RKISP1_DEBUG_SHD_REG(ISP_IS_V_SIZE),
 		{ /* Sentinel */ },
 	};
 	struct rkisp1_device *rkisp1 = m->private;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
