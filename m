Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F79C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 10:11:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C315A64E31
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 10:11:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C315A64E31
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eAvlRBZWhi+LGI45kcy8+/cyERYPDQfiUQHk6wT1EdY=; b=utQwyE54p5tB/OEeou/wC8jhD
	ZZtrR8dS39Oxc1NwA/1eMPRkpvdtRWzdjUUbFMGjl7VoGyofFTvwKMbYGUzgpx7MHjcKFr6ACnzYC
	EzNT1N36rufYn7zeMffJJBbZ+d9ru7zDiVzZoZ1dqXf2DZGjt90VNCIBS6xMqY/CCwfnmzXeasUMv
	zrmsaIT6gePWeFsh0qrrBhj12pX7eOYkgTA7pK252cGqzQux1EE9pfYxDwR1RNJpwnfA0mPp4bzvb
	Qjuc38A8TZsc2YAUIhJXMGqe5Oy0wA6kYB5M9LKA3FZEUCamYJJX7v6BIRU8Q3vG/FtZdawxz5FQu
	U8z1GZk9A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEUfK-0007pn-1N; Tue, 23 Feb 2021 10:11:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEUfH-0007pR-Ef
 for linux-rockchip@lists.infradead.org; Tue, 23 Feb 2021 10:11:36 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lEUf9-0008Sl-Tf; Tue, 23 Feb 2021 11:11:27 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linus.walleij@linaro.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH] pinctrl: rockchip: add support for rk3568
Date: Tue, 23 Feb 2021 11:11:27 +0100
Message-ID: <5130878.MsWZr2WtbB@diego>
In-Reply-To: <20210223072419.123308-1-jay.xu@rock-chips.com>
References: <20210223072419.123308-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_051135_669342_B8D10FA9 
X-CRM114-Status: GOOD (  22.21  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jianqun,

Am Dienstag, 23. Februar 2021, 08:24:19 CET schrieb Jianqun Xu:
> RK3568 SoCs have 5 gpio controllers, each gpio has 32 pins. GPIO supports
> set iomux, pull, drive strength, schmitt and slew rate.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
>  drivers/pinctrl/pinctrl-rockchip.c | 311 ++++++++++++++++++++++++++++-
>  1 file changed, 309 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
> index aa1a1c850d05..b781e34bc0b7 100644
> --- a/drivers/pinctrl/pinctrl-rockchip.c
> +++ b/drivers/pinctrl/pinctrl-rockchip.c
> @@ -61,8 +61,12 @@ enum rockchip_pinctrl_type {
>  	RK3308,
>  	RK3368,
>  	RK3399,
> +	RK3568,
>  };
>  
> +#define _GENMASK(h, l, v) \
> +	(GENMASK(((h) + 16), ((l) + 16)) | (((v) << (l)) & GENMASK((h), (l))))

I guess we want a less generic name here.
Also please add a short comment above that to explain that this generates
a bitmask for setting a value (v) for a hiword-register area (h-l).

> +
>  /*
>   * Encode variants of iomux registers into a type variable
>   */
> @@ -290,6 +294,25 @@ struct rockchip_pin_bank {
>  		.pull_type[3] = pull3,					\
>  	}
>  
> +#define PIN_BANK_MUX_ROUTE_FLAGS(ID, PIN, FUNC, REG, VAL, FLAG)		\
> +	{								\
> +		.bank_num	= ID,					\
> +		.pin		= PIN,					\
> +		.func		= FUNC,					\
> +		.route_offset	= REG,					\
> +		.route_val	= VAL,					\
> +		.route_type	= FLAG,					\
> +	}
> +
> +#define MR_SAME(ID, PIN, FUNC, REG, VAL)	\
> +	PIN_BANK_MUX_ROUTE_FLAGS(ID, PIN, FUNC, REG, VAL, ROCKCHIP_ROUTE_SAME)
> +
> +#define MR_GRF(ID, PIN, FUNC, REG, VAL)	\
> +	PIN_BANK_MUX_ROUTE_FLAGS(ID, PIN, FUNC, REG, VAL, ROCKCHIP_ROUTE_GRF)
> +
> +#define MR_PMU(ID, PIN, FUNC, REG, VAL)	\
> +	PIN_BANK_MUX_ROUTE_FLAGS(ID, PIN, FUNC, REG, VAL, ROCKCHIP_ROUTE_PMU)
> +

I like that approach, as it creates shorter tables. Someone should
convert the old tables to save a lot of lines at some point ;-) .

