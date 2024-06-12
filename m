Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3000AC27C77
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 17:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fPThGAz12MeH9PjQlTm02EbSkiyt0hpEqNctSArKrZw=; b=SKDx5tQ4MI5Q3K
	+m7L+9C3GddZ5w7e5M4LvTxTuW/AeHvLX6j4Z89LgCqpF2g516H0rVa+EDHa2j5ZiXZIoG7UTzRz4
	UQ1MVdefhBtuemIFMRwZvEpveZpCCYabwdGdSyQ5Iahz+vad+BEEPuxuFYb0I2VjH0gVyccB74y/M
	b9WMqqHLmwnefwoc8UFxUi3mrRnbCCKZaLjzJ/pCNYHYmruwzKlk/DopvGKJljmogr4Qa1skBDYU9
	cqxnyUpKHHE8slXuNAhTVWyfczfDJ/lyOfvoXl3LCUp7KMIrPySif942sX8cU3dz3nFEigwZ3GxHx
	xN6l6qphXprlpaPQWJ5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHRpl-0000000DaP4-2H5d;
	Wed, 12 Jun 2024 17:32:29 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHRph-0000000DaLd-1e6Q
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Jun 2024 17:32:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718213541;
	bh=qT3T7wi3nE+eFhkZ2bUnCRb/SyRrxFgNwM5t87xUarI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=f7WvOn48Zarlf+9C1J/sh6Z/Qf3l8ugftHR2RXi05xjXmPAVPn3HjySLkto+GtntX
	 IOcxZwleqeeZ1J1OnqV5vDMMTvxM11ChjP/M0zv9VzWVZuJo3kv0ubKb8vix9N5BGt
	 u8gV9bXASfQhuLm9mq3Mzr54L8lgRXRhkoCI5ZtOxH6wimSzF+2+Trmp5iE5cq3vmq
	 d4Ie6pjUHsnHQHA3ZlfJjNRu/o2P8IepqEcJFqg75Jor1FUiwKYLR+a/i1X74HsLby
	 H8Cs/5K9cnxsB00lS6tGXP2d2rMWz8mSONzemrQVQnrDySR3dPHW0iO4wDtdMWlHbH
	 sTN6WPobSMLJQ==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B4D8937821A0;
	Wed, 12 Jun 2024 17:32:21 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 5CAC14800CD; Wed, 12 Jun 2024 19:32:21 +0200 (CEST)
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
Subject: [PATCH v5 2/5] media: dt-bindings: rockchip-vpu: Add RK3588 VPU121
Date: Wed, 12 Jun 2024 19:15:42 +0200
Message-ID: <20240612173213.42827-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240612173213.42827-1-sebastian.reichel@collabora.com>
References: <20240612173213.42827-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_103225_634292_89C2A5D9 
X-CRM114-Status: UNSURE (   9.61  )
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

From: Jianfeng Liu <liujianfeng1994@gmail.com>

RK3588 has four Hantro H1 VEPUs (encoder-only) modules and one combined
Hantro H1/G1 VPU (decoder and encoder). These are not described as
separate IP, since they are sharing an internal cache. This adds the
RK3588 specific compatible string for the combined VPU, which seems to
be identical to the version found in the RK3568.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index c57e1f488895..2710bb2fb0d1 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -31,6 +31,9 @@ properties:
       - items:
           - const: rockchip,rk3228-vpu
           - const: rockchip,rk3399-vpu
+      - items:
+          - const: rockchip,rk3588-vpu121
+          - const: rockchip,rk3568-vpu
 
   reg:
     maxItems: 1
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
