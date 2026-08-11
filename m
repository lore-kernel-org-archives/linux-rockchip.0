Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BAADC5AC67
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 12:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8py8AKA5hB7eJNAEWBBLkq900GQVAw3o8PAhHKjHFk=; b=Srt/50UBJKDWas
	pgJG13CXeaiamkYQJUFm8Z6Ht0SxLyTsiwSB6rsdbqNUrncHphXefN8kpVEFwhg6/ghs9Q2g+oBxb
	8vHmY2o6cCZAQz+f7nvQ6xQqxUxkg1LZ6oYQB5z0+5JXYk4wRQA8rK+20pAzhfgWEXyubs+uCGzmQ
	9jHQL6urUfTCc+/iljdCzV15Fc3ufGNwKizRCYWeRRzKeZO8pXnCxsLTHkSdVt9G0jAlSNaa/GY8k
	ZLRQLIbBQ/+KPeo7H75kcXdIfev6tjtHwLZEI+aJLteuqSCrV9B2zwpen1KDro0C77aqN5hw//ZLe
	yO2wDrocJxEyT8/W6bww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtlIe-0000000Dz2e-4B62;
	Tue, 11 Aug 2026 12:09:44 +0000
Received: from mail-vk1-f171.google.com ([209.85.221.171])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtlIX-0000000Dz10-1kvD
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Aug 2026 12:09:40 +0000
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-5c38568d9e1so1212816e0c.3
        for <linux-rockchip@lists.infradead.org>; Tue, 11 Aug 2026 05:09:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786450176; x=1787054976;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=uoVTJmbd8yKwYcWWlgS08ZgHIJGke3bvkQlHT1fmSY4=;
        b=W8Nuf2rgI/zsXdqZmUZ95EF3sgcbMbgk2YlMiGDVRoEBlGaIrdYue5pQlTc00uor9y
         nQDdR3POMCjxW3plc4k5Hm2WRfEx2rQPMGoUUEG6BRq2K4YH+cyJ+33We5dH/CSJfxYC
         Mxf25r/wXafZWcNr9mveflT3HljU+NRWH//UykLgCK0Ub1iJH6A+RjSwD6rjN9JKS7/G
         lTTQYi9TzaKZUNIqWvEWD2xaLpXmRPAXCCViTERYaho9lHuuCuyuK1TyMj9RX58ajZ2/
         +YRKby3ly96CcB9BH7ozoH0ehY7FNiaMGhMWSA4L2a0T0gU13MW8AhqgxIAMvbD0/2Y8
         l5VA==
X-Forwarded-Encrypted: i=1; AHgh+RocrfaH6aawzKUb1SQEeYpHF6wlcLDhHMS7Mf/zAzjBzCOhMhXieueEw3tYSM40QqsPtUxoqdMHoQhfrcpq2A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxQbw3HvXLArBg5bAZz3UpjkQYoU0Ba5fX4hIAGDi41GdItqcnE
	hGCHVE/fvi7eTvjFvPsk9fdK3+w0mjcUADENHCC103xBxn9WG4wOIDrI66+y3Pro
X-Gm-Gg: AR+sD12wd9blI21aS/JHANiSx1UmiutQvDCPRToK4efTw44pEQmYfg+4xyqoJoUkSoW
	AzRH6r3QD+qK3JqSQ7t1sDysps3yFTVeETi/mEKHVQ8rE83NpqDcpyZlHpefoSAH6Meu7ljDWeC
	eyyShLJFyt5KWIL8HcoYngdxzmMgUrVeaBkt+ArQwDzRhRkMbdHpqdlKY1dOk+Dh3hlhEb1k78s
	lx+9XRJE9f5ZZq48xBH1JcZbA+/kKXXEOeWP2okZlInXAv2js7UZZovIu/5MjTcE/Fe9x3oGHmI
	9X8Uw7NRCpuD4EvpXd34PErbr3NMDC8uRQw72GfgOgdBaX1f+3MR2OWlL2Ao5/2/ECn2RXmMguC
	aBL2m8FwZfwpTe+LoUJC/xtaaKAewKmsREFWRaDsTL8vRdgdwDpROsCan6rpUkvPkQGcoVeUL3X
	afC+OTcr3LEcEV2kcftkM+jGDbyQJOuTj3VNnrs/ICntJ/LFIzgSa67ZAMg2luh/iwnI5joFAaX
	YM2d1M8NHFMconHpDXnWBQH6g/Cwz+mRDAE
X-Received: by 2002:a05:6102:14a5:b0:76a:fc18:29bc with SMTP id ada2fe7eead31-76b559806c5mr614369137.4.1786450175870;
        Tue, 11 Aug 2026 05:09:35 -0700 (PDT)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-76b63293ea4sm393053137.6.2026.08.11.05.09.35
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2026 05:09:35 -0700 (PDT)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-9773c6ea885so652561241.3
        for <linux-rockchip@lists.infradead.org>; Tue, 11 Aug 2026 05:09:35 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RpWiFan8uy+wh3Cn7RrMZNPWqQypX294vF7on7/+O4mU3liQ0O+lq8lECqJgy5z4x/cjvOKpAL8TDeNSZRzFg==@lists.infradead.org
X-Received: by 2002:a05:6102:15a3:b0:738:cdc6:f59a with SMTP id
 ada2fe7eead31-76b573b9e9amr650405137.9.1786450174738; Tue, 11 Aug 2026
 05:09:34 -0700 (PDT)
MIME-Version: 1.0
References: <20260724-clk-provider-simple-clean-v2-0-56f306156d25@baylibre.com>
 <20260724-clk-provider-simple-clean-v2-3-56f306156d25@baylibre.com>
In-Reply-To: <20260724-clk-provider-simple-clean-v2-3-56f306156d25@baylibre.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 11 Aug 2026 14:09:23 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW15QrpUhbra1Jg1_8rQWf8CE5TQiE5SUAsqvz5YmEwpQ@mail.gmail.com>
X-Gm-Features: AUfX_mxAADqzKHeccKVpUAgUM-G2gOwUTpW15Dago95Bl-ey6AOZpFlGkzHgs7Y
Message-ID: <CAMuHMdW15QrpUhbra1Jg1_8rQWf8CE5TQiE5SUAsqvz5YmEwpQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] clk: renesas: clean-up simple provider misuse of
 the consumer API
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Brian Masney <bmasney@redhat.com>, Bjorn Andersson <andersson@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Prashant Gaikwad <pgaikwad@nvidia.com>, 
	Thierry Reding <thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Tero Kristo <kristo@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-omap@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_050937_458201_909760A8 
X-CRM114-Status: GOOD (  16.27  )
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

On Fri, 24 Jul 2026 at 11:04, Jerome Brunet <jbrunet@baylibre.com> wrote:
> Clock provider should not be using the consumer interface.
> In other words, a provider should not be dealing with struct clk.
>
> This change targets occurrences for which the provider uses the
> consumer interface and corresponding clk_hw interface exist.
>
> Reviewed-by: Brian Masney <bmasney@redhat.com>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk for v7.4.

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
