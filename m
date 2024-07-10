Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14C31C3DA41
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 16:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lpvjN/80D7Z5XpoNK+nDHCgbVvwhyv4NLpLuZQjHnGQ=; b=Rwx9LVIap5kVGY
	uD3IHqdZ4pR/99wBSW550j+XbybzRoUl7jtgaKsnFqejxGozi23kk4CFOGxlDbUqmZnC/u/w4rl7G
	57lOQtp5lSXlE8lKiT8CLymjaW9TC58H9MgGfwouhDxyR1RV9lVGL/HhowoA4Eo+mrVLNL5z7TDsT
	fM4AnT3bjs7uIYMbs7U1mgRrNOKuHBmWxJwVPK0MU5ClTnVt+RDm8sWP1NJImj3qb1x0WPxPbH9vT
	y97JSx9vMb9AepaMyS4zzg7qnFlet1oiGT+BdAqC/Sze55bvoETgIQ84tIKSmUK6TF5MaqUC7VFOD
	70CWUyEoo4UdCTfGymIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRaIn-0000000BBRi-41PH;
	Wed, 10 Jul 2024 16:36:21 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRaHW-0000000BBFC-3z9a;
	Wed, 10 Jul 2024 16:36:03 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-5c66de0c24bso2259596eaf.1;
        Wed, 10 Jul 2024 09:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720629301; x=1721234101; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9sOw1jVOlPobAJPu4gbAldy0PGuhCOSwT4XWJvQdr+M=;
        b=A9V0ml+pcMcl9mIqgqNeMFl3Ys78xLCfIqsPHufNypg6VXYamwFsPkC+L+HK4KjmGC
         n5iaXUWwOJVOtEqPcIcatzH3dVi273Uoqh1ltVn+5bjZjiyuvSC8YpYLAcGFFe1igZF6
         k7zeaNN9zxg0lKgTOmZbN/G4lsJT6Yzpkx837OiJlfH2U/5HAWXTZzFtyh82Rv6w9GgW
         du+TAGctJncWXVzsgAXx/KpboowEyFaPf39NOS1P0YPdqV33nCPM5HsFn8tKGoGmehoG
         xJql+70eQOVK+Tdc5xjClGmZNm7uuT/Z137sQUakcUh1xpWwiO2YpcqUGNRlhZOcwLmx
         j+dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720629301; x=1721234101;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9sOw1jVOlPobAJPu4gbAldy0PGuhCOSwT4XWJvQdr+M=;
        b=ZLK7MHC0oENrmRDUrYdQ2/TzqnnRzm684f2xouZ/5tA0MbFzfZztDfvXuBoTSp5RAp
         eELhr9XYPxCEEI7Xi1qu4Xy++WAGRC4PgO0BWjA0ndPNBv54Hph/Qb/BcwtzZ+FhKVFQ
         nk8HzMHUSKxtFZMK+XT/owNC4nXb1CEUcoKmlEE+rQ4JuqunoOU0bSpaGgmi4n6ezslr
         6liFLdG5Qdh0zVuCM+sHxc7nPsVRTlidSodS2u+F9UglrFyVLDMgkqcEQV9zADZCA3JZ
         T0+4gs1eP5soBp4nBA50FbJuU79iwrNQQ9YvDrpN/nmiV1KhUtMx8kpOtQQkDeBwntoM
         1njA==
X-Forwarded-Encrypted: i=1; AJvYcCUKEJt4DVvGKUtOoRM55ySm7wxhnHJoCF/aBJlUFiSkqNSZAda5+IlKvAydFzdea2TlQudAmSUFtR86Q/wBBa2CEpuwM1p9QGsQj6W1+Se1jZSz6VB9uS7DPK9bctoRDzRtKNeTLau60E2Exr9KmVTUMuSDrSYQ1rk=
X-Gm-Message-State: AOJu0YykcZXf6klng5h8L+r3Oh8qIXQgZHPN8a7YUSRaTPs/Qxm9HJui
	jGXjwLDCvUrdY8Y/Oa8fcj9tT7wfyi8YwXm5o0A6omUc8ELbwpozik9csy0kgcq4olNcDiF+ger
	d5Pl6BafV5i9vcSId9iUkosWSO8v0jQ==
