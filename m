Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79289C43458
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 17:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f2w/X2iudnOTa9luqX3ySiSZCvrpB3AQExa6zKVLtAk=; b=xcC+/fToUv0GA7
	0UZK0Xy17tM99SDPKUP8MKI6PJiTy2VlHbVs50Ic0N87RJMVd5Bc4bQToPXhc0xprC1qMV4ot/+EZ
	/yfVGGSxXxqSDU6hdN+hNiXMEBkKqEShJfF3EATBAywBcloZAV+J1nS2PwmLCzXzg2J2+GKcv/Ow2
	WVEZLuVxp/Ktf1CD1P851tlGXpfmAnY/6OVklHTKMhgMgJ/s8euX8EawGSnow7PPp39vHx8lcSLKr
	JdwuBbDBK3FwVcGjcfFk5NlIZSwDO31JZDCZQEW3ZGJG4nH6UNURWSInMRXvN72Gecvv4BzKrpY/U
	5tuGKKRN/m/nKglMe+tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfhT0-00000007b32-4Aos;
	Fri, 03 Jul 2026 17:14:18 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfhSy-00000007b1m-09OB
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jul 2026 17:14:17 +0000
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-37df72c9984so679664a91.3
        for <linux-rockchip@lists.infradead.org>; Fri, 03 Jul 2026 10:14:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783098854; cv=none;
        d=google.com; s=arc-20260327;
        b=VmWhXoJFM3AZuuwIYE/kWZNS12BWZZrQV1HH637cQH4wA+BmcxHK5SoedlWXX5AGp3
         J4Q7UxHG4M1h2u1lzpPwuFpWL9my0KEzur60W3ZdnpBgGj2vtqFlHO5XIni7FFV69WrO
         fJuZJIO/wJjLRkNbhvlA+Tm+d1gkC8L+1+F3nujI2vU/xTkojVqyYb9uP6nyGHiXDM/N
         EZQqadFZ5mkIT8KrAENGZy76jhAgUtFoO9oymOwwsO2cQcVti5WJ7oZFiqUJ+lmRUtAQ
         MersnWo/IsySk3g1qrvhzXx+ZomGr+fBlToD86mDFxdSy0oXcoLqjIRIO1EMzc6Rl6P/
         2l8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uaErd3idfCYZ9nBzpwZ4jTIj75xKFGwhc0tNJS1QEx4=;
        fh=d1Bh1GRhugVJBdk6mJRDwgPm1q8HTjVwSB8Zs8Ho8GE=;
        b=SWsNdaKVC6B4zjQxGwnjQcDEC27ROrLnP1KB97nXHTd+wdsUVfaAdX5fOC2a5eR5O1
         rW/5kevt0J98bmlB4S/ucSfj3r05GPNiAb97LS/llikCzqzJKNkt/a68KeEDHBB1MTdp
         DsfGMuqAc5Zyi1j02ijHbgrrP7gCXHUcYp8tGUDW7JPtvxpLHMYOJHsC9YMXFfh3C6U5
         s229ngVZc9m+e/7HHX7BQiAkkTcHKNcUvZAcqyHvjXORr0b+tWren9K008jJBpXDkm7z
         DQFsUjtZRtw3gxC6054M62s3rXWLyrWRQnB+QiZMtP5PG32wHf70QGcr4Ii0aaUYRumF
         xyPg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783098854; x=1783703654; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uaErd3idfCYZ9nBzpwZ4jTIj75xKFGwhc0tNJS1QEx4=;
        b=c31b2ppHaSw3eW7xdLUnmsuC86RQdiNyCcB7pdnx1LK80TeKR8avuNw8k7B0ictUwP
         lioKQ3umgpQxnpgMqN06FsKtN1kYcS2DxsyUK7wy6vj+SgLAfMecljf4DCj1YbL7RhnD
         T5xs80QYQbL6l15iEgTt1NYhthLRQMRQsKz0pjsxxkaFFGSOGgOWXk7gh9MvK41rW9Pg
         jkEozFNSD161GuIjTZjGgFZYLKFYJiAaMm3sokr7333ZVJS7dvtEfBQFlwCiHhnv8y/l
         5xpxxqRHr/vdajiv+M6Kz4X26cXJn24zMNvbe3alarqDYE7p+uE6dBCO7VFDfjG/xdDI
         2oBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783098854; x=1783703654;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uaErd3idfCYZ9nBzpwZ4jTIj75xKFGwhc0tNJS1QEx4=;
        b=gB6ZYKabYA7J3tP0kv0C3A3cPDIYMvrnHABahpFbWyasbKvEmUZ1y6VnygtONYbS2W
         ODeBizBJOwQ3ywB50IuyJXjSOGQeOr2vGqfjR0i+jKIa3jfeG11Ji9LvLvJDTgKlh/Tj
         K37PFIBZQy91P/sgUp+V7uGGWxbzjEtwYgpkAsfR+GQoICuqZJyiFyDh60D0TtqxUDUA
         ht6RRIV8AMaXNIKwWugEw/QHaxnrf8V0ciAq/DDrJqZ2XjE4XOhNNIsbmEU81XOCYH4f
         uR8Za5xDO0gc3wectpEAmggCVkGUuwgg6AVV/jvZ4/uUt+4jeOs5S/2jKunJZaBm1NW7
         UYvQ==
