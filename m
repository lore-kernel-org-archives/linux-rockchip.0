Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46F4DC47077
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 13:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmsogS+lF/Q4KDNFTyM6mRtGCOXvFF6Ro4yco9TlB4M=; b=Hk59EHG+Hezq2g
	YAa+wRdZ+En7t+DLIdzER3hRvbWeP7wCIjKVv1lUQGrvFL3nc/OAxxJMahuI2N5bdyhoI3HxvLluf
	Ayd73DoXBHg7BzHnoxsYMmOC7T46sPmgG5V0hfxpfN53XJ76ilGWd3fpbxjwPg2miS5SU6DsD1a5Y
	gcLuyqrijOBzAnkenFGg2OTGORtWXgMFoxVsBnUgAFO6y+zK7Wfg1QbOTSFoUgSSamTUprh8uDU1e
	97XZAv3wyawHv1iuD88ezqoHrFmiHuGEYlTCJBy8/z2H6ay+b181wy9NSUwMXKrxzRcQlBc6ZLQbf
	D/jnc/pe2X/aCBY1c/8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPjO1-00CADW-1I;
	Tue, 16 Jan 2024 13:21:49 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPjNw-00CA9w-1E;
	Tue, 16 Jan 2024 13:21:46 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailout.nyi.internal (Postfix) with ESMTP id C3C905C01A9;
	Tue, 16 Jan 2024 08:21:43 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Tue, 16 Jan 2024 08:21:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1705411303; x=
	1705497703; bh=RMgaWg9hRvrDkXQrNiaOtNKt79w/zahXRyvkBwhz6CI=; b=p
	a+BHsnOVFNEhy4yroFQTqyqGKxJHdfzMVtGcrghhCnmGnu7l/2WTldCeAcpg/ynE
	lQzVY2QPl4//PZi1ABJaavnLl8Ik5hacXgJyoAnZf2OCDeRwjt5H1sCwK1roxMbe
	pUATKmdRibIr0wQSq6Ov3IV69qg05lJ7gLpf3M8bKeb/6ZNl6xxzFvXsyw0oNonv
	80jg+DhcosuFaZSA9qcITIVPd3QwaB0twwW0L+myBfJe5JPJTO3tZwk1VHAcpCwJ
	clwXVZOa+8TdHhK6ZB+81QabL7Qpcpuk6AZ5YToGHdZpd9FS9plpFb2xNHgyo47A
	pat4pK7DuAXHvQQ2w+Ckw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1705411303; x=
	1705497703; bh=RMgaWg9hRvrDkXQrNiaOtNKt79w/zahXRyvkBwhz6CI=; b=d
	pe6lJJ61pl+D1ECDjyP2pmZChQXohrzTJBB6IkRQXSkq6mCLVTbrQCR8uGvWbjLY
	+NzOAuiPjst8ILYJz3CHI29aSJ2gY+b7bP27+mUDUpBwljUjO+Ju4KwYhEIUlYz7
	4V09T+9b+BMYFV2t9AlKHBBCZfZhgQXtCGpMyaVJyxeAn3oag5g8CRJhQcxb0q6q
	y+d8nmvdBCBL++1b7pNKNbmvZ821Qhm8v/qEkV/C6lImMdMLhXIYMzd0/Ptjm6LV
	oLJQOfj+NEdcAVS3guxGKqjtuNjl+5eROqiNBsz0lqGIc4TOOKZk/SmSoBRj1rkF
	NZblvcas2100to8KBhPCg==
X-ME-Sender: <xms:54KmZUr9kZ1cGJhj410QnsRm6YpUPe3Jx4TDsDFUzBCK7cAPpqM6kw>
    <xme:54KmZapw5zQRAdR1h0jaaHtuFQ2VnjghXRRd1eC0dyI2tHGyNKUYso4poRLqvxddt
    RGoZupDNg>
X-ME-Received: <xmr:54KmZZMM3LUs1niyrX_OrA5Je_dFvC7Up6lmaAOY4TKjyhofWM6fIl80B-8DX-3O1AOK6GeWy1FPYs8ASFMVZDTpWMRPXRDDFnA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdejfedgheduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:54KmZb7YZHi97_2x_pHB7-fu5iUJOpL4Ufcn64K4y3zxQV20H0RNyg>
    <xmx:54KmZT7BFq3uypono5aJHD8l0riu8eWsKRUcEbfBL0JeCkqZ0w3CiA>
    <xmx:54KmZbiXXI7s5oBKpcwZUXqMRpKXCvnhu-o7KCIVFnLrl7t01joCNw>
    <xmx:54KmZQwfyIAB6_vbfvj5tfUDhLZKtK7VxMrPoHON18TgZPQpCGINTQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 16 Jan 2024 08:21:38 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Wed, 17 Jan 2024 00:21:35 +1100
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
Subject: [PATCH v2 3/3] dt-bindings: rockchip: Update rk809 example with audio codec properties
Date: Wed, 17 Jan 2024 00:21:02 +1100
Message-Id: <20240116132102.3272682-4-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240116132102.3272682-1-tim@feathertop.org>
References: <20240116132102.3272682-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_052144_497096_C9D76FE8 
X-CRM114-Status: GOOD (  11.58  )
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

Update the example provided to include the properties for using
rk817 audio codec.

Signed-off-by: Tim Lunn <tim@feathertop.org>

---

Changes in v2:
- Fix missing include and pinctrl for codec example

 .../devicetree/bindings/mfd/rockchip,rk809.yaml          | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
index 9b9d670708ce..fee8338b230b 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
@@ -147,6 +147,7 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/px30-cru.h>
     #include <dt-bindings/pinctrl/rockchip.h>
     #include <dt-bindings/interrupt-controller/irq.h>
     #include <dt-bindings/gpio/gpio.h>
@@ -161,10 +162,13 @@ examples:
             clock-output-names = "xin32k", "rk808-clkout2";
             interrupt-parent = <&gpio3>;
             interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
+            clock-names = "mclk";
+            clocks = <&cru SCLK_I2S1_OUT>;
             pinctrl-names = "default";
-            pinctrl-0 = <&pmic_int_l_pin>;
+            pinctrl-0 = <&pmic_int_l_pin>, <&i2s1_2ch_mclk>;
             rockchip,system-power-controller;
             wakeup-source;
+            #sound-dai-cells = <0>;
 
             vcc1-supply = <&vcc_sysin>;
             vcc2-supply = <&vcc_sysin>;
@@ -309,5 +313,8 @@ examples:
                     };
                 };
             };
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
