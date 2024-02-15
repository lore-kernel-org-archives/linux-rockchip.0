Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 891B3C4829E
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Feb 2024 11:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3PHFWFAlpySuCLa+T8eZ4dtNqIxBN4jTwGXy2e0n6ak=; b=MtLts5/tpGVqhV
	egz93OpchvLDA7LYZ3yiJ72q3lTo7SqHYAIvFoEou417MBiTXKrux2B2Ie0wJVa4Bdw4d0Udcr0rY
	nbCWWZcBke/oEvZatnnA8kDPGEOfnkrIlpKuVGNCDUuLMN0ymDJw8s2UfM92Cj7Yop5FukZwKLSU7
	qjcqxZzbFNlkHzJPmLZqnJ2YN5vD0QzYdraphHwCnD+P6e0VJSNKntRN6T0ghc4pJjXIBdckGw2j3
	c0Xj7+OZtCXUb2HbGaTJjwxgHrpmlPqb2pAcFF9lWAO1M5FzPOkkYpYoVAwfW8CuAsbmo83xf+Xz5
	DLoz4ctOsC8lMOY6pjXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZXx-0000000FwH4-1LCg;
	Thu, 15 Feb 2024 11:04:53 +0000
Received: from fhigh2-smtp.messagingengine.com ([103.168.172.153])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZXp-0000000FwDZ-0YU5;
	Thu, 15 Feb 2024 11:04:46 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 8A60B11400F9;
	Thu, 15 Feb 2024 06:04:44 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Thu, 15 Feb 2024 06:04:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1707995084; x=
	1708081484; bh=hqHAzAJRp5parpjb2dKyLOoSMeJsSciKAVogkFU4n+A=; b=D
	NHvgkzYEPk8GTM9yH6mWs5KT75juXzU1Xy9lXVPDOROGK/R+u/SWC/b+blV1y3Er
	7bEgxVvVgJ2XrFJ6LZgmphbiRnAQJE3fSOsvKczogEEWs1A5KS3rfxl5iAcrksng
	9uJTro37kW+pJq6sFtGWTPUvNL7cM+kmqrB7j1DeG4FQDIZsBfO84PJu/vEltKzj
	1yWhjvePWBjZNoK51FoR8cT8gxFhC0T0X+lgzxQVKWqfYlo/s4YCDzGKrgfNQ3Ng
	g6ZVHNgBP5Itxnc1Iu+BNXqoMZ4GlAKlShwBzm6vIhUKWZEJYT+v3SbM/CftbpOI
	QvzpPxNkPYJ4BOtk+eK5Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1707995084; x=
	1708081484; bh=hqHAzAJRp5parpjb2dKyLOoSMeJsSciKAVogkFU4n+A=; b=I
	RZkryi8Ke/Jwufb+MQJO1MHvX4AIHt6l46gM9MKkh1fvwfHgpXTI32aH8iWGVYH+
	5HKQ3QXLE1Tgmv4/N42emfZ6BqYeihj+4J4uenCBr6UzoQpWjzw25lIaqPzuV5FU
	fludYWQbLoA4aqb5/wnZ3PQeGbmxhOnKITvFS8XNgHSt7n1jCWloTGTCDFEn0ewP
	YpOQwiYYcDd3ng0tyZMUpMX5E/QsHuJ00pDIBvNCI1+y6NwISBOYJicnKIvCc+Oo
	IQCSMY4XkFUMrQvmkR3XM+owg2lW42Gzni1Gaz76zE7EGqEa905+fKOnxLjUTUcx
	mY/ogjD9ATFLmTT22j4bA==
X-ME-Sender: <xms:zO_NZQ9pQoafWuWOnXDmgNEe5NBqxTKwJpMe2iYQsk_OmDbYux-NYQ>
    <xme:zO_NZYtRdPgl4w0cTxPICMjlHVnA2xXHIUm7SvbomjJk3aFEihWGPtTKGx2WSfQRh
    _9Oy4b6LA>
X-ME-Received: <xmr:zO_NZWDyTfgf33-XtLKc9KSAf_1DjUM08tYcJtc2Wp5HHSu350BGyN16E8gu-dr3pzJg6KLDeSzbD6xEpHh1IjyXItxx6QVVNtk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddtgddvfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvihhmucfn
    uhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvghrnh
    epfeffuefhteegieekjeevgfdtfeethefgvdfhteefueffuefhhfefkefgkeegheeinecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimhesfh
    gvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:zO_NZQffVbYi2mbZ7VI5A-6Y7L4_vt9RBm6z8QHpnz-txczs6Nv6XA>
    <xmx:zO_NZVMEqLF-Zw-vDK2h5uZMOrZUFl_CzG7n2_E-3RAx9M-W3Z6BLw>
    <xmx:zO_NZakF1w81Q2glqMLLZzbCJRHBc6xv4qDM_KEsGw7bNwtlF7fVxw>
    <xmx:zO_NZYrPzMMp3IRmRurbE-mROc9Cq-JDUVwaSOxnNDXWgBk-U7qP2Q>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 15 Feb 2024 06:04:40 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Thu, 15 Feb 2024 22:04:36 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org
Cc: Tim Lunn <tim@feathertop.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] ARM: dts: rockchip: mmc aliases for Sonoff iHost
Date: Thu, 15 Feb 2024 22:04:24 +1100
Message-Id: <20240215110425.934740-2-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240215110425.934740-1-tim@feathertop.org>
References: <20240215110425.934740-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_030445_297635_225902C4 
X-CRM114-Status: GOOD (  10.40  )
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

Add aliases for sdio and sdmmc to ensure consistent ordering of
mmc devices on boot

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

 arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi b/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi
index 32b329e87a0c..ba6c3a674f22 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi
@@ -8,6 +8,8 @@ / {
 	aliases {
 		ethernet0 = &gmac;
 		mmc0 = &emmc;
+		mmc1 = &sdio;
+		mmc2 = &sdmmc;
 	};
 
 	chosen {
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
