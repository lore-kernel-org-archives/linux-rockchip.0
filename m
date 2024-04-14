Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F629C001CC
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Apr 2024 15:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/gva8Nj4VhK4nK6RG46USe4cxGGxLRz8F0usj+vKG4=; b=flGafPOU6yjKq4
	sh9WLu+2arU5JF2hxfwnQeMAUmVhE1xrmMPYmAjJBZJ1bfKExpiGlWAFJsdXSItpHvAhGutq7vfV7
	u4a77pWOK4Gs/3FJ3wkjUAU7ZgHz6oai2H94rhpaztjDKGmti7Ftnvqpn9G1jgY0LSKC0uhlgeo7z
	B/IXTJ8mmJf5J8BTMsux33C43SMa4YCZmb/3yDMhF884Fn9Pz0l21YBd8y89WQCmHGJWp5I+1+ixa
	yBfK+UKhKk0lu1AtthjMTgM28ZZYsdLiUKUKt1UOtcAb2DXCVd4yJM06ivpkdojGw2gt+V+AzB80W
	zK1Ke5JdhYpZ6odIp0Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw1X9-00000005iN0-3AJx;
	Sun, 14 Apr 2024 15:12:43 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw1X1-00000005iH5-3ZRI
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Apr 2024 15:12:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1713107519; bh=gGzIdCw12QXG2TxloTRvkWREcbVU89z7DbBLoR6ZGJA=;
 b=PXAcft8C5jzX1iBhgHoO3sH5Sh38isq/WaBouSiFCichcZtGpGTY/aQGbVj5ipft69r/pC/do
 5sGEqgLnKJ+0604bVB+v68DBqRi32QgGLrYrwuh3EjeCxxY1S7Ot66PjU2FY6NK5w4y75W1yAxd
 qf5kDWV7lkJ0G55VUXFpLB/ZYc10Dp1M+xZAw9WVT72kQDLYO16WVZTfefmGaPguXCwoHEvRGs7
 UUd1yfg4kkilAtT3VmoIaxVSuzzJ2lh7Vfb30MDi0g4Ak3Kv2dNQ6X9tMHHScMJJcsm9JhKqAhg
 lNqAJnlcORxKgv5+K8DqcFV1unePIxvkkAV6kFHSCRMA==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Andy Yan
 <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>, Daniel Vetter
 <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann
 <tzimmermann@suse.de>, Mark Yao <markyao0591@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>, dri-devel@lists.freedesktop.org
Subject: [PATCH v2 3/3] dt-bindings: display: rockchip,dw-hdmi: Fix sound-dai-cells warning
Date: Sun, 14 Apr 2024 15:11:29 +0000
Message-ID: <20240414151135.1774981-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240414151135.1774981-1-jonas@kwiboo.se>
References: <20240414151135.1774981-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 661bf23c99ce03c87699d74d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_081236_353524_022F4959 
X-CRM114-Status: UNSURE (   8.86  )
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

The rockchip,dw-hdmi node can be used as a sound dai codec, however,
dtbs_check may report the following issue:

  hdmi@fe0a0000: Unevaluated properties are not allowed ('#sound-dai-cells' was unexpected)
  from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#

Add a reference to dai-common.yaml and add the #sound-dai-cells prop to
resolve this warning.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: New patch to fix #sound-dai-cells warning
---
 .../bindings/display/rockchip/rockchip,dw-hdmi.yaml           | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index af638b6c0d21..3285fff54416 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -15,6 +15,7 @@ description: |
 
 allOf:
   - $ref: ../bridge/synopsys,dw-hdmi.yaml#
+  - $ref: /schemas/sound/dai-common.yaml#
 
 properties:
   compatible:
@@ -124,6 +125,9 @@ properties:
     description:
       phandle to the GRF to mux vopl/vopb.
 
+  "#sound-dai-cells":
+    const: 0
+
 required:
   - compatible
   - reg
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
