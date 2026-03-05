Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9334EEEF312
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 07:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K93E8APqwh3qCdKxPlpZp9cMYBCZWKsUJudT73NIWYc=; b=B9GmuoIIvT/kOM
	k7G2Cs/qnoiE1FbW+Uxj0FRmm5FjILideT6FIW7hmM/U4h/HpW2Q59V5g2uh4i0zBNJOTlT6oxfA1
	ncf1r3l0QNIrEse3VOq/aFYQwInoUGMYSby3K1RlcvedIvOmH+2VXq3cEAqH5Tk4hRjj1VWVgjVtr
	oaXlwwp0kZ8q55KwIlp6ZMNVl8CX4/2b2sP/E/bmjRB8FHKh2BxJV4ZFtRQoaphccrw3bcBwqw9Q0
	DZPg7BzpIkeMLxEHZKuUuG8AGmHQ2mHcVmi+CVqTjNOV9++0AT35CSDffR9wB+u/Mr0Cf9ft48H5Z
	06/gaeK55FW7LdR7BkkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3Os-000000016kF-3Qej;
	Thu, 05 Mar 2026 07:45:38 +0000
Received: from mail-ua1-f47.google.com ([209.85.222.47])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy3Oq-000000016id-1uhi
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Mar 2026 07:45:37 +0000
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-94dd2d71231so2303862241.0
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 23:45:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772696735; x=1773301535;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KLWXJFRzKXYfvRWexgs1gCb/dTgnevi1M5AetCjur0g=;
        b=SsylABCiQyue0d+IN+IRNPMtb22AshmKXaPSKMLdGxvLKIdWraYzIQQHxN8RfEYDjB
         zA7wSXeBI7DzyQ/f0taQbfRPWDbMdKGfASyZC8SYvtYZ0qsRZPwlF4voyV3uAGqNcUUq
         V7tvmmqDkIOF3HWb+330sKYwAPaQL/vNagFC0alLr7Og1u5ihTJ6PtdJHJ4VHsEUithk
         CDuODPp2gllxz5LVfsAxMgVSGOfinGclIzLEjcUqbFpp6YAvUzmYtTqARJJHCuBVKksA
         QSpjuBFfYCabHVt+k3Lycp7LOSyvSfJleKpkd64WKnPKBvIsOgAyIBYOJkt9x/8O5qUP
         AHaQ==
X-Forwarded-Encrypted: i=1; AJvYcCVfdBRaXYWpSdJDDDINWHBrwIKM4iWHXiMrjb6F74VQAWBen/QhpZclVcHm1/S0/3LjzKp1bNGu/4Ekcz/xjw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzayBC8pdAhzfKao8trGIHBrXl4SiMBCn7jqUf3Bew2wxClWPtg
	rGFQul1e+4EkWah77igzIFajfexQcEozh1BAsfpx44IhIB7NCZ95cSiyNDoUb5o/
X-Gm-Gg: ATEYQzwx2FmiLjCEL7FrnHjSNd5N0lQxOfimigem17NNLThMHQylTb7Qt3KIpraXAHo
	+PJRf5n0X5VUr1a6ub8vrZBQYkty7gHaROJiZhQo2NEACFYed/spuGX4681cKfROstQ7D4U4xg2
	L3POYFcq94GC0CUt/R5N0Z7j7CkbWju1wcJH/1MkAoINoBZXN4vOg6Fm4fkFTSMjWos3iWZX1FS
	MgBwP3MEWCflt97bLKNlpapXlPCfbjRAWsCVeqbsIBr0NO/pQxzWTaIzEhEGjQO/CsaArb5lJez
	jKrXowxgjRYk7M+94LrVHPGYJlpycgoJChRhvh1mNJm64zypVBX8sy+4NVFJslKvdofa/0KwVCC
	Oalcgn7/PEdefA3CSp5+S+fSQpF277LkhR/R5qpbsmrHStbnxYI6zwY0Oc/gfIW4/wBEWGaK1X8
	0FtzLSCBt4e6eGnIlvoNWDINs3AaO/nIjqThOCme1eAlhNZ7Hm1FaMetf2m1AGCATgbeVh8ow=
X-Received: by 2002:a05:6102:374b:b0:5f1:51b1:480 with SMTP id ada2fe7eead31-5ffaaab18e1mr2044562137.8.1772696734889;
        Wed, 04 Mar 2026 23:45:34 -0800 (PST)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ffa300c3f8sm5656099137.6.2026.03.04.23.45.34
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 23:45:34 -0800 (PST)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-94dda16ff9fso2323251241.1
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 23:45:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXKqBiS/5v6XH998XlNrytu82nVc0FIXS0QyrZmYHJZWzqujYX2YcTypjjYArTWVyhtNBYuZX71exjFzRVvJA==@lists.infradead.org
X-Received: by 2002:a05:6102:441c:b0:5f9:3a22:85a2 with SMTP id
 ada2fe7eead31-5ffaac72675mr2059267137.12.1772696734612; Wed, 04 Mar 2026
 23:45:34 -0800 (PST)
MIME-Version: 1.0
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com> <20260304175735.2660419-6-vladimir.oltean@nxp.com>
In-Reply-To: <20260304175735.2660419-6-vladimir.oltean@nxp.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 5 Mar 2026 08:45:23 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXA67BO8Umz8-4jRg1SLvtZUSEzK0p7WxSvomnBk+WiyA@mail.gmail.com>
X-Gm-Features: AaiRm52ziEM93YxO07h7pOV0rTYZnULijxTOwLRm9EW_k_lOxLulmwK4PITV2jw
Message-ID: <CAMuHMdXA67BO8Umz8-4jRg1SLvtZUSEzK0p7WxSvomnBk+WiyA@mail.gmail.com>
Subject: Re: [PATCH phy-next 05/22] phy: add <linux/pm_runtime.h> where missing
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
	UNGLinuxDriver@microchip.com, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_234536_504696_19542351 
X-CRM114-Status: GOOD (  19.02  )
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
> It appears that the phy-mapphone-mdm6600, phy-qcom-snps-femto-v2,
> phy-rcar-gen3-pcie, r8a779f0-ether-serdes and phy-rockchip-typec drivers
> call runtime PM operations without including the proper header.
>
> This was provided by <linux/phy/phy.h> but no function exported by this
> header directly needs it. So we need to drop it from there, and fix up
> drivers that used to depend on that.
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

>  drivers/phy/renesas/phy-rcar-gen3-pcie.c       | 1 +
>  drivers/phy/renesas/r8a779f0-ether-serdes.c    | 1 +

For the Renesas parts:
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
