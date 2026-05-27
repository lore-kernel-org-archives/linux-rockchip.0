Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 880EBCD5BDE
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 May 2026 08:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XnjzX+dS0WkzUBhKnB8IA+BDLth1z6TxOdmbSJlqNV8=; b=c1xlNbOvvTg5iOzlf0ZBFQxt6b
	UaKMG0asRCrt7rTuHrGkSzSh2MxB2T8NrrIdm3qWtkerIfhEEQ2P6zzLi0aTVJ/ogsbx21h3By2/a
	bkugD7nQIzwipZitCjTnRK8AS9subxDNMQJmro+lbd0El5s0M4ntCRyivXmC/x2X9f3afKaTMaati
	9Wn3yLFaM7j0wgM0GLS+kWPpweD+SGeLee+3yhIW+NTfF1LtDaseNX60e71FRAeNgdopJZ9I1scna
	2Li4r0xiOWEZ/LqQ87+9WexVYACgASxWJqI1nRu+1j/2MdjAW3LNrMi+yP7zYKdko5XsJLpcZD+7Q
	NjuFnDpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS9N2-00000003WRJ-2UAE;
	Wed, 27 May 2026 08:12:08 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS9Mx-00000003WQb-182T
	for linux-rockchip@lists.infradead.org;
	Wed, 27 May 2026 08:12:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E699043C01
	for <linux-rockchip@lists.infradead.org>; Wed, 27 May 2026 08:12:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB57F1F000E9
	for <linux-rockchip@lists.infradead.org>; Wed, 27 May 2026 08:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779869522;
	bh=uw2so0frtoJ7L36BG8ZMy2KRPedLJY369P26BUJOLLk=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=NfZ92c0xHqFVYEwjCEaR10h4Zq7VdUdg23WgrwjKsc9r29Dpuna/TsEzLUGOjY/+b
	 DasguJf7uRtfrp2IeWPfpNN68WZKq1+H1AgQbSJnezzs1tbZ4tbieTAe2W4c84fK1y
	 GNEwEdzk1Axh7KRHs+m2nX7M/L80K2wTkrzI5Z0T/wVXstzm6KpPoefrqrkXei7DE3
	 dtcBYQ+SaqsTb5oVTD/X3nLW0V3MEkmGRSZbOM2ot/1pLTc9/0wboIHnSh/8aMahY8
	 NB8d7VOSMnOG/T/5zjjJ+BJ3EK2t8nKulOgqteIDfxgueIdWLyV0i8e6OYhTBxtB5o
	 /NlrYLFHgJiqg==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-393c93a0166so106448291fa.2
        for <linux-rockchip@lists.infradead.org>; Wed, 27 May 2026 01:12:02 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8l8JOUX7vGN8Ek+nrq2yRB0pTVQQmfouGu4Fnk8E6cHK9X3OcvmPYmqioeKIUVfYTfeVpZfhQ0whigIwjbZQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/LbJsuCTaG2cdTzVw0IAW6RNKi9US+0vZxdjF6jZhPa0UijBl
	HnIcKeC7e/V20kLhjo0gNInVKxnbx1f1iZ4W71UbOtuM8TGh3SdWkx7imvJWBoycVmOkx7iifNH
	D4k1v9KtCav2mzXXoJQACxlQq/sQ8SFLDnZZKB1UzPA==
X-Received: by 2002:a2e:9187:0:b0:38e:294a:d447 with SMTP id
 38308e7fff4ca-395d8d1d2a3mr51655011fa.28.1779869521582; Wed, 27 May 2026
 01:12:01 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 27 May 2026 04:11:59 -0400
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 27 May 2026 04:11:59 -0400
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260526171050.12785-3-scardracs@disroot.org>
MIME-Version: 1.0
References: <CAMRc=Mfk9tP091DN=5kjb8fvFhj1=MiBZSq4NJ7+k5LNCVy9bw@mail.gmail.com>
 <20260526171050.12785-1-scardracs@disroot.org> <20260526171050.12785-3-scardracs@disroot.org>
