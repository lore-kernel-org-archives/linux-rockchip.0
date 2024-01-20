Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7A47C47258
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Jan 2024 13:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOYBq8jUvBaHteIJMCiKHZBhdHF2Gs1Yfq2qk0ePfDY=; b=NQ+/WXHuT+z/lS
	bRDkdYviGthNDf+7BQFD9qZOkbZKBq04ZYFJJiNX35ru+lickGjKb6AUxluRzmtH3oWfPq9zqfmm7
	h64YJKxWyzC8WOSR9MAznPqrXrwCRAavwFkjCNnqLrkUuSk3PZNlEVVLjs8y+8F2xnmJ8zfNWSica
	jhv/JTs1Xl0B9lsMKX7CmFgT3VFMrFrmUa7ib/GXxWPnm456XyHfk2QxlNyZKPyMuUoiTDM8wT6zE
	vZz+gypQlT3PSzN/dKRLSXEklhH+Ak0QQ2HrC9i8M9TdR1f/WyNshfA+TIEea+boPMdVGlM85GMUj
	CgVzxYGPAT0mAof2GIhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRBpU-007w9O-11;
	Sat, 20 Jan 2024 13:56:12 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRBpN-007w6X-26;
	Sat, 20 Jan 2024 13:56:10 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 00B7E5C0109;
	Sat, 20 Jan 2024 08:56:05 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Sat, 20 Jan 2024 08:56:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1705758964; x=
	1705845364; bh=H3ZIhWvDzeIyb6EIczhf//Qpvcp1gbT/BqWghJiTSGw=; b=l
	4w2gcnQq2kdMz316sGwX2QVWhr127q+uhsCfYs2W7sIQtYJtGDNACi3vxNsMhtvp
	fOK3quuX0+JRhWAkWuf5i5RshiZlxwKo21F2nXVMYBbnRulIXNe+1x+kM+jk5y6P
	+cxjUA5X9NGhc6j14OAclMkYx6PV631ItqGkgjWMzHgJoxL/YtcyA3NNmAAk/dUq
	hXchz+6iyDIK+GyZtHL29OnH1M2nXGzjpMpGkdJe8pvVGs0F5SgShqxZqmJI2dWm
	5HhvFMFQcijNsiXRAaojm0m7jPuzJwP0KV28SgqH4Xk6gLrj6cLsJQ3T3KgcVZHY
	qHTwRTbYYVSZa4Df0thYA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1705758964; x=
	1705845364; bh=H3ZIhWvDzeIyb6EIczhf//Qpvcp1gbT/BqWghJiTSGw=; b=r
	2yLakiMPGF5GD9lzyOksYt0B5QuZk5chHFuaSwd6upDhKn2NAIVLJnReX71DIfvS
	ZZkszwe1nkyrKTjwDfFDX2593jJA3k18HCYw5Oo1vwLIY6IgknLEJpCJE//zGaJJ
	qEUTHI3aZTnkja34jtaU7qxrmG864wSgg7IZbfDU79TLu3PETcL5NcazcufW3xdP
	QnyoKXml/rJhfYSC/dka9YPW9Dn358DesFz8KAxh5orux7JI800CUGSw3Cife6Ni
	TARtGA1L8tbcnypZ+/cPH3YzIpjCly2/SWVJ6UGrME0gOEFLROYmdLRRK+SMZRCc
	aZckcv2XSh3CbnTL9Iu0A==
X-ME-Sender: <xms:9NCrZe1FA7NRDZWR9q2mDcBWnVfq77DUhQSpewLNBaAko5n0hdHgCQ>
    <xme:9NCrZRHQqW3A8OEVI27_Bys2y12gzLSI7UUcseXtvoCxcrNahgiTsrIvDBGtBCSS0
    2y0mRNbhQ>
X-ME-Received: <xmr:9NCrZW41Scf-k7zp-Oil-kMDsPkMnPx9UG6_bX0zf0yhukGJibkSAyPF9NCYCjBQUCoYMIu_y4BDtMn9lDz1qKXMDKzCqUqFvk4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdekvddgheekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:9NCrZf3_d4oQdDrgMQf8h_fiD5pQa2E-fvszlYwohXwKH1HEJ6ul5Q>
    <xmx:9NCrZRERlWR6xMwR2ytPQgdQpB4fzfFhW6ZSmkHgbpTluXNC33wx9A>
    <xmx:9NCrZY8mYLuzBrPYKj7sXjZhF-OX_r8byBtAlsi6ZyOsLfpjf7OK6g>
    <xmx:9NCrZQfj0KdnC7DQDDjLLvP7EyArEEaaIOpGuT_CANDYhjjsJUD_jg>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 20 Jan 2024 08:55:58 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Sun, 21 Jan 2024 00:55:55 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	conor.dooley@microchip.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski@linaro.org,
	devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	Tim Lunn <tim@feathertop.org>,
	Chris Zhong <zyw@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Zhang Qing <zhangqing@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] dt-bindings: rockchip: rk809: Document audio codec properties
Date: Sun, 21 Jan 2024 00:55:28 +1100
Message-Id: <20240120135529.899403-3-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240120135529.899403-1-tim@feathertop.org>
References: <20240120135529.899403-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240120_055605_756097_275790CC 
X-CRM114-Status: GOOD (  16.18  )
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

Rockchip RK809 shares the same audio codec block as the rk817 mfd, and
is compatible with the existing rk817_codec driver.

This patch introduces to the binding the standard property #sound-dai-cells
and also an optional codec child node to hold codec specific properties.
Currently there is only one property in this node however the downstream
driver shows a number of other properties that are supported by the codec
hardware, that could be implemented in the future. This maintains the
existing driver ABI and keeps consistency with the rk817 bindings.

Signed-off-by: Tim Lunn <tim@feathertop.org>

---

Changes in v3:
- split out clocks into separate patch and group example properties
  where properties are introduced.
- remove descriptions from #sound-dai-cells node

 .../bindings/mfd/rockchip,rk809.yaml          | 23 ++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
index eb057607dc54..be0616201f52 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
@@ -12,7 +12,7 @@ maintainers:
 
 description: |
   Rockchip RK809 series PMIC. This device consists of an i2c controlled MFD
-  that includes regulators, an RTC, and power button.
+  that includes regulators, an RTC, a power button, and an audio codec.
 
 properties:
   compatible:
@@ -93,6 +93,22 @@ properties:
         unevaluatedProperties: false
     unevaluatedProperties: false
 
+  '#sound-dai-cells':
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
@@ -137,6 +153,7 @@ examples:
             pinctrl-0 = <&pmic_int_l_pin>;
             rockchip,system-power-controller;
             wakeup-source;
+            #sound-dai-cells = <0>;
 
             vcc1-supply = <&vcc_sysin>;
             vcc2-supply = <&vcc_sysin>;
@@ -281,5 +298,9 @@ examples:
                     };
                 };
             };
+
+            rk817_codec: codec {
+                rockchip,mic-in-differential;
+            };
         };
     };
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
