Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 366D3C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Nov 2023 12:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPFdspYdcw+2rEdHbxxH0CBorHDPga42oGmNjFTy0Ek=; b=SPdpgcIaj6N23k
	jlmhSuW0M2gFZj1S45ScVgr0W7upqwkD2gQpwiBi2edBFR5gAeXbOCOp+J1T3PHL8oxAoUkp+I5fX
	P9JU8/Qhpx/Ek4ExgwU4sUOWz/qvMBcxUKhzT1d7bs293StIDVzAOu/pQ0gfD8rJBSZCktSe3DR6R
	YHo1bywtfeD6yug5X3feZnWusJX7aKSP3XA6/2GcwFgA7FqeyyvEjK1PQydeiUgL9vMGo9kspHmfv
	/5cl1eQDVTXfy6MOhPYuhDPhwtOKZu4mgTXm8xOkgzIdknibpJEt5HwjAiMGD6MjOpzakHFyZ1MKm
	lPevaFkvb5J8GkjqLZqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2VjA-00DuxI-2P;
	Mon, 13 Nov 2023 12:07:40 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2Vj7-00Duvg-0c;
	Mon, 13 Nov 2023 12:07:38 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 82E535C0175;
	Mon, 13 Nov 2023 07:07:36 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Mon, 13 Nov 2023 07:07:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1699877256; x=
	1699963656; bh=4qMDHmRYilZ4+QBhq8Frhf1+Idyx4gcuM++fKXAF/2A=; b=i
	2g9W+7MicHqKz0r0de8pfmiwtig1P/8DJ3/0YdGglSmHiNygkJ/+FJFZj7aplFJM
	d44xy7mXDESmEoGVa1Up4Xnh/w8wIzxHI6QGMpVfjPKyJ8Og06ubc/Bgv43nvn94
	ngoIUwBEX1PlbzeX2JqXEr0251cbM6+kGBboMfnQKTFwlY4kHWTeKWtfJ9RlHG95
	K+GYBNwjzt4kxmxtZbZigjt33jOaAE0ASSH6uxfOozw8rrOt5+Noerd48YoSx66C
	9ftuC62YkT1RSq4/hu1o8NRuv6TxCPZOsdRs/94WMW/yXzma3/ybvArgqeOCnfPX
	sXjTug5efKAi0kfvcoH6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1699877256; x=
	1699963656; bh=4qMDHmRYilZ4+QBhq8Frhf1+Idyx4gcuM++fKXAF/2A=; b=g
	dfsyK5K5WhxF5c4wKPUhZ2RRZASywIVD1vw/qUOKIfe7nn6cmYlUetaBvDYzgUXR
	piciuFrLxpz6+CDONE5AHmE69UC7wsG0S7HKdfLJ4THudF2PdtuOzHa6tCH57JUE
	+f8n7fEQZLl2NdzQQi4LQxR/I8ERf1jMMNo2XE28chPU0yg8bEOk5DApT5kJ5GBq
	oOmu0QL6OVu6gVPdx7vyJzRQdx6roIvR15AgWtwNnkQwpq3FGkBvwuWGOxLVlf3g
	FnMo0lulwuUvkip7iTgSeAl2KUn/poUNKKP0+neHeODJPuR7p1624puJm9tQelEO
	zT1rqdU0m/GgyJbLc1qQg==
X-ME-Sender: <xms:iBFSZeQ26-iy1Z1qWoqaQFdh7KUHpSC-8DCH-hOcYp5jafZ1jIs6aQ>
    <xme:iBFSZTxTnRk92bp_NeoJsqGTOVSkjIzdsf6Cm9XFGQ5rZ-NfNo5CgzAmb4yr6AOX9
    E7e9hgX4A>
X-ME-Received: <xmr:iBFSZb2wdPsBTj9lOClbcqw77xhLW-oBbTYJyphlOpTX7sM4OPswRUD2PIpvtrvatp3R3oqXMuy36APi0QstxYl_gHqxLHGtKUc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeftddgfeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:iBFSZaB6mADWYFYC_SnokAuyurdEAiho9FZWQn_4xFSicvwPicK74Q>
    <xmx:iBFSZXi620YEQVsNkUa8U6aY_XwgMZPLlE88Je8i489V0PGXN0T0JA>
    <xmx:iBFSZWrRnAydAGiiUccNEUQFa7G3kw91eSxf7TPfdeHSKFEvYdawVA>
    <xmx:iBFSZXgkMuWipH-mPo1ZA9H9aIroc8rqGcnnnQDlfSG3aVjZWWgArg>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Nov 2023 07:07:31 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Mon, 13 Nov 2023 23:07:29 +1100
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
Subject: [PATCH 2/8] ARM: dts: rockchip: rv1126: Serial aliases
Date: Mon, 13 Nov 2023 23:06:59 +1100
Message-Id: <20231113120705.1647498-3-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231113120705.1647498-1-tim@feathertop.org>
References: <20231113120705.1647498-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231113_040737_300853_31A03BD4 
X-CRM114-Status: UNSURE (   9.17  )
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

 arch/arm/boot/dts/rockchip/rv1126.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index 9ccd1bad6229..6c5c928f06c7 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -21,6 +21,11 @@ / {
 
 	aliases {
 		i2c0 = &i2c0;
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+		serial3 = &uart3;
+		serial4 = &uart4;
 	};
 
 	cpus {
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
