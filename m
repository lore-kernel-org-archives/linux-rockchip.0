Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 607BCC282C1
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 15:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m3Cj62gY9u+TzTjRxKfeZEpi0gdW2ZIhgcFH+eNwrt4=; b=e1H0ElysjYDdlY
	S2VZbeKgbkHKdq8Of3wWWIOMsIcMOQmDc4gD8OSql3zPfYa6sOnNapYiXkxD2Rmcr4BdkmUXK7Sc0
	iCwwmWFM032OQSdFvIQ6R/Sthuv/FJyqRXuirjbW1cm0aPGNzKZuY3IiUtDKETxex+GN2SqnUKPLY
	dgDbgYcU/h9/idpHXxid96cnteoT0jFcfT9LD2tTUoU8fGIlyBxpFhfs8mPRzZrlBr9f1xLTV4ye9
	79BJkSvdUb2J+v/dcBV4yb52k1y38o1OYLMxVVc2HXDz7F3PrRPOrzmDLl49ZSgMkkqXHdT+iguqm
	XDWiiVDBrF95S+RvVgNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to2XP-0000000BWK5-2gjB;
	Fri, 28 Feb 2025 15:44:31 +0000
Received: from relay1-d.mail.gandi.net ([2001:4b98:dc4:8::221])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to29z-0000000BRSQ-2VmR;
	Fri, 28 Feb 2025 15:20:21 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3989842E77;
	Fri, 28 Feb 2025 15:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1740756013;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=QZu5jeody6oxpz4x8MYrbb46BHii47kNRlyxqpDsps4=;
	b=bJiCRjWHZaWuUlBYSiq0+u2M0Z5xY07jCE2o+h06fGeLVT/KsWyS2TADB8ycuM2dmyDtPg
	7iVkMAmvQgajkEa79ecSw8hdMFuKKJtszx9CAwhN9CDtfHQB7HvuDj8UOOHIfeE6topG6V
	5gXQWLbEowc+E6BkPkYJwNTf1dvP/a9E7DN6ps6OuVuHPSlVj3Z1Jg6eDj4BMOHqvWo9jm
	NG1qZs4S42NAKRjv1xSp6yF10nY3SCf7WkJsGsGkq6NqNE5guiUAnIo6/hJ1IOgIDR0hbK
	W0sKiprwmDsz5kdl13CONymdvpNQnh7qJ+lgce5SGGKa2ArnPXCjh5o5thhGdg==
From: Olivier Benjamin <olivier.benjamin@bootlin.com>
Subject: [PATCH 0/2] Describe the cameras in the PinePhone Pro dts
Date: Fri, 28 Feb 2025 16:19:49 +0100
Message-Id: <20250228-camera-v1-0-c51869f94e97@bootlin.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABXUwWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDIyML3eTE3NSiRF3zRAtLk6TUtMS0RHMloOKCotS0zAqwQdGxtbUAQP/
 KrlgAAAA=
X-Change-ID: 20250228-camera-7a894befafa7
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Olivier Benjamin <olivier.benjamin@bootlin.com>, oren@taumoda.com, 
 Dragan Simic <dsimic@manjaro.org>, Ondrej Jirman <megi@xff.cz>
X-Mailer: b4 0.14.2
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdeltdejfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfitefpfffkpdcuggftfghnshhusghstghrihgsvgenuceurghilhhouhhtmecufedtudenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffufffkgggtgffvvefosehtjeertdertdejnecuhfhrohhmpefqlhhivhhivghruceuvghnjhgrmhhinhcuoeholhhivhhivghrrdgsvghnjhgrmhhinhessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepjeevgfduhefhhfekheeileejieehueevkeffieeiteeluddtheelkeffhffhiefgnecuffhomhgrihhnpegtohguvggsvghrghdrohhrghenucfkphepvdgrtddumegvfeegmegvtgefkeemvdegvgdtmehfhegtvgemfhefgedvmeeiheekjeemfheiheeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepvdgrtddumegvfeegmegvtgefkeemvdegvgdtmehfhegtvgemfhefgedvmeeiheekjeemfheiheeipdhhvghloheplgduledvrdduieekrddurddvtdgnpdhmrghilhhfrhhomhepohhlihhvihgvrhdrsggvnhhjrghmihhnsegsohhothhlihhnrdgtohhmpdhnsggprhgtphhtthhopedufedprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehrohgshheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhin
 hhugidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtghpthhtohepkhhriihkodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqrhhotghktghhihhpsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtghpthhtohepughsihhmihgtsehmrghnjhgrrhhordhorhhgpdhrtghpthhtohepmhgvghhiseigfhhfrdgtii
X-GND-Sasl: olivier.benjamin@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_072019_795855_C1CE0A01 
X-CRM114-Status: UNSURE (   7.62  )
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

This series adds support for the Pine64 PinePhone Pro's rear and front
cameras in Device Tree.
This is based on some of Ondrej Jirman's patches hosted in his tree at
https://codeberg.org/megi/linux, but I have also fully reviewed and
re-written the code from the RK3399 datasheet, the PinePhone Pro
schematic, and the IMX258-0AQH5 software reference manual.

I have tested these changes on my PinePhone Pro and am able to take
photos from both cameras using libcamera's cam.

Signed-off-by: Olivier Benjamin <olivier.benjamin@bootlin.com>
---
Olivier Benjamin (2):
      arm64: dts: PinePhone Pro: describe I2c Bus 1 and IMX258 world camera
      arm64: dts: PinePhone Pro: describe the OV8858 user camera

 .../boot/dts/rockchip/rk3399-pinephone-pro.dts     | 138 +++++++++++++++++++++
 1 file changed, 138 insertions(+)
---
-- 
Olivier Benjamin <olivier.benjamin@bootlin.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
