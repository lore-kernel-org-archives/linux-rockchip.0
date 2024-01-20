Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BD27C47258
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Jan 2024 13:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8J7aHrhyaLNr13ulYTh4OxvA5R7NZHMGTCZqV9/IetE=; b=uNPYnoNPlqaHVe
	Dri1iblEricqAlZ31xmPXPvs7xk8kwqGNW4rWtj7AB8tsFNwFzLVQr392eqpuGvzS6ZJW2vTQIHXV
	mv/uPrfbQRqJkhTtYE4r6HV8hqH7PDdiIHw6QKxOlTvaVM/4qxdmqTsmC83f/ZRZJ/N6v3C6dQlbg
	3P2+VCjQp/GiJX1reAwDfMrU8J6IhPFyLa9q2uVDsFo40xmjIwnhSSxVk2E71a+4vNIcERKzcB2Mg
	7F+6WwZk51NnJ5U3EQzxhhdM5YWO2kJk9vaqd7orKST578AQar1BHRatn4etpnyszmmJIn4bDf6md
	lfoYYNu4i66H65vAP7LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRBpK-007w5S-1g;
	Sat, 20 Jan 2024 13:56:02 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRBpD-007w1f-0J;
	Sat, 20 Jan 2024 13:55:59 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailout.nyi.internal (Postfix) with ESMTP id 6C7F65C0111;
	Sat, 20 Jan 2024 08:55:54 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute7.internal (MEProxy); Sat, 20 Jan 2024 08:55:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1705758954; x=
	1705845354; bh=82nmu2DyJPwmac1Y1zUdWc9LMCywxycb33mNUkKF/Pk=; b=Y
	1TNoElf7L0Tiz7cvPKzRTJ/Z65vkfcg728xZm32T9V+qHzy4y/ITJYn14uNV1l8n
	5/8QzBEfbVvvHJpIo+heI3z/LL7euL1ra5wRh9dHiOCm1vgpHtk9PVimuu3mkqEf
	fpbl1Y+BApk8OQpWbaq6jJengkutKE999WyLmDc9n3NgstoxD7p1SzeIHwQ+OFjR
	bTpRstCZ5n23Q27IPS17000yhVYfzcPyQJVb7cN3NeVQ0Fxyo8oHp4ewI04kU0/+
	LJCA+PKbehOYSunreYefwciBTv+j3z6wa/YtOaUFZXvEBohN83hFxbPHNvKK0LCG
	RkBG7OKmiMk2/XkYPd4Dw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1705758954; x=
	1705845354; bh=82nmu2DyJPwmac1Y1zUdWc9LMCywxycb33mNUkKF/Pk=; b=g
	C7Mc/MXYwOt4TvOfksJ5XlcmEfxsVzsQUFg4DHMJGu0a/IvWr86c2ucFjjRjobsn
	OemaIBL4/3dZp4/X7SnJo/kCaA/fCPb3aDC8us92KF+u9R1piPXNqfEQXknnMPnW
	8UdCBTZh706eNyxLs13bptIPjECnBk5KWkuXlA0BWmdMM/JwD4JZ5hQkaGDmHI0G
	NLpRjGVpApWsuzRbpFwGa+dGYt9vyLK8uzVyDn55l/tGMu5WnLr3n2gdE3V8pIOA
	tBdsmaJxIo1TuIxzBAJLsFr5OnVVMFwJcE4tsweNtRLS8F1yYmvuMqv6FtobMDl8
	3ZOosW0dk0zmydYQItKtg==
X-ME-Sender: <xms:6tCrZTXANXbbU1IQ5RwmaLYKmJJ18C4wl0jiVTGj3W96E6iM5iKS5Q>
    <xme:6tCrZbmQZA5EH1LyRnxeH0V7eVJcFBrVR41jVXlyx8I0vDfxydH8rdQBvef1KwBAz
    e-SuiX_NQ>
X-ME-Received: <xmr:6tCrZfYsxEpw-WtiI9AWyu-TEPAdcTJ9WriCbNkOXtesKtW8rhzPXek2Sx2JyyL178E-XcMg8F5-87LSOx_iZ6rKp-2R8mpv4E8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdekvddgheelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:6tCrZeWUlyG62ZYA4RfzOrTHMgSmQh_3Pk4oz6DfCrKKCkPz7hqy9Q>
    <xmx:6tCrZdnnr5JA5Y-jfD1SzwvyYCsfAOb1ceXO-2WuaM3x3liViJos5g>
    <xmx:6tCrZbdJJerpGTJZNi9a-BmrUosP-uyJUdeZaPMLHipwajjWlCeHww>
    <xmx:6tCrZfkUz8c2IT2EWWvvYenmdNPcSI-4w5caPsgJikFdt8Srsh5oOA>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 20 Jan 2024 08:55:47 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Sun, 21 Jan 2024 00:55:43 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	conor.dooley@microchip.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski@linaro.org,
	devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	Tim Lunn <tim@feathertop.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Chris Zhong <zyw@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Zhang Qing <zhangqing@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] dt-bindings: rockchip: rk809 fix existing example
Date: Sun, 21 Jan 2024 00:55:27 +1100
Message-Id: <20240120135529.899403-2-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240120135529.899403-1-tim@feathertop.org>
References: <20240120135529.899403-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240120_055555_199292_C1ECFA26 
X-CRM114-Status: GOOD (  10.71  )
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

The example for rk809 picked up the wrong compatible string when the
binding was converted to yaml. As a result it also specified too many
vccX-supply properties.

Fix typo in the example specifying wrong compatible string for rk809.
Remove additional vccX-supply properties that dont exist on rk809 so
that binding checks pass again.

Signed-off-by: Tim Lunn <tim@feathertop.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Fixes: 6c38ca03406e ("dt-bindings: mfd: rk808: Convert bindings to yaml")

---

Changes in v3:
- Drop label from rk809 node

Changes in v2:
- Fix vcc-supply warning detected by dt_binding bot

 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
index 839c0521f1e5..eb057607dc54 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
@@ -126,8 +126,8 @@ examples:
         #address-cells = <1>;
         #size-cells = <0>;
 
-        rk808: pmic@1b {
-            compatible = "rockchip,rk808";
+        pmic@1b {
+            compatible = "rockchip,rk809";
             reg = <0x1b>;
             #clock-cells = <1>;
             clock-output-names = "xin32k", "rk808-clkout2";
@@ -146,9 +146,6 @@ examples:
             vcc7-supply = <&vcc_sysin>;
             vcc8-supply = <&vcc3v3_sys>;
             vcc9-supply = <&vcc_sysin>;
-            vcc10-supply = <&vcc_sysin>;
-            vcc11-supply = <&vcc_sysin>;
-            vcc12-supply = <&vcc3v3_sys>;
 
             regulators {
                 vdd_center: DCDC_REG1 {
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
