Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17492C48BC3
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Feb 2024 13:21:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B5mzBz27ygbSl9RrcJdRUrGulQG3UGIo/K1MA/LExzw=; b=ihDEXZc0877lKb
	6eKc5heBA25nS5orAczEkOvhU0BiMYgi3P60YfrvkqQgoNA7/foeItdhU2ArXeEMQN1OXP6CE3hvf
	thNl2rY9kGROKD4WaYlMfu2GOCDjePA88CZGccYql5ptxBYccAvuUwYRYo+fNMf+NLzsaWnhmsAh9
	QlD6BuHXEAu2GMb7mWH/I6sVwnc1T/4Y1a49M/S6/6o6vsrsNmLegs4r+mmakqDc4cM48WFcu6V9r
	K6KyZ+BNaZ+sj57UrILN1CGPMJnn9HXKIpyEv6cQv/fb9nD/kF4qzMPbBD0Mc8EpjqL1r1kY8rUeD
	kIV5EAiqwlbqlfIfRnYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcmXX-000000010qP-2OsM;
	Wed, 21 Feb 2024 13:21:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcmXV-000000010pQ-16AY
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Feb 2024 13:21:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rcmXM-0002OS-FY; Wed, 21 Feb 2024 14:21:24 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rcmXL-00237x-Gz; Wed, 21 Feb 2024 14:21:23 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rcmXL-0009An-1R;
	Wed, 21 Feb 2024 14:21:23 +0100
Message-ID: <09c275d0f0a1bf85f37635d9570514e8fc631e72.camel@pengutronix.de>
Subject: Re: [PATCH v3 4/7] ASoC: codecs: Add RK3308 internal audio codec
 driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>, Nicolas Frattaroli
 <frattaroli.nicolas@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark
 Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai
 <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,  Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Date: Wed, 21 Feb 2024 14:21:23 +0100
In-Reply-To: <20240221-rk3308-audio-codec-v3-4-dfa34abfcef6@bootlin.com>
References: <20240221-rk3308-audio-codec-v3-0-dfa34abfcef6@bootlin.com>
	 <20240221-rk3308-audio-codec-v3-4-dfa34abfcef6@bootlin.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_052133_321784_B07A1A6F 
X-CRM114-Status: GOOD (  16.01  )
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

On Mi, 2024-02-21 at 11:22 +0100, Luca Ceresoli wrote:
> Add driver for the internal audio codec of the Rockchip RK3308 SoC.
> 
> Initially based on the vendor kernel driver [0], with lots of cleanups,
> fixes, improvements, conversion to DAPM and removal of some features.
> 
> [0] https://github.com/rockchip-linux/kernel/blob/develop-4.19/sound/soc/codecs/rk3308_codec.c
> 
> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
>
[...]
> diff --git a/sound/soc/codecs/rk3308_codec.c b/sound/soc/codecs/rk3308_codec.c
> new file mode 100644
> index 000000000000..61bfb75f92a3
> --- /dev/null
> +++ b/sound/soc/codecs/rk3308_codec.c
> @@ -0,0 +1,993 @@
[...]
> +static int rk3308_codec_platform_probe(struct platform_device *pdev)
> +{
[...]
> +	rk3308->reset = devm_reset_control_get(&pdev->dev, "codec");
> +	if (IS_ERR(rk3308->reset)) {
> +		err = PTR_ERR(rk3308->reset);
> +		if (err != -ENOENT)
> +			return err;
> +
> +		dev_dbg(&pdev->dev, "No reset control found\n");
> +		rk3308->reset = NULL;
> +	}

Please use devm_reset_control_get_optional_exclusive(). That already
returns NULL instead of -ENOENT if the reset control is not specified
in the device tree. Then dev_err_probe() can be used to report errors.


regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
