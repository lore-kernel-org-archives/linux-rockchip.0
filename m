Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68A45C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Dec 2023 12:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZqZAzpASpnjVf6hTazbQUq0Awr3qplP+YbCc8DYN7E=; b=rBA43AI252jEvY
	gyjX2kkdhO73jDCGwZjSEzfZhBdT4oJJGAmyYCcBS+SGdu8A5e/eBqQ96Yw6TSpfkNpvbRa33108B
	uTc+MgAhi7iFEkJhRElHMjChcQXi8HvtOuEuhNeS+8L9TjbWMkrbGW2hIBBbzc9c6HiXgDKrkXNvN
	cQ99/+XSdUtlZ3mUJ931n8fq0o3V4d2BklilL8/SEBopdp0DZWIHXorlaZLhINj0k3i47IJ5MQ9UK
	NGmGa/0edH/Ne0Vqoin4KD0UtL2SKjvLG0ZI4K92VYqSlPpydlqL9hzl16lfiEb7D9nxfIXKeFmgU
	dgwVXlNh54PJfGvZVArA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9ln0-00H0jp-1q;
	Sun, 03 Dec 2023 12:41:38 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9lmu-00H0ed-1Q;
	Sun, 03 Dec 2023 12:41:34 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id CB26A5C015B;
	Sun,  3 Dec 2023 07:41:31 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Sun, 03 Dec 2023 07:41:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1701607291; x=
	1701693691; bh=Vn2Ued8QnK1Z3h42bOuO5aQ4ZuaH4mGAuUy6STjbYSk=; b=P
	UrUdvlue4hY6gYJ2LvWLRtK4qnKsrUYXO+doNoJ2vglB1VKtTUVc0ED6i+I3fTzT
	49BW5oApPpql2aVmbKLQm2rOQmOusCqBpOIzyUJsQ3CgY1KCaqPLO2cjT0UdtoGX
	42flvIfgHaKGvXu6w/VEnqRavHVavf7/lMYbWt/p0naiebNLwvd7MwoZ0Hkr3z6t
	u15eM/uoBiCT9wa/1UQI2k6KXoBsxBZFWQnivj1ZGKVQaMKOZDfrxM7DYhKwMmpk
	XIIZdwmgn+F4n06vtc4yyLHS16p2icgZsrWT2v3v7DR9zE1N62NC+8hueTT/yVO9
	86B2dVkYN1/bQ42zKaQfg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1701607291; x=
	1701693691; bh=Vn2Ued8QnK1Z3h42bOuO5aQ4ZuaH4mGAuUy6STjbYSk=; b=A
	07QQXgVTZeiDFt3CsDK6vwYKchZZHsHU6jJJ3KxdDxd4oKsQ/8Mur0Agrvs1z2mf
	tonQWtm7bmMcW4GapprD8QcjCzFYPmlTfN2dsJenZ4ZWXb1rXzxdGTSoLtWmIG5p
	od2A8L5zcMUUobtT3OTVrppR5WRP0YB5pehAiYjXx2dWe3tcJW3ivD/KIX4u7N4Z
	N0+0V3X7LsITLCWhS1aymoJyI5ap8+G5e37DGARN0b/Ye3Q+771NatCXXBzqTTgx
	pwrzq4lTzsKTpTpGI9yxgxOfWsBeUTjnKATFZDwf8FcqeGzaSMcI8W368/6X/swG
	fmkdn7LgkkNxs77aPo+oA==
X-ME-Sender: <xms:e3dsZZPAeqkkOncSgvvcD5cFcLVbhm-Zg3gBTu3GspEHvIMCbgTMJA>
    <xme:e3dsZb8swruiZV6FP85JYwuR0ZylkQ0BPdV0vX8GKfRKkdnPL83MHF1fKJnKDfvLe
    gd_nHSKaQ>
X-ME-Received: <xmr:e3dsZYT_VD_QbBUT6vxz8Q5ax8xJXuc9y3kA3_Cojp2p__Xa-F8VVdTdevySYApjLOd116liIw2X_FCaY2JpUfkv8hhbHH-SxHY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudejgedggeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:e3dsZVvPVJ_nlUeW4Dkcqs6L3emMtm_uR7__f85Fb3Q_nuEexrbE0w>
    <xmx:e3dsZRfQj1cvvPnaI14IwVwV1vxaV1ZEzrLe4331typlNce3oh3klw>
    <xmx:e3dsZR3gSsWo7adt0usln1f52WPWogIt6RUEbC-Z_i9qNxkOBukr9Q>
    <xmx:e3dsZQzREj5ypy6BBMYycKjFVVh-kpNts7awkPRzAPXCss5IkWaBLg>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 Dec 2023 07:41:26 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Sun, 03 Dec 2023 23:41:23 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tim Lunn <tim@feathertop.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 8/8] dt-bindings: arm: rockchip: Add Sonoff iHost
Date: Sun,  3 Dec 2023 23:40:04 +1100
Message-Id: <20231203124004.2676174-9-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231203124004.2676174-1-tim@feathertop.org>
References: <20231203124004.2676174-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_044132_726647_1643D49E 
X-CRM114-Status: UNSURE (   8.13  )
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

Sonoff iHost is a smart home hub with built in radios for wifi/bt
and Zigbee. It is based off the Rockchip RV1126 (or RV1109) SoC.

Signed-off-by: Tim Lunn <tim@feathertop.org>
Acked-by: Rob Herring <robh@kernel.org>

---

(no changes since v2)

Changes in v2:
- Collect Robh Ack for dt-bindings patch

 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5f7c6c4aad8f..a26bbcd00deb 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -922,6 +922,13 @@ properties:
           - const: rockchip,rk3568-bpi-r2pro
           - const: rockchip,rk3568
 
+      - description: Sonoff iHost Smart Home Hub
+        items:
+          - const: itead,sonoff-ihost
+          - enum:
+              - rockchip,rv1126
+              - rockchip,rv1109
+
 additionalProperties: true
 
 ...
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
