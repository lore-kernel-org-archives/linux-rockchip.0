Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FEC1D31767
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Nov 2024 16:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jbaMfFhbtJcmfg40KQOel0mmNuQ9kELgU3QwsD9D4OE=; b=mgmKa1FV8fm5dq
	OPSP8wNmX3x6Rij5okMQL7YbCeVm//ojw40kJEcVS4AuYkmbq+ZDjT7lZ7rJ/4Ut1csNxRtlF/v02
	noDFKp/2yqi0WpaA2630sIuC/itJ9qj7jRKKpJs/SXHLXoT5HOH14JRgn5GM3hDuGe0MPK1J0gJcy
	JjDb97PQrp7gzp1a/vY+tg5WKODemopuU1sWJ8nTFBsdy6qP6BXQdzLvlF/bhatCfwNIKeSx90rgL
	K1vnKWmoYDaXT9gLDRt+cQbfVmMP3LVQEXWsbS/xTkDRbXKeRpFdQjmYlW0TSqG9NkTZaxHk+me7N
	RmyNUI4k16knuQorq2GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8MZf-000000004QM-0mm0;
	Tue, 05 Nov 2024 16:38:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8M97-0000000HaTP-2prp;
	Tue, 05 Nov 2024 16:11:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=UUlPSBaOC9d+zd+83UAmHf4D5WXCkU2ZNOnKm544xr0=; b=P/tXaSv90nk6bdipbMTMj/vRGt
	IDM6BNLW6i0VuzErzDEVBN9hV9vpg1mk49x1B86HjXEMDYd2KbpWOJCbfKSBC+0MqwPhZ+Re1MFVl
	DLX3kutygIT+jIff8xJl1amvNNYrdugI58Avp4IfEuUjO5HHY7jTIFKMChmpCI8itX27ZSTxSS8JK
	dHIlxB3WJt5DNgkyGFnjqn8ZcprfNgqQ095Dn78bln92O8zW5Q1w3lf5Il+GKH1TkQ58iUgrDv1xw
	gFBTILN0O/GdxXUTjJ7uEYb0HlOdbVaaLnm3CRHpeNACeL0NUksu9xJ29unzDHxm2MSobs4bduzNi
	IvQLbzKg==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t8M92-0000mH-59; Tue, 05 Nov 2024 17:11:04 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] gpio: Use of_property_present() for non-boolean properties
Date: Tue, 05 Nov 2024 17:11:03 +0100
Message-ID: <7731755.EvYhyI6sBW@diego>
In-Reply-To: <20241104190628.274717-1-robh@kernel.org>
References: <20241104190628.274717-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241105_081109_775628_6AAA6511 
X-CRM114-Status: GOOD (  22.43  )
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

Am Montag, 4. November 2024, 20:06:27 CET schrieb Rob Herring (Arm):
> The use of of_property_read_bool() for non-boolean properties is
> deprecated in favor of of_property_present() when testing for property
> presence.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

With of_property_present essentially just mapping to of_property_read_bool,
this change looks correct and should not introduce any functional differences

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/gpio/gpio-rockchip.c | 2 +-
>  drivers/gpio/gpiolib-of.c    | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index 365ab947983c..64924bc01591 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -602,7 +602,7 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
>  	 * files which don't set the "gpio-ranges" property or systems that
>  	 * utilize ACPI the driver has to call gpiochip_add_pin_range().
>  	 */
> -	if (!of_property_read_bool(bank->of_node, "gpio-ranges")) {
> +	if (!of_property_present(bank->of_node, "gpio-ranges")) {
>  		struct device_node *pctlnp = of_get_parent(bank->of_node);
>  		struct pinctrl_dev *pctldev = NULL;
>  
> diff --git a/drivers/gpio/gpiolib-of.c b/drivers/gpio/gpiolib-of.c
> index 880f1efcaca5..2e537ee979f3 100644
> --- a/drivers/gpio/gpiolib-of.c
> +++ b/drivers/gpio/gpiolib-of.c
> @@ -337,7 +337,7 @@ static void of_gpio_flags_quirks(const struct device_node *np,
>  	 * to determine if the flags should have inverted semantics.
>  	 */
>  	if (IS_ENABLED(CONFIG_SPI_MASTER) && !strcmp(propname, "cs-gpios") &&
> -	    of_property_read_bool(np, "cs-gpios")) {
> +	    of_property_present(np, "cs-gpios")) {
>  		u32 cs;
>  		int ret;
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
