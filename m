Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B80D9C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Apr 2024 06:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aX9RygzLt5JpafXbhAl3TylseuvQnoiGH/kJ0WddKak=; b=m0qFAiQcUqGgPG
	3qBTwwPxo8Oje8V/66ez8UGn8l4/fYynjO/4dWMJgr3AJrqajLtADUFVd3d8b7r8nZw5s3DzNwJ50
	KIk7siImjTH3tmn9jA9CD4+Vl1G2XQ27SLBk4LnQ/H3mY3ZLHrk9nVJHOV87qBkfeRM5lgOz4EGgM
	JVGn8lJQEukR/+7HLm/q8spGvyEbKZshNciRhRUfcigOlShmM0Db3X9+vKj/1pOsQCJd9XkMtc/md
	eEQG3jc+rsVfPuaHbs1Vr5Ct7+1hkW3drHWz2ibRiOgH3VgTOcuZLebUkczh7/LkF9kdHkRQAcxEc
	JC2vkhhwAFa/VMpttijQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1Ka6-00000001gcF-1Kxu;
	Mon, 29 Apr 2024 06:33:42 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1Ka3-00000001gZC-0tE1
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Apr 2024 06:33:40 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-56e1baf0380so4984679a12.3
        for <linux-rockchip@lists.infradead.org>; Sun, 28 Apr 2024 23:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714372414; x=1714977214; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=H1tmeGPRsKgr01+Hna3ZLZEaqrTdXl0tdVgdsAtbRbg=;
        b=m7KeST4vOg5qxKM5CYE3ysDLIORuoRTDhb+lg2qg6YTVbLMdUUWp1Zxwi0R3/m6/ir
         sJ0BhJpfqiIqCk1xWqO8u4QXfIbLoGsBGcHpE4PGhb9EO4OxDhMM/7Eptf4SHjlpQru1
         Al5XwrAahcytzUodAQzdNPL1WvFiCLj/rkMgN9W1ubqrBAp0/cRsth6qkd08E6kqakZV
         wYsvZcnBKkcMpzr+eoJGSGDu7O1zcuHA7o6d5uFQ0ZIv8B5Mf3TGSVHZT6Nrn5ooya97
         xBj+ALLV301d4MKAgBwArezd8nb7wmhUFn9YNX79/sfLZNgdpGZg8gvmx001GJzwsaHB
         p8LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714372414; x=1714977214;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H1tmeGPRsKgr01+Hna3ZLZEaqrTdXl0tdVgdsAtbRbg=;
        b=lWAulHY/QcWBG9wMcJTqShOMZfT0PAKr68xMBiThNQbpBDSSzQuJ7jfG8lRhpHNi9z
         6TTHbr33oa1XofWiElKSOPCTZlLoA4o6J95Y5Reslmb1LWh2hXw9tqx+I2xm8PX7qPOf
         /XQK1F1zOGWOzcB8xa8TnVpNDHjEYr+7EQJKPMa+OqJrwyM2iA8MD7mbifDaIg7TBfC1
         e51j1IRInojdTpx7PiZB7L7ioI+48rjuEau/UdoTvKt7jtGua1seh04ZDxyoVbxz9hzt
         Zyvx77GDdzIiXO4AlNk90ZkDFkYN2Xlwdve05lR3cfTiRUc0OcDvHe+EMhiknv+dzgXa
         iSDg==
X-Forwarded-Encrypted: i=1; AJvYcCUJdp3d+Hx3as2GC303AnGb/BtbjznOttIhM/fYi3lbClQOelZ+WsWqqtmxmImw3d1zIYn8AXQeT71EHuX8zmZEMc4PtW8Znxvfx8bVbXvhOjlO
X-Gm-Message-State: AOJu0Yx1sI4mnKmwqGMrQbU4QVucAf3MAauLnt+oGJ9Qi0hCs95RxZX1
	hwnaaZMX5gpRe2Ri2qcDqjG4cxQMdRDZjogg4dpLd1bJy23R9AbZwH/XK7cmGvvM0Njhmy1jMVp
	gNWQ=
X-Google-Smtp-Source: AGHT+IG/1NM9hUHGik2NjLOZfisA/b6fFn8v5z38DB20x7mgyzkcafLOU/i261hJlp0O1Y0ut+vVzg==
X-Received: by 2002:a50:aaca:0:b0:572:78df:c606 with SMTP id r10-20020a50aaca000000b0057278dfc606mr2705343edc.26.1714372413874;
        Sun, 28 Apr 2024 23:33:33 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id h8-20020aa7c948000000b0057204902580sm8677922edt.48.2024.04.28.23.33.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Apr 2024 23:33:33 -0700 (PDT)
