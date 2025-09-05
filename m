Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20F61CA1016
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Sep 2025 18:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NVyUhtqQjt5a3/sozSIKJ7wQd9ZqzI6PYbGvLrAcubc=; b=MlUVvYqaNDLsplwQO3J2zUYRoc
	saUBxzD8nrIrRaFZTKW+GCir6z9jugLQ2yfIEn1gxUIdu4mViWy+waqGkJk0bEZXGZ5RxPCZjWYFq
	JfZd1vdAzKi8zOkVPlbYYOwvSQM2whXgdDhTllUJLJw28Mgvwp7g0GF7vcRo4tuBXetUCPxQSWZ+y
	7kDgfw46qx1UEcPNxRDLwbOPt3YOrI5yRL9huFJx8AyFpwnByvJGuWs+gHzSMl0qvYnq6tG116ovr
	uWONYVk4ZBv+0Pk8c606k+MD8cp3lsW1xGp79in+k0tpDopqkG1fRF3vMWic8mk4yaTY21NtAD9kc
	hkXIYjDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uubA2-00000003mtr-3nyj;
	Fri, 05 Sep 2025 18:27:46 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuXQn-00000002Hrn-2sE1;
	Fri, 05 Sep 2025 14:28:50 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-249406d5878so21481485ad.0;
        Fri, 05 Sep 2025 07:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757082529; x=1757687329; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=xIBk01NdBuwsWQnnNXVdcn6j5JKGkVjqtQzEraCQviA=;
        b=NGEeDNG0itE3HHp5Onwu9c0ZZAKRTasBxpw/VUzfZENKDh+eWveNBRHLkYRfgEnit2
         QLxX7ukf4ZgTk6ArOSGhtHkieOvakB9uXS/04oV4KpSSauAtSMNAku5OTZrPIZcPmIzM
         UktMNzfuBTUW47p4wUsToOyxNBaCoZ6RcOS1lxPQPK1/We7xuLXcEtfHXUOj+8GUllsF
         yah5Wodh9QcIcGiHYon+VkzOVt1M7qFzyJ+urkepODXOGTkp33wUDfzXj9jYKu3DLJPP
         tJcsESsa7VRyQhJO8i1CNeMgnvspUr67wTJ7RdIpJoXeSymCxCSKftYLNJZuCiN7sQ+r
         13ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757082529; x=1757687329;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xIBk01NdBuwsWQnnNXVdcn6j5JKGkVjqtQzEraCQviA=;
        b=RcQhaZhcUt/+fXlKYMYQiigFtoKUBEikR+HNcixDjKAjOxqtvyoX7yrdlevzn8V080
         /UKfGMtb62aDL12yziyJN3KidiPJMWbH8eqOm9y8e/G2mF3HFFJF5cgQxh1hoFk+4Qtu
         W4v3nSxoK34FXY414d8anEezlncZaQwptredBKGCEKL6e+7X3tcKS1xy39L816jped+H
         2/wsqyjel8TZIyR9btmgvPNqrIVTFZgCICf4WGADN3D4uXmjnCcaHEngfUNBZfVzPk1E
         +shcmwVDLIOLZp357tnKUGfPmOmNU+v7yY+7Ga7+CqwP61GKDrUFIsoJ+06V003jubKP
         Iqag==
X-Forwarded-Encrypted: i=1; AJvYcCUhdr55Vr2YfQBvWAVg7czFt/c6sTGZ6vZNUoG58bRfwibtHGQ6q1rX1C4koHTz68LQL0h7SGQfCEdBWhTDujz+bw==@lists.infradead.org, AJvYcCVM1zQaPrmleAcVtyXaJXoHVWB0eED+9V61ylo+prjErqfVh4LTnbh+mxJrNM7FfFOFXGr317gXeOcxpTGW@lists.infradead.org, AJvYcCWzCDNHyBCV0fHiZq++LJKtRmgIfJ73Inf46shmL+j1FqI2BARtpr8YL6Yw/DzbvuR5jYKvMhs8bLN3JGtAhrTy9w==@lists.infradead.org, AJvYcCXt3j+5Ez8CclK+n4KKwYTFbJSW893ycj/kpBhCgtAumJGEmx2Xgkrt+XJ8SCCyzntku8evwBEx7gHzNpIerAA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzli+yoykVx9QriZFbhn9otrcatYHnPf3lToG+HdxEKrfWB92gO
	YI6dEKTtCyIBsxpCS3YsUl2KsNqNWkIaHq2PTAQFj8kdlBsz2UJsR6KO
