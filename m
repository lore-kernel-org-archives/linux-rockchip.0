Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85F9BC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Nov 2022 12:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8fabkRSVjnh1syPyF9dJ7FS+MhEgrMg/SSZkJ26OPHM=; b=cAFbVrkInYcE2N
	QH5nrr+NwPe+knHXNitZkAM0sjUopCcRPcYuQGrk8DZtil7tcUkLeJy2N224/plXnJKRCt1ugl1fX
	9FUvFmuPhl62h+9XOwjz7/GmuR8xxo2ID4SVKg2kxxLTBTZjkqb5/t9H3773EqfySToH2KJ3LmNHD
	Ecrbsr+eXPW2EaqefpzRAWLv7/og43IWzh/9Md0LcWYRgxKm9oy79Uq2UKw2aKVczYUE5G5lthKVU
	wJYQ5cJ+uJnz3X8pd88Q1QIO9Mn24ZtF+aP/ihDZn/jp1tvUUN+wB5lOC3HnPghEJWtCI97VBg8Bi
	kO0C2z40ddoRCRGm/aKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otTaK-00Fiep-7g; Fri, 11 Nov 2022 12:56:40 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otTa9-00FibN-V8; Fri, 11 Nov 2022 12:56:31 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5so2909587wmo.1;
        Fri, 11 Nov 2022 04:56:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vyUckvB1E1DdFJmN9a9qviosI8tjiRPV3QG4ylvcz1U=;
        b=mw9Akph2xNeOdpTjd2rDtMRdjoLLP/nzxfzfat2AfIG4tPDlnmgtT/2qRvIN0p0WzE
         vrW9O3a4DowHuZ5nEIbOqlCk/i50f7hWkaZbfbUqZugYORqa4CtS11A9EU1ONjFoxh67
         p/b9vEsDFLDWbZQeAmCoRmv8fGKRgNSJ/LL65Y8nDgba+ou9k4p2XJ8N9LHfXzFnNBX0
         72rZlYWX69pAKa46gjlrJup42EqGHgFbEY4KxFEVuPnJK1xIjp0lmTgiflhfGMrPY/YF
         7XuOTPvqTDYms83SBy3weDarjJC6bPkqVo98xC+v3WsHTFZ3MAqrXj6zNdf02NwnLthy
         y6wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vyUckvB1E1DdFJmN9a9qviosI8tjiRPV3QG4ylvcz1U=;
        b=A4lnpB9g5TU9LoADP2AX3Sq7rhx1VH77r/9aLD0xebIF6ZinKqB6nIaMfIal7K6owY
         1HnDGG7ODGPLvcrofIcleMTcPJ3mnauaUKlCsmSML05X/rgWnMdFWR6MXQjtzDQeQwKS
         A81iht3gq+4THOrPUAXuaUnmsSYB7rUui3KQCny3dVEQEgyG5PTRLEEgwHOr1hMvZhMw
         fGWH0XyPTX/Qeus4iaNwwyTjPiWDXftKiWNCkP8X1pw65b80/InJpLAbvx1Ru7wUBTNl
         zcQDvWR4fVCKugAYFBS4/jgdDQMmDk81pVnaM5iQttxjO6eRomJ9BrkOYhUYphNGphGD
         ZIhQ==
X-Gm-Message-State: ANoB5pmXEBiAJRxMdM8b0n4G22ozCkWqF2mLbNZXQ/L+HD4BcAeF//FB
	m8DUxHIu8rHICbQkLiOiWdf+4Yr30EeJ//qFTfKwHQNgiKY=
X-Google-Smtp-Source: AA0mqf5PJPJws3SLJ/BrDAqA7EJGHCdFeg4hTpN9hat+xfw9gfeRro1AljHI0t3KH3u0vSgtu5UqW8eKHH5dQIN/Hjk=
X-Received: by 2002:a05:600c:3496:b0:3cf:cfea:904c with SMTP id
 a22-20020a05600c349600b003cfcfea904cmr1189758wmq.33.1668171385285; Fri, 11
 Nov 2022 04:56:25 -0800 (PST)
MIME-Version: 1.0
References: <20221111094238.1640-1-linux.amoon@gmail.com>
In-Reply-To: <20221111094238.1640-1-linux.amoon@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 11 Nov 2022 07:56:13 -0500
Message-ID: <CAMdYzYp2wSrkOEh-v6Wye32TA9imfNF4CrUdKL7q8pOCQU307g@mail.gmail.com>
Subject: Re: [linux-next-v1 1/3] arm64: dts: rockchip: Fix gmac phy mode to
 rgmii on Rock 3A sbc
To: Anand Moon <linux.amoon@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Michael Riesch <michael.riesch@wolfvision.net>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_045630_028195_0C5C6A3E 
X-CRM114-Status: GOOD (  17.91  )
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

On Fri, Nov 11, 2022 at 4:43 AM Anand Moon <linux.amoon@gmail.com> wrote:
>
> On rk356x ethernet phy support reduced media independent interface (RMII)
> and reduced gigabit media independent interface (RGMII).
> So set the phy mode to rgmii.

The RTL8211 supports rgmii-id just fine, you only need to go to rgmii
on these boards if you need to tune the delays manually.

>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index ea74ba32fbbd..72e410e3aca8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -253,7 +253,7 @@ &gmac1 {
>         assigned-clock-rates = <0>, <125000000>;
>         clock_in_out = "output";
>         phy-handle = <&rgmii_phy1>;
> -       phy-mode = "rgmii-id";
> +       phy-mode = "rgmii";

You should be setting the delay tuning in this patch as well.

>         pinctrl-names = "default";
>         pinctrl-0 = <&gmac1m1_miim
>                      &gmac1m1_tx_bus2
> --
> 2.38.1
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
