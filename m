Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91834E74917
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 05:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWpuH3uq6PmqaYCWBKVArhLw+GYBFKqeUzNr1HBMblI=; b=s7+69mC2Bnky9h
	tUSsOv8G3DoF37nDXmQxLlZTvSWEhIi+qkoDPCPN6DRTXPV9FPGJqncKgnH6IgNTNcO6qgQWJGW+e
	xR54PVcvEJr65g2n8+Akf3VaZ5+8ds4gV15DPIgkxERHN0IABATbBbPGu8zq2w1SrPpis64Xv6Uyx
	vDz4GGlvJvn7ZGnYyqyWW0ML9eoNXF51iExvKQ7PTSUAqjKh+LN0x8KAMovHOq+dDF5e+h7ikqFxA
	VdL+NPDF9rsCwsK2zJ264cYy3GiTupNeEWKUj1X3G0ougj5MsBEHt788Kc+rAtP5n22Y5deCj+OHz
	skTzloK7L93ZfuWDo0oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYHGl-0000000GQPR-1L9r;
	Wed, 24 Dec 2025 05:18:43 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYHGi-0000000GQOk-1n9U
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 05:18:42 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-64b83949fdaso6819846a12.2
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Dec 2025 21:18:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766553518; x=1767158318; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=u6LC33FrBHnFwijckLFQe8PlcMlhWZbaNpDq7Z3k5U4=;
        b=WUPy5kTDXDg4zXBAYz6d5MJDGRIQLbmmtgWRzinrVn0wt09L0yPFsZOZKuboVpReIB
         JsLf5u83t5uyleRh3QZphz5aRgrAaFFioFXSirok10LNL31C+y19UjpG4E9Knb0MYyDm
         nf8ayhYHb7WVvGuQ2ZMyr7JNnIJfBEVew5zDwmzWsk6Im9Dp7aO/HEj+Mf8qW3znaJot
         SYFp7CYCjS5ICeQ5wE9qXOGMIHyUftTZyeB6fMebS2KK9pFPn63/2D1n4qbkr6y23kX/
         /g/F+ZAp1O1RFJtJpc4JWH3liP9+dDTEMth16gcEFX0xM3ojwdkpVVMigTqBX04C3RUV
         EQvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766553518; x=1767158318;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u6LC33FrBHnFwijckLFQe8PlcMlhWZbaNpDq7Z3k5U4=;
        b=CGmBxyqmYai25TmNezd7b4hNfTzxznlC1E41UwmLrfnBp0TlLOJdczkMuhk7EPzYaH
         7Is01BSpuKlSF/B0uYtXSbfNWjIMwzcziO61poU1ZxuYVySHXJjmmL19lH8jgDIhlcf9
         xfRB5+2gHq63U2YulvuQHOTjDhjyxVh7ofH9rIsc4EG0eWipXSqsoOtlWFJC/bm2Bfm7
         y60wP0LIt3RkeQ+dFpwxipvycYyWiGhmh7NTamZPGbh+Fa7w3fHEBHfI4hYD92DgX4Gn
         t99WABR07bzRhEUnQggjlJcIyoTMnl/80Bk0SldMZ2Dz17ZEqRlXl0ZklskW52AD9S1P
         RR9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXi2hkQZUNcDuRBtBeLUWNUxRUnOjBJ7q2G23YWzpzcJzzWnBR7C0RWWy7epg0LaU20BxhUlhbdlD7gMs+qxQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8kWkXfEnOUq+eybS1cxuhD5KFrCHIWMlBx9JsarC/G74Gn51Y
	hUQSGnh4BkI9lOXvBromSMghgFQRxUXWBn9fxx/0v+oan6K2yU+FhjNRQxoLrLvs4MQ8oVlf3qP
	ed50uqOmX4qym04NxMZaiDR/q4YctNDg=