Date: Wed, 27 May 2026 04:11:59 -0400
X-Gmail-Original-Message-ID: <CAMRc=McuW+fU2m+oy6Q0+cOB_Kh0Biz_NRgD5m60M4bmAyuJZg@mail.gmail.com>
X-Gm-Features: AVHnY4IMDCoU0IV6a-vUPw7eiuq2thFTlobhU6B8muFXFThBWn-86qTSkIm69ug
Message-ID: <CAMRc=McuW+fU2m+oy6Q0+cOB_Kh0Biz_NRgD5m60M4bmAyuJZg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] gpio: rockchip: teardown bugs and resource leaks
To: Marco Scardovi <scardracs@disroot.org>
Cc: brgl@kernel.org, heiko@sntech.de, linusw@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_011203_345985_A04DDA0F 
X-CRM114-Status: GOOD (  24.21  )
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

On Tue, 26 May 2026 19:02:46 +0200, Marco Scardovi <scardracs@disroot.org> said:
> Address several teardown issues and resource leaks in the driver's remove
> path and error handling:
>
> 1. Debounce clock reference leak: The debounce clock (bank->db_clk) is
>    obtained using of_clk_get() which increments the clock's reference
>    count, but clk_put() is never called. Register a devm action to
>    cleanly release it on unbind. Note that of_clk_get(..., 1) remains
>    necessary over devm_clk_get() because the DT binding does not define
>    clock-names, precluding name-based lookup.
>
> 2. Unregistered chained IRQ handler: The chained IRQ handler is not
>    disconnected in remove(). If a stray interrupt fires after the driver
>    is removed, the kernel attempts to execute a stale handler, leading
>    to a panic. Fix this by clearing the handler in remove().
>
> 3. IRQ domain leak: The linear IRQ domain and its generic chips are
>    allocated manually during probe but never removed. Remove the IRQ
>    domain during driver teardown to free the associated generic chips
>    and mappings.
>
> Fixes: 936ee2675eee ("gpio/rockchip: add driver for rockchip gpio")
> Assisted-by: Antigravity:gemini-3.5-flash
> Signed-off-by: Marco Scardovi <scardracs@disroot.org>
> ---
>  drivers/gpio/gpio-rockchip.c | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
> index 33580093a4e7..c804f970d823 100644
> --- a/drivers/gpio/gpio-rockchip.c
> +++ b/drivers/gpio/gpio-rockchip.c
> @@ -638,10 +638,17 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
>  	return ret;
>  }
>
> +static void rockchip_clk_put(void *data)
> +{
> +	struct clk *clk = data;
> +
> +	clk_put(clk);
> +}
> +
>  static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
>  {
>  	struct resource res;
> -	int id = 0;
> +	int id = 0, ret;
>
>  	if (of_address_to_resource(bank->of_node, 0, &res)) {
>  		dev_err(bank->dev, "cannot find IO resource for bank\n");
> @@ -673,6 +680,13 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
>  			dev_err(bank->dev, "cannot find debounce clk\n");
>  			return -EINVAL;
>  		}
> +
> +		ret = devm_add_action_or_reset(bank->dev, rockchip_clk_put,
> +					       bank->db_clk);
> +		if (ret) {
> +			dev_err(bank->dev, "failed to register debounce clk action\n");
> +			return ret;

Use return dev_err_probe() for brevity.

> +		}
>  		break;
>  	case GPIO_TYPE_V1:
>  		bank->gpio_regs = &gpio_regs_v1;
> @@ -789,6 +803,9 @@ static void rockchip_gpio_remove(struct platform_device *pdev)
>  {
>  	struct rockchip_pin_bank *bank = platform_get_drvdata(pdev);
>
> +	irq_set_chained_handler_and_data(bank->irq, NULL, NULL);
> +	if (bank->domain)
> +		irq_domain_remove(bank->domain);
>  	gpiochip_remove(&bank->gpio_chip);

Maybe if you're already touching the driver, use devres for gpiochip_remove()
too and schedule an action for removing the irq handler?

>  }
>
> --
> 2.54.0
>
>

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
