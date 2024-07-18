Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B32E9C3DA49
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 08:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obMqWf/Fd30tEcyfNSR4h663aqBmnL9SJ/4ZJEtaDGE=; b=krtN1GubNFu6ii
	dxM3fLWuU9HJvgtELmBqlNBAhmsUSi/MN4Hg7a57uVWi5zwagEC+d1l4K58AhT+9SBFN6Idw5QBAD
	gKB8KULoete713KE4oDQizVf6ojaL/ijNksVvIwkyzAUoR4RX6tM3Zkjnekipx/20XG/lYhegHCXA
	icP3GFRUbclXroKYeqqNOFUnZ3oJl1lVfYFWIVGQZo5swD/IVq81a9IrmEJjPCW+DF0uFJz/r+H9N
	fprEdwoMI3Jdz6rqr35YARY/P+Sf2iX0BAASr/bkKHdhAepDa6S0AuUaFMHidO54IeddyMjhIZKEv
	iJWeM6QM/uzW6y787XVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUMcM-0000000GPQk-0c97;
	Thu, 18 Jul 2024 08:36:02 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUMc0-0000000GPJh-12kv;
	Thu, 18 Jul 2024 08:35:41 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-64b29539d86so4792957b3.2;
        Thu, 18 Jul 2024 01:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721291738; x=1721896538; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=20mmx+2OXnz4ZcDUVqAhAqcQ+L6vSfeD1boIk0RCsms=;
        b=ZGm4/WQl9oy2UdRt2q+bkvWSArM8yGjK4FdfW3eY44vcawaUZ8xTv6aLarARBrH3X5
         cl6aUkC14Nb08fKsrPbusaus5/xlYm9BNdkXoWSApTrKprds4qJyjuGpxOH6Jbmw5p2E
         NSrqHefRYJTFI/iSiQ6sIeEqvKR5qGd9PFlvtbmyNjSjsXCrWRuIaUy/g03HxGfKoEHU
         UA3yftHglvVt2LTZCxVQun8X6Mozg8z2YiZ5mAmGHISundeWnL2jksOPMQdsK1EKNVy/
         yGTcP6OamQaAVZhAnrbEN/wWx70kwmA7NHGd80Mz1sPtpM2HnDhj6fwAEr3OCQWwcUdi
         Cn0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721291738; x=1721896538;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=20mmx+2OXnz4ZcDUVqAhAqcQ+L6vSfeD1boIk0RCsms=;
        b=pwrCtcpU4BSHeH23L3B65X8G6+O/lnTv6lrg2w+WhvWX7XWsdeUXvTc5rKGUjBPqcY
         76tATxFpbwqDNP+7sk4VzlB+cUkOrgcS56X/EbVAkqcqEuKICUp53A+prp3cd+Nw0E7t
         PaHGWAeRRKlvFT0mgUvjLdEMmlcMEIGcXOflbwdihTPIdGg74B0pPTBTD7MT/bV4sfmM
         I5XtgQQHuAWJjSidx6uNcnGijHBa40NigRh2N88gCW7/Z+gJFaPxu2tNQdImG2ksXrxm
         ss+pTn6xWLip6mHoqgMGjqfeiilOvxEtfDs5cMOxvGsYC5iCPgB52N9YxgkTxP7CObm8
         7zug==
X-Forwarded-Encrypted: i=1; AJvYcCXJK0cABrvb/iR8tvto/O2mG6uQNrKo40QEYl26QlhJSlmin9Q/XepYruL/ZuXTOh2rmlU0mDwIYp5Sbh8v4Q2lsjmSARSCVnKMQQxzfoN4MNdI
X-Gm-Message-State: AOJu0YyUhMaf/VvhIdfun/TRuIS94wysC6Z1ziY70sJHtbBGoM+Zo/+F
	vryn5h204bh4y1O8LxC697lEEQcTRYn9gNM8nhGoNb81ewWAngDjTKyj/DM9vSI4QvG3zK1hjRA
	cCUmV8iBzaVTVKyAbv/po15pV5j0=
X-Google-Smtp-Source: AGHT+IG1EbNr8AHmB4TRrjKJdp5MUiKrE7mN7bAypU2xkJ/0DWnuMfdauvVCDEMU5kN2vBvE7kCz2uGd7vwEVLNn33I=
X-Received: by 2002:a05:6902:280a:b0:dfb:aee:1d3c with SMTP id
 3f1490d57ef6-e05fec0cafemr2128414276.46.1721291738519; Thu, 18 Jul 2024
 01:35:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAOyTmd0Hk5jrvY4DwGO6jYkWWZCmRyF9WNxV=r867Ut-mh2G=g@mail.gmail.com>
 <6695557b.050a0220.89b9a.449d@mx.google.com>
In-Reply-To: <6695557b.050a0220.89b9a.449d@mx.google.com>
From: Daniel Martin <dmanlfc@gmail.com>
Date: Thu, 18 Jul 2024 18:35:27 +1000
Message-ID: <CAOyTmd1PdwHJq+g+Xnu6N8CCqs_4oRKcfkg7FAjMGpjG83Lthg@mail.gmail.com>
Subject: Re: Anbernic RGXX3 devices with later mainline kernels don't boot
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	heiko@sntech.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_013540_309326_DDA8E93F 
X-CRM114-Status: GOOD (  24.40  )
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

Thanks Chris, no this hasn't been applied.
I will try it out & report back

On Tue, 16 Jul 2024 at 02:59, Chris Morgan <macroalpha82@gmail.com> wrote:
>
> On Sat, Jul 13, 2024 at 07:33:17PM +1000, Daniel Martin wrote:
> > Hi,
> >
> > I'm just putting this out there to see if this is known or has been
> > tested recently.
> > I have 3 test Anbernic devices based on the RK3566 and all are failing
> > to start if I use the mainline U-Boot (2024.07) & Kernel (6.9.8).
> >
> > Devices tested: RG353P, RG503 & RG353V
> >
> > Issues seen:
> >
> > Mainline kernel & u-boot = no start or boots to embedded Android
> > Previous kernel (6.4.16) & mainline u-boot = as above
> > Mainline kernel (6.6 or 6.9) & supplied u-boot = failing to start kernel.
> >
> > Working:
> >
> > Previous mainline kernel 6.4.x & previously supplied u-boot.
> >
> > Note: The mainline u-boot is written to the 32k offset.
> >           rk3566_ddr_1056MHz_v1.21.bin & rk3568_bl31_v1.44.elf used for u-boot.
> >
> > Sorry I don't have any UART output as I don't have an appropriate
> > screw head to get into these devices and try to wire one up.
> >
> > Has testing been done recently on these devices as per above?
> >
> > Kind Regards,
> >
> > Daniel
>
> What U-Boot commit are you using? See if this patch has been applied:
>
> https://source.denx.de/u-boot/u-boot/-/commit/25e4aafd20589f8f8166a6d0dc565c39738b4ec1
>
> I kind of broke it when I did some work trying to improve the
> reliability of booting on emmc devices.
>
> Thank you,
> Chris
>
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip



-- 

Kind Regards,

Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
