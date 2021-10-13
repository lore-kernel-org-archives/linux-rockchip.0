Return-Path: <SRS0=uHDa=PB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AD1C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 13:51:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 23F8260F11
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Oct 2021 13:51:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 23F8260F11
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gp5vVUS/zYHbW33kgO+2h7S7q0kwZDqw6IX8QDyr7YY=; b=Qeh5Cc87U7R0Km
	Myw/iWXAjO0IJfMkXotL4cCuMczg0bdJfEeHitIWhOmt0/gdSqk0wHBS/oK5/0yQ44o91IkyhusqW
	+gHTf7SfmQl0IYJIbw8/8aIk6zA3fr/iS1cZBhLd/nC6fS7Y4iEqqWW5l3Zk3dIybvQnlDYiodAjV
	fRMCP78ALB4borNLoGpinhAMtebb8jntcnt/NjhfzMs3qQ7FVxtGsI14ICRIb66YRISWvH6wEOS5z
	/Gezw7sTcqjdaqnfy/DcGhGru6lIWyplU6UjOFuTcBmzgFw5r1R458WFlmWz1QhxkrQvg/o3ECJn+
	9MJHSvCQYJfqVhAdlqJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maeey-00H0Xr-KF; Wed, 13 Oct 2021 13:51:08 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maedl-00H0EI-DL
 for linux-rockchip@lists.infradead.org; Wed, 13 Oct 2021 13:49:55 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:9c93:91ff:d58:ecfb])
 by baptiste.telenet-ops.be with bizsmtp
 id 5Rpk2600J0KW32a01RpkbH; Wed, 13 Oct 2021 15:49:46 +0200
Received: from rox.of.borg ([192.168.97.57])
 by ramsan.of.borg with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1maedc-004bZh-7n; Wed, 13 Oct 2021 15:49:44 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1maedb-0035bZ-Nx; Wed, 13 Oct 2021 15:49:43 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] ASoC: dt-bindings: rockchip: i2s-tdm: Fix rockchip,
 i2s-[rt]x-route
Date: Wed, 13 Oct 2021 15:49:42 +0200
Message-Id: <606809e10db02f92b1e7f90c491cc72dd8e16f79.1634132907.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_064953_667226_E5DC869F 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

make dt_binding_check:

    Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml: properties:rockchip,i2s-rx-route: {'required': ['maxItems']} is not allowed for {'$ref': '/schemas/types.yaml#/definitions/uint32-array', 'description': 'Defines the mapping of I2S RX sdis to I2S data bus lines. By default, they are mapped one-to-one. rockchip,i2s-rx-route = <3> would mean sdi3 is receiving from data0.', 'maxItems': 4, 'items': [{'enum': [0, 1, 2, 3]}]}
	    hint: "maxItems" is not needed with an "items" list
	    from schema $id: http://devicetree.org/meta-schemas/items.yaml#
    Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml: properties:rockchip,i2s-tx-route: {'required': ['maxItems']} is not allowed for {'$ref': '/schemas/types.yaml#/definitions/uint32-array', 'description': 'Defines the mapping of I2S TX sdos to I2S data bus lines. By default, they are mapped one-to-one. rockchip,i2s-tx-route = <3> would mean sdo3 is sending to data0.', 'maxItems': 4, 'items': [{'enum': [0, 1, 2, 3]}]}
	    hint: "maxItems" is not needed with an "items" list
	    from schema $id: http://devicetree.org/meta-schemas/items.yaml#

Drop the "-" from the enums to fix this.

Fixes: 510f1c133aedcf69 ("ASoC: dt-bindings: rockchip: add i2s-tdm bindings")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v4/v5 differed slightly from what Rob suggested in his review of v3
https://lore.kernel.org/all/YS6kHkeOKCJMOOIf@robh.at.kernel.org/
---
 Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
index dce8b4136ec6db4e..ce3e18b50230dc9b 100644
--- a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
@@ -112,7 +112,7 @@ properties:
       rockchip,i2s-rx-route = <3> would mean sdi3 is receiving from data0.
     maxItems: 4
     items:
-      - enum: [0, 1, 2, 3]
+      enum: [0, 1, 2, 3]
 
   rockchip,i2s-tx-route:
     $ref: /schemas/types.yaml#/definitions/uint32-array
@@ -122,7 +122,7 @@ properties:
       rockchip,i2s-tx-route = <3> would mean sdo3 is sending to data0.
     maxItems: 4
     items:
-      - enum: [0, 1, 2, 3]
+      enum: [0, 1, 2, 3]
 
   rockchip,io-multiplex:
     description:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