Message-ID: <d074880a-14dd-46e4-852c-0bb068154603@linaro.org>
Date: Mon, 29 Apr 2024 08:33:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] i2c: muxes: add support for mule i2c multiplexer
To: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Peter Rosin <peda@axentia.se>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20240426-dev-mule-i2c-mux-v1-0-045a482f6ffb@theobroma-systems.com>
 <20240426-dev-mule-i2c-mux-v1-3-045a482f6ffb@theobroma-systems.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240426-dev-mule-i2c-mux-v1-3-045a482f6ffb@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240428_233339_376028_C7E60E1C 
X-CRM114-Status: GOOD (  33.95  )
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

On 26/04/2024 18:49, Farouk Bouabid wrote:
> Mule is an mcu that emulates a set of i2c devices which are reacheable
> through an i2c-mux.
> 
> The emulated devices share a single i2c address with the mux itself where
> the requested register is what determines which logic is executed (mux or
> device):
> 
> 1- The devices on the mux can be selected (mux function) by writing the
> appropriate device number to an i2c config register (0xff) that is not
> used by any device logic.
> 
> 2- Any access to a register other than the config register will be
> handled by the previously selected device.
> 
> Signed-off-by: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>
> ---
>  drivers/i2c/muxes/Kconfig        |  11 +++
>  drivers/i2c/muxes/Makefile       |   1 +
>  drivers/i2c/muxes/i2c-mux-mule.c | 157 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 169 insertions(+)
> 
> diff --git a/drivers/i2c/muxes/Kconfig b/drivers/i2c/muxes/Kconfig
> index db1b9057612a..593a20a6ac51 100644
> --- a/drivers/i2c/muxes/Kconfig
> +++ b/drivers/i2c/muxes/Kconfig
> @@ -119,4 +119,15 @@ config I2C_MUX_MLXCPLD
>  	  This driver can also be built as a module.  If so, the module
>  	  will be called i2c-mux-mlxcpld.
>  
> +config I2C_MUX_MULE
> +	tristate "Mule I2C device multiplexer"
> +	depends on OF
> +	help
> +	  If you say yes to this option, support will be included for a
> +	  Mule I2C device multiplexer. This driver provides access to
> +	  I2C devices connected on the Mule I2C mux.

Describe what is Mule. Here and in bindings documentation.

> +
> +	  This driver can also be built as a module.  If so, the module
> +	  will be called i2c-mux-mule.
> +
>  endmenu
> diff --git a/drivers/i2c/muxes/Makefile b/drivers/i2c/muxes/Makefile
> index 6d9d865e8518..4b24f49515a7 100644
> --- a/drivers/i2c/muxes/Makefile
> +++ b/drivers/i2c/muxes/Makefile
> @@ -10,6 +10,7 @@ obj-$(CONFIG_I2C_MUX_GPIO)	+= i2c-mux-gpio.o
>  obj-$(CONFIG_I2C_MUX_GPMUX)	+= i2c-mux-gpmux.o
>  obj-$(CONFIG_I2C_MUX_LTC4306)	+= i2c-mux-ltc4306.o
>  obj-$(CONFIG_I2C_MUX_MLXCPLD)	+= i2c-mux-mlxcpld.o
> +obj-$(CONFIG_I2C_MUX_MULE)	+= i2c-mux-mule.o
>  obj-$(CONFIG_I2C_MUX_PCA9541)	+= i2c-mux-pca9541.o
>  obj-$(CONFIG_I2C_MUX_PCA954x)	+= i2c-mux-pca954x.o
>  obj-$(CONFIG_I2C_MUX_PINCTRL)	+= i2c-mux-pinctrl.o
> diff --git a/drivers/i2c/muxes/i2c-mux-mule.c b/drivers/i2c/muxes/i2c-mux-mule.c
> new file mode 100644
> index 000000000000..da2a9526522e
> --- /dev/null
> +++ b/drivers/i2c/muxes/i2c-mux-mule.c
> @@ -0,0 +1,157 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Mule I2C device multiplexer
> + *
> + * Copyright (C) 2024 Theobroma Systems Design und Consulting GmbH
> + */
> +
> +#include <linux/i2c-mux.h>
> +#include <linux/i2c.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/property.h>
> +#include <linux/regmap.h>
> +
> +#define MUX_CONFIG_REG	0xff
> +#define MUX_DEFAULT_DEV	0x0
> +
> +struct mule_i2c_reg_mux {
> +	struct regmap *regmap;
> +};
> +
> +static const struct regmap_config mule_regmap_config = {
> +	.reg_bits = 8,
> +	.val_bits = 8,
> +};
> +
> +static const struct of_device_id mule_i2c_mux_of_match[] = {
> +	{.compatible = "tsd,mule-i2c-mux",},
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, mule_i2c_mux_of_match);

