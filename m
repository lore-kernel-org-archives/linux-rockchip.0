Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4525FC3DA49
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 09:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OwGkTlysUXQ8UXAAM3WwVO37ohwmxENnH5mjNJHBixI=; b=VEWMflNj1R12Aq
	0YQcfbfOfI4AuSAyLI2051hdHdAe3Db29Hq1AdIxak/0aFN2zTsHa/DoQlbGX+QFYi+HvPk5SepVz
	f58jg9Zdn3D2RZC/iks8zGJznJa9OkgwLnart778zAxpDp+imVfckiRgyn4NbKA6mP52yJY42tU7s
	a9jZZSjnNyc00aweAx40tcH8Wfu+ejcocn0xzpFg5s+7BTgV9upNkPWZ9Wei8odElHjqtJtBlAgt9
	JT/0ImmjQCLyzTMfk1Z6t7Aep9JFOCD0Ol+XddDbqJVx2Cqrgv4WivfZ3wVOaXhSX0ZdzyVO5dcIl
	r4QVZfKlGpA4D6H1U1cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUNCT-0000000GWlm-0OIw;
	Thu, 18 Jul 2024 09:13:21 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUNC6-0000000GWjI-302c;
	Thu, 18 Jul 2024 09:13:00 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-e04289a2536so494041276.1;
        Thu, 18 Jul 2024 02:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721293976; x=1721898776; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iMPqoWnQRn0NsxijtKtKplmTPEw4kIz3l08JQAUD0WM=;
        b=m+bqpGhWlUXt/EqdXx9FAKhDR0eW+jHGUH1BY2RPI5o5x3kUedzb59Ix9Pftg1ILpx
         uk7+NXTwjQ+wBD28EPJubcY+nxjTenWSFucK+GCYlrrrJTJSAtBBGkxDF883uVoNRBzp
         h65dzm7zZRiavp/ow1RvpB0lL641M4LQIHpI4aQVHcI2WTBC8xk544vFsDXPbrG365Hh
         AjljYvIUqeaOGVPyvk1a/h5oK9cShtRTXCAmUEa9PDbk6vNeLadBJM60f2sNeSP5csXf
         JoULCDUuci4P0pPJjrT9RZWXq3OZnOoG7tMIdqdcTs8bSil7KnFW+c+m0Mvl6PWYRUox
         0cCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721293976; x=1721898776;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iMPqoWnQRn0NsxijtKtKplmTPEw4kIz3l08JQAUD0WM=;
        b=Na7aK8jWF2j8uZnLq5ubmEkV5cSbraauMvcn46QqGyFm9zy88V2LGFxcW6fTgrinl5
         Bp3BjanwiT3jPlAoYaG2IROtY/QelfhQ8xMSsxMF2l4mH4uRLrPUGf84hbL8tUMk0sGI
         RFLpYKG2WylPRUqQSmCSa09Qg5uHbzyvmjRBs9K2JYqHqbJyMMYm4o76YlG+N+UiH1la
         vNdt+kcnfiGRY7M5Tg3A+LG/zL7R0EZpKjBWdCOFe5kGrFmMVw9ZvUJDe5iw7hd8Ewjy
         v26B6PRy4WAsmcN9uyfwY7LjuA6WgKo3M9buV3IMWy+p/Bc19/QOjVG5QiHxDoonX6Df
         IP4A==
X-Forwarded-Encrypted: i=1; AJvYcCU2vF3hn2RM2qS7Z8bX0mz6ENGIeLg/WJ3xPNuGuVVxDkrr75wYArvHnFfjw0wzGrs0T8c+ZBdidKI4DwZiAuD71V7a8GaaEaJBAJWH62mafvA/
X-Gm-Message-State: AOJu0YzOYw6Zlq4TJnxEcibK37lIGfA2w3SNMEsj8uDHxkcNSZAYC2Rn
	6dWsK0jcHJtGUIxrwy/loencCpZRGpGHV7ArU51QhAlaOu6XIuqjzso2VLPVeMO4IVvMjJsKM0X
	bSvbFZeqRuCkr+DGF81OvdMrZoLw=
