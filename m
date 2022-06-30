Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DE7ECCA485
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 00:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ajM+A6nTXPHz9g+Iy9U5MJ82jvMi14HPpFSeVjDaNQk=; b=wlQwenPf7CqvBy
	xVTCSJ16RovPrsKYAibjlgYZnDCZD+YdOWAuoqICybFfwDVWbsK3pXt1j4oA1DbeZmC7FV6XgPmY7
	7lSQQ0VoFfi8E35Ct8j6w+JL2ZL+EERQXE5Lj7SsSjsYBH+qT6pb1fYL/tzH8k46FENRUNjSGWoRK
	6q2N9Su6gtQ60yKK6HOwRHpzhzaKBjy3+txmbdoRQVf4iYgi66OpWtBg/jkz/vucoIUw7EK4cT1xf
	85bQgehGo1fli4Rr794dJfSt7taR3+S8GHt/J1kqLtygY4RNkmvsvdTMwZp+E3WVNzMP8ifnm/G1F
	8yHMJIPfeA8Z59uQNNvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o74KI-0028Ow-7H; Fri, 01 Jul 2022 00:16:02 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73GO-0020IR-03
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:04 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1D12459D;
	Fri,  1 Jul 2022 01:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630472;
	bh=Mwkj3xI3t+j/kROPqx0pfNIcza44hw1NcvJdaI1/K6w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Jb7jSJyRDCkdsyQF9SK62+RQABgL3WBssTl+JRRN0kC06hhYsj/2fKbCCd+QyZNvv
	 MnLy1zfEAwKVNA4ZZ04P00zaMT7/o2Q70qo6sQF5r8Zj4SqCksk55+Svv5WiHqjT+z
	 2tl7cH1pGbkPQV+L/Ura9PBIyt7YQ2+NRjLX0Lns=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 23/55] media: rkisp1: csi: Move start delay to rkisp1_csi_start()
Date: Fri,  1 Jul 2022 02:06:41 +0300
Message-Id: <20220630230713.10580-24-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160756_228577_586004E9 
X-CRM114-Status: UNSURE (   9.90  )
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

The delay in rkisp1_isp_start() is related to the CSI-2 receiver and
the camera sensor. Move it where it belongs, to rkisp1_csi_start().

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
Changes since v1:

- Fix typo in commit message
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c | 7 +++++++
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 6 ------
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
index 102deb877aa4..749ad473b877 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
@@ -9,6 +9,7 @@
  * Copyright (C) 2017 Rockchip Electronics Co., Ltd.
  */
 
+#include <linux/delay.h>
 #include <linux/device.h>
 #include <linux/phy/phy.h>
 #include <linux/phy/phy-mipi-dphy.h>
@@ -121,6 +122,12 @@ int rkisp1_csi_start(struct rkisp1_csi *csi,
 
 	rkisp1_csi_enable(csi);
 
+	/*
+	 * CIF spec says to wait for sufficient time after enabling
+	 * the MIPI interface and before starting the sensor output.
+	 */
+	usleep_range(1000, 1200);
+
 	return 0;
 }
 
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index d2343f166f42..da895f6aa3fa 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -365,12 +365,6 @@ static void rkisp1_isp_start(struct rkisp1_device *rkisp1)
 	       RKISP1_CIF_ISP_CTRL_ISP_ENABLE |
 	       RKISP1_CIF_ISP_CTRL_ISP_INFORM_ENABLE;
 	rkisp1_write(rkisp1, RKISP1_CIF_ISP_CTRL, val);
-
-	/*
-	 * CIF spec says to wait for sufficient time after enabling
-	 * the MIPI interface and before starting the sensor output.
-	 */
-	usleep_range(1000, 1200);
 }
 
 /* ----------------------------------------------------------------------------
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
