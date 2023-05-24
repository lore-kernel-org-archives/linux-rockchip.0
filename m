Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E67DC7EE2E
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 08:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJ5yjI9UNgjWyGcHIxhA2Ivf1lwCk6R7ucjtuu8Lo6g=; b=w1imERjNSYtSIt
	XZ6vXNt40cBxZaSBL6SPYMRvte0eaKCwZ+SeVObIgegs6jj5CbK/gJ4OseZZMv2tpKKX92LWwFbwd
	JOgPl7hKFrwdoK5FblxECRjBJWc3UdoVTwOfH5QcJR7ISONGagncgluKI/2Z5t9+OATs58WaetILa
	uN03ey3JPZjhRIUisfzyuAEIcEcK8OUaMaCEWldZxwnXGjCm5z73r3CJbcEPCwWS96Kdt+RYTIJFw
	l4s+ay7ESullhO3dgZ2Rjr9Xvr0gVv0lsq7IkJB8BuW3kL1z6unq0Hxi5r7XtLoHu6r21mrYUpUA+
	dPPlvk+xAD7BBxAfeSgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1kGd-00Cr9L-0i;
	Wed, 24 May 2023 08:54:47 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1kGU-00Cr2Z-2M
	for linux-rockchip@bombadil.infradead.org;
	Wed, 24 May 2023 08:54:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Qx72xnB/QgdI6lFYaDFHPZdYlT7o6/9lCqNm/+RWAKg=; b=Y7kk1OVDTB4XplikBWrLK++iHm
	g1zSdceSTiNkbluaM/NkwV0FOj65VAuTwgAZcAYWlJb5DhE9c9I3x9qGGeAsctvKntQuEW5PMJjJy
	eTUgI95tjV+mFcUJDMBUopUiv0OnHjQnWSXaSrEFA8MX+lDGHCu4F4IpTFs6Q+aIuJRQrbnflrNH5
	gLHK5ojLvKrliq5dQ17jLod3ADgiS6Jq4U20NJ1fGIRaDGBbMeL+mf4BSLCuneolJ6AFxLEYU3NVz
	j4TjRgkTs/DzwgVq2swgGYyc0xj4wenN3Q+obmxjdmYUgiv0SsGHunRuBnSqVyMWqdZ/5tIWS39xD
	zoSPGPMQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1q1juj-00B188-FO
	for linux-rockchip@lists.infradead.org; Wed, 24 May 2023 08:32:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1jua-0002nn-Pi; Wed, 24 May 2023 10:32:00 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q1juZ-002RaJ-Th; Wed, 24 May 2023 10:31:59 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q1juW-009jBo-O1; Wed, 24 May 2023 10:31:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: [PATCH v5 12/25] PM / devfreq: rockchip-dfi: Handle LPDDR4X
Date: Wed, 24 May 2023 10:31:40 +0200
Message-Id: <20230524083153.2046084-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230524083153.2046084-1-s.hauer@pengutronix.de>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_093209_710517_39CDF3F4 
X-CRM114-Status: GOOD (  13.41  )
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

In the DFI driver LPDDR4X can be handled in the same way as LPDDR4. Add
the missing case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
---
 drivers/devfreq/event/rockchip-dfi.c | 1 +
 include/soc/rockchip/rockchip_grf.h  | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 16cd5365671f7..0a568c5551699 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -89,6 +89,7 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
 			       dfi_regs + DDRMON_CTRL);
 		break;
 	case ROCKCHIP_DDRTYPE_LPDDR4:
+	case ROCKCHIP_DDRTYPE_LPDDR4X:
 		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4, DDRMON_CTRL_DDR_TYPE_MASK),
 			       dfi_regs + DDRMON_CTRL);
 		break;
diff --git a/include/soc/rockchip/rockchip_grf.h b/include/soc/rockchip/rockchip_grf.h
index dde1a9796ccb5..e46fd72aea8d1 100644
--- a/include/soc/rockchip/rockchip_grf.h
+++ b/include/soc/rockchip/rockchip_grf.h
@@ -12,6 +12,7 @@ enum {
 	ROCKCHIP_DDRTYPE_LPDDR2	= 5,
 	ROCKCHIP_DDRTYPE_LPDDR3	= 6,
 	ROCKCHIP_DDRTYPE_LPDDR4	= 7,
+	ROCKCHIP_DDRTYPE_LPDDR4X = 8,
 };
 
 #endif /* __SOC_ROCKCHIP_GRF_H */
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
