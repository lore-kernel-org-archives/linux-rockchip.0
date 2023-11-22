Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6089C61D9C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 12:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dPyjIyTslZxEgfHRMGn+bmSVDGvuE8L+JoU6sPy8Dxw=; b=LvhA/fK++TePOr
	eBGKFxG1D0x69IYLNp6eX6P5kJ9qdrY5lVQyAk2VCZy9ey+uUkroMvKFQko+jO99f/4vhFkGmW/Bu
	QMSLhWbGyMl61muN4ZCMVOOjndgKVE6lwhH7F+5eq4kNIWz+m3un2OWaq74lv8Vl9Mtj45YRghMu8
	YjWng0Ei9Tc9V9kHvYw6xFFgZ8retwb1kMfEvuNeC6MNSXQorXOQFDOxhI2/1YQc9claBp99LdjaA
	D0VJICe6OqOrm88Zhifqm5Okipa8hb80liXbP0XzqG9a6ih4fLZUWiuOomj2zXButR9IGya+ouI7b
	UBgA7avrqE31G2F2IZ6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mGI-001meh-2W;
	Wed, 22 Nov 2023 12:23:22 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5mG9-001mZw-0a;
	Wed, 22 Nov 2023 12:23:14 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id E02DE3200B14;
	Wed, 22 Nov 2023 07:23:11 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Wed, 22 Nov 2023 07:23:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1700655791; x=
	1700742191; bh=xDEc2S3rh9u3+sEg4TO4Fmhibog/ANoj1AKC9FhD9go=; b=D
	xRaKprdObUAArGmRcBe4YJ+VoBn785Cm1/4j9TzubN/GYBg/hbdXjE0BGehCXmAV
	Ec4YCa7sR3FVT8nBvymDICY2dQ4yz2ILOvr365eBqoGTzhCtXZNsOcefVsYR2+B/
	ZmZxpjtcQjheSr7/oUpHt7IxGzzYdpXp/ZErs4+hiWM66WuoR9ADZmUSu9vjMa8c
	h23O3KZ/w+4+6sFhrJlpSUlzmBLlQLl5UKQM2kMJV5+8qFi0EgFbCOs7ie6/9Qk0
	PWo85jxmydVDIrVssNolygdbBT9TfDbs11sL127anslfynP5UoX4mwowy+/yR4Wf
	9+bQ1NHn92quph6Dm5aUw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1700655791; x=
	1700742191; bh=xDEc2S3rh9u3+sEg4TO4Fmhibog/ANoj1AKC9FhD9go=; b=h
	UWixADNPUM7dhTU888WZu7fhMse9f4l69fguZ1u6Hk6v8IsT+hVHK7GpzLFXQJiM
	OhDZLoMiWtdaayvHuVh14HRpl+bwk7WDZpKFLu9R4tCHrihEk0C2Uau32znv48Co
	fV7hs+NUtkO/Z4IFzTRAxumJ0pxNWvdi1/3Cu4GttvCig9lQzTg9xpuCRY+3O7Hp
	4vCiDfXuiIkhOsY4UbmZCNgz+W4RCAN9qbsRbmuCCyN2g1NorHsZtkd8+8thsVf+
	PgbtyeE4/SZDCFM0+D72YF2WC4NzED5JnEuoeawouUJtohZc10pYvl0mVdb3t7Jx
	x19eVTDlfKA2WgekyFjog==
X-ME-Sender: <xms:r_JdZbUda7dozIFBENLyHJxZkDHOZmdu4-AOMLkazQ4TsiLFW6EU3w>
    <xme:r_JdZTlgHvb5IGAaGXAswCHeUZmtcjNwLFTUHJPT835UonSTPFjkfzC413eAVhYzx
    Pb3wErohQ>
X-ME-Received: <xmr:r_JdZXaGTi-Q9mu9LbrseKiKSodDebL0zYVmfugWqxhG0YGjdrIeeu-_A7oPlZ1l7JhK4gsHiqrlrOo4BTtX0P3gBAO-7W3mTOg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudehuddgfeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgjfhgggfestdekredtredttdenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeefffeuhfetgeeikeejvefgtdefteehgfdvhfetfeeuffeuhffhfeekgfekgeehieen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:r_JdZWWw6D4g8RXVMktrFfxeOE-ifPXJYZrLTjpccZ9Z3NnNc_wfjg>
    <xmx:r_JdZVmd7UbJsd57ag6U-1douPosbyoeg1RnSdNidJ47Nfe2fw8U4Q>
    <xmx:r_JdZTeRfGuQFcZ7lHImUMthiXsS2yXJpUCoy5IPTpzkZzdHodQ4yQ>
    <xmx:r_JdZbVqtKYoFyWZDoureQ7kvJiICbLCei8GBeKXYiJ-_nvgB8WCbA>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 22 Nov 2023 07:23:06 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Wed, 22 Nov 2023 23:23:03 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Tim Lunn <tim@feathertop.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v2 2/9] ARM: dts: rockchip: rv1126: Serial aliases
Date: Wed, 22 Nov 2023 23:22:25 +1100
Message-Id: <20231122122232.952696-3-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231122122232.952696-1-tim@feathertop.org>
References: <20231122122232.952696-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_042313_245400_26F2CDFA 
X-CRM114-Status: UNSURE (   9.51  )
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

(no changes since v1)

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
