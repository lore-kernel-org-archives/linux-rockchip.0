Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2AD6C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Dec 2023 12:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yx+/ZsTUBDTzuJ5ny3wJT+v4fRxAKcWgtrcwdkas8Lw=; b=KGoHEXnvwxBqZ+
	s8kgVmj3o/ajO6qiGXooCMXJDZ8DYsfJfR8MVpy9B0i1pbv1mt0nuZlmv2v8TuOU/xlK4kQcvRIse
	R/jb2m3FSytivRVZHdqn/jRKxiqvmV+w1DJHjR9NP2PMdXgwfSgmS8zdQ7O6ac8TgaE1uaP51gl3t
	P7lejoQ0JaGhAbcRsSBwbV/ARG8LQdg82d9K/dbwLUiCQtsJBoLsuOeNSg7TaCdCB5lQNAR25WYP7
	8KPi4clVPZCajvAAHP5kri6aKx3Pq9r7vfE+/WCWuoCS4PNVOXXoBaWiEq1sRmxhiTCwrCqEbkNwb
	z9avro5Jp1hyi7U0OXbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9lm8-00H06s-2w;
	Sun, 03 Dec 2023 12:40:45 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9lm3-00H03w-2z;
	Sun, 03 Dec 2023 12:40:41 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
	by mailout.nyi.internal (Postfix) with ESMTP id 4D3C05C0198;
	Sun,  3 Dec 2023 07:40:39 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute7.internal (MEProxy); Sun, 03 Dec 2023 07:40:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1701607239; x=
	1701693639; bh=mbK/oiHw65tn0E43hjf1/LGGzi47gzSJ14as2Je78y8=; b=r
	WpbF5FeFmQPAET7yhnEMPuUU4LlPK9NR3JrhrOkzwjyYUqZRSzahyp4e7PztmoIx
	c4TVwiHTSj8YpUZ1O2qW1g7OEf66T3qgERpUWrpbjALPPoOvLxSIOYfnMlBNEldJ
	3FtldLM4vrkQ5iK1gaW0GttS3BTmNk0fg7FHPsg33W4QWqCEGPPKfLSxTSvbAUvM
	FKKhZS2EY5cxsloHTm67JB2Trk8ptBL3kJtqagetX87KphA1vuAK5KBraamdhvWA
	o4zdoZ/J81yqXNP2kGRgjy6APdX8LRL443EifSxn6HeXQHn4GexbuuaiRacbl9F+
	lJe9INY4vhbb8BNK5N6UQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1701607239; x=
	1701693639; bh=mbK/oiHw65tn0E43hjf1/LGGzi47gzSJ14as2Je78y8=; b=y
	Lk9e6IqEl0vYHTJnMy/KoyPnKHU1kTgHDUdivBRk9VjE/wSp0DESrN/hd/7UT3fW
	4eVeQFb/sZrHoDvhSoiy6tVOT3pSRXtfDoWpmch2Pwq9hR6IN6CCEKFiIHpidxu2
	tjy7F5spgu6LIRdZj7z6+h/qFj216zOWi7WPGKJkW4k/TFGDCgx9D0snYYQhw90D
	9j2sqMHSzoHIbKr/xVelZ0J2Ocm7bBq+EwLj8lZcZyjdJcWHOSKYsVN9z2GZYR7v
	Wwvqz84+m1CMV2q+Csxo/cWH2pMo/aPWR6UHYFJePWmwNwzEvozufQS4rRnUxCaZ
	ifZ754bQplaeHYcpYu1Tg==
X-ME-Sender: <xms:R3dsZQlO42kv3emFo4x8dzdLMbfaCs4sL6_e20a9dpseKsSA3aMyoQ>
    <xme:R3dsZf1rJlRbAL3aEHox_AM0Iypq74WJzFKggmP3ocI4xwZXqUkSll1xIXD3EVrcj
    jXhqh-ZpQ>
X-ME-Received: <xmr:R3dsZeqg_UOcrdjD37Y84PN1olznA0yXmg5IQxWAmZJwY-dn5goNpor2d3UueLgmNMJRbrqRH-AU9kKsjARALQkJSxPFbCuCO58>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudejgedggeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:R3dsZckrK1pB0baCxGJ7O2e5XmUmMpPfpe3L0fdllmmoKIDgGUHngQ>
    <xmx:R3dsZe3-RxX-y0jw199966BAXOTeUcEc19hZL0mj46vutcpXkNQi2w>
    <xmx:R3dsZTsVE8iqhWQNL6konXyxNiefJCSrHp08pPL3zqetY3Fv36yODw>
    <xmx:R3dsZXnvpmv8PgtHcJe7PITyAEY0T0gZo3mJvS-bBuR-k08n56c-lg>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 Dec 2023 07:40:34 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Sun, 03 Dec 2023 23:40:31 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tim Lunn <tim@feathertop.org>
Subject: [PATCH v3 2/8] ARM: dts: rockchip: rv1126: Serial aliases
Date: Sun,  3 Dec 2023 23:39:58 +1100
Message-Id: <20231203124004.2676174-3-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231203124004.2676174-1-tim@feathertop.org>
References: <20231203124004.2676174-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_044040_094700_4D39BC1B 
X-CRM114-Status: UNSURE (   8.73  )
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

Add serial aliases for uart nodes so that serial devices are created

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

Changes in v3:
- Add missing serial5 alias

 arch/arm/boot/dts/rockchip/rv1126.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index 9ccd1bad6229..adb11a43c5db 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -21,6 +21,12 @@ / {
 
 	aliases {
 		i2c0 = &i2c0;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
+		serial4 = &uart4;
+		serial5 = &uart5;
 	};
 
 	cpus {
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