X-Google-Smtp-Source: AGHT+IF1zYlVf2JrR0UfDR5LnB72Hd9SePyzSM9ncesabGOLw4uWD1oZizxNrLHziXyws/BSSl8GrVl4f4+HnbSyZ4c=
X-Received: by 2002:a4a:ac0c:0:b0:5c6:72fb:103e with SMTP id
 006d021491bc7-5c68e16fb36mr6096218eaf.7.1720629301347; Wed, 10 Jul 2024
 09:35:01 -0700 (PDT)
MIME-Version: 1.0
References: <20240710142001.7234-1-linux.amoon@gmail.com> <84dc40f4-1948-4eb7-b16e-8a79357c2622@kwiboo.se>
In-Reply-To: <84dc40f4-1948-4eb7-b16e-8a79357c2622@kwiboo.se>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 10 Jul 2024 22:04:44 +0530
Message-ID: <CANAwSgQr2J_MU1idf5xGt4Q=gSLxLHJSEJGwnnPxWLhRjrx=6Q@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4 node
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_093503_017049_092C41B1 
X-CRM114-Status: GOOD (  20.90  )
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

Hi Jonas,

On Wed, 10 Jul 2024 at 20:11, Jonas Karlman <jonas@kwiboo.se> wrote:
>
> Hi Anand,
>
> On 2024-07-10 16:19, Anand Moon wrote:
> > Add missing pinctrl settings for PCIe 3.0 x4 clock request and wake
> > signals. Rename node from 'pcie3' to 'pcie30x4' to align with schematic
> > nomenclature.
> >
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> >  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 20 +++++++++++++------
> >  1 file changed, 14 insertions(+), 6 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > index 2e7512676b7e..a9b55b7996cf 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > @@ -301,7 +301,7 @@ &pcie30phy {
> >
> >  &pcie3x4 {
> >       pinctrl-names = "default";
> > -     pinctrl-0 = <&pcie3_rst>;
> > +     pinctrl-0 = <&pcie30x4_perstn_m1 &pcie30x4_clkreqn_m1 &pcie30x4_waken_m1>;
> >       reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
> >       vpcie3v3-supply = <&vcc3v3_pcie30>;
> >       status = "okay";
> > @@ -340,14 +340,22 @@ pcie2_2_rst: pcie2-2-rst {
> >               };
> >       };
> >
> > -     pcie3 {
> > -             pcie3_rst: pcie3-rst {
> > -                     rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
> > -             };
> > -
> > +     pcie30x4 {
> >               pcie3_vcc3v3_en: pcie3-vcc3v3-en {
> >                       rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
> >               };
> > +
> > +             pcie30x4_clkreqn_m1: pcie30x4-clkreqn-m1 {
> > +                     rockchip,pins = <4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>;
> > +             };
> > +
> > +             pcie30x4_waken_m1: pcie30x4-waken-m1 {
> > +                     rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_down>;
> > +             };
>
> Should these not be routed to the clkreqn_m1 and waken_m1 function
> instead of gpio function?
>
> E.g. something like:
>
>                 pcie30x4m1_pins: pcie30x4m1-pins {
>                         rockchip,pins =
>                                 <4 RK_PB4 4 &pcfg_pull_none>,
>                                 <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>,
>                                 <4 RK_PB5 4 &pcfg_pull_none>;
>                 };
>
> There are other rk35xx boards where only the perstn pin is configured
> and could use a similar fix.
>

I understand this grouping for Gpio, but I am not very familiar with
this feature.

> Regards,
> Jonas
>
Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