X-Gm-Gg: ASbGnct0n3w3iPzprK0RRcQ3gpg5yS58z6tuDMWvst011CjuqeSfHQnNTm+3kC/GZlw
	feLahsNa6//djfi3IIE2wzRIj43txUpe16/i16hrRPyIZfp8+5QsPZ9oVMFcb6q93bckuxnj7U7
	ATnYAEP4lx7XKI2kXAVmQjaZN0HWRpvPJ71kd+APNZILgYu00NWGjmJHIbwMie3QKOX5NGETdu+
	ahYYJjPYuEwPPf7bTn0LjgLbI5pycd39YOG0G9KfrK1t/ky7V/DStZxfi3DMT+5DYo6lBNoLc7F
	6ACVM0Zzgd2g5zwrCgiGbOzpygCtvsV3WI2qIq7kJynR5hkm26mvQmNcvJQWxo2JiY/MKNqim79
	yI5q73/exuySUSdzX4gIvKtdrCYS0XhtriygN03Yep4cC/YZWx97w+scrbrsbWABO1eVmBRk=
X-Google-Smtp-Source: AGHT+IGmtjyZd11+KjNwJeufcA4YJgYYRhNDfsNkfD6VHk0PEhzxkDj8A/25DdwjoogzCAHLZqAmGA==
X-Received: by 2002:a17:903:1ac6:b0:240:83af:e2e0 with SMTP id d9443c01a7336-24944ae7beemr297755715ad.47.1757082528461;
        Fri, 05 Sep 2025 07:28:48 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7722a4b99fasm22492373b3a.57.2025.09.05.07.28.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 07:28:47 -0700 (PDT)
Message-ID: <42b68c7f-8368-470b-a7b7-d1ff075973fa@roeck-us.net>
Date: Fri, 5 Sep 2025 07:28:42 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/12] thermal: of: Add error handling in
 devm_thermal_*_register()
To: Xichao Zhao <zhao.xichao@vivo.com>, Jean Delvare <jdelvare@suse.com>,
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Guillaume La Roque
 <glaroque@baylibre.com>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, zhanghongchen
 <zhanghongchen@loongson.cn>, Yinbo Zhu <zhuyinbo@loongson.cn>,
 Amit Kucheria <amitk@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar
 <alim.akhtar@samsung.com>, Orson Zhai <orsonzhai@gmail.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Talel Shenhar <talel@amazon.com>,
 Eduardo Valentin <edubezval@gmail.com>, Keerthy <j-keerthy@ti.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 "open list:HARDWARE MONITORING" <linux-hwmon@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Allwinner sunXi SoC support" <linux-sunxi@lists.linux.dev>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 "open list:THERMAL DRIVER FOR AMLOGIC SOCS"
 <linux-amlogic@lists.infradead.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 "open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>,
 "open list:QUALCOMM TSENS THERMAL DRIVER" <linux-arm-msm@vger.kernel.org>,
 "open list:RENESAS R-CAR THERMAL DRIVERS"
 <linux-renesas-soc@vger.kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 "open list:SAMSUNG THERMAL DRIVER" <linux-samsung-soc@vger.kernel.org>,
 "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "open list:TEGRA ARCHITECTURE SUPPORT" <linux-tegra@vger.kernel.org>,
 "open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>
References: <20250905072423.368123-1-zhao.xichao@vivo.com>
 <20250905072423.368123-2-zhao.xichao@vivo.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 np3900V20aS7eD9K8GTU0TGC1pyz6IVJwIE=
In-Reply-To: <20250905072423.368123-2-zhao.xichao@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_072849_731880_03B8B037 
X-CRM114-Status: GOOD (  18.91  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 9/5/25 00:23, Xichao Zhao wrote:
> devm_thermal_of_zone_register() does not print any error message
> when registering a thermal zone with a device node sensor fails
> and allocating device resource data fails.
> 
> This forces each driver to implement redundant error logging.
> Additionally, when upper-layer functions propagate these errors
> without logging, critical debugging information is lost.
> 
> Add dev_err_probe() in devm_thermal_of_zone_register() to unify
> error reporting.
> 
> Signed-off-by: Xichao Zhao <zhao.xichao@vivo.com>
> ---
>   drivers/thermal/thermal_of.c | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/thermal/thermal_of.c b/drivers/thermal/thermal_of.c
> index 1a51a4d240ff..8fe0ad402579 100644
> --- a/drivers/thermal/thermal_of.c
> +++ b/drivers/thermal/thermal_of.c
> @@ -475,11 +475,15 @@ struct thermal_zone_device *devm_thermal_of_zone_register(struct device *dev, in
>   
>   	ptr = devres_alloc(devm_thermal_of_zone_release, sizeof(*ptr),
>   			   GFP_KERNEL);
> -	if (!ptr)
> +	if (!ptr) {
> +		dev_err(dev, "Failed to allocate device resource data\n");
>   		return ERR_PTR(-ENOMEM);
> +	}
>   
>   	tzd = thermal_of_zone_register(dev->of_node, sensor_id, data, ops);
>   	if (IS_ERR(tzd)) {
> +		dev_err_probe(dev, PTR_ERR(tzd),
> +			      "Failed to register thermal zone sensor[%d]\n", sensor_id);

This will print an error message even if the problem is (for the calling code,
such as hwmon) only informational.

Guenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
