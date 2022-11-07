Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EC60C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Nov 2022 00:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ua+vXvGpJJH1iAcVoA3n3wTPW06zVnpo1vKVtPOZnJk=; b=Su45SHb2Cs6K3X
	C/9T5wsQxnC5SerO62cd/vIWd4EUNVPYrTarcK69DaetekuCtfOg847DD87JQTKsRxBKE9AenJ6xZ
	s2AWy8cRy//YAc3VT7ISa1d1402NWiOxLCQBwehCcb1c0F9YBOJJ7fvLGvSWxjhpiSUmiCP9SZ7f4
	2eNboJR5Y97FyK25h6dNdC+LJie8aFEjHomFKEbUFVzsgbMO7cXTD0TsfIYtSpsWbM6TGHkzIL+xZ
	+xLqzqSGNUozNvdZLwbioRtc85FvFIU87cBD1VUqqBCM+Vm2pjq/mNfbhzJUkcfoGTPmumAKu5Aqn
	/SHBg7iZMXhDJVyVy9gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orqU8-00AkyN-DM; Mon, 07 Nov 2022 00:59:32 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orqTV-00Aka4-9J; Mon, 07 Nov 2022 00:58:57 +0000
Received: by mail-wr1-x42a.google.com with SMTP id bk15so14038286wrb.13;
        Sun, 06 Nov 2022 16:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3SUjrVNjYpQ4FGX+sVZmnlqoqrxVRTW7jwTovMJReUo=;
        b=lqbltCqrY+FRt+9AmsTb7o1R9vs/00guDt0qQbM8gWwdbdwavbxrUbxVvmjL1zkbNx
         xKUHAEMJcs+nrDC033nDYlsxCE5bkJ8xmWeFWsouQpiuRy+ZPIdEgj7Y3b70IlYOaAbb
         K4E7tnd68EJLj+RQGOKR+bsw/YRiFjzRFrpVxHq627eoIq9fHdTZcGvr+kk+eN0q6FvA
         NPDvvR9wkM4dS5WaRidyiEoDqCrMd/ZQK7o8ODVnQsK2bAjT05ytuNyKTYBO+Gh4d57C
         5nMDQK8Z/7D543qOrKlWfGBwy9cj5hhShQiyujPBHvfT+LjrtF4ds3W2gqkSbMsfdwst
         cD2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3SUjrVNjYpQ4FGX+sVZmnlqoqrxVRTW7jwTovMJReUo=;
        b=GeM4DsT1KX9urXb00gZNOvxNSzkE+MUoGnv2a1xoRJd2uBTTzZtOrxM/Bfm6Qs/C3Y
         0Y3vnXN9ApMaN4Mjtnhcw7FUC9rzaUb1rbsn5zh02j0z4tBP9+sP2SCZ+EvgCEWsJHDW
         qlGAb2UfM3F3l2WQ8PH/b1avEJSkdh+Zf0fELkiDemPNNa1NBdl78AD8ZSTOAgAI3MzU
         XSREDdTmQ9LrJPCuB6CFOSi9uDhAR0pgHAa7u1wxaXdw7j6DhFx53mhQVPKi8lBZrc20
         GgWbzdBMGDis80TTnIchDtvKdRpj55PF73aEagmkeBI5lT4/1Qmf2d8WE/Ta0dOqBmgs
         cuGg==
X-Gm-Message-State: ACrzQf1Ej5/wFNRCkk3e0epL+rhOzSeTjMt9/TJ+WhsIMbqcgGy1XUMQ
	8KqMObSqh6uyo8yY4517ZIjG5YIXb4ksryNTLZw=
X-Google-Smtp-Source: AMsMyM5oGZnKz4jdnVIz9fRd6FjjmcWKsJdz9cqrYMtzAtJH2bfQLsbI3jNtHgiCJHWVsISzHqMRM8QZuwvgVzNDOgE=
X-Received: by 2002:a5d:604c:0:b0:236:6deb:6d31 with SMTP id
 j12-20020a5d604c000000b002366deb6d31mr29321862wrt.282.1667782731107; Sun, 06
 Nov 2022 16:58:51 -0800 (PST)
MIME-Version: 1.0
References: <20221106161513.4140-1-wens@kernel.org>
In-Reply-To: <20221106161513.4140-1-wens@kernel.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 6 Nov 2022 19:58:37 -0500
Message-ID: <CAMdYzYqP+0B5Q_7bfNREx7MvxZxawMGD+jRTfSSb8X6N8LCL=w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix Pine64 Quartz4-B PMIC interrupt
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221106_165853_386687_D4D8EB02 
X-CRM114-Status: GOOD (  18.23  )
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

On Sun, Nov 6, 2022 at 11:15 AM Chen-Yu Tsai <wens@kernel.org> wrote:
>
> From: Chen-Yu Tsai <wens@csie.org>
>
> Ths PMIC's interrupt line is tied to GPIO0_A3. This is described
> correctly for the pinmux setting, but incorrectly for the interrupt.
>
> Correct the interrupt setting so that interrupts from the PMIC get
> delivered.
>
> Fixes: dcc8c66bef79 ("arm64: dts: rockchip: add Pine64 Quartz64-B device tree")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Good catch, thanks!
Reviewed-by: Peter Geis <pgwipeout@gmail.com>

> ---
>  arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> index 77b179cd20e7..b276eb0810c7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> @@ -246,7 +246,7 @@ rk809: pmic@20 {
>                 compatible = "rockchip,rk809";
>                 reg = <0x20>;
>                 interrupt-parent = <&gpio0>;
> -               interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>;
> +               interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
>                 assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
>                 assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
>                 clock-names = "mclk";
> --
> 2.34.1
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
