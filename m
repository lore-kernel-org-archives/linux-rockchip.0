Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D882EE9538F
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 11:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SrVgw7Q/yyncQlOMtb6zGQ0hb+9Hz6O25qY+D38t4+s=; b=2UbpC3JQLCq3Fp
	DwfcZ+YRrXPcyEM5yqmQKUi38NHIEWcLK+Z7lnQvl9TGrgFQhX+basVVVr47e+XDSoklvY1Jotx1B
	fQ2lZnHCJDcYLwNHcEabAxeq78gXeveEORqNWNcz9oDUHNszAdkIjyGK3/vWt5jc15x/HCTKUpoUp
	gCWWXlDMhQ/RmbfhfFlRgzwVyGucPLxeDiqRceRl/gU8hHjm+ajni3yBYHMNQNzo8UR8txCWX0D/5
	grYcN0YMVQZGE6D32SVbZtdQZdHMw7Ht70TS3GyRaOzKLzLG/JIsOryzC04QhguhncR6wAN9SHljc
	lP7dBRTqHMkwtwnwVh3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnb0f-00000008M8w-2raz;
	Wed, 04 Feb 2026 11:25:25 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnb0c-00000008M2H-1P4G;
	Wed, 04 Feb 2026 11:25:23 +0000
Received: from t16.ideasonboard.com (cpc89244-aztw30-2-0-cust6594.18-1.cable.virginm.net [86.31.185.195])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 49AFD13AB;
	Wed,  4 Feb 2026 12:24:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1770204279;
	bh=Bt1EGAdaqcvf0NyytShh8FFlf4eE/kulWr9PEZlTjh0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CfDh3q0c14ZEYW60C/Y3EC2oNNN13NbkHClS0vfboFM4vgN/lHfvOYllJV2JqxIZH
	 hkiLBx6yFbhH/k6EKdmhi1pj/w78MDgKGWkaQr7ThPoSnr4KZkielFqrk2AQWHx+LM
	 y7lOV3+9tqCDyZfhy85HP1Jvln8uDrB98A+sBmRw=
From: Isaac Scott <isaac.scott@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: dafna@fastmail.com,
	laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Isaac Scott <isaac.scott@ideasonboard.com>
Subject: [PATCH v1 6/6] media: rkisp1: Treat 8 bus width and 16 bus width formats the same
Date: Wed,  4 Feb 2026 11:25:06 +0000
Message-ID: <20260204112506.3706049-7-isaac.scott@ideasonboard.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260204112506.3706049-1-isaac.scott@ideasonboard.com>
References: <20260204112506.3706049-1-isaac.scott@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_032522_528410_DFE94E65 
X-CRM114-Status: GOOD (  10.77  )
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

As MIPI CSI is a serial interface, we should be able to use a bit depth
of 16 in the same way as 8 bit depth. Add a fallthrough case to ensure
we don't reject 16 bit depth formats.

Signed-off-by: Isaac Scott <isaac.scott@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index c457593526c5..722ebcfbddbb 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -265,6 +265,7 @@ static int rkisp1_config_isp(struct rkisp1_isp *isp,
 
 		switch (sink_fmt->bus_width) {
 		case 8:
+		case 16:
 			acq_prop |= RKISP1_CIF_ISP_ACQ_PROP_IN_SEL_8B_ZERO;
 			break;
 		case 10:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
