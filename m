Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AED51C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 May 2022 09:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b4tmYO7C3D70mK1JUffLkZMgI0w9NTrQxzHUD1wOUl0=; b=NRd9bXXkVmNiOq
	CkN9Ag6OV94Lw5xCQkWC0E4vG7+TBgMSJAAJSq4A3qAOnO65YnFcdliA0JK0tSZKu5GWPnigBm8rp
	WPkfSkymMhKUldesm6V3wvzor7dWd0fZxLjlWxPvaXIL3CUCAa0NrR08ZWkyRAZ8nOV18o0KrOyiH
	E9ACnTgLNPP0bDsp5uucouvRqju0pv9nZJobCSSYK0DG8niT0D+gjopDuQoLD8fPyLsXj2vFHAuOS
	Y3kOar8RlhTuyiO2JucYgPOPXG89ePvMmWKbbomdvac4CYlkIzWIkUJ6dCNPQ5dmlvYayRztyMp8O
	zuDFAuEwWYkv/lhAcHKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt433-002iBB-RL; Mon, 23 May 2022 09:08:21 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt3FE-002MYF-Vt
 for linux-rockchip@lists.infradead.org; Mon, 23 May 2022 08:16:57 +0000
Received: by mail-pf1-x42d.google.com with SMTP id z25so319073pfr.1
 for <linux-rockchip@lists.infradead.org>; Mon, 23 May 2022 01:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CbX182+PaKOS3rIhJvYoEDAxaskTGV2vPeWYBDL+1ZE=;
 b=VRzZPQ5+kiXiUBhYSi/ckGBBLwSCl7/KHNoeQHkiKVQhJDyOe6EXcnV6SnkuB+d5KD
 M9Pktzdujfo6HxMMEzR8Ew5K90a4cCfIGt1p7StJdxVtf4LBgJ72H9vIg1SoaED67Ywp
 pnwTMnK2uuCE/2qdlMpY93XH23/yc204UUheY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CbX182+PaKOS3rIhJvYoEDAxaskTGV2vPeWYBDL+1ZE=;
 b=2xRWIyVgjJZIOkies3Oeer5ZPp6ohE3Rlh+hdk5tWsFiplv9ZKPtADIsEPsvClxwjp
 gIWu1jVZRMsl45ieiV+yOoVbT+fjnFXBVJMeK7GRgTJcunX2O075bDpebNB7qUqmQ4qA
 n2kb32kdRltMANQuIcKeCtuChogoB5rQ8konTgYt8ROj99yVPn6q0M1iZ+aa9PYdfxmp
 v2LFvq8Tf57GhBV/i/aTNGzMlnd1x5NEZTuQeFBsvQDXnQ6dxN5HkVJdvZ4tfbmbuEki
 SWnEV2z3cYunEoqeCeRoQDZbWjJVGF5MoVNzAOcbza+1NuvhnN8luP0FsjO5S06dLaRR
 OGtg==
X-Gm-Message-State: AOAM532Lb9+0WuKivtww85UQ5TjtA5+SmK5l5hjZS3aGDgtyrBhR7coD
 AhqfP510Tm0VdRe69OrmrjShYYCUh+7rgQzJfEwD7A==
X-Google-Smtp-Source: ABdhPJwilgWdd5JOmzHW3vHjkiIO7ussnrOgCJHTzOvtitXYdEIkzXfCANq8cU/hVXlu4lWW2lhCe+JaTKbnRHlY0ec=
X-Received: by 2002:a05:6a00:1897:b0:518:8bc7:9a82 with SMTP id
 x23-20020a056a00189700b005188bc79a82mr8698566pfh.26.1653293807216; Mon, 23
 May 2022 01:16:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220519075117.1003520-1-tommaso.merciai@amarulasolutions.com>
 <20220519075117.1003520-5-tommaso.merciai@amarulasolutions.com>
In-Reply-To: <20220519075117.1003520-5-tommaso.merciai@amarulasolutions.com>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Mon, 23 May 2022 10:16:36 +0200
Message-ID: <CAOf5uw=Wf0jM_rpY=eLs+phnwEH=5BxZdD-XoHTPdd9SFtGUsQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: px30: use rk gpio naming
 convention into reset-gpios
To: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
Cc: linuxfancy@googlegroups.com, linux-amarula@amarulasolutions.com, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shunqian Zheng <zhengsq@rock-chips.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_011653_131118_DB647336 
X-CRM114-Status: GOOD (  14.34  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi

On Thu, May 19, 2022 at 9:51 AM Tommaso Merciai
<tommaso.merciai@amarulasolutions.com> wrote:
>
> Use rk gpio naming convention into reset-gpios of ov5695 camera
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
> Tested-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
> ---
>  arch/arm64/boot/dts/rockchip/px30-evb.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
> index 0d05a1b098bc..07008d84434c 100644
> --- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
> @@ -450,8 +450,8 @@ ov5695: ov5695@36 {
>                 dvdd-supply = <&vcc1v5_dvp>;
>                 dovdd-supply = <&vcc1v8_dvp>;
>                 pinctrl-names = "default";
> -               reset-gpios = <&gpio2 14 GPIO_ACTIVE_LOW>;
>                 pinctrl-0 = <&cif_clkout_m0 &mipi_pdn>;
> +               reset-gpios = <&gpio2 RK_PB6 GPIO_ACTIVE_LOW>;
>

Reviewed-by: Michael Trimarchi <michael@amarulasolutions.com>

>                 port {
>                         ucam_out: endpoint {
> --
> 2.25.1
>


-- 
Michael Nazzareno Trimarchi
Co-Founder & Chief Executive Officer
M. +39 347 913 2170
michael@amarulasolutions.com
__________________________________

Amarula Solutions BV
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
T. +31 (0)85 111 9172
info@amarulasolutions.com
www.amarulasolutions.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
