Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67592CA1017
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Sep 2025 19:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2udgwV9nvj8xiqbM/91RI3htbsO5WJaweN/cZRcMZok=; b=mbY8Cq3ISKr85q
	CRUQhn+h7+zNx5Hiw5UEkpEmXTAMvv7G9h64g/d9UmnoX5TVQ5ek3Yu1SGCiWr6tqNvUgNbF8w/Eb
	EA/5e3WGt30tOhGTWnve0n0zfBEexT75pjBvp1uOpoHBgoV6Sjb5EaxBxUtgXTbvRqbidcLkpy7dB
	PizOmeBj8dTtezWrsv1GHm+z2kQbomdsDyDwBEyGaiyE/2akyJDhNBdDisOoTJLIftgZG6eHC/NfJ
	trXgxWmMBk9+db+5RjD8i2cZ8Jkj7Dp/GnKU/J4L3GpfeGdqgfT5NrsBazWY+KP2ycWEiX2wEzL8a
	9/pGQumeu/Zg6bKmxY8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uucJF-00000004ECL-1O2D;
	Fri, 05 Sep 2025 19:41:21 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuZAr-0000000341R-1tsI
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Sep 2025 16:20:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1757089228; bh=vPBR/G1y7xyavSQpDAIp0nog4SwQ2XUBPu6qeNurwdE=;
 b=EMdwUvBGlqquSXurotr2f1DmW+x8178y7oB3eCM2yCUQH0I6gug7dfd9UxTNSYHotETINMjKe
 ufAkWkgMYlDIs3zClMipVosL2mJ4UO2i6StkTF6sHDMNPvptn6csNhlEsF9BJlbV9G0Z+GhJltY
 Zky+v9z3Ex9dGhHJ2cqcb1Aobn+HPmtm8baVqwL20AySI8Ybc7ZHI3ebyB14oj1GbgQdZTTJ9mH
 lrg6TaP4NaO3luQNV6o7jVNWh7RtmoVFXP6/szOJaymszbESp+SxVM0mDbifGX8syJZYAoH55WG
 WuMweJQmC8gv0tZNfBh9ESJl2rIPis+/P0PhcIGVmcMA==
X-Forward-Email-ID: 68bb0dc690d039a4fd84d704
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.2.13
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 6/7] media: dt-bindings: rockchip,vdec: Add RK3288 compatible
Date: Fri,  5 Sep 2025 16:19:24 +0000
Message-ID: <20250905161942.3759717-7-jonas@kwiboo.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250905161942.3759717-1-jonas@kwiboo.se>
References: <20250905161942.3759717-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_092029_528353_6220D7A1 
X-CRM114-Status: UNSURE (   7.94  )
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

Add a RK3288 compatible for a version of the Rockchip VDEC IP that only
support HEVC decoding.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes in v3:
- No change

Changes in v2:
- Collect a-b tag
---
 Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
index 96b6c8938768..809fda45b3bd 100644
--- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -16,6 +16,7 @@ description: |-
 properties:
   compatible:
     oneOf:
+      - const: rockchip,rk3288-vdec
       - const: rockchip,rk3399-vdec
       - const: rockchip,rk3576-vdec
       - const: rockchip,rk3588-vdec
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
