Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3544FC761A6
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 17:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DILz8OrL4nXSG85OkhsmWyxzGasj9awMQn/1q0wjUSo=; b=a6UMzKYAJu1A5N
	AnicNvONn5BdZvGsdBAAg0RmNWFlhivOJnTCvtKy6GKeF5w/eJozhpV6wzvOJqlxHv0CwEiQjpZAW
	wbURePm6qVqOWTZ0Zzts7mrenKVFaPW+XleamEbcgnL+ZXIA6ls+3PVokClv9xReJ3ekG39Lg6/I5
	aPN7MPdlkj2YEeNct5VJLUqdYx3D7kMeWbvhmvUgcz6GQpjX4m/Bh6Yx+TB+czGKK5cSi06AjiIPr
	E71qPpKq/Kh6DsPFtmG3AvRzXGZcZVaZMGZh5fyA4SXAt1OKY84V2UFbickP8OE9lYMMs6ws8wqnB
	2F1dCOw5PqfJke7Vhzpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phvkF-004a0M-2S;
	Thu, 30 Mar 2023 17:07:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phvkC-004Zyd-1I
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Mar 2023 17:07:26 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1phvjz-0005WC-Tv; Thu, 30 Mar 2023 19:07:11 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Amit Kucheria <amitk@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject:  Re: [RESEND] [PATCHv3 4/7] thermal: rockchip: Simplify channel id logic
Date: Thu, 30 Mar 2023 19:07:11 +0200
Message-ID: <2066924.KlZ2vcFHjT@diego>
In-Reply-To: <bae80282-cb80-462d-e554-1934d090e216@linaro.org>
References:  <20230308112253.15659-1-sebastian.reichel@collabora.com>
 <ec66d4e7-cb82-46c6-84ae-bd51df7cab7c@mercury.local>
 <bae80282-cb80-462d-e554-1934d090e216@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_100724_580254_8464ABE7 
