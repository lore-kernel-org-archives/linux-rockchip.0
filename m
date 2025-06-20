Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0AECC71155
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 15:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=asdotF7pYxCfiaSnLkpW5/LiaRMw3ITVKDJocc/usDw=; b=GkZT2tclk+Rjbf
	WJA5YmGdtf/JbLUp4viu0e98dqfFk5Cm279fzdIRDKnYjf22seW0scG5HJ1n/SpW2vPPfw+9m5YhZ
	Yc5zEn7SDG1AgF90dq3lyJGL5NyUUkbOGHew9BLwV8EEg46AstYFlV3SXmdiECRmOnnp8dXWl1KWc
	FT28qYSBAdvKYq8S0e4ATAiW6EAVCOgIVMj/gQOzaeWfG9sggWBukgLa9Zkoo73E/s9zcVGxuLZnJ
	ZbVfIWUIRMEk7R9Xz99Wwo+n7GTgP3k59de0/PtxYBp95ESVQm99O7K0AvNPwtlEfbQNXz6tD5MtX
	GDQxjvQhdmYkK6UkTpEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSddH-0000000Fy6v-2h6f;
	Fri, 20 Jun 2025 15:26:23 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSdYo-0000000Fx4A-37EN;
	Fri, 20 Jun 2025 15:21:48 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 33C6341D11;
	Fri, 20 Jun 2025 15:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1750432902;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=x/e6LiudPsu/XWNdoyPtUaZGCXB8UHcl+kvG7URbQ38=;
	b=fcG0fTotkaaUETz5PQGBGmcF+EgyyrdJoD/gngd1tBFBfBxo6aUk04Z9jj+6AExPr1R4ks
	Mfbu9VG3zGWPLHXCSimpgrzIoVUjmj3NVxukVhqMZfumZHRuipddhgxwhzqbVa0s7/0cY5
	WSFqq9HTeWoDcw0hFn7Zs3gLv5xftkHppIqSnnkV9l5g0uMc1STg0DxWEOZLXa3u6X1Vfk
	9GblIIfz3q7M82xmcGtN0n8ClRewGXiHAcqksnK3uQsB5wjTBzafuO0zv95u0LfOieGyjU
	VSv2mu6oTKUj7DDgmGuAavDVVRXRaGNVtSK6wDFwnP1iyk5PMtcEISAc9XAO0g==
From: Olivier Benjamin <olivier.benjamin@bootlin.com>
Subject: [PATCH v4 0/4] Describe the cameras in the PinePhone Pro dts
Date: Fri, 20 Jun 2025 17:21:31 +0200
Message-Id: <20250620-camera-v4-0-0201a8ed5fae@bootlin.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAHt8VWgC/2XO0Q6CIBiG4VtxHEeDHwzpqPtoHQBCsqU0cKzmv
 PfQA13z8PvH844JJRu9TehaTSja7JMPQxn8VCHTqeFpsW/LRkCgJgANNqq3UWGhGsm1dcopgcr
 jd7TOf9bQ/VF259MY4nftZrpcD4lMMcGmps1FOsmtFDcdwvjyw9mEHi2RDDtkBDYIBTIKmnPNy
 z/MEbId1kRukBXYKg1CQAsg1T+c5/kHIAPIUBABAAA=
X-Change-ID: 20250228-camera-7a894befafa7
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
 Nicholas Roth <nicholas@rothemail.net>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 imx@lists.linux.dev, Olivier Benjamin <olivier.benjamin@bootlin.com>, 
 ~diederik/pine64-discuss@lists.sr.ht, Dragan Simic <dsimic@manjaro.org>, 
 Ondrej Jirman <megi@xff.cz>
X-Mailer: b4 0.14.2
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgdekjeegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhufffkfggtgfgvfevofesthejredtredtjeenucfhrhhomhepqfhlihhvihgvrhcuuegvnhhjrghmihhnuceoohhlihhvihgvrhdrsggvnhhjrghmihhnsegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpedtudehfeeutdffjeeviefgjeetieeuleefkeefgfevfedvlefgiefhheejueejvdenucffohhmrghinheptghouggvsggvrhhgrdhorhhgpdhkvghrnhgvlhdrohhrghenucfkphepvdgrtddumegvfeegmegvtgefkeemvdegvgdtmehfhegtvgemfhefgedvmeeiheekjeemfheiheeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepvdgrtddumegvfeegmegvtgefkeemvdegvgdtmehfhegtvgemfhefgedvmeeiheekjeemfheiheeipdhhvghloheplgduledvrdduieekrddurddvtdgnpdhmrghilhhfrhhomhepohhlihhvihgvrhdrsggvnhhjrghmihhnsegsohhothhlihhnrdgtohhmpdhnsggprhgtphhtthhopedvgedprhgtphhtthhopeimughivgguvghrihhksdhpihhnvgeigedqughishgtuhhssheslhhishhtshdrshhrrdhhthdprhgtphhtthhopehrohgshhesk
 hgvrhhnvghlrdhorhhgpdhrtghpthhtohepnhhitghhohhlrghssehrohhthhgvmhgrihhlrdhnvghtpdhrtghpthhtohepjhgrtghophhordhmohhnughisehiuggvrghsohhnsghorghrugdrtghomhdprhgtphhtthhopeholhhivhhivghrrdgsvghnjhgrmhhinhessghoohhtlhhinhdrtghomhdprhgtphhtthhopehmtghhvghhrggssehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkrhiikhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehimhigsehlihhsthhsrdhlihhnuhigrdguvghv
X-GND-Sasl: olivier.benjamin@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_082147_396419_24D879E0 
X-CRM114-Status: GOOD (  14.46  )
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

This series has raised a question about the proper label name for the
front/user camera and rear/world camera for phones.
This series is using "ucam" and "wcam", which is used in a few other
Rockship DTBs:
 - arch/arm64/boot/dts/rockchip/px30-evb.dts
 - rk3399-gru-scarlet.dtsi

Signed-off-by: Olivier Benjamin <olivier.benjamin@bootlin.com>
---
Changes in v4:
- Dropped "clock-names" property from IM258 as it is absent from the binding.
- Renamed pinctrl definitions to match the names in the PinePhone Pro datasheet.
- Collected Rob Herring's acked-by for patches 1 and 2
- Link to v3: https://lore.kernel.org/r/20250509-camera-v3-0-dab2772d229a@bootlin.com

Changes in v3:
- Fixed new DTB warnings reported by Rob Herring's bot
- Link to v2: https://lore.kernel.org/r/20250302-camera-v2-0-312b44b4a89c@bootlin.com

Changes in v2:
- Rebase on mainline
- Change patch subject to arm64: dts: rockchip
- Rename new regulators to fit preferred form for fixed regulators
- Link to v1: https://lore.kernel.org/r/20250228-camera-v1-0-c51869f94e97@bootlin.com

---
Olivier Benjamin (4):
      dt-bindings: media: ov8858: inherit video-interface-devices properties
      dt-bindings: media: imx258: inherit video-interface-devices properties
      arm64: dts: rockchip: describe I2c Bus 1 and IMX258 world camera on PinePhone Pro
      arm64: dts: rockchip: describe the OV8858 user camera on PinePhone Pro

 .../devicetree/bindings/media/i2c/ovti,ov8858.yaml |   4 +-
 .../devicetree/bindings/media/i2c/sony,imx258.yaml |   4 +-
 .../boot/dts/rockchip/rk3399-pinephone-pro.dts     | 138 +++++++++++++++++++++
 3 files changed, 144 insertions(+), 2 deletions(-)
---
-- 
Olivier Benjamin <olivier.benjamin@bootlin.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
