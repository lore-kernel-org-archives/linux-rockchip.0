Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7678CCD18D
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 14:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J4mxLA9AtGvhcd76criDNKUqDtuFgkbgHTKcFHm71Uw=; b=scW04BNpSCH2CY
	pk0udjDck0kmfVOvR/LOe0JaGgEZiDigFjiqgbWWpM554x7AG7PoPgfB9az6UUcULFdee23aFZqIO
	9GczwZnJpCaQ0R2zrtBvBxuppJLnM/pW0TrRMrCFYecjgvPfego0mjHEm4b559kij0KoFBvATMilU
	v+sUMrT1hWnDyznmHH3SNyRcmyjz+sYk37cgfqvYg5IjATUsLod5HAX8q+Q4jclv7TKXtrxnJLkmj
	8fJfXYzvgioD6XZ6mj3eLnl61QhJkedDGMwI/Qp1x2rlhBFZrBh1y3rGtqFIcYkIBbubalZInXxWY
	QbDEyD3RMZkKqZyE8XZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JtV-0000000DVQ7-0CDT;
	Mon, 13 Oct 2025 14:51:25 +0000
Received: from mail-qk1-f178.google.com ([209.85.222.178])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8JtS-0000000DVP5-3sAF
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 14:51:24 +0000
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-854cfde0ca2so887681485a.3
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:51:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760367081; x=1760971881;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8BF1nvJKgerbunlxq6rI58NsjqwKmmQvTj5E3RRtPIQ=;
        b=EaG0HDoqhtmHCeSQZNKNEqnZZw/G0EvubcfVh5fnA6wfoLXYNaGp1GLgbsWnsdZOhs
         91VTVwV1PnoYyI/Bp8hDs3nK4Zy6HrIQAiTN+7TGK63qR75nHWCS4Vajzhm9xsQ0dHFI
         i73u7PHcNgCLl8Qs4SEFC9v/7B/TmTs+ZZEa+430sLp601AQr3Ctpz/hhRDDQwN/FF0G
         BsBMfko1Gio9LyQGY9oO+avJ9HPkSqOWN07A+L4rMOT3CcvVtGCwrPDw58MlMp1LfYlF
         JcGB/YQ/YmEm5zbxDTnMr1Lff0u0kWmtB2RAiXvozswKVMzCMDV366awsbZ+Q8HSMTIT
         Pfww==
X-Forwarded-Encrypted: i=1; AJvYcCWi0wv+IdbtSQoczdEvZs3L2A0hcI2nytil3Nh7c0wwXpH2UX78Bnuwy5+lAnh2b/VdQnTMXlrRqE5VJ1cAtQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzICgB5f5U8Lj7o2/HBvVTbiaMflrsKkQPeEUMqqOWvSGG4Pwib
	X6ElnNWLTQ4YTpt8WyNP7lHYG+nc8ezHeyy2gxQOltAw/UYHLtQNTxLi3MofRH7j
X-Gm-Gg: ASbGnctQc2RG0VmzMYZX5+j2GqM3oR6KxGzLwhLRmasR+FxLDedl9ZYjp+dxkfoI6nB
	Nrmj2grgPxjuhkxxJqJxPtkMSOqlP5KhSqJkQqg2lL+M0ieQGPfeufcT/FVs9fxwWXsvpRx6xAn
	LnXQ0Hva+XrYszjb4Vz3iH5u1o9uqcsF/Hi8nZW7xLWFDDJDDqRvZwshP+bzmnkj269Vzc5EJBN
	2sNTjJ6BQ8JEtw4xqjzEsMQcmavuSwsy44Nh2yC7PuII3H8gbLn/2XAH4lvHe0S+ifXqBTisO/F
	NK3SCevGAWwCCCSoqJ7YYAHcn1VQmGC9kdzDy+ce188PjzW4n5ltL91lwi9Ek4Odl+oXrdsow/L
	+FSl+VqJHUOi1FugGGDgq9rrl8c/qjsTbRFInUKrR4oacyba+K37rIK3915D6wSmxXUTj0yFTyL
	SknAFq/1Y=
