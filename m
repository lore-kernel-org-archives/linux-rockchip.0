Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93CE6C32771
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 10:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oAaT15BfNe6z3He3FNyz9RnkoQ2JdAKNhyJFNCvLqoM=; b=IlpSe6gyyKYGmC
	m/sGoZTnkaoH3Rcy7C7P3SXDqkdYn7QuOQ0CIMMLPHTzpNYYK4RfGVvNBO+rs4x0xU3JtnfJzSTEK
	u6ccYy3QZkON2C6RhkhgjhJYHG6hbsz0hmMf/rdTBBf6QaPPxs/0Ty6xN/pSbeOrT3dWshFdBrUSb
	57nlx8fY4pmyK6bCquq8Kr7lpiHLlO2fA05z08d/r/4R/rx9Vle2hrBiNOc4LEws9tQfDE0Zet+HH
	9YFd4iRjDPICFSswL0KISChm0bIT3sei0I9GcmIs0NqRBHJx732A30QfySmSh1QBcLnAenYu5uhkM
	v8QLcloXDtjCtsfzGjdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odUBe-00FZNt-Pu; Wed, 28 Sep 2022 10:21:06 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odUBS-00FZFh-Vn
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 10:20:57 +0000
Received: by mail-wm1-x32c.google.com with SMTP id n35-20020a05600c502300b003b4924c6868so2054506wmr.1
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Sep 2022 03:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=Yz2djI8STbkK+AT9XpHF8FNRDalyWF8yc9UHJh/9Ikc=;
        b=W5e/XCNC0HlF1Wzuk+le7QQ04yEx+iCwKB+85yLOoYElcNMmn0TD7yzfHGGhDkeXfs
         4i6CgeCCEATaaQJfDhQT9faYb3xLitSuPsxvZmRtM6uHYlnzwa2hewWxm15nDry2RwIb
         ttx5g1igJ+TQhbzNrJcN+Cf2Qy5N0T8IQPLrQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=Yz2djI8STbkK+AT9XpHF8FNRDalyWF8yc9UHJh/9Ikc=;
        b=6zTY14W5v5kfgfc7D9HT4LJujxTXm82GFHHSt6v9oXtYk9dkLYQPcW3hQ0kqo7uj67
         umBgx5PiCnoPUVR1D4xfxZY9ITPMgtt8yfrdXlLYZHpQ2KDcBcj3J8bEH7l2Wh9wzIxj
         e4NYGJebfcqZhmtSizlUYu5XDVdHAlFrIVyhv6YAxkvTYAbAP1NSklXDQ08OGHLAq4zD
         1slLTbh7uBe6PMcnounyGh2kJH59XZ2XujX2mlDmx3ThKasWNpoPLocon21Tg+knpeBV
         Not1HClNFih6qN8AZ2bykwbnjl5ZP1/y4lN5qv395gU+4UaWbg+GiSPWxu5SKliu6IX9
         fqhA==
X-Gm-Message-State: ACrzQf3OuA8ZHiT4RYEAHNNcnoTKbMvtF8TT8XPSbZ42n0kV58BMfxP0
	4qWl25PI9YaPG2knz+0eKjBQwAAKabbNx2IcuJSTSw==
X-Google-Smtp-Source: AMsMyM5aRcGuJqhyCTw0Kvibn/jCpwr5OqSiKNLKF81OdxqaA2aHuMXGGHrbOSEW1aZAi5u9/maG23wNl6cMR67AOsA=
X-Received: by 2002:a05:600c:1694:b0:3b4:6205:1f95 with SMTP id
 k20-20020a05600c169400b003b462051f95mr6382128wmn.151.1664360450472; Wed, 28
 Sep 2022 03:20:50 -0700 (PDT)
MIME-Version: 1.0
References: <20220922064704.1740759-1-hanetzer@startmail.com> <20220922064704.1740759-4-hanetzer@startmail.com>
In-Reply-To: <20220922064704.1740759-4-hanetzer@startmail.com>
From: Simon Glass <sjg@chromium.org>
Date: Wed, 28 Sep 2022 04:20:36 -0600
Message-ID: <CAPnjgZ2Poc-xXgyhtamhn5Huqc4iPyZWa31ViD5=BXiBY80OWQ@mail.gmail.com>
Subject: Re: [RFC PATCH 3/4] rockchip: rk3399: fix typo in grf file
To: "Marty E. Plummer" <hanetzer@startmail.com>
Cc: U-Boot Mailing List <u-boot@lists.denx.de>, Kever Yang <kever.yang@rock-chips.com>, 
	Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, 
	Philipp Tomsich <philipp.tomsich@vrull.eu>, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_032055_049077_128E5C40 
X-CRM114-Status: GOOD (  13.71  )
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

On Thu, 22 Sept 2022 at 00:47, Marty E. Plummer <hanetzer@startmail.com> wrote:
>
> Not even used as far as I can see, but still.
>
> Signed-off-by: Marty E. Plummer <hanetzer@startmail.com>
> ---
>
>  arch/arm/include/asm/arch-rockchip/grf_rk3399.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Simon Glass <sjg@chromium.org>


>
> diff --git a/arch/arm/include/asm/arch-rockchip/grf_rk3399.h b/arch/arm/include/asm/arch-rockchip/grf_rk3399.h
> index dd89cd2050..658cc0dfc4 100644
> --- a/arch/arm/include/asm/arch-rockchip/grf_rk3399.h
> +++ b/arch/arm/include/asm/arch-rockchip/grf_rk3399.h
> @@ -466,7 +466,7 @@ enum {
>         /*  GRF_GPIO4C_IOMUX */
>         GRF_GPIO4C0_SEL_SHIFT   = 0,
>         GRF_GPIO4C0_SEL_MASK    = 3 << GRF_GPIO4C0_SEL_SHIFT,
> -       GRF_UART2DGBB_SIN       = 2,
> +       GRF_UART2DBGB_SIN       = 2,
>         GRF_HDMII2C_SCL         = 3,
>         GRF_GPIO4C1_SEL_SHIFT   = 2,
>         GRF_GPIO4C1_SEL_MASK    = 3 << GRF_GPIO4C1_SEL_SHIFT,
> --
> 2.37.3
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