X-Gm-Gg: AY/fxX50QwjOtoCgmLVMOtqU5rk+J1BbqM7wFl3R9OYRLtFbMgqdGDhzZmg+J+eMH87
	v3oUgMP2s1/3RVAnsveHWkQOuY0HASJliCEfbqahRJwFPIEarMb1BKKPjwrOEcXJuqrQxmdFMjz
	G23fOBpIZyQzoK3O8jiLK7nujDFRFAK0aZehtWTkmZ2d2BUWzRgG8NogoIT13qhgiu/M+2sB45B
	c/KkYvdNHU/cBy3ZkJ5pDUDVYxMOW2KiifQ9KE43BiAoYd6jz1XL/7tJSI4mYhd/U4=
X-Google-Smtp-Source: AGHT+IE5dtPIKyU8ptUI2hkdMI7fwbMdU7esjAJmTvjiO17a7ITetL6IcJCGHQwxARRvQd0qeb1vLtgPofOSuLa2c5M=
X-Received: by 2002:a05:6402:5188:b0:64b:572e:6ba5 with SMTP id
 4fb4d7f45d1cf-64b8e93c0dbmr15294044a12.4.1766553517792; Tue, 23 Dec 2025
 21:18:37 -0800 (PST)
MIME-Version: 1.0
References: <cover.1763415705.git.geraldogabriel@gmail.com> <eaa9c75ca02a53f8bcc293b8bc73d013e26ec253.1763415706.git.geraldogabriel@gmail.com>
In-Reply-To: <eaa9c75ca02a53f8bcc293b8bc73d013e26ec253.1763415706.git.geraldogabriel@gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 24 Dec 2025 10:48:20 +0530
X-Gm-Features: AQt7F2pedp4R-xyN_-ijj3Fu8brq9lijlFOC48RK9mmQXfW6wy7VvzSVIN4mKhs
Message-ID: <CANAwSgQ726J_vnDKEKd94Kq62kx8ToZzUGysz4r3tNAXvfAbGA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] PCI: rockchip: limit RK3399 to 2.5 GT/s to prevent damage
To: Geraldo Nascimento <geraldogabriel@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Jonker <jbx6244@gmail.com>, Dragan Simic <dsimic@manjaro.org>, 
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_211840_472429_D7CF1DFE 
X-CRM114-Status: GOOD (  21.36  )
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

Hi Geraldo,

On Tue, 18 Nov 2025 at 03:17, Geraldo Nascimento
<geraldogabriel@gmail.com> wrote:
>
> Shawn Lin from Rockchip has reiterated that there may be danger in using
> their PCIe with 5.0 GT/s speeds. Warn the user if they make a DT change
> from the default and drive at 2.5 GT/s only, even if the DT
> max-link-speed property is invalid or inexistent.
>
> This change is corroborated by RK3399 official datasheet [1], which
> says maximum link speed for this platform is 2.5 GT/s.
>
> [1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf
>
To accurately determine the operating speed, we can leverage the
PCIE_CLIENT_BASIC_STATUS0/1 fields.
This provides a dynamic mechanism to resolve the issue.

[1] https://github.com/torvalds/linux/blob/master/drivers/pci/controller/pcie-rockchip-ep.c#L533-L595

Thanks
-Anand

> Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
> Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> Cc: stable@vger.kernel.org
> Reported-by: Dragan Simic <dsimic@manjaro.org>
> Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> ---
>  drivers/pci/controller/pcie-rockchip.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> index 0f88da378805..992ccf4b139e 100644
> --- a/drivers/pci/controller/pcie-rockchip.c
> +++ b/drivers/pci/controller/pcie-rockchip.c
> @@ -66,8 +66,14 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
>         }
>
>         rockchip->link_gen = of_pci_get_max_link_speed(node);
> -       if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
> -               rockchip->link_gen = 2;
> +       if (rockchip->link_gen < 0 || rockchip->link_gen > 2) {
> +               rockchip->link_gen = 1;
> +               dev_warn(dev, "invalid max-link-speed, set to 2.5 GT/s\n");
> +       }
> +       else if (rockchip->link_gen == 2) {
> +               rockchip->link_gen = 1;
> +               dev_warn(dev, "5.0 GT/s is dangerous, set to 2.5 GT/s\n");
> +       }
>
>         for (i = 0; i < ROCKCHIP_NUM_PM_RSTS; i++)
>                 rockchip->pm_rsts[i].id = rockchip_pci_pm_rsts[i];
> --
> 2.49.0
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
