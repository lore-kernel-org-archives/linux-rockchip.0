Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97D1AC072A2
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Nov 2023 17:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VjZx3pV//TM/jC7pxfh3Pxih0yGbfpdTv8dVL5Gk80Y=; b=3Px2anErx5JAH0
	HXezJOlKZM90AQxYu5aEyLDsmkd6LkHQ3m5hf8bYLL2wIjr0b7ju3j32XS+ur35ZXntND7zRYspnk
	ia2tw6VA1rHZYOU0LgR+zRkOhNT58Bt3yKXtULXfMdiWQytTKPgMXozCM/2w5kzFMF0BT7yA8CNvI
	X8J7oHg4mtfvqtAl104rPh3qe3Vpc06XKgDvKVaWkmnzcPlWGoRUc4Uwpw1TkR+9ILFdyCvpqeybH
	yx0+eGCiFU80XbxerQzzp38gfJegWdNoVw76MSKmyR0yMMBw1j8ZkQLIIQghKT5mwy/r3OrroOWXE
	m6uVfjw+joZiH92c+NNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3JWd-001Q4O-2T;
	Wed, 15 Nov 2023 17:18:03 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3JWU-001Pzd-2m
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Nov 2023 17:18:02 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-32dc918d454so4274684f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Nov 2023 09:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700068672; x=1700673472; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:reply-to
         :autocrypt:from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6pGZ3gMtdmfhF589oURo0MDRiHXKjHywJ8EdMlW4Bjc=;
        b=XufsZJMn7IwDDOGv00BxQHURm3iuhak2tErTRG9ZKLZvCC8pfI9a852VnvvXfJQbq6
         9gVNLKypQhOpIfZAKyQ9ZZ6gLzGtW6AqAfu2oDlMVUR1J6KomybTE0Qke1jtitKvSe3Y
         UivHVqURIoyQJ0iJt74wHOnmMHIknAqyX7BIXbYHvepIZEypZlP9N/KrSzVrHw8Bcg0U
         C/a0Dza9Us+eRUM0f8ZeyDAeaKrXuUMf6laMW5bE4Z6cw8glavJuYWfVwzPIyPz6uhZT
         6ZVj2W2mWROMgxVpX4qfDYsRp7xGCTZGOKiM8qTT6MKtOhVzHPPh47wPs9CX3HZ+62Sv
         VauA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700068672; x=1700673472;
        h=content-transfer-encoding:in-reply-to:organization:reply-to
         :autocrypt:from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6pGZ3gMtdmfhF589oURo0MDRiHXKjHywJ8EdMlW4Bjc=;
        b=H9Cxqkb7KQfb2tKuS81s6uBCT3qI2wjRXSKgxtOtoONKMdy6FmQSIw65OuCw9tuvKn
         FxAT6LWkGpW0rA3Gurm4NZMycljYQc0JFHHUw/5/UNyV9KXAAkKvhgJl4iOAmvxm9/P5
         SW4xBshOf24y8Fcx7VQS41kiivwM43yA5fAN8jQKGEDRfISBSosXbgBHOFbTRzN4TKWT
         bgP5NfVcImwg1rFk54YwY0DZS2N30ycsMdrtRnr7MqBkd39KW6ZUf03CQDy+O5leGFmw
         7VejlWhMxWsROMZsdY4rqB6JKQija3X3ZO1JnQorcVJJ6nOAnJ+d8hxgcQp0gx5QmCMc
         mkaQ==
X-Gm-Message-State: AOJu0YyWuyo5RexzIVMzYTmSRFxJisLuNXwCxCAZO2PhPkfnXBJ0jJxU
	3qXX2yULB7MNN4T2Gs9A3kqnLg==
X-Google-Smtp-Source: AGHT+IFyXn6jEdH0+h2bXAkAX3+VcFy54ki7n8MNIRioqKMuN1HX0e73r2n6Wqof6GwPATtVg7bp+A==
X-Received: by 2002:adf:ed08:0:b0:32d:82f7:e76 with SMTP id a8-20020adfed08000000b0032d82f70e76mr8211409wro.34.1700068672390;
        Wed, 15 Nov 2023 09:17:52 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:430b:5f96:4a99:a2c5? ([2a01:e0a:982:cbb0:430b:5f96:4a99:a2c5])
        by smtp.gmail.com with ESMTPSA id q12-20020a05600000cc00b0032db4e660d9sm11065909wrx.56.2023.11.15.09.17.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Nov 2023 09:17:51 -0800 (PST)
Message-ID: <e612cef3-3bb6-46b7-a2c9-53fffc20c819@linaro.org>
Date: Wed, 15 Nov 2023 18:17:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 08/14] mfd: rk8xx: add rk806 support
Content-Language: en-US, fr
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alessandro Zummo <a.zummo@towertech.it>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, Diederik de Haas <didi.debian@cknow.org>,
 Vincent Legoll <vincent.legoll@gmail.com>
