Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32069C54E58
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Mar 2024 14:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JnLxlLvoGL1gok5vDdUrukn3JgNTStB4WvCrXwpUozs=; b=BDuRDwCQp2Hhi5
	fTQ29hw1LC6TMSM08SOWl6mIQnTrMiIOD5WHNpjvqCzAa8MXraYHf8ZHLx3RI1udeoI9tGxzj+nFE
	D6j0eWsGNOA+IVBHUsrzsjOqtHyZ2V1ZB3I3sGDeii7b6TIBrZjISmp2j+3Os2zLQj+X0qcldCQul
	b0WGqwhSUxTp0S3tkQp8leE2lWEUkg3w116JXtmHpv0zoP+7PeWzGY+aJ8UKwGdNsLL3BkN2DuY7h
	1rYozHJrX2z5FPc8Al+g/OVPSYXgvtsXILNw71v6hj861fWG6tbs/ePJMfaEc0CCYkfiVmrDaIqn2
	TbBqozHkfuhIU7mptKfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhVS1-0000000Dwoj-156m;
	Tue, 05 Mar 2024 14:07:25 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhVRx-0000000Dwmy-26Zp;
	Tue, 05 Mar 2024 14:07:23 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 974621BF20A;
	Tue,  5 Mar 2024 14:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709647639;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mlSdtS9gPl3MStQDE6pU+wB4e620UH09fdWfMjz3JdY=;
	b=mKJ/As3NrkbIh4PqASWy22hOM4m+EZHgPI+zhZQrt886iDFGwkdhs8cK5LSEZHlRUbVD7J
	c7gx2HJ7SrSF1AXWtqe70ZWhjiOFzpE6or4k+k7JaHKoojt9TQzfREwGwIu3Zmm9Tk9p4X
	84q8AGfD9BW+fuoqymLP5MswVra4Wa44dcIWDJASp6/tMbEfUurr0NqwX5/Kacul2npFcU
	gfJndI9ZTkBq924ykcXEhGAoaI1U3t5rdSpaN0U8+aKBa9m1aGxeTuf/pxA4DwRAS+m+sJ
	1bkxO0ZxdojAXtO+RHCjuqZIMygma3rFAfi2SyNMjO2uuy5+jEpbdcXkTl4PZg==
Date: Tue, 5 Mar 2024 15:07:16 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Jaroslav Kysela
 <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v3 4/7] ASoC: codecs: Add RK3308 internal audio codec
 driver
Message-ID: <20240305150716.0fca0e33@booty>
In-Reply-To: <09c275d0f0a1bf85f37635d9570514e8fc631e72.camel@pengutronix.de>
References: <20240221-rk3308-audio-codec-v3-0-dfa34abfcef6@bootlin.com>
	<20240221-rk3308-audio-codec-v3-4-dfa34abfcef6@bootlin.com>
	<09c275d0f0a1bf85f37635d9570514e8fc631e72.camel@pengutronix.de>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_060721_730781_ADE10126 
X-CRM114-Status: GOOD (  21.53  )
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

Hello Philipp,

On Wed, 21 Feb 2024 14:21:23 +0100
Philipp Zabel <p.zabel@pengutronix.de> wrote:

> On Mi, 2024-02-21 at 11:22 +0100, Luca Ceresoli wrote:
> > Add driver for the internal audio codec of the Rockchip RK3308 SoC.
> > 
> > Initially based on the vendor kernel driver [0], with lots of cleanups,
> > fixes, improvements, conversion to DAPM and removal of some features.
> > 
> > [0] https://github.com/rockchip-linux/kernel/blob/develop-4.19/sound/soc/codecs/rk3308_codec.c
> > 
> > Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> >  
> [...]
> > diff --git a/sound/soc/codecs/rk3308_codec.c b/sound/soc/codecs/rk3308_codec.c
> > new file mode 100644
> > index 000000000000..61bfb75f92a3
> > --- /dev/null
> > +++ b/sound/soc/codecs/rk3308_codec.c
> > @@ -0,0 +1,993 @@  
> [...]
> > +static int rk3308_codec_platform_probe(struct platform_device *pdev)
> > +{  
> [...]
> > +	rk3308->reset = devm_reset_control_get(&pdev->dev, "codec");
> > +	if (IS_ERR(rk3308->reset)) {
> > +		err = PTR_ERR(rk3308->reset);
> > +		if (err != -ENOENT)
> > +			return err;
> > +
> > +		dev_dbg(&pdev->dev, "No reset control found\n");
> > +		rk3308->reset = NULL;
> > +	}  
> 
> Please use devm_reset_control_get_optional_exclusive(). That already
> returns NULL instead of -ENOENT if the reset control is not specified
> in the device tree. Then dev_err_probe() can be used to report errors.

Good point, thanks. Queued for v4.

Best regards,
Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
