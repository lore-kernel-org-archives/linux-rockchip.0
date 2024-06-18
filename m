Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68C71C2BA1A
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 18:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VXT2SU/bpVpkKgnQu+9Xtmhauig03As4kjeBqKfFVY=; b=G4gpQEh3o4Ex+V
	S+vA6anUe0R8ob4eHbhPlBrYmZIEOrz49G0l8bQbP17eof4luTjTCd6D/S9EHXIYTy63rWjavPj4n
	zI1Ka/7HRp6ER60m3ZSdoHLbTrVq7++FH6HfivL2ypCklL06EqS0wQyEayT1pmPJLhDV+NkLfa5qd
	wSEGmCM4yOYLAtF7DUjmlwOR56DT/rAgjkcj3H3Bx/TgA2f7JzwjGPaM4VAxFpEyOGtkyjdis5GZ9
	i9HIa51cK0zErc/F8Lq3Zf2L8QDzHu2nOOZUd43RwH+Mfi2Eij2x9vLvRdww8n/cdLWHZKpKICadk
	652PsKmXvJYoeDW7pxiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJdiq-0000000GE3G-1Ry9;
	Tue, 18 Jun 2024 18:38:24 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJdin-0000000GE0t-0NMb
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Jun 2024 18:38:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718735897;
	bh=MFNRvjjOnL3WyEggZraz6UQzsDlOzpQ/AuHM8WKL9bw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=P/uqjpObsCm+ulQU4wZsplU14ylDkRchw7eGdqdlT2uNHRMUIruyv/z5jW4L8qb8B
	 vH1mgFRta+TpEtT8hMhISLWI2ub22ANtMQLM1P8g1vw6UvFagRsxyp2zP18EyT7Gxz
	 1AKRnFFtElcMtqRz03K0Vj/U7KWoMVv5Ptact/deehc1exvHOq8Zr9OmN85g+qBg4K
	 hKvXRPc2qrx9Rhg0eU5y+tnY+o2lsGqDe1xiV2WC3L1ODVWf9NoGW5SA3js0hm5Ggf
	 khynaCHsVsvmTD7E7DJPN0hR5gQyNAuYzk7FmVQ4jJKFeze3E1qo6sn/WrKFcerMG1
	 +aegEDxW3PbOg==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id AA831378219B;
	Tue, 18 Jun 2024 18:38:17 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 31DE24800CF; Tue, 18 Jun 2024 20:38:17 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v7 4/6] media: hantro: Add RK3588 VEPU121
Date: Tue, 18 Jun 2024 20:18:35 +0200
Message-ID: <20240618183816.77597-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240618183816.77597-1-sebastian.reichel@collabora.com>
References: <20240618183816.77597-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_113821_519486_3367F430 
X-CRM114-Status: UNSURE (   9.84  )
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

RK3588 handling is exactly the same as RK3568. This is not
handled using fallback compatibles to avoid exposing multiple
video devices on kernels not having the multicore disable
patch.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index 748187623990..05bbac853c4f 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -722,6 +722,7 @@ static const struct of_device_id of_hantro_match[] = {
 	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
 	{ .compatible = "rockchip,rk3568-vepu", .data = &rk3568_vepu_variant, },
 	{ .compatible = "rockchip,rk3568-vpu", .data = &rk3568_vpu_variant, },
+	{ .compatible = "rockchip,rk3588-vepu121", .data = &rk3568_vepu_variant, },
 	{ .compatible = "rockchip,rk3588-av1-vpu", .data = &rk3588_vpu981_variant, },
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