References: <20230504173618.142075-1-sebastian.reichel@collabora.com>
 <20230504173618.142075-9-sebastian.reichel@collabora.com>
From: Neil Armstrong <neil.armstrong@linaro.org>
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro Developer Services
In-Reply-To: <20230504173618.142075-9-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_091754_929419_2DD1CA1B 
X-CRM114-Status: GOOD (  14.36  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Sebastian,

On 04/05/2023 19:36, Sebastian Reichel wrote:
> Add support for SPI connected rk806, which is used by the RK3588
> evaluation boards. The PMIC is advertised to support I2C and SPI,
> but the evaluation boards all use SPI. Thus only SPI support is
> added here.
> 
> Acked-for-MFD-by: Lee Jones <lee@kernel.org>
> Tested-by: Diederik de Haas <didi.debian@cknow.org> # Rock64, Quartz64 Model A + B
> Tested-by: Vincent Legoll <vincent.legoll@gmail.com> # Pine64 QuartzPro64
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>   drivers/mfd/Kconfig       |  14 ++
>   drivers/mfd/Makefile      |   1 +
>   drivers/mfd/rk8xx-core.c  |  69 ++++++-
>   drivers/mfd/rk8xx-spi.c   | 124 ++++++++++++
>   include/linux/mfd/rk808.h | 409 ++++++++++++++++++++++++++++++++++++++
>   5 files changed, 614 insertions(+), 3 deletions(-)
>   create mode 100644 drivers/mfd/rk8xx-spi.c
> 

<snip>

>   
> -	ret = devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE,
> -			      cells, nr_cells, NULL, 0,
> +	ret = devm_mfd_add_devices(dev, 0, cells, nr_cells, NULL, 0,
>   			      regmap_irq_get_domain(rk808->irq_data));

It seems you replaced PLATFORM_DEVID_NONE by 0, triggering again the bug preventing
having multiples RK pmics on the same system I fixed earlier at [1].

This gives (again):
<4>[ 0.664107] sysfs: cannot create duplicate filename '/bus/platform/devices/rk808-clkout'
<4>[ 0.664120] CPU: 3 PID: 97 Comm: kworker/u12:2 Not tainted 6.6.1 #1
<4>[ 0.664131] Hardware name: Hardkernel ODROID-GO-Ultra (DT)
<4>[ 0.664139] Workqueue: events_unbound deferred_probe_work_func
<4>[ 0.664160] Call trace:
<4>[ 0.664165] dump_backtrace+0x9c/0x11c
<4>[ 0.664181] show_stack+0x18/0x24
<4>[ 0.664193] dump_stack_lvl+0x78/0xc4
<4>[ 0.664205] dump_stack+0x18/0x24
<4>[ 0.664215] sysfs_warn_dup+0x64/0x80
<4>[ 0.664227] sysfs_do_create_link_sd+0xf0/0xf8
<4>[ 0.664239] sysfs_create_link+0x20/0x40
<4>[ 0.664250] bus_add_device+0x114/0x160
<4>[ 0.664259] device_add+0x3f0/0x7cc
<4>[ 0.664267] platform_device_add+0x180/0x270
<4>[ 0.664278] mfd_add_device+0x390/0x4a8
<4>[ 0.664290] devm_mfd_add_devices+0xb0/0x150
<4>[ 0.664301] rk8xx_probe+0x26c/0x410
<4>[ 0.664312] rk8xx_i2c_probe+0x64/0x98
<4>[ 0.664323] i2c_device_probe+0x104/0x2e8
<4>[ 0.664333] really_probe+0x184/0x3c8
<4>[ 0.664342] __driver_probe_device+0x7c/0x16c
<4>[ 0.664351] driver_probe_device+0x3c/0x10c
<4>[ 0.664360] __device_attach_driver+0xbc/0x158
<4>[ 0.664369] bus_for_each_drv+0x80/0xdc
<4>[ 0.664377] __device_attach+0x9c/0x1ac
<4>[ 0.664386] device_initial_probe+0x14/0x20
<4>[ 0.664395] bus_probe_device+0xac/0xb0
<4>[ 0.664403] deferred_probe_work_func+0xa0/0xf4
<4>[ 0.664412] process_one_work+0x1bc/0x378
<4>[ 0.664421] worker_thread+0x1dc/0x3d4
<4>[ 0.664429] kthread+0x104/0x118
<4>[ 0.664440] ret_from_fork+0x10/0x20
<3>[ 0.664494] rk8xx-i2c 0-001c: error -EEXIST: failed to add MFD devices
<4>[ 0.666769] rk8xx-i2c: probe of 0-001c failed with error -17

[1] https://lore.kernel.org/r/20221025-rk808-multi-v2-0-d292d51ada81@linaro.org

Thanks,
Neil

>   	if (ret)
>   		return dev_err_probe(dev, ret, "failed to add MFD devices\n");

<snip>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