But can we name it a bit more verbose for example RK_MUXROUTE_SAME ... etc.
That way it gets a lot easier to read. (new ideal line length is already
at 100 and even then readability is always key)


>  /**
>   * struct rockchip_mux_recalced_data: represent a pin iomux data.
>   * @num: bank number.
> @@ -1394,6 +1417,102 @@ static struct rockchip_mux_route_data rk3399_mux_route_data[] = {
>  	},
>  };
>  
> +static struct rockchip_mux_route_data rk3568_mux_route_data[] = {
> +	MR_GRF(0, RK_PB7, 1, 0x0110, _GENMASK(1, 0, 0)), /* PWM0 IO mux M0 */
> +	MR_GRF(0, RK_PC7, 2, 0x0110, _GENMASK(1, 0, 1)), /* PWM0 IO mux M1 */
> +	MR_GRF(0, RK_PC0, 1, 0x0110, _GENMASK(3, 2, 0)), /* PWM1 IO mux M0 */
> +	MR_GRF(0, RK_PB5, 4, 0x0110, _GENMASK(3, 2, 1)), /* PWM1 IO mux M1 */
> +	MR_GRF(0, RK_PC1, 1, 0x0110, _GENMASK(5, 4, 0)), /* PWM2 IO mux M0 */
> +	MR_GRF(0, RK_PB6, 4, 0x0110, _GENMASK(5, 4, 1)), /* PWM2 IO mux M1 */
> +	MR_GRF(0, RK_PB3, 2, 0x0300, _GENMASK(0, 0, 0)), /* CAN0 IO mux M0 */
> +	MR_GRF(2, RK_PA1, 4, 0x0300, _GENMASK(0, 0, 1)), /* CAN0 IO mux M1 */
> +	MR_GRF(1, RK_PA1, 3, 0x0300, _GENMASK(2, 2, 0)), /* CAN1 IO mux M0 */
> +	MR_GRF(4, RK_PC3, 3, 0x0300, _GENMASK(2, 2, 1)), /* CAN1 IO mux M1 */
> +	MR_GRF(4, RK_PB5, 3, 0x0300, _GENMASK(4, 4, 0)), /* CAN2 IO mux M0 */
> +	MR_GRF(2, RK_PB2, 4, 0x0300, _GENMASK(4, 4, 1)), /* CAN2 IO mux M1 */
> +	MR_GRF(4, RK_PC4, 1, 0x0300, _GENMASK(6, 6, 0)), /* HPDIN IO mux M0 */
> +	MR_GRF(0, RK_PC2, 2, 0x0300, _GENMASK(6, 6, 1)), /* HPDIN IO mux M1 */
> +	MR_GRF(3, RK_PB1, 3, 0x0300, _GENMASK(8, 8, 0)), /* GMAC1 IO mux M0 */
> +	MR_GRF(4, RK_PA7, 3, 0x0300, _GENMASK(8, 8, 1)), /* GMAC1 IO mux M1 */
> +	MR_GRF(4, RK_PD1, 1, 0x0300, _GENMASK(10, 10, 0)), /* HDMITX IO mux M0 */
> +	MR_GRF(0, RK_PC7, 1, 0x0300, _GENMASK(10, 10, 1)), /* HDMITX IO mux M1 */
> +	MR_GRF(0, RK_PB6, 1, 0x0300, _GENMASK(14, 14, 0)), /* I2C2 IO mux M0 */
> +	MR_GRF(4, RK_PB4, 1, 0x0300, _GENMASK(14, 14, 1)), /* I2C2 IO mux M1 */
> +	MR_GRF(1, RK_PA0, 1, 0x0304, _GENMASK(0, 0, 0)), /* I2C3 IO mux M0 */
> +	MR_GRF(3, RK_PB6, 4, 0x0304, _GENMASK(0, 0, 1)), /* I2C3 IO mux M1 */
> +	MR_GRF(4, RK_PB2, 1, 0x0304, _GENMASK(2, 2, 0)), /* I2C4 IO mux M0 */
> +	MR_GRF(2, RK_PB1, 2, 0x0304, _GENMASK(2, 2, 1)), /* I2C4 IO mux M1 */
> +	MR_GRF(3, RK_PB4, 4, 0x0304, _GENMASK(4, 4, 0)), /* I2C5 IO mux M0 */
> +	MR_GRF(4, RK_PD0, 2, 0x0304, _GENMASK(4, 4, 1)), /* I2C5 IO mux M1 */
> +	MR_GRF(3, RK_PB1, 5, 0x0304, _GENMASK(14, 14, 0)), /* PWM8 IO mux M0 */
> +	MR_GRF(1, RK_PD5, 4, 0x0304, _GENMASK(14, 14, 1)), /* PWM8 IO mux M1 */
> +	MR_GRF(3, RK_PB2, 5, 0x0308, _GENMASK(0, 0, 0)), /* PWM9 IO mux M0 */
> +	MR_GRF(1, RK_PD6, 4, 0x0308, _GENMASK(0, 0, 1)), /* PWM9 IO mux M1 */
> +	MR_GRF(3, RK_PB5, 5, 0x0308, _GENMASK(2, 2, 0)), /* PWM10 IO mux M0 */
> +	MR_GRF(2, RK_PA1, 2, 0x0308, _GENMASK(2, 2, 1)), /* PWM10 IO mux M1 */
> +	MR_GRF(3, RK_PB6, 5, 0x0308, _GENMASK(4, 4, 0)), /* PWM11 IO mux M0 */
> +	MR_GRF(4, RK_PC0, 3, 0x0308, _GENMASK(4, 4, 1)), /* PWM11 IO mux M1 */
> +	MR_GRF(3, RK_PB7, 2, 0x0308, _GENMASK(6, 6, 0)), /* PWM12 IO mux M0 */
> +	MR_GRF(4, RK_PC5, 1, 0x0308, _GENMASK(6, 6, 1)), /* PWM12 IO mux M1 */
> +	MR_GRF(3, RK_PC0, 2, 0x0308, _GENMASK(8, 8, 0)), /* PWM13 IO mux M0 */
> +	MR_GRF(4, RK_PC6, 1, 0x0308, _GENMASK(8, 8, 1)), /* PWM13 IO mux M1 */
> +	MR_GRF(3, RK_PC4, 1, 0x0308, _GENMASK(10, 10, 0)), /* PWM14 IO mux M0 */
> +	MR_GRF(4, RK_PC2, 1, 0x0308, _GENMASK(10, 10, 1)), /* PWM14 IO mux M1 */
> +	MR_GRF(3, RK_PC5, 1, 0x0308, _GENMASK(12, 12, 0)), /* PWM15 IO mux M0 */
> +	MR_GRF(4, RK_PC3, 1, 0x0308, _GENMASK(12, 12, 1)), /* PWM15 IO mux M1 */
> +	MR_GRF(3, RK_PD2, 3, 0x0308, _GENMASK(14, 14, 0)), /* SDMMC2 IO mux M0 */
> +	MR_GRF(3, RK_PA5, 5, 0x0308, _GENMASK(14, 14, 1)), /* SDMMC2 IO mux M1 */
> +	MR_GRF(0, RK_PB5, 2, 0x030c, _GENMASK(0, 0, 0)), /* SPI0 IO mux M0 */
> +	MR_GRF(2, RK_PD3, 3, 0x030c, _GENMASK(0, 0, 1)), /* SPI0 IO mux M1 */
> +	MR_GRF(2, RK_PB5, 3, 0x030c, _GENMASK(2, 2, 0)), /* SPI1 IO mux M0 */
> +	MR_GRF(3, RK_PC3, 3, 0x030c, _GENMASK(2, 2, 1)), /* SPI1 IO mux M1 */
> +	MR_GRF(2, RK_PC1, 4, 0x030c, _GENMASK(4, 4, 0)), /* SPI2 IO mux M0 */
> +	MR_GRF(3, RK_PA0, 3, 0x030c, _GENMASK(4, 4, 1)), /* SPI2 IO mux M1 */
> +	MR_GRF(4, RK_PB3, 4, 0x030c, _GENMASK(6, 6, 0)), /* SPI3 IO mux M0 */
> +	MR_GRF(4, RK_PC2, 2, 0x030c, _GENMASK(6, 6, 1)), /* SPI3 IO mux M1 */
> +	MR_GRF(2, RK_PB4, 2, 0x030c, _GENMASK(8, 8, 0)), /* UART1 IO mux M0 */
> +	MR_GRF(0, RK_PD1, 1, 0x030c, _GENMASK(8, 8, 1)), /* UART1 IO mux M1 */
> +	MR_GRF(0, RK_PD1, 1, 0x030c, _GENMASK(10, 10, 0)), /* UART2 IO mux M0 */
> +	MR_GRF(1, RK_PD5, 2, 0x030c, _GENMASK(10, 10, 1)), /* UART2 IO mux M1 */
> +	MR_GRF(1, RK_PA1, 2, 0x030c, _GENMASK(12, 12, 0)), /* UART3 IO mux M0 */
> +	MR_GRF(3, RK_PB7, 4, 0x030c, _GENMASK(12, 12, 1)), /* UART3 IO mux M1 */
> +	MR_GRF(1, RK_PA6, 2, 0x030c, _GENMASK(14, 14, 0)), /* UART4 IO mux M0 */
> +	MR_GRF(3, RK_PB2, 4, 0x030c, _GENMASK(14, 14, 1)), /* UART4 IO mux M1 */
> +	MR_GRF(2, RK_PA2, 3, 0x0310, _GENMASK(0, 0, 0)), /* UART5 IO mux M0 */
> +	MR_GRF(3, RK_PC2, 4, 0x0310, _GENMASK(0, 0, 1)), /* UART5 IO mux M1 */
> +	MR_GRF(2, RK_PA4, 3, 0x0310, _GENMASK(2, 2, 0)), /* UART6 IO mux M0 */
> +	MR_GRF(1, RK_PD5, 3, 0x0310, _GENMASK(2, 2, 1)), /* UART6 IO mux M1 */
> +	MR_GRF(2, RK_PA6, 3, 0x0310, _GENMASK(5, 4, 0)), /* UART7 IO mux M0 */
> +	MR_GRF(3, RK_PC4, 4, 0x0310, _GENMASK(5, 4, 1)), /* UART7 IO mux M1 */
> +	MR_GRF(4, RK_PA2, 4, 0x0310, _GENMASK(5, 4, 2)), /* UART7 IO mux M2 */
> +	MR_GRF(2, RK_PC5, 3, 0x0310, _GENMASK(6, 6, 0)), /* UART8 IO mux M0 */
> +	MR_GRF(2, RK_PD7, 4, 0x0310, _GENMASK(6, 6, 1)), /* UART8 IO mux M1 */
> +	MR_GRF(2, RK_PB0, 3, 0x0310, _GENMASK(9, 8, 0)), /* UART9 IO mux M0 */
> +	MR_GRF(4, RK_PC5, 4, 0x0310, _GENMASK(9, 8, 1)), /* UART9 IO mux M1 */
> +	MR_GRF(4, RK_PA4, 4, 0x0310, _GENMASK(9, 8, 2)), /* UART9 IO mux M2 */
> +	MR_GRF(1, RK_PA2, 1, 0x0310, _GENMASK(11, 10, 0)), /* I2S1 IO mux M0 */
> +	MR_GRF(3, RK_PC6, 4, 0x0310, _GENMASK(11, 10, 1)), /* I2S1 IO mux M1 */
> +	MR_GRF(2, RK_PD0, 5, 0x0310, _GENMASK(11, 10, 2)), /* I2S1 IO mux M2 */
> +	MR_GRF(2, RK_PC1, 1, 0x0310, _GENMASK(12, 12, 0)), /* I2S2 IO mux M0 */
> +	MR_GRF(4, RK_PB6, 5, 0x0310, _GENMASK(12, 12, 1)), /* I2S2 IO mux M1 */
> +	MR_GRF(3, RK_PA2, 4, 0x0310, _GENMASK(14, 14, 0)), /* I2S3 IO mux M0 */
> +	MR_GRF(4, RK_PC2, 5, 0x0310, _GENMASK(14, 14, 1)), /* I2S3 IO mux M1 */
> +	MR_GRF(1, RK_PA4, 3, 0x0314, _GENMASK(1, 0, 0)), /* PDM IO mux M0 */
> +	MR_GRF(1, RK_PA6, 3, 0x0314, _GENMASK(1, 0, 0)), /* PDM IO mux M0 */
> +	MR_GRF(3, RK_PD6, 5, 0x0314, _GENMASK(1, 0, 1)), /* PDM IO mux M1 */
> +	MR_GRF(4, RK_PA0, 4, 0x0314, _GENMASK(1, 0, 1)), /* PDM IO mux M1 */
> +	MR_GRF(3, RK_PC4, 5, 0x0314, _GENMASK(1, 0, 2)), /* PDM IO mux M2 */
> +	MR_GRF(0, RK_PA5, 3, 0x0314, _GENMASK(3, 2, 0)), /* PCIE20 IO mux M0 */
> +	MR_GRF(2, RK_PD0, 4, 0x0314, _GENMASK(3, 2, 1)), /* PCIE20 IO mux M1 */
> +	MR_GRF(1, RK_PB0, 4, 0x0314, _GENMASK(3, 2, 2)), /* PCIE20 IO mux M2 */
> +	MR_GRF(0, RK_PA4, 3, 0x0314, _GENMASK(5, 4, 0)), /* PCIE30X1 IO mux M0 */
> +	MR_GRF(2, RK_PD2, 4, 0x0314, _GENMASK(5, 4, 1)), /* PCIE30X1 IO mux M1 */
> +	MR_GRF(1, RK_PA5, 4, 0x0314, _GENMASK(5, 4, 2)), /* PCIE30X1 IO mux M2 */
> +	MR_GRF(0, RK_PA6, 2, 0x0314, _GENMASK(7, 6, 0)), /* PCIE30X2 IO mux M0 */
> +	MR_GRF(2, RK_PD4, 4, 0x0314, _GENMASK(7, 6, 1)), /* PCIE30X2 IO mux M1 */
> +	MR_GRF(4, RK_PC2, 4, 0x0314, _GENMASK(7, 6, 2)), /* PCIE30X2 IO mux M2 */
> +};
> +

[...]

> @@ -2383,6 +2597,11 @@ static int rockchip_set_pull(struct rockchip_pin_bank *bank,
>  			}
>  		}
>  
> +		if (ctrl->type == RK3568 && bank->bank_num == 0 && pin_num >= 27 && pin_num <= 30) {
> +			if (ret == 1)
> +				ret = 3;
> +		}
> +

This definitly needs an explanatory comment.
I see the cause in the TRM, pull-up being 1 for everything
except the GPIO0_D0-D6, where that pull up value becomes 3
but that should definitly be a comment here ;-) .



Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
