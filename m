Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62A14C3ABC9
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 22:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YMk7xBrQ4BC8cp5ARzz5U+oFqYr8bLG6Fx9d/aJLasU=; b=eHR2NMwyh6A+dz
	R5tex8z1jSYJhzt9jd7N3+ktyrVAYgy734fOhsGT+CpEEohV+kYtOns5tT8cYjpjVPTYwYZFt7aDG
	XD1iSLLHxzOoDRTaB/vBpfuFIRC2lPJbh+9ppzfJTWY1LGxSYCvbgJ5Ngp89IalxHL69Mq92N9dza
	4H3sQfpeyZgYsUo9JuOCpPD8GZC02y7GSY9lEjm7zUrxzODTBgZI835h2Yc47LiDLEWnTgfTEnKq3
	uEpS90qt58tVAiJJxCR5gWvwsCgDzh8y5Wd2PxHfWko2fRyfOYaHuPVH1YjlXYcc5zNe+zZue7ec/
	4QpgSQQKLF280fCY4aRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDVo3-000000051ke-2GiV;
	Fri, 09 May 2025 22:02:59 +0000
Received: from relay3-d.mail.gandi.net ([2001:4b98:dc4:8::223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDVdH-000000050d4-3xMD;
	Fri, 09 May 2025 21:51:55 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 938881FCE8;
	Fri,  9 May 2025 21:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1746827507;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=3ybU8O60AFFwP7YDQiZRFLzyAUOwV85K224Agh85zF0=;
	b=YdTG/lBLqsugAmiwZTWnq6AeEi93etuaS35Q7flJL2B+hpTTc9PkVY3qgnxbOwAHG2GRrl
	O92c0r5S+mCaPJ7rqhc6yJWAIf9E5Bx8EE4Vp6Z+u38Ozjo02E+kxxmdS1H/lqyVdU2TT8
	nGXVOjPoqZCpWcesJnyj5GXxVccfK7Y+bJsO832Mk84drlVfMWkjQP5hLPNWQL1r9wOiYM
	m+KIPg+wsYWilRSpctPT8lLI4Y4rlrk2EpZZAYOjcVjGNs0HXGqhsdpkjC2Reoa6LB4+GP
	4+y/GL1Xq5Owm011apG+TLAawqecn4oeookjSGmeHF1BfjlcLsdkPA+ORJONzw==
From: Olivier Benjamin <olivier.benjamin@bootlin.com>
Subject: [PATCH v3 0/4] Describe the cameras in the PinePhone Pro dts
Date: Fri, 09 May 2025 23:51:36 +0200
Message-Id: <20250509-camera-v3-0-dab2772d229a@bootlin.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAOh4HmgC/2WOQQ7CIBBFr9LMWgxMqS2uvIdxAThYElsMNETT9
 O7SLjTG5fuZ9zIzJIqeEhyrGSJln3wYC9S7Cmyvxxsxfy0MyLHhiB2zeqCoWas7JQ057XQL5fg
 RyfnnFjpfCvc+TSG+tm4W6/qXyIJxZhvRHZRTklR7MiFMdz/ubRhgjWT8ijXHj4hFrAUaKY0sf
 9hfcVmWN9ek20HXAAAA
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
 Dragan Simic <dsimic@manjaro.org>, Ondrej Jirman <megi@xff.cz>
X-Mailer: b4 0.14.2
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvleefjeegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefhufffkfggtgfgvfevofesthejredtredtjeenucfhrhhomhepqfhlihhvihgvrhcuuegvnhhjrghmihhnuceoohhlihhvihgvrhdrsggvnhhjrghmihhnsegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpedtudehfeeutdffjeeviefgjeetieeuleefkeefgfevfedvlefgiefhheejueejvdenucffohhmrghinheptghouggvsggvrhhgrdhorhhgpdhkvghrnhgvlhdrohhrghenucfkphepvdgrtddumegvfeegmegvtgefkeemvdegvgdtmehfhegtvgemfhefgedvmeeiheekjeemfheiheeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepvdgrtddumegvfeegmegvtgefkeemvdegvgdtmehfhegtvgemfhefgedvmeeiheekjeemfheiheeipdhhvghloheplgduledvrdduieekrddurddvtdgnpdhmrghilhhfrhhomhepohhlihhvihgvrhdrsggvnhhjrghmihhnsegsohhothhlihhnrdgtohhmpdhnsggprhgtphhtthhopedvfedprhgtphhtthhopehkvghrnhgvlhesphgvnhhguhhtrhhonhhigidruggvpdhrtghpthhtohepihhmgieslhhishhtshdrlhhinhhugidruggvv
 hdprhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepshdrhhgruhgvrhesphgvnhhguhhtrhhonhhigidruggvpdhrtghpthhtohepfhgvshhtvghvrghmsehgmhgrihhlrdgtohhmpdhrtghpthhtohepkhhriihksehkvghrnhgvlhdrohhrghdprhgtphhtthhopehkrhiikhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopegushhimhhitgesmhgrnhhjrghrohdrohhrgh
X-GND-Sasl: olivier.benjamin@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_145152_614736_629A9EDD 
X-CRM114-Status: GOOD (  11.94  )
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
 .../boot/dts/rockchip/rk3399-pinephone-pro.dts     | 139 +++++++++++++++++++++
 3 files changed, 145 insertions(+), 2 deletions(-)
---
-- 
Olivier Benjamin <olivier.benjamin@bootlin.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
