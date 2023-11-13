Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69F0DC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Nov 2023 12:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F/iw4JMvPOfzpNM55YNTmFlvTGPXApN2F0K3dQX1Q1Y=; b=4fb7m/lQEhAxIV
	N17OMynwEBOWd6WkWY8w6krMSJbPhDJVNZVWftvX+/f5npXrIs4trvVpaO/4BqAe01Asvi/CW//xW
	3nU/umCJykTmrgaN0QNbfCnhRzjFSu5oQhOi4WwWnWAiSMI143Gydo77eefEvcqbSGDWMaAcKheiM
	yy3rp4oGIwbYC5IhV0qt6a9mYP6cwdKVi1tDl2v1rMzfH9sqU0xoYxq1wOAZPDa/72Txh1+vBjefm
	+DefdMCuK+F080xa2t3F54mcZklfYb+J3YqwBfb3UNidhzfI1xoWE+UyfaNtHnELG+bFAYgAS/B+w
	B0A2bKIMSiKNZl6Gus2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2Vjw-00DvIK-0H;
	Mon, 13 Nov 2023 12:08:28 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2Vjs-00DvG3-0u;
	Mon, 13 Nov 2023 12:08:26 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id A75EE5C0145;
	Mon, 13 Nov 2023 07:08:23 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Mon, 13 Nov 2023 07:08:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1699877303; x=
	1699963703; bh=N5ZxIAUfaV6aVmSB1G0DrLCEBqLgje//KDPtRBUd3eM=; b=V
	/KrxHFk7Xb3wO0k4z8+ufF9HNJQoWazkaDJJNJMKxkPFH8278XNHI8u8geSKD7AY
	H2JXqexiaLJfzrQBwrJ/QzDAuoCaraz6W4pvKeJtvrPaVJovtlJmyFw3JQgf5EOL
	OnxI7m5mJQK3CsRaRJeJ3Q6FrIEB99w7KWIMtZ7EGOqNheSVy7WLqF5+OT8E3tjO
	qZy512i8J18O8/6yv3tgQ0fXG3qm5MSMtqlUMyASxs+CqkhT/Khly36MAS5O1nqE
	Fr/Ms9TzvcHXwCgOnpyVJ9fvmCiXAP3E5/4pjZybDhjVxDWFwVJWYjXromY5gMzx
	YOdZPCrNNdk9AkzqcFwOA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1699877303; x=
	1699963703; bh=N5ZxIAUfaV6aVmSB1G0DrLCEBqLgje//KDPtRBUd3eM=; b=C
	Z6hzrXRxvhJ5cFw11mhhTGSUIJLdCb9A66qJ67sc+sEPhcsZ0JyohmH9Wp30tN0o
	nDn3uk7le8CIvJfubdph0l73VgX4ENWynz86Klg/vxgy3JmzxcTgTxMKW4TnIDMH
	KI+pfEldQb84SpN1FG2uWpv3Y7msDZHtQj3rxW5cPhls0NejNf24U9NR2w7pakJq
	qJt4zVeKWh1Q8yYiuJWo8we7j+rTr0YoPhOL8L5fuNBzMX1YP5CqehDkRXDjfgfX
	C78Xz5Vw4EDrBv5FgDt7pO8YyRA6GcvetZOzW9ZNoK4c8/PfDmYmEcGP0VkEUpxb
	U/UeK7v6BsLTGOSSni9eQ==
X-ME-Sender: <xms:txFSZYUBXW9d_eblMtM6Ols3qrHx9T5OLE6GBbbfsk16wdRsLTmKvQ>
    <xme:txFSZck_if5hVWQ_sV_7Wxlriww3qfchybj2czWxXxC12ytfWxaLL4dVY1jhbKR2M
    uDilIhd_w>
X-ME-Received: <xmr:txFSZcYWa8IwUDQZbeErjh0EN-nFJQvX2_h9oSw7ne6hGG6uAecJKVmXMVIHUU2hnu0l4ZIsgFu3Q0kKC5xIV5vVZohki3ogUkE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeftddgfeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:txFSZXUCevUqPungUzOAKwiIAunC4Lzn4imovt3eNLeipwIQSmZQ0A>
    <xmx:txFSZSnuRxnZ1BXHOYAfHPAopcyeszY3cQRAys4ef0tWwxEFd-z8zQ>
    <xmx:txFSZcfZSwBs24meAWP1bPePQkjdhKykZROmDICSYoi8VZQYO6KshA>
    <xmx:txFSZUVO1uyBwrU1ThCiHjZ90BTrENiqTW8YKH_8Zyf2LI3vPxufUA>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Nov 2023 07:08:18 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Mon, 13 Nov 2023 23:08:15 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tim Lunn <tim@feathertop.org>,
	Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 6/8] ARM: dts: rockchip: rv1126: Add ethernet alias
Date: Mon, 13 Nov 2023 23:07:03 +1100
Message-Id: <20231113120705.1647498-7-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231113120705.1647498-1-tim@feathertop.org>
References: <20231113120705.1647498-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231113_040824_379779_8D8DF6FC 
X-CRM114-Status: UNSURE (   9.08  )
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

Add alias for ethernet0 to pick up mac address from u-boot/DT

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

 arch/arm/boot/dts/rockchip/rv1126.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index cf1df75df418..bfbd4918e745 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -20,6 +20,7 @@ / {
 	interrupt-parent = <&gic>;
 
 	aliases {
+		ethernet0 = &gmac;
 		i2c0 = &i2c0;
 		i2c2 = &i2c2;
 		serial0 = &uart0;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
