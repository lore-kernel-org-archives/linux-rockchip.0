Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4014C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Dec 2023 08:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+cDy4CUsD0EQatGvV92qQ8Zv0PQCNYxpJ84MgOI11s=; b=NDAOhhQyj7Kbs7
	rkJFUrejxx0PhWQkKp4vHlRnWSzaaMMbS3s8/ACsHoGyRWPACN7ZQh9aquSg55fH+zNP4uY2gIE36
	vbp70F4TV1GIaUc682gv3p1y2rFBOgftfth8rObACCJoSoSygHseIm3XrNHSFwJjaz8lnvNaXDlsa
	U344Wny8g2etvhWF9wT/gO+F+La0kqD0iZmaimyFGsnUVlS36Y1EFQ6XZEZRrOINuuttFt/uw9UBi
	959dsg0UXvV5yOMcrErNhzWZ0NMaDkfgjYF92+N6/uwoG3xWFUCEI6/tdo3D248rE3kAiFgfwBBXo
	+3FB1SfzDoTLL/IvPHpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFrem-00GXRk-1S;
	Wed, 20 Dec 2023 08:10:20 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFrej-00GXPE-0I;
	Wed, 20 Dec 2023 08:10:18 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 0E5411BF206;
	Wed, 20 Dec 2023 08:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703059812;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WYCn55L9LYXcsrsa3rckB4VOR65FZbyXhZEd5vzTYvA=;
	b=FLEsn+jvH9dNV8gOGvDfeG0dzegnfsD8OZ2ulskHYPqj7XJWuPqXZ86FyxJE9q+Ozzgr6W
	lD45c5kOYXBphNxhpLxrv/NfvHfbyGODrpSFvuiw9w5C1mAWHM6tgzEtpbtiLihIH/P4u1
	6bVQDyzPZvRWyN09ESlKfrECB65sczsh0Z/7flHjJwHR0PkfVBDbyRT02xZD+920NZH10K
	sSh68dckm0feb5avQdgwYgVTkvpNxhAAcEj4+CoztxW1Pp/xX68SY0ODOkcWB3ocrXK9sQ
	eTUSqqUOQTGPEoB9ahPOh7SVhhgkaILim6vCEcf5/2thagwQlDNcWg1hDeyNHg==
Date: Wed, 20 Dec 2023 09:10:07 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Rob Herring <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org, Nicolas Frattaroli
 <frattaroli.nicolas@gmail.com>, Mark Brown <broonie@kernel.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai
 <tiwai@suse.com>, linux-sound@vger.kernel.org, Liam Girdwood
 <lgirdwood@gmail.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH v2 2/6] ASoC: dt-bindings: Add Rockchip RK3308 internal
 audio codec
Message-ID: <20231220091007.35e62af9@booty>
In-Reply-To: <170302760623.2025074.2958729782154314139.robh@kernel.org>
References: <20231219-rk3308-audio-codec-v2-0-c70d06021946@bootlin.com>
	<20231219-rk3308-audio-codec-v2-2-c70d06021946@bootlin.com>
	<170302760623.2025074.2958729782154314139.robh@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_001017_276138_25FBE3FD 
X-CRM114-Status: GOOD (  10.17  )
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

Hello,

On Tue, 19 Dec 2023 17:13:26 -0600
Rob Herring <robh@kernel.org> wrote:

> On Tue, 19 Dec 2023 15:54:17 +0100, Luca Ceresoli wrote:
> > Add device tree bindings document for the internal audio codec of the
> > Rockchip RK3308 SoC.

...

> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> Error: Documentation/devicetree/bindings/sound/rockchip,rk3308-codec.example.dts:20.20-21 syntax error

Indeed:

-    audio-codec: audio-codec@ff560000 {
+    audio_codec: audio-codec@ff560000 {

Fixed locally, queued for v3.

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
