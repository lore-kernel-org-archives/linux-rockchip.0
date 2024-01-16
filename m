Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D4E1C4706C
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 08:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YY/02AobYPYAM8pjqJIGuUxMpnoRq1+3grbT8QawpEw=; b=X09A/rJVgDXudI
	wg5g4kK5+lzPJoupY2Uv8ErD7JOX8qt5BjBzuqhs5pKRY3oF/xSLnVHwEYGZVB3ga2ir0KyXkDsss
	VJZlFVJr1ACAFXV1Yz7u6k7VDPR6yYlosDug/2OFpO7VPaiByX3yemoZVfMhnJ6sbjodQvQZDmhrY
	p0NCtPQZdFLlvqgVOc2HuhMdy1g09w1Bpvk0uY35fnpzWFNlSmWlWTqhxNhlutZbzGOBdGKlm9v6F
	+5iqA9aVmzLYg2nqZgNJF4W/W1+5hOmBc1DhcEaB8GnVkfmc+vp/4xHzGGPUq+atPf58ZByHSlNxj
	hh6FcVrfvhpqJp7DTGXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPf5r-00BSTv-2O;
	Tue, 16 Jan 2024 08:46:47 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPf5o-00BSSN-3C;
	Tue, 16 Jan 2024 08:46:46 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 717543200B22;
	Tue, 16 Jan 2024 03:46:43 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Tue, 16 Jan 2024 03:46:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1705394802; x=
	1705481202; bh=+17r0Un58EPuippchMhMs32wnnmhSQrNhZlHlh0KRMI=; b=T
	Q/+wzMAE6deHpwr6N169FX6P3XJHxAqjXlEmgFgTe6rJfrmaRPp0uhjpCEF0/xv6
	AaZ1xlfDI7APdj6Z2xlVOG2Gd7VruQAnrOfKvscdt1CyTo+DVPJzeoodxX0A6adB
	vwlnD6JMUcYgmaY54WVBMbCXzVaE5SnCcdg8ovUBF8gWb1skpb3IZEeiyGWDiP4r
	IvEpE4AYwxtMiZw4CiNTxsM9Cr/sQM2gOibUUIQfVyJviJasGY5uBiLqtLXCcLtn
	BGA916sA0aGU5ioeeLs45Uv387l/cmCKq/Ml/qpVQoLyjfkb74x+BlYg+HU7Vac9
	nL3R09tXW+FCkkZz1xTGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1705394802; x=
	1705481202; bh=+17r0Un58EPuippchMhMs32wnnmhSQrNhZlHlh0KRMI=; b=J
	5nmHJbsF2iIGP+KbMUgcKV+w+hZh9y5UKVq8ZYBd5ALQmuDU8DIK37C248q/3oFE
	o1ygASbFK5AGdOojNzW84WloAiBHpRCbqSmGAPqIl84MIg6OITv+dfkI/9HifZEH
	j+AB3mI3EPg4HzI8Mw7Q31jB7aR4/gp0ZIbAfpIaXGXYOnugLytbYuLOZ5YwH1V1
	adoEpkK3JzyRmbBgTNkyvbmSHbgrdFfpbzdm1ol1xL8N/yF49rHdtl6eZFEQh0Vb
	jam9jFyzwTFiZMqfayDgXayCD2FaFYzS48T2IruaNzyp/tjT6k6ltW+WvPXx18lq
	s6xZWhd7eMJfBmVAfAIJw==
X-ME-Sender: <xms:ckKmZQ98PICkVvVpH9AKqifszg77niwjeCsI_KDjd3feJMP5IsbTog>
    <xme:ckKmZYtoAJkOfYWhOYClLuI0F2WeNnXEcwtX70t1nsOp8dQ9bj1Q2nzSFve6d81S6
    rztNH26CA>
X-ME-Received: <xmr:ckKmZWC9nWTCjRSe_nQQXxefKDJv0-8mB9fHrE7wo8I0dA3IW-BnBCTZhveWZOR74CA2XAQALgQzQlHEeZK1Lg82guisQ9u4eLo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdejvddguddvhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepfeffuefhteegieekjeevgfdtfeethefgvdfhteefueffuefhhfefkefgkeegheei
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimh
    esfhgvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:ckKmZQdOsahFIN2U49wOszFZGJAHQPWYP09C_2npbg5e3EHzvBc02A>
    <xmx:ckKmZVNHUFzqcM2XZHlB4Dvn3QrOghuVf6NU9TwjQv0uSaccoCa5wA>
    <xmx:ckKmZamMranHb8-sdRn04sTLQ8C9qT9t1N98AwCZv4VCk-q8wDvPyg>
    <xmx:ckKmZWFU8xKx-NdZmeFzNiFUHUF1voFeqUcRUZj_j9d2rL_D6BFHEQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 16 Jan 2024 03:46:37 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Tue, 16 Jan 2024 19:46:34 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Tim Lunn <tim@feathertop.org>,
	linux-arm-kernel@lists.infradead.org,
	Chris Zhong <zyw@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Zhang Qing <zhangqing@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: rockchip: Add rk809 support for rk817 audio codec
Date: Tue, 16 Jan 2024 19:46:16 +1100
Message-Id: <20240116084618.3112410-2-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240116084618.3112410-1-tim@feathertop.org>
References: <20240116084618.3112410-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_004645_062964_4B87DEA2 
X-CRM114-Status: GOOD (  15.12  )
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

Rockchip RK809 shares the same audio codec as the rk817 mfd, it is also
using the same rk817_codec driver. However it is missing from the
bindings.

Update dt-binding documentation for rk809 to include the audio codec
properties. This fixes the following warning from dtb check:

pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks',
   'clock-names', 'clocks', 'codec' do not match any of the regexes:
   'pinctrl-[0-9]+'

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

 .../bindings/mfd/rockchip,rk809.yaml          | 30 ++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
index 839c0521f1e5..bac2e751e2f2 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
@@ -12,7 +12,7 @@ maintainers:
 
 description: |
   Rockchip RK809 series PMIC. This device consists of an i2c controlled MFD
-  that includes regulators, an RTC, and power button.
+  that includes regulators, an RTC, a power button, and an audio codec.
 
 properties:
   compatible:
@@ -93,6 +93,34 @@ properties:
         unevaluatedProperties: false
     unevaluatedProperties: false
 
+  clocks:
+    description:
+      The input clock for the audio codec.
+
+  clock-names:
+    description:
+      The clock name for the codec clock.
+    items:
+      - const: mclk
+
+  '#sound-dai-cells':
+    description:
+      Needed for the interpretation of sound dais.
+    const: 0
+
+  codec:
+    description: |
+      The child node for the codec to hold additional properties. If no
+      additional properties are required for the codec, this node can be
+      omitted.
+    type: object
+    additionalProperties: false
+    properties:
+      rockchip,mic-in-differential:
+        type: boolean
+        description:
+          Describes if the microphone uses differential mode.
+
 allOf:
   - if:
       properties:
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
