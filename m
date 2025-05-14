Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5B86C3ABDA
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 May 2025 20:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rYcY4doetLZKoIkIJe4XkxTJB/tBBtMH2JAYG/DKEpg=; b=CZazR4dnNxkXYr
	mpPQJRKTBVwnRE9DI3AwN9ILNk09HSiYR1ww/R8sGQlLOcZtyx7VV84oRoPq+iAqsP9A9HnN1iDyV
	5HJS0NPATa+OZI8Xnkm1LsTQ2JRqsBZVIHXTqK2yVGsajQMlDhjezRcQTHgobhGCZ3gucGHt6hP0V
	Pew01op1kLqSWHPZhr5dHdXhVDzUuOBi4mEXQK32mQdXGCzdz8/FoGbSTm+xLRQhdBb3j1100Ae+W
	gV0ov1jdLMWuXPAR6kD067UW+65a/9CQT+oJHK2JRAAyZSYpMQ2eF/Sbjsvnn/3hJYX7/4W2x0AYr
	8xpB0C0QCCkO6xEtzuIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFIV3-0000000GFrI-0A9F;
	Wed, 14 May 2025 20:14:45 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFIT0-0000000GFaV-1af0;
	Wed, 14 May 2025 20:12:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 91B96A4E218;
	Wed, 14 May 2025 20:12:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F10B1C4CEE3;
	Wed, 14 May 2025 20:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747253557;
	bh=2WYpJnl1ax8rwpFL8L3G6L2FOopXlQPNK3SrFZq0AQU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fbtdd/oHH/eFNDqfEXpXCkjsSKFCfZ1wdk/dFjtcP69HWJgdJQFePY3VR48iavwFx
	 DxMP7ArmTZdZ8w/uafGAIdImGvmeQLX/2QfYkSe5tRQ+L4PMJIUDJitLWSwcpZNql5
	 bCAbcrXyfYiGBD0ARw9z6Q7hoWkg/GOcp5jDP7zkQPt/iEYvgd0iSMEd+V2a4lUGyX
	 L4wuz5vVpwCJln75WamZxymz+yTuZJdYgRk4inyBH5+vh7z9U0b32nLxqb8cBUbUqz
	 r8b8xZ7Z7w5Tr++Ov2hci5iAzsq+D3dT8lmdGssACsJJOcSr5QbPM/vjYS5/MZ8LYP
	 n24j3W6gnyK7Q==
Date: Wed, 14 May 2025 15:12:35 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Olivier Benjamin <olivier.benjamin@bootlin.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Nicholas Roth <nicholas@rothemail.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, Sascha Hauer <s.hauer@pengutronix.de>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: media: ov8858: inherit
 video-interface-devices properties
Message-ID: <174725355479.2958040.5700144507602583801.robh@kernel.org>
References: <20250509-camera-v3-0-dab2772d229a@bootlin.com>
 <20250509-camera-v3-1-dab2772d229a@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250509-camera-v3-1-dab2772d229a@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_131238_481925_E41529B4 
X-CRM114-Status: GOOD (  10.25  )
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


On Fri, 09 May 2025 23:51:37 +0200, Olivier Benjamin wrote:
> Update the OV8858 binding to inherit properties defined in the
> video-interface-devices binding.
> 
> Signed-off-by: Olivier Benjamin <olivier.benjamin@bootlin.com>
> ---
>  Documentation/devicetree/bindings/media/i2c/ovti,ov8858.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
