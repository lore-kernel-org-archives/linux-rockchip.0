Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB1A0EEF316
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 08:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCFsdhlxTs/4yNn7i3zpO1gw+Vy7MBLvibwd0gw0Pb4=; b=JaWC+ciSHo3PG5
	R3U5iVMtqtzODW6nC1YSUWTFpBqH41DlEs7WvuaHR3DCp6Q4ZIyqH4mcbKuXwQe8sXC3O16SiSmvX
	Wn1T27q0jssDEXZYkVXhFwoFU2rZJ5vOA7o4hfDzUt/qOHmtD5HVZqCTHHHbEA2WkB4t2esijh1YP
	vZKk/NdN8TrcHAKQtNkmm0L6vH/CVkG8/G2e36j99WYiELnz8ewcr10xJP3OSTwXv4jG16p996wq3
	2u7vCgHfMcXghClDWX6MhxO5ihw1cBkbQ8QulAfcAgcSUBLNQrErOcQfNv6zR+xbqHNgQTgxLq6D9
	dhP4l+RsGk8IH5cMsWDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy45s-00000001CV6-2GRD;
	Thu, 05 Mar 2026 08:30:04 +0000
Received: from mail-vk1-f172.google.com ([209.85.221.172])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy45q-00000001CTR-1AAz
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Mar 2026 08:30:03 +0000
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-5674d8be45eso3130781e0c.1
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2026 00:30:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772699401; x=1773304201;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Ymdw+XC/6Jy9fN+NX35+E/o8bLZmtxZBZ4e3pQeTxE=;
        b=nQCp7EeuISFK7qD1LuPxzhu3x6ox51oq5lNX+htXkHttl5FcX8rT7Z8qy5y8MR7TQ4
         DOgFUKaUl+j5OUvqmjdUdBO+1RuEcEI+D/7IG/i3yh6CqmtyI15VwF8wPPP3IaUbMb8/
         q9qEooIwUY4spVxU/dcay51jgRw4nrGth4wfvtT6EHKHbgsHd52V79lzULUlWbz2TWVh
         /DYcZ4qLNrdyJYaFJYOcmdjLVVXMMN/cbGXpBpyM9jvDpSMdRg3ImbbOmRh+M5KbV361
         22KvPDuIFNuNutdvQnuwtj6a2UZbGfpPg0CCxR3mZ7UeuhnMc2YE2gbS3BZwciO1/1sS
         b9Iw==
X-Forwarded-Encrypted: i=1; AJvYcCVDzhv5b/dzWHxedpGujArxUdqLV6VMu0uk+Ste1yHVPqfa9ciOB8HkcQ6ql6FCiGNptHB320e543EWw7aErg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy94IJn781fzs2QhRm1IsLnPeUASyidBp7Zu8hlKWVus36dr5nZ
	q/O1GAmGSz36r9J1EeDXHaTwAJxu0CesYxQNaGRZvKzsQzwGTvGOZQAbCEMhyu09
X-Gm-Gg: ATEYQzwpC74h4Kh8oguKf7HbOSsGNiZAOVO+VzSOiWVGm0gwKeb4lVbGd9PhloXuEQp
	4UGIY7otKu/f1mS5nAlBWo6YsdFBbMdW7QpT1Dw+8160MxJdcONj35fPa1AU4VEso6WfRCQK4XM
	4d/9j+GvqhlroOJTZTcB2FtsRLq/aqVzi65L/+Ht9p/gZ6WUHKEHi2EY+n62UWK1gN8U/CwMdXu
	zqVd53QYzAPQZXWl3A7efyCmtPznmrQPeNW4PeuqALxuAsXet4meWzAGdyxNXpAwFPlEv39ZldR
	1LOz7EW57YqzOeJ0kd0p2fKB8aUJvxJI2mCzJjyNi0NJJgJo0Uc8jlWlB+eYI0Ioba49eFmaiFP
	joiLXoFuGmkeGSCt/VSUXKN25BXs8RqflOZei5fnnbpsQekTrUADhoLI953PUzU0VzxDEF+8FRU
	FG2qv4Pw3fo8qNzQvLuI2fZrvSPS0p0HzdhRg4AU+0wioNbSdPSM7NvmGVt0hl6vjc
