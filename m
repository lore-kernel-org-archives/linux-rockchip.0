Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24AC9C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 17:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Km9Kb8S8dzZjo5jOVyk+NXeiJ4tv0FgRw2YeqPGD+AA=; b=EosCj3izp9f/uZ
	T3jZIv+8h1vGNnu4YuzpHeWmGP+N4Q65FKyurrWU1Mc7CzkjKX+lHAVl/gqf4keeTbQlUY5G2gPkj
	LxBmyhVw8fKBbc/mHauqtgzAAcK6faicSvbrnHXrfB/p6fmgpVDk1qI6Or2L2DRcgUZXHhAnp9a/e
	CzBeyjqMOg+QWft5iwpBmhe9LKOGOxrHyHHjtcaBhVnoqzvhirlwtuCgRb13mH0ZXk5p96lQ94lwC
	4OPmshmrPRkSftcIr5qgME5iMjy8Vi8kE+CWt1udGlc1PQJjCbsItnHWnae9+A5wJOGZQ6o67/h0/
	m3TZkKw+yG045ijPQbOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxB3u-00GZ9r-HC; Mon, 21 Nov 2022 17:58:30 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxB3r-00GZ7E-On
	for linux-rockchip@lists.infradead.org; Mon, 21 Nov 2022 17:58:29 +0000
Received: from jupiter.universe (dyndsl-037-138-187-016.ewe-ip-backbone.de [37.138.187.16])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 61BA46602A38;
	Mon, 21 Nov 2022 17:58:25 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1669053505;
	bh=j6U1J97xtpvnDEk8MFhf+VZfguyZclzTAFUGOJNjV70=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eTC4qc/GWzPqvlG6ZPN2MSRoxLe1cvqj0N4XMq8hHm70dFJkm7Gp7P7B5NdxqiPT1
	 8vlR6/EX1kZNqUFRoTKTBGtCOo+zlvP/9Zy9eOY5RHQUrvGh8nRL4PGTmzop4stapo
	 08ewUq3rm27rUNkD0yCdLA+e5vUbYf0yUzY0LwciPt85eyO3xU6qRzmMf0ZcVm4drN
	 CvVZ4Y66rmYE5YPviA4HNKCvyORORkA/tdb3ytCfKHInu2jXTQQXIxF5kVaEJilxPu
	 EbDUQnY3ivztSuXg2j5UF78pBPXfC6jNOQRrIxKhE2PxOLVEvtLqQQviLnRzGqrTgQ
	 2CG2gXrMyPHIw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0CA5D480114; Mon, 21 Nov 2022 18:58:23 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Rob Herring <robh@kernel.org>
Subject: [PATCHv3 1/9] dt-bindings: soc: rockchip: add initial rk3588 syscon compatibles
Date: Mon, 21 Nov 2022 18:58:06 +0100
Message-Id: <20221121175814.68927-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221121175814.68927-1-sebastian.reichel@collabora.com>
References: <20221121175814.68927-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_095827_961476_FA91C14F 
X-CRM114-Status: UNSURE (   7.92  )
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

Add IOC and PHP GRF syscon compatibles for RK3588.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 2ed8cca79b59..e682b407a383 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -20,6 +20,11 @@ properties:
               - rockchip,rk3568-pipe-grf
               - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-usb2phy-grf
+              - rockchip,rk3588-bigcore0-grf
+              - rockchip,rk3588-bigcore1-grf
+              - rockchip,rk3588-ioc
+              - rockchip,rk3588-php-grf
+              - rockchip,rk3588-sys-grf
               - rockchip,rk3588-pcie3-phy-grf
               - rockchip,rk3588-pcie3-pipe-grf
               - rockchip,rv1108-usbgrf
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