X-Forwarded-Encrypted: i=1; AHgh+RrdD/1nqzhp0gfHHZykc9xHzPO8tZP3L8oHhS+DY778a4hFdo9ut1pnkzQ12hLmGNIqZoy+4UeSa7Ycv4OTag==@lists.infradead.org
X-Gm-Message-State: AOJu0YyRBT9NAJfRSi0UPSJ/XzU9k5PwNMg5MWfvGfsx3koABtJS7KhQ
	RY5iVoYMWNgOH3W8EJ5jmpvXgqpTuni0rDG4Y9c/NQ620LUl0DPGuP0jk/KtiznIJZU3WPdI6U/
	JyhTLaWUWeuUOB/5nAvdWqxwtvKzm6bU=
X-Gm-Gg: AfdE7cmVjnehK+eUB5ajyjqZzg9ck0kGV023uN0LjmXnrGJMX7jBQSbVSEaa1C7BnJy
	EWG45guATk+cmn2l59sQnLGj99109SeXUL8hk4wwwN0TFYntHi9xQceEZXvfuDLNL6k17V3rvs3
	9SZCthWcvmH6X7NzUWuLme1ODBxJuw4uLHb5hrJRjZDpvrxJ6lp0T5GODmEa5BG3bAEcRyfkKWi
	3vq8ajVaghAx4b5q0E+cRujZpnlg4l8R1oNwDzzVF/LplJFbXCh8P8Ss5kGJa+khmgPhsDmaiiZ
	RN/nFBuyPFVzAiLTisIsK/PLd7YiuxH2XVjlsRQRxrA2aGYLpads
X-Received: by 2002:a17:90b:2fcc:b0:37d:f72c:9636 with SMTP id
 98e67ed59e1d1-38280e981b7mr406598a91.11.1783098854403; Fri, 03 Jul 2026
 10:14:14 -0700 (PDT)
MIME-Version: 1.0
References: <20260703-nanopi-m6-v1-0-8344a1559519@gmail.com>
 <20260703-nanopi-m6-v1-12-8344a1559519@gmail.com> <DJOWK4QYYMI1.F1TOWMR4BM22@cknow-tech.com>
In-Reply-To: <DJOWK4QYYMI1.F1TOWMR4BM22@cknow-tech.com>
From: Joachim Eastwood <joachim.eastwood@gmail.com>
Date: Fri, 3 Jul 2026 19:14:03 +0200
X-Gm-Features: AVVi8CfY39OU8Il_NnWqBVTMmpRn6fLaUzCEyD6qk3aZNRwtsleLFP9BaGWo9Ss
Message-ID: <CAPSPb=ustOuAkeWUL8x6aigO=5wkQUupZh2g5g0Pe=qTa3MeEA@mail.gmail.com>
Subject: Re: [PATCH 12/12] arm64: dts: rockchip: add support for NanoPi M6 board
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_101416_081504_592807CC 
X-CRM114-Status: GOOD (  19.60  )
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

