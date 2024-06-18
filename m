Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAA92C2BBCA
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 18:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jyNhe+4f+7/dJgY29ClP5M9y7B2xs5jJRq3M2EzZE0U=; b=nLV19KMUYESnSk
	YB7bemT/Z4jWnuAPiJVVNUyiNexDs2/frWztIfVXc3ntWoznH52jdA5SPvue3f9armUA5BM/DjZGT
	LxhnWHlHGqNaOsHV0bR2S4F1urHrFO+8ig25xQj0TnqRLLlJiZFgvaesdVIcETVuMbR44KIqmxilW
	gk7wtiG6UZDFKd6YvJP4tBEzWt1cWdxdrgALwJ+829pHuWm1zprpvkpsM+eaGWt/R01ePn9lQ2d3z
	NeP4s/jnJ2sD9VxhqlV8FN++rmnzgsZfuzKxIABAKRFqus/PlrOGKO678syLqOdnXxHRRUXAlEBo2
	SHX1VDYcgn3wNPVRcLCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJdiq-0000000GE3t-4344;
	Tue, 18 Jun 2024 18:38:24 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJdin-0000000GE0l-0I9P
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Jun 2024 18:38:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718735897;
	bh=ewO028FP+/fLIGrTwi46vVYeQqRp4FQ65WxGYZ1bq94=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cNu4QMr4W6+iL0HYbR8gw5sDoyO1SbWARXZq6VmtX3p3M/ahMCS/ysaOF27bSTDez
	 zZXyNDWhE4T24bE22Y61KNCwd8p1e04YAE8WdkMUH+FgmuFKsIPqAUW2RdM467duMd
	 kStKyMPSjSIiXwoW8pFTgJgDF45uSYvCm7wtfV4oW+RcZXL9c55gn98fQIfGGIjfnd
	 ZfI80k/HiO7p+LYV4ntHtTx4E33zswntOnC4Hx9hEhzh0h2z8b7YcBNOtpw+4HqG7x
	 +9df9up0g9YDicRnk5xBmChLCguB6ZeW2QlScUzhAxJXjb9i+PxAiIWUO01sAEwZNO
	 Yarbm3ZqxLwpw==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 99EA53782196;
	Tue, 18 Jun 2024 18:38:17 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 2BFCC4800C7; Tue, 18 Jun 2024 20:38:17 +0200 (CEST)
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
	kernel@collabora.com,
	Conor Dooley <conor.dooley@microchip.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v7 1/6] media: dt-bindings: rk3568-vepu: Add RK3588 VEPU121
Date: Tue, 18 Jun 2024 20:18:32 +0200
Message-ID: <20240618183816.77597-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240618183816.77597-1-sebastian.reichel@collabora.com>
References: <20240618183816.77597-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_113821_504468_8AF7AF38 
X-CRM114-Status: UNSURE (   9.16  )
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

From: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>

This encoder-only device is present four times on this SoC, and should
support everything the rk3568 vepu supports (so JPEG, H.264 and VP8
encoding). No fallback compatible has been added, since the operating
systems might already support RK3568 VEPU and want to avoid registering
four of them separately considering they can be used as a cluster.

Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/media/rockchip,rk3568-vepu.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
index 9d90d8d0565a..947ad699cc5e 100644
--- a/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     enum:
       - rockchip,rk3568-vepu
+      - rockchip,rk3588-vepu121
 
   reg:
     maxItems: 1
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