X-Google-Smtp-Source: AGHT+IETfICxoVvmG1rKeocPz8xpGstaKqGIGY/hNZje1+ztUyxshfkVbGBujQWHfkZq5PJi0gKRpA==
X-Received: by 2002:a05:622a:491:b0:4e7:218e:706c with SMTP id d75a77b69052e-4e7218e7148mr71535881cf.49.1760367081148;
        Mon, 13 Oct 2025 07:51:21 -0700 (PDT)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com. [209.85.222.171])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e706a07d22sm78218251cf.0.2025.10.13.07.51.20
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 07:51:20 -0700 (PDT)
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-855d525cd00so766047585a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 07:51:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVkN6QhTv7eRwo+HBFufjHsgDXBGufl+2EjUgY5JkIqwLLTSu3I3BKYbL/F3aJ8xXSCSp9ycGq9Qbg3q/aRpQ==@lists.infradead.org
X-Received: by 2002:a05:6102:598b:b0:521:57e7:3b19 with SMTP id
 ada2fe7eead31-5d5e23ad946mr7466194137.25.1760366582403; Mon, 13 Oct 2025
 07:43:02 -0700 (PDT)
MIME-Version: 1.0
References: <20251013-ptr_err-v1-0-2c5efbd82952@chromium.org> <20251013-ptr_err-v1-27-2c5efbd82952@chromium.org>
In-Reply-To: <20251013-ptr_err-v1-27-2c5efbd82952@chromium.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 13 Oct 2025 16:42:51 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUw4x4GxxZ+m+108rp+_uiuiNFHO4Vtrd3vftb_LwmCLQ@mail.gmail.com>
X-Gm-Features: AS18NWDbEQGWUFg0r_aGxPQP6vUjubUz4v9cHDpfk8kXxZq-lj2695LEwK7MQ10
Message-ID: <CAMuHMdUw4x4GxxZ+m+108rp+_uiuiNFHO4Vtrd3vftb_LwmCLQ@mail.gmail.com>
Subject: Re: [PATCH 27/32] media: renesas: vsp1: Use %pe format specifier
To: Ricardo Ribalda <ribalda@chromium.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@kernel.org>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, =?UTF-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>, 
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, Leon Luo <leonl@leopardimaging.com>, 
	Kieran Bingham <kieran.bingham@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	=?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
	Julien Massot <julien.massot@collabora.com>, Jacopo Mondi <jacopo@jmondi.org>, 
	Daniel Scally <djrscally@gmail.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>, 
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>, 
	Sylvain Petinot <sylvain.petinot@foss.st.com>, Yong Zhi <yong.zhi@intel.com>, 
	Bingbu Cao <bingbu.cao@intel.com>, Tianshu Qiu <tian.shu.qiu@intel.com>, 
	Tiffany Lin <tiffany.lin@mediatek.com>, Andrew-CT Chen <andrew-ct.chen@mediatek.com>, 
	Yunfei Dong <yunfei.dong@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Rui Miguel Silva <rmfrfs@gmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Martin Kepplinger <martink@posteo.de>, Purism Kernel Team <kernel@puri.sm>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Dafna Hirschfeld <dafna@fastmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Yemike Abhilash Chandra <y-abhilashchandra@ti.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, imx@lists.linux.dev, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-staging@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_075122_983509_D27A00A5 
X-CRM114-Status: GOOD (  17.69  )
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

On Mon, 13 Oct 2025 at 16:24, Ricardo Ribalda <ribalda@chromium.org> wrote:
> The %pe format specifier is designed to print error pointers. It prints
> a symbolic error name (eg. -EINVAL) and it makes the code simpler by
> omitting PTR_ERR().
>
> This patch fixes this cocci report:
> ./platform/renesas/vsp1/vsp1_drv.c:958:4-11: WARNING: Consider using %pe to print PTR_ERR()
>
> Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>

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