Hi Diederik

On Fri, 3 Jul 2026 at 13:34, Diederik de Haas <diederik@cknow-tech.com> wrote:
>
> Hi,
>
> On Fri Jul 3, 2026 at 12:07 AM CEST, Joachim Eastwood via B4 Relay wrote:
> > From: Joachim Eastwood <joachim.eastwood@gmail.com>
> >
> > The NanoPi M6 board shares most of the features of the R6 boards.
> >
> > Main differences:
> > * M.2 M-key slot with PCIe (Also present on R6C)
> > * M.2 E-key slot with PCIe and USB (from hub)
> > * 1 additional USB 2.0 port from an on-board USB hub
> > * RT5616 audio CODEC
> >
> > Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile              |   1 +
> >  arch/arm64/boot/dts/rockchip/rk3588s-nanopi-m6.dts | 200 +++++++++++++++++++++
> >  2 files changed, 201 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > index 761d82b4f4f2..2867830eddf8 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -218,6 +218,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-evb1-v10.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-gameforce-ace.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-indiedroid-nova.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-khadas-edge2.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-m6.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6s.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6c.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-odroid-m2.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-m6.dts b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-m6.dts
> > new file mode 100644
> > index 000000000000..64448bf55cf7
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-m6.dts
> > @@ -0,0 +1,200 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include "rk3588s-nanopi.dtsi"
> > +
> > +/ {
> > +     model = "FriendlyElec NanoPi M6";
> > +     compatible = "friendlyarm,nanopi-m6", "rockchip,rk3588s";
> > +
> > +     sound {
> > +             compatible = "simple-audio-card";
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&hp_det>;
> > +
> > +             simple-audio-card,name = "realtek,rt5616-codec";
> > +             simple-audio-card,format = "i2s";
> > +             simple-audio-card,mclk-fs = <256>;
> > +
> > +             simple-audio-card,hp-det-gpios = <&gpio1 RK_PC4 GPIO_ACTIVE_LOW>;
> > +
> > +             simple-audio-card,widgets =
> > +                     "Headphone", "Headphones",
> > +                     "Microphone", "Microphone Jack";
> > +             simple-audio-card,routing =
> > +                     "Headphones", "HPOL",
> > +                     "Headphones", "HPOR",
> > +                     "MIC1", "Microphone Jack",
> > +                     "Microphone Jack", "micbias1";
> > +
> > +             simple-audio-card,cpu {
> > +                     sound-dai = <&i2s0_8ch>;
> > +             };
> > +
> > +             simple-audio-card,codec {
> > +                     sound-dai = <&rt5616>;
> > +             };
> > +     };
> > +
>
> [...]
>
> > +&i2c7 {
> > +     clock-frequency = <200000>;
> > +     status = "okay";
> > +
> > +     rt5616: codec@1b {
> > +             compatible = "realtek,rt5616";
> > +             reg = <0x1b>;
> > +             clocks = <&cru I2S0_8CH_MCLKOUT>;
> > +             clock-names = "mclk";
> > +             #sound-dai-cells = <0>;
> > +             assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
>
> s/I2S0_8CH_MCLKOUT/I2S0_8CH_MCLKOUT_TO_IO/ ?
>
> See these links for details:
> https://lore.kernel.org/linux-rockchip/DJGDSS875DDO.22TYPVYK5X8KZ@cknow-tech.com/
> https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=v7.2-clk/fixes&id=946352b2f88fd2378f0341312e47dff1e8dc2fac

Thanks for the feedback and pointers.
I will use I2S0_8CH_MCLKOUT_TO_IO for the next version.

Grepping through the other boards there doesn't seem to any other users
of I2S0_8CH_MCLKOUT_TO_IO right now. But I assume the other boards
will be converted over later(?)


best regards,
Joachim Eastwood

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