X-Received: by 2002:a05:6122:6c0a:b0:56a:ef18:b3c8 with SMTP id 71dfb90a1353d-56aef18b927mr1391472e0c.17.1772699400942;
        Thu, 05 Mar 2026 00:30:00 -0800 (PST)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com. [209.85.221.171])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56ae7a29c2esm5087808e0c.7.2026.03.05.00.29.59
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 00:30:00 -0800 (PST)
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-56af4aad3e5so153212e0c.3
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2026 00:29:59 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWwr1mkOh4Jnmx5hz/3Efj2B5i9l30R6IbA+wlE+2vpLNOkOGO+mJlafDrqZCCwfy37XabylEEz97n/Ajf/Kg==@lists.infradead.org
X-Received: by 2002:a05:6102:2ac9:b0:5f7:24dc:3ac3 with SMTP id
 ada2fe7eead31-5ffaaa86250mr1899404137.7.1772699399463; Thu, 05 Mar 2026
 00:29:59 -0800 (PST)
MIME-Version: 1.0
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com> <20260304175735.2660419-18-vladimir.oltean@nxp.com>
In-Reply-To: <20260304175735.2660419-18-vladimir.oltean@nxp.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 5 Mar 2026 09:29:48 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXUBhpnFEnnTfyPdECWqNmKLweupX=FY2SedYA3bapG2g@mail.gmail.com>
X-Gm-Features: AaiRm53mHozL13yvxji6rv0MKzaGvWxuhr7SWHD2SjBJ0VWNhqppZZeXezGpDhg
Message-ID: <CAMuHMdXUBhpnFEnnTfyPdECWqNmKLweupX=FY2SedYA3bapG2g@mail.gmail.com>
Subject: Re: [PATCH phy-next 17/22] net: renesas: rswitch: include PHY
 provider header
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-can@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-ide@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org, 
	netdev@vger.kernel.org, spacemit@lists.linux.dev, 
	UNGLinuxDriver@microchip.com, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Michael Dege <michael.dege@renesas.com>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_003002_323838_C698A836 
X-CRM114-Status: GOOD (  32.56  )
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

On Wed, 4 Mar 2026 at 19:00, Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
> As a PHY consumer driver, the Renesas rswitch dereferences internal
> fields of struct phy, something which shouldn't be done, as that is
> going to be made an opaque pointer.
>
> It is quite clearly visible that the driver is tightly coupled with the
> drivers/phy/renesas/r8a779f0-ether-serdes.c, which puts heavy pressure
> on the Generic PHY subsystem.
>
> This was discussed before here:
> https://lore.kernel.org/linux-phy/20260211194541.cdmibrpfn6ej6e74@skbuf/
>
> but to summarize, it is generally expected that when a Generic PHY
> function is called, it takes effect immediately. When this doesn't
> happen, the PHY provider driver must change its implementation rather
> than the consumer be made to work around it. PHY providers which rely on
> a hardcoded call sequence in the consumer are just lazy and wrong.
>
> The most obvious example is commit 5cb630925b49 ("net: renesas: rswitch:
> Add phy_power_{on,off}() calling"). Problem description:
> - Ethernet PHYs may change phydev->interface. When this happens, the
>   SerDes must learn of the new phydev->interface using phy_set_mode_ext().
> - drivers/phy/renesas/r8a779f0-ether-serdes.c implements phy_set_mode_ext(),
>   but this only caches the mode and submode into channel->phy_interface
>   and applies this to hardware during phy_power_on().
>
> The commit author decided to work around this at the consumer site, by
> power cycling the PHY for the configuration to take effect.
>
> This had a worse implication from an API perspective in subsequent
> commit 053f13f67be6 ("rswitch: Fix imbalance phy_power_off() calling").
> It was observed that phy_power_on() and phy_power_off() calls need to be
> balanced, and so, the consumer decided to start looking at the struct
> phy :: power_count (the technical reason why I'm making this change).
>
> This is also wrong from an API perspective because
> - a consumer should only care about its own vote on the PHY power state.
>   If this is a multi-port submode like QSGMII, a single phy_power_off()
>   call will not actually turn the PHY off (nor should it).
> - the power_count is written under the &phy->mutex, but read unlocked
>   here.
>
> The rswitch and r8a779f0-ether-serdes drivers both need to be completely
> rethought in terms of Generic PHY API call sequence. There is no quick
> fix to apply. Just include the PHY provider API along with the consumer
> one, to keep working as before when struct phy will be made an opaque
> pointer to normal PHY consumers. But this is a bad offender (and it's
> not even a provider) so add a FIXME.
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