X-Google-Smtp-Source: AGHT+IEZqQr77X2WoDey2Zz6yKhDTCrY4TGsxkqSKtGiVyZ/ZpFLqjkrUnftovg2L12S057izzRlDFA1M3SjlNxBmoI=
X-Received: by 2002:a25:8449:0:b0:e02:d8f1:5fe with SMTP id
 3f1490d57ef6-e05ff2e3604mr1404103276.25.1721293976215; Thu, 18 Jul 2024
 02:12:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAOyTmd0Hk5jrvY4DwGO6jYkWWZCmRyF9WNxV=r867Ut-mh2G=g@mail.gmail.com>
 <6695557b.050a0220.89b9a.449d@mx.google.com> <CAOyTmd1PdwHJq+g+Xnu6N8CCqs_4oRKcfkg7FAjMGpjG83Lthg@mail.gmail.com>
In-Reply-To: <CAOyTmd1PdwHJq+g+Xnu6N8CCqs_4oRKcfkg7FAjMGpjG83Lthg@mail.gmail.com>
From: Daniel Martin <dmanlfc@gmail.com>
Date: Thu, 18 Jul 2024 19:12:45 +1000
Message-ID: <CAOyTmd38x23sn-ivcxjJC0UtnBW4n7adj2fZT2pVgzYf6jAJHg@mail.gmail.com>
Subject: Re: Anbernic RGXX3 devices with later mainline kernels don't boot
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	heiko@sntech.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_021258_775462_9704CD82 
X-CRM114-Status: GOOD (  27.57  )
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

Unfortunately this patch doesn't fix it.
I'm using u-boot 2024.07 as a base.

On Thu, 18 Jul 2024 at 18:35, Daniel Martin <dmanlfc@gmail.com> wrote:
>
> Thanks Chris, no this hasn't been applied.
> I will try it out & report back
>
> On Tue, 16 Jul 2024 at 02:59, Chris Morgan <macroalpha82@gmail.com> wrote:
> >
> > On Sat, Jul 13, 2024 at 07:33:17PM +1000, Daniel Martin wrote:
> > > Hi,
> > >
> > > I'm just putting this out there to see if this is known or has been
> > > tested recently.
> > > I have 3 test Anbernic devices based on the RK3566 and all are failing
> > > to start if I use the mainline U-Boot (2024.07) & Kernel (6.9.8).
> > >
> > > Devices tested: RG353P, RG503 & RG353V
> > >
> > > Issues seen:
> > >
> > > Mainline kernel & u-boot = no start or boots to embedded Android
> > > Previous kernel (6.4.16) & mainline u-boot = as above
> > > Mainline kernel (6.6 or 6.9) & supplied u-boot = failing to start kernel.
> > >
> > > Working:
> > >
> > > Previous mainline kernel 6.4.x & previously supplied u-boot.
> > >
> > > Note: The mainline u-boot is written to the 32k offset.
> > >           rk3566_ddr_1056MHz_v1.21.bin & rk3568_bl31_v1.44.elf used for u-boot.
> > >
> > > Sorry I don't have any UART output as I don't have an appropriate
> > > screw head to get into these devices and try to wire one up.
> > >
> > > Has testing been done recently on these devices as per above?
> > >
> > > Kind Regards,
> > >
> > > Daniel
> >
> > What U-Boot commit are you using? See if this patch has been applied:
> >
> > https://source.denx.de/u-boot/u-boot/-/commit/25e4aafd20589f8f8166a6d0dc565c39738b4ec1
> >
> > I kind of broke it when I did some work trying to improve the
> > reliability of booting on emmc devices.
> >
> > Thank you,
> > Chris
> >
> > >
> > > _______________________________________________
> > > Linux-rockchip mailing list
> > > Linux-rockchip@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-rockchip
>
>
>
> --
>
> Kind Regards,
>
> Daniel



-- 

Kind Regards,

Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
