Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E07ACC3A59D
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Oct 2022 08:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ymuplX1bAQ6k5wsWG3VNPpD7deYXiXrzcI5yfLbzBO8=; b=HKLA7T9VgBlIZB
	W+repzqbBQXeYDlkmawpEzuhQDURrj973X1N4ulVi1zru5Koe9m1267DKzMIyhpVLO4Dkx00KrJwr
	23nrsgzVtPSQiSr8OHL5F1m2fGE98Q8XOW+JzYQ0zRoPgNlpRSfZL+KmWoHlTnjMjLvaWAeBfY+CP
	NtpnEPrGMbedhSR+cWnSXx4YEt6RZFLOzzxSHdcg0pc8uEkVBFUGJrThWo/T8ZK8Y+8c4MbPzQ0xi
	P8DuXt3bzMPB44njSrqGTLaui8Kqv/H2I4xNMck1FetVvWFVWrsZg96/kkOUFh4FCC9LN2bf/Kvif
	0Kp1m5QMq9sUWzNM4McQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omA6a-00BoXC-Qg; Sat, 22 Oct 2022 08:43:44 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omA6X-00BoV0-SJ
	for linux-rockchip@lists.infradead.org; Sat, 22 Oct 2022 08:43:43 +0000
Received: by mail-wm1-x332.google.com with SMTP id bh7-20020a05600c3d0700b003c6fb3b2052so3527037wmb.2
        for <linux-rockchip@lists.infradead.org>; Sat, 22 Oct 2022 01:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KVRMuzLJw/J1q+giNaX6Vc02ZR+eG+PVzdJvDk7ri7g=;
        b=ZxMUG3F20OU/VbNFfTRFkR0htlYhlqL1zzJUabbwqf1IKnbuZ68Pemjy1BdsIpaZDV
         GLkgrFLTULtfVu5Q8kclQOXw17hLgTGV3gevfd2nzN+9fRE4U2MYhBU2R5mgzeKEIqvA
         wMReSgMPW/QBUUqZ8JnDwKnoRNxIB2ENAGMImfDEu75B/VKiRc/1yCjgtiwBYXNP/m8J
         Ay9Lqe51yYY/RtbvuqjnZZnQnvFhWXhjo5stl6ETqtuojRKa9gGk8xOvmKrYe/lxupWU
         Rme4zzPCpGWT0MglTnlVc6G2w/gXIydy/0aNaMNu3r2Oko3cdiLxfSfeXAq2zxuEfifU
         t2NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KVRMuzLJw/J1q+giNaX6Vc02ZR+eG+PVzdJvDk7ri7g=;
        b=2xVYcmCoO8+gAXyaA/c7GYENKZKbdzPa8dX0pBq7FP7XpAuyPLsdDmaTsWJapE1dzk
         zojlfxR93hTOvjuIt2EAhS9XZp6POF1Xx6vEwn64OgnYL5wUqcdBqG4L+C6nMKqb1zjh
         By98Rvaty+JEbqn6Lu7FZZzJrcaWhHOikWSs/3STXZaiJII6Xyzl/C6ehxKYMFZs76zE
         ZLQ0YpFO0LcrqSljg/C60ajfxaobv5/o8kJZ8PgYpcPDpq/6wRlT1+Mxo8jMpj0TQlwV
         sVuOZEwSc8k708TnZ/NFhOoCK/rPgPYAEY6/fI0u5JU1J34zgIRLcUOJDD5fF1RtkfSp
         PhHQ==
X-Gm-Message-State: ACrzQf1LNoGkwR0Yl+eVMWGWii7HuqZlhZz/vgl5lofKlMFgVIqrTN4Z
	zUwSe0L+GUVfN0AfYP38+VQ=
X-Google-Smtp-Source: AMsMyM4+B+7jjZDBaC4RwhOwV7c/q6Pqs7CJkx1DDSq+dch+osei83kqJUXz5QLDfo5Jy/tQLwGGJg==
X-Received: by 2002:a05:600c:358f:b0:3c6:da94:66f9 with SMTP id p15-20020a05600c358f00b003c6da9466f9mr15417984wmq.142.1666428216369;
        Sat, 22 Oct 2022 01:43:36 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id k16-20020a5d5190000000b00236488f62d6sm5566864wrv.79.2022.10.22.01.43.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Oct 2022 01:43:35 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>, Heiko Stuebner <heiko@sntech.de>, "Rafael J. Wysocki" <rafael@kernel.org>, Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Finley Xiao <finley.xiao@rock-chips.com>, kernel@collabora.com, Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 1/2] thermal: rockchip: Support RK3588 SoC in the thermal driver