X-CRM114-Status: GOOD (  31.50  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Donnerstag, 16. M=E4rz 2023, 11:05:25 CEST schrieb Daniel Lezcano:
> =

> Hi Heiko,
> =

> On 08/03/2023 19:42, Sebastian Reichel wrote:
> > Hi Daniel,
> > =

> > On Wed, Mar 08, 2023 at 07:13:22PM +0100, Daniel Lezcano wrote:
> >> On 08/03/2023 12:22, Sebastian Reichel wrote:
> >>> Replace the channel ID lookup table by a simple offset, since
> >>> the channel IDs are consecutive.
> >>>
> >>> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> >>
> >> As all the other patches are reviewed by Heiko, is the tag missing her=
e?
> > =

> > Heiko was not happy with this in PATCHv2, when he reviewed most
> > of the patches:
> > =

> > https://lore.kernel.org/all/3601039.e9J7NaK4W3@phil/
> > =

> > I replied, but never got a response, so I kept it as is:
> > =

> > https://lore.kernel.org/all/20221206170232.xsm4kcbfwrmlrriw@mercury.ele=
ktranox.org/
> > =

> > FWIW it is essential for the series and cannot be dropped, because
> > RK3588 has more than 2 channels.
> =

> Do you have a suggestion to improve the proposed change ?

I guess it's fine after all.

Sebastian's response makes sense and there is not really a reason to keep
infrastructure around for a hypothetical case that may never happen.

If that really changes with some SoC in the far future we can always
re-evaluate.


So,

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Sorry for dropping the ball on this
Heiko


> >>> ---
> >>>    drivers/thermal/rockchip_thermal.c | 48 +++++++++++++-------------=
----
> >>>    1 file changed, 21 insertions(+), 27 deletions(-)
> >>>
> >>> diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/roc=
kchip_thermal.c
> >>> index 9ed45b318344..bcbdd618daae 100644
> >>> --- a/drivers/thermal/rockchip_thermal.c
> >>> +++ b/drivers/thermal/rockchip_thermal.c
> >>> @@ -39,15 +39,6 @@ enum tshut_polarity {
> >>>    	TSHUT_HIGH_ACTIVE,
> >>>    };
> >>> -/*
> >>> - * The system has two Temperature Sensors.
> >>> - * sensor0 is for CPU, and sensor1 is for GPU.
> >>> - */
> >>> -enum sensor_id {
> >>> -	SENSOR_CPU =3D 0,
> >>> -	SENSOR_GPU,
> >>> -};
> >>> -
> >>>    /*
> >>>     * The conversion table has the adc value and temperature.
> >>>     * ADC_DECREMENT: the adc value is of diminishing.(e.g. rk3288_cod=
e_table)
> >>> @@ -82,7 +73,7 @@ struct chip_tsadc_table {
> >>>    /**
> >>>     * struct rockchip_tsadc_chip - hold the private data of tsadc chip
> >>> - * @chn_id: array of sensor ids of chip corresponding to the channel
> >>> + * @chn_offset: the channel offset of the first channel
> >>>     * @chn_num: the channel number of tsadc chip
> >>>     * @tshut_temp: the hardware-controlled shutdown temperature value
> >>>     * @tshut_mode: the hardware-controlled shutdown mode (0:CRU 1:GPI=
O)
> >>> @@ -98,7 +89,7 @@ struct chip_tsadc_table {
> >>>     */
> >>>    struct rockchip_tsadc_chip {
> >>>    	/* The sensor id of chip correspond to the ADC channel */
> >>> -	int chn_id[SOC_MAX_SENSORS];
> >>> +	int chn_offset;
> >>>    	int chn_num;
> >>>    	/* The hardware-controlled tshut property */
> >>> @@ -925,8 +916,8 @@ static void rk_tsadcv2_tshut_mode(int chn, void _=
_iomem *regs,
> >>>    }
> >>>    static const struct rockchip_tsadc_chip px30_tsadc_data =3D {
> >>> -	.chn_id[SENSOR_CPU] =3D 0, /* cpu sensor is channel 0 */
> >>> -	.chn_id[SENSOR_GPU] =3D 1, /* gpu sensor is channel 1 */
> >>> +	/* cpu, gpu */
> >>> +	.chn_offset =3D 0,
> >>>    	.chn_num =3D 2, /* 2 channels for tsadc */
> >>>    	.tshut_mode =3D TSHUT_MODE_CRU, /* default TSHUT via CRU */
> >>> @@ -949,7 +940,8 @@ static const struct rockchip_tsadc_chip px30_tsad=
c_data =3D {
> >>>    };
> >>>    static const struct rockchip_tsadc_chip rv1108_tsadc_data =3D {
> >>> -	.chn_id[SENSOR_CPU] =3D 0, /* cpu sensor is channel 0 */
> >>> +	/* cpu */
> >>> +	.chn_offset =3D 0,
> >>>    	.chn_num =3D 1, /* one channel for tsadc */
> >>>    	.tshut_mode =3D TSHUT_MODE_GPIO, /* default TSHUT via GPIO give P=
MIC */
> >>> @@ -973,7 +965,8 @@ static const struct rockchip_tsadc_chip rv1108_ts=
adc_data =3D {
> >>>    };
> >>>    static const struct rockchip_tsadc_chip rk3228_tsadc_data =3D {
> >>> -	.chn_id[SENSOR_CPU] =3D 0, /* cpu sensor is channel 0 */
> >>> +	/* cpu */
> >>> +	.chn_offset =3D 0,
> >>>    	.chn_num =3D 1, /* one channel for tsadc */
> >>>    	.tshut_mode =3D TSHUT_MODE_GPIO, /* default TSHUT via GPIO give P=
MIC */
> >>> @@ -997,8 +990,8 @@ static const struct rockchip_tsadc_chip rk3228_ts=
adc_data =3D {
> >>>    };
> >>>    static const struct rockchip_tsadc_chip rk3288_tsadc_data =3D {
> >>> -	.chn_id[SENSOR_CPU] =3D 1, /* cpu sensor is channel 1 */
> >>> -	.chn_id[SENSOR_GPU] =3D 2, /* gpu sensor is channel 2 */
> >>> +	/* cpu, gpu */
> >>> +	.chn_offset =3D 1,
> >>>    	.chn_num =3D 2, /* two channels for tsadc */
> >>>    	.tshut_mode =3D TSHUT_MODE_GPIO, /* default TSHUT via GPIO give P=
MIC */
> >>> @@ -1022,7 +1015,8 @@ static const struct rockchip_tsadc_chip rk3288_=
tsadc_data =3D {
> >>>    };
> >>>    static const struct rockchip_tsadc_chip rk3328_tsadc_data =3D {
> >>> -	.chn_id[SENSOR_CPU] =3D 0, /* cpu sensor is channel 0 */
> >>> +	/* cpu */
> >>> +	.chn_offset =3D 0,
> >>>    	.chn_num =3D 1, /* one channels for tsadc */
> >>>    	.tshut_mode =3D TSHUT_MODE_CRU, /* default TSHUT via CRU */
> >>> @@ -1045,8 +1039,8 @@ static const struct rockchip_tsadc_chip rk3328_=
tsadc_data =3D {
> >>>    };
> >>>    static const struct rockchip_tsadc_chip rk3366_tsadc_data =3D {
> >>> -	.chn_id[SENSOR_CPU] =3D 0, /* cpu sensor is channel 0 */
> >>> -	.chn_id[SENSOR_GPU] =3D 1, /* gpu sensor is channel 1 */
> >>> +	/* cpu, gpu */
> >>> +	.chn_offset =3D 0,
> >>>    	.chn_num =3D 2, /* two channels for tsadc */
> >>>    	.tshut_mode =3D TSHUT_MODE_GPIO, /* default TSHUT via GPIO give P=
MIC */
> >>> @@ -1070,8 +1064,8 @@ static const struct rockchip_tsadc_chip rk3366_=
tsadc_data =3D {
> >>>    };
> >>>    static const struct rockchip_tsadc_chip rk3368_tsadc_data =3D {
> >>> -	.chn_id[SENSOR_CPU] =3D 0, /* cpu sensor is channel 0 */
> >>> -	.chn_id[SENSOR_GPU] =3D 1, /* gpu sensor is channel 1 */
> >>> +	/* cpu, gpu */
> >>> +	.chn_offset =3D 0,
> >>>    	.chn_num =3D 2, /* two channels for tsadc */
> >>>    	.tshut_mode =3D TSHUT_MODE_GPIO, /* default TSHUT via GPIO give P=
MIC */
> >>> @@ -1095,8 +1089,8 @@ static const struct rockchip_tsadc_chip rk3368_=
tsadc_data =3D {
> >>>    };
> >>>    static const struct rockchip_tsadc_chip rk3399_tsadc_data =3D {
> >>> -	.chn_id[SENSOR_CPU] =3D 0, /* cpu sensor is channel 0 */
> >>> -	.chn_id[SENSOR_GPU] =3D 1, /* gpu sensor is channel 1 */
> >>> +	/* cpu, gpu */
> >>> +	.chn_offset =3D 0,
> >>>    	.chn_num =3D 2, /* two channels for tsadc */
> >>>    	.tshut_mode =3D TSHUT_MODE_GPIO, /* default TSHUT via GPIO give P=
MIC */
> >>> @@ -1120,8 +1114,8 @@ static const struct rockchip_tsadc_chip rk3399_=
tsadc_data =3D {
> >>>    };
> >>>    static const struct rockchip_tsadc_chip rk3568_tsadc_data =3D {
> >>> -	.chn_id[SENSOR_CPU] =3D 0, /* cpu sensor is channel 0 */
> >>> -	.chn_id[SENSOR_GPU] =3D 1, /* gpu sensor is channel 1 */
> >>> +	/* cpu, gpu */
> >>> +	.chn_offset =3D 0,
> >>>    	.chn_num =3D 2, /* two channels for tsadc */
> >>>    	.tshut_mode =3D TSHUT_MODE_GPIO, /* default TSHUT via GPIO give P=
MIC */
> >>> @@ -1404,7 +1398,7 @@ static int rockchip_thermal_probe(struct platfo=
rm_device *pdev)
> >>>    	for (i =3D 0; i < thermal->chip->chn_num; i++) {
> >>>    		error =3D rockchip_thermal_register_sensor(pdev, thermal,
> >>>    						&thermal->sensors[i],
> >>> -						thermal->chip->chn_id[i]);
> >>> +						thermal->chip->chn_offset + i);
> >>>    		if (error)
> >>>    			return dev_err_probe(&pdev->dev, error,
> >>>    				"failed to register sensor[%d].\n", i);
> >>
> >>
> >> Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
> >> <http://twitter.com/#!/linaroorg> Twitter |
> >> <http://www.linaro.org/linaro-blog/> Blog
> >>
> =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