This goes after or before probe. Don't introduce unusual coding style.

> +

...

> +static void mux_remove(void *data)
> +{
> +	struct i2c_mux_core *muxc = data;
> +
> +	i2c_mux_del_adapters(muxc);
> +
> +	mux_deselect(muxc, MUX_DEFAULT_DEV);
> +}
> +
> +static int mule_i2c_mux_probe(struct i2c_client *client)
> +{
> +	struct i2c_adapter *adap = client->adapter;
> +	struct mule_i2c_reg_mux *priv;
> +	struct i2c_mux_core *muxc;
> +	struct device_node *dev;
> +	unsigned int readback;
> +	bool old_fw;
> +	int ndev, ret;
> +
> +	/* Count devices on the mux */
> +	ndev = of_get_child_count(client->dev.of_node);
> +	dev_dbg(&client->dev, "%u devices on the mux\n", ndev);
> +
> +	muxc = i2c_mux_alloc(adap, &client->dev,
> +						 ndev, sizeof(*priv),
> +						 I2C_MUX_LOCKED,
> +						 mux_select, mux_deselect);

Very odd alignment. This is absolutely unreadable.

Please properly align with opening (.

> +	if (!muxc)
> +		return -ENOMEM;
> +
> +	muxc->share_addr_with_children = 1;
> +	priv = i2c_mux_priv(muxc);
> +
> +	priv->regmap = devm_regmap_init_i2c(client, &mule_regmap_config);
> +	if (IS_ERR(priv->regmap))
> +		return dev_err_probe(&client->dev, PTR_ERR(priv->regmap),
> +							 "Failed to allocate i2c register map\n");
> +
> +	i2c_set_clientdata(client, muxc);
> +
> +	/*
> +	 * Mux 0 is guaranteed to exist on all old and new mule fw.
> +	 * mule fw without mux support will accept write ops to the
> +	 * config register, but readback returns 0xff (register not updated).
> +	 */
> +	ret = mux_select(muxc, 0);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_read(priv->regmap, MUX_CONFIG_REG, &readback);
> +	if (ret)
> +		return ret;
> +
> +	old_fw = (readback == 0);
> +
> +	ret = devm_add_action_or_reset(&client->dev, mux_remove, muxc);

This is really odd. Why do you call remove callback as devm action?

I have serious doubts this was really tested.

> +	if (ret)
> +		return ret;
> +
> +	/* Create device adapters */
> +	for_each_child_of_node(client->dev.of_node, dev) {
> +		u32 reg;
> +
> +		ret = of_property_read_u32(dev, "reg", &reg);
> +		if (ret) {
> +			dev_err(&client->dev, "No reg property found for %s: %d\n",
> +					of_node_full_name(dev), ret);

Very odd alignment. Please properly align with opening (.

> +			return ret;
> +		}
> +
> +		if (!old_fw && reg != 0) {
> +			dev_warn(&client->dev,
> +					 "Mux %d not supported, please update Mule FW\n", reg);
> +			continue;
> +		}
> +
> +		ret = mux_select(muxc, reg);
> +		if (ret) {
> +			dev_warn(&client->dev,
> +					 "Mux %d not supported, please update Mule FW\n", reg);
> +			continue;
> +		}
> +
> +		ret = i2c_mux_add_adapter(muxc, 0, reg, 0);
> +		if (ret) {
> +			dev_err(&client->dev, "Failed to add i2c mux adapter %d: %d\n", reg, ret);
> +			return ret;
> +		}
> +	}
> +
> +	mux_deselect(muxc, MUX_DEFAULT_DEV);
> +
> +	return 0;
> +}
> +
> +static struct i2c_driver mule_i2c_mux_driver = {
> +	.driver		= {
> +		.name	= "mule-i2c-mux",
> +		.of_match_table = mule_i2c_mux_of_match,
> +	},
> +	.probe		= mule_i2c_mux_probe,
> +};
> +

Anyway, all this looks like i2c-mux-reg. Please provide rationale in
commit msg WHY you need one more driver.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