Date: Sat, 22 Oct 2022 10:43:31 +0200
Message-ID: <7276280.TLKafQO6qx@archbook>
In-Reply-To: <2aafa6cc-a7de-0b7a-571f-04593ad53787@linaro.org>
References: <20221021174721.92468-1-sebastian.reichel@collabora.com> <20221021174721.92468-2-sebastian.reichel@collabora.com> <2aafa6cc-a7de-0b7a-571f-04593ad53787@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221022_014341_949355_E43663A6 
X-CRM114-Status: GOOD (  26.87  )
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

On Freitag, 21. Oktober 2022 21:59:56 CEST Daniel Lezcano wrote:
> On 21/10/2022 19:47, Sebastian Reichel wrote:
> > From: Finley Xiao <finley.xiao@rock-chips.com>
> > 
> > The RK3588 SoC has seven channels TS-ADC(TOP, BIG_CORE0, BIG_CORE1,
> > LITTEL_CORE, CENTER, GPU, and NPU).
> 
> Is possible to give a more elaborate description of those sensors?
> 
> What is TOP and CENTER ?
> 
> There are 4 Bigs on this platform but two sensors ?

As far as I know, the four big cores in the SoC are arranged in two
clusters of two cores each, so one temperature sensor for each
cluster. As far as I can tell each CPU in a cluster shares its voltage
with its partner CPU core in its cluster.

If you have access to the TRM, it contains the following line in
part 1 on page 1372:

	Support to 7 channel TS-ADC (near chip center, A76_0/1, A76_2/3,
	DSU and A55_0/1/2/3, PD_CENTER, NPU, GPU)

I assume one of "TOP" and "CENTER" is "near chip center", the other is
PD_CENTER, whatever that means (PD = power domain maybe?)

I agree these could be named more descriptively.

> 
> 
> > Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> > [rebase, squash fixes]
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >   drivers/thermal/rockchip_thermal.c | 182 ++++++++++++++++++++++++++++-
> >   1 file changed, 179 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
> > index 819e059cde71..82f475a6448f 100644
> > --- a/drivers/thermal/rockchip_thermal.c
> > +++ b/drivers/thermal/rockchip_thermal.c
> > @@ -61,10 +61,9 @@ enum adc_sort_mode {
> >   #include "thermal_hwmon.h"
> >   
> >   /**
> > - * The max sensors is two in rockchip SoCs.
> > - * Two sensors: CPU and GPU sensor.
> > + * The max sensors is seven in rockchip SoCs.
> >    */
> > -#define SOC_MAX_SENSORS	2
> > +#define SOC_MAX_SENSORS	7
> 
> You may get rid of this and replace the sensors array to an dyn 
> allocation based on chn_num
> 
> [ ... ]
> 
> > +static const struct rockchip_tsadc_chip rk3588_tsadc_data = {
> > +	/* top, big_core0, big_core1, little_core, center, gpu, npu */
> > +	.chn_id = {0, 1, 2, 3, 4, 5, 6},
> 
> You may want to revisit that. Actually, chn_id is not useful and can be 
> removed everywhere as there is no hole. Otherwise a bit mask could be 
> used. By removing it, SENSOR_CPU and SENSOR_GPU can be removed too.
> 
> > +	.chn_num = 7, /* seven channels for tsadc
> > +	.tshut_mode = TSHUT_MODE_GPIO, /* default TSHUT via GPIO give PMIC */
> > +	.tshut_polarity = TSHUT_LOW_ACTIVE, /* default TSHUT LOW ACTIVE */
> > +	.tshut_temp = 95000,
> > +	.initialize = rk_tsadcv8_initialize,
> > +	.irq_ack = rk_tsadcv4_irq_ack,
> > +	.control = rk_tsadcv4_control,
> > +	.get_temp = rk_tsadcv4_get_temp,
> > +	.set_alarm_temp = rk_tsadcv3_alarm_temp,
> > +	.set_tshut_temp = rk_tsadcv3_tshut_temp,
> > +	.set_tshut_mode = rk_tsadcv3_tshut_mode,
> > +	.table = {
> > +		.id = rk3588_code_table,
> > +		.length = ARRAY_SIZE(rk3588_code_table),
> > +		.data_mask = TSADCV4_DATA_MASK,
> > +		.mode = ADC_INCREMENT,
> > +	},
> > +};
> > +
> >   static const struct of_device_id of_rockchip_thermal_match[] = {
> >   	{	.compatible = "rockchip,px30-tsadc",
> >   		.data = (void *)&px30_tsadc_data,
> > @@ -1180,6 +1352,10 @@ static const struct of_device_id of_rockchip_thermal_match[] = {
> >   		.compatible = "rockchip,rk3568-tsadc",
> >   		.data = (void *)&rk3568_tsadc_data,
> >   	},
> > +	{
> > +		.compatible = "rockchip,rk3588-tsadc",
> > +		.data = (void *)&rk3588_tsadc_data,
> > +	},
> >   	{ /* end */ },
> >   };
> >   MODULE_DEVICE_TABLE(of, of_rockchip_thermal_match);
> 
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
