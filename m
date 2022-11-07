Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4893C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Nov 2022 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uP4TetUR2VXc+zKKfHpk9y2NKGBfNbIlCyza53/yaFE=; b=MWZ/fQiCcakAxm
	wMoXgGrZKWdeXEouN0p41VxyffTqqvtlrxpE0xBa5GbPZuwSt22Qt7eRcbAOeQ1rjeDrcGWA0a8bG
	iR8s1dcqwb7IRpylkNrOgX5STCazyh5hhmVmgoihhUKysrBT1gTQRaX1sHYT3XnkiYIgzobha3cGw
	hyjKd1k9k6bzp5UJ4mlzW3a3IHP6Dm1l4jXhihXJpU5l/yynskmgY2CgcGV0qjyhrzyc6JVzzwjoz
	30GgpKOyRvaI1RjNFEbayVu1aHuAqpe8dGZMMqdzBhwYPvIIB63Upzr416tSQMefVKHzaD/+si6LJ
	x5yJEvWiSVzAf+CPddHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os6Wl-00H2ui-LS; Mon, 07 Nov 2022 18:07:19 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os6SD-00H0pL-NH; Mon, 07 Nov 2022 18:02:39 +0000
Received: from jupiter.universe (dyndsl-091-096-035-235.ewe-ip-backbone.de [91.96.35.235])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 00F11660038D;
	Mon,  7 Nov 2022 18:02:36 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1667844156;
	bh=ZdgOH6lGZhFE+KlJP4uiV6KrqS4r/DXVf5QVCbko1Gc=;
	h=From:To:Cc:Subject:Date:From;
	b=Ecg5FseGtNWkruj8IeyJzL0xvhHhnXGS5KtTndcH/17eXzpQt8yV7j6sj/j6bI+ge
	 dyQ8ltOcdfQ2lQ2He14QsFQfhE+M135Ooz8ndqwGfe6vuLEsRdn1ugbBOxZ7Y0tsMK
	 fVIH0qIh8cGZqCE8yKAY6IANdJkrqIhmVAUi9XTS17x/pv7l8kY8lby25E+BJ5mkoC
	 HUrdKFxehBclFHQay3EV3pDgs481zFHsQThX7UwRhWe5vi9tKKNkk+YqvU7V7zG2te
	 trx0rBg4achmbgh4M2VsEAMp5JRu/bnEjDcqLoWwrHTMq17vH60PAUG36wg2u3sna/
	 K+8g5HOKQNGRg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 5D56D48011F; Mon,  7 Nov 2022 19:02:33 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv2 1/1] dt-bindings: power: rockchip: Increase pm_qos number
Date: Mon,  7 Nov 2022 19:02:31 +0100
Message-Id: <20221107180231.73663-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_100237_926240_E009FFE2 
X-CRM114-Status: GOOD (  10.48  )
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

On RK3588 some power domains require multiple qos blocks to be
saved. The maximum required number for RK3588 is 8 (for VDPU).

Acked-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
Changes since PATCHv1:
 * https://lore.kernel.org/all/20221021171405.86509-1-sebastian.reichel@collabora.com/
 * add minItems: 1
 * add Ack from Heiko
---
 .../devicetree/bindings/power/rockchip,power-controller.yaml   | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 0d5e999a58f1..dc877416e1fd 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -134,7 +134,8 @@ $defs:
       pm_qos:
         $ref: /schemas/types.yaml#/definitions/phandle-array
         items:
-          maxItems: 1
+          minItems: 1
+          maxItems: 8
         description: |
           A number of phandles to qos blocks which need to be saved and restored
           while power domain switches state.
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
