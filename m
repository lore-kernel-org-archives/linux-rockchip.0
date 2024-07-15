Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43130C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jul 2024 17:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XP1qfcAWMhgvUc0sUoFuLk33POLyx27v9QB1FJz29Q=; b=YN2jUhwlXPGRf6
	8nGIvbpxrXTBHtnQiH3O8eLb3IK/pUnum2+YHhHRlVpei1yK6HNjSGymJXuJpssIkJ0U/X0Gyg2HE
	8P5baJRNITl7Jh/GmB3MXX3/w9R7Hm+bR4WyiXf/6VB7Ie4FsTyeoRx7s1ToM0KNBBXm/FDu/Cn4+
	YHXca3S+CDpU0yWK/vJVwXia0DMa2I3e/ik1Hq6qZGVNi+1b2tb23bFn5A2fFPCwPaaAZIF1kNrBP
	3Rs5GFO6BwM33M8J93nafGJGP9fteEO/LXglt8bqdm0YS+SyildTHsOwK8LnX1SqIBLUTyGS+LOrD
	WBCcACtd7p7SoIH2hhpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTP3R-00000007nqx-2O2S;
	Mon, 15 Jul 2024 17:00:01 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTP37-00000007npH-0dUU;
	Mon, 15 Jul 2024 16:59:43 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-70448cae1e0so2590445a34.3;
        Mon, 15 Jul 2024 09:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721062779; x=1721667579; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zZ1eQVs2cFDEbbk5dWtv043WRT+0RHRN9rpHssq8thk=;
        b=VYrgUGMf92BVex0okD/msWYU6aFtDllyijzy043VJr4kWynaX7dPS9iSZ9ONKLxMYK
         pw3oArY99Wqs+9Lnt1HHjeYZ88SsUR1aODdRxmLFJJXEAieGKJvhPRbsDtEGOXPWdQ/M
         4ksO9w9zEz6W8bbOWXvIoEkO0OZIf/er0rG+7g3ZPLm34FkKjHJok4I0D+wO4I1PumeP
         NbXZi3i5MJNaPu3WhLhMwN/tPDxQf0MiLPxXcNqYFCF43CmrYWqQIt9FyBXtNw/p6ZEm
         HLbJ0wWqMLc1PHVVJpxnz9JxvjZpzlQsjz7mncdnOuXL/5LWcXV94K0sG/zCSK7MILsT
         SkpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721062779; x=1721667579;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zZ1eQVs2cFDEbbk5dWtv043WRT+0RHRN9rpHssq8thk=;
        b=YX1wa56C8ZEwVJfrr4mvolgyGe4+uo12Xt+X7iLzeUtxyJHaso8PZsKtv2i57xoWFH
         Wkli/FiX+eXsuAstvL/wlLpyZdE3+f868BataDG5ju0vKpv0nhmwqHuxT4SR0uXQUdft
         gYFwf86ySY6gyNMvymXm+mRqYsmnB7xiblKBphym5wlTB2shAXiGfesNRchx2/Ok/fZU
         2niFfBTL24cHi7/775WSYVZXhMQuz4J5Mgq1v6YRYGzX+Ow+ntlNEQyYJRczx6WhXCVw
         973yuoNXsQ0OeZSiOTREiu+QZg8cRthPBN/q08eMZNWOTsKbJd94ZzNSGhAnOnzOhZA+
         g51Q==
X-Forwarded-Encrypted: i=1; AJvYcCWl3XFXREsYw4DkEKSTLl8PA3/x+ZYXWMqoyZI1yPMEXhdHzQmd4I6qYWLma52Cyc9WflDnnQGkvzasXHzn+/GOmi8teTv/tdYvXLR76XYmcUvG
X-Gm-Message-State: AOJu0YxYqAPHWQCw/0ONpW/cAbXMkL1JUOTrxwImpmMhaZ7Ixi3mirh8
	1nZaqMmmz+tTchv46QmV3P/BFzdCTdv1P0nvDYAf6WykUaS6sGqWcOKfMQ==
X-Google-Smtp-Source: AGHT+IGAVy5EmVWlE+Y8hqa8mBUkhhn3EYXp0rqkvomN4GM0xETF0JKHNKgWy9WWtuhg14chMgbAEg==
X-Received: by 2002:a05:6870:3287:b0:25e:1c7c:3de9 with SMTP id 586e51a60fabf-25eae7efbdcmr15835143fac.15.1721062779603;
        Mon, 15 Jul 2024 09:59:39 -0700 (PDT)
Received: from neuromancer. ([2600:1700:fb0:1bcf:f9cd:d686:32d0:6fe4])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-260752a6261sm1040435fac.43.2024.07.15.09.59.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 09:59:39 -0700 (PDT)
Message-ID: <6695557b.050a0220.89b9a.449d@mx.google.com>
X-Google-Original-Message-ID: <ZpVVeoz2auATwG4X@neuromancer.>
Date: Mon, 15 Jul 2024 11:59:38 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Daniel Martin <dmanlfc@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, heiko@sntech.de
Subject: Re: Anbernic RGXX3 devices with later mainline kernels don't boot
References: <CAOyTmd0Hk5jrvY4DwGO6jYkWWZCmRyF9WNxV=r867Ut-mh2G=g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOyTmd0Hk5jrvY4DwGO6jYkWWZCmRyF9WNxV=r867Ut-mh2G=g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_095941_215252_40723AB0 
X-CRM114-Status: GOOD (  19.85  )
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

On Sat, Jul 13, 2024 at 07:33:17PM +1000, Daniel Martin wrote:
> Hi,
> 
> I'm just putting this out there to see if this is known or has been
> tested recently.
> I have 3 test Anbernic devices based on the RK3566 and all are failing
> to start if I use the mainline U-Boot (2024.07) & Kernel (6.9.8).
> 
> Devices tested: RG353P, RG503 & RG353V
> 
> Issues seen:
> 
> Mainline kernel & u-boot = no start or boots to embedded Android
> Previous kernel (6.4.16) & mainline u-boot = as above
> Mainline kernel (6.6 or 6.9) & supplied u-boot = failing to start kernel.
> 
> Working:
> 
> Previous mainline kernel 6.4.x & previously supplied u-boot.
> 
> Note: The mainline u-boot is written to the 32k offset.
>           rk3566_ddr_1056MHz_v1.21.bin & rk3568_bl31_v1.44.elf used for u-boot.
> 
> Sorry I don't have any UART output as I don't have an appropriate
> screw head to get into these devices and try to wire one up.
> 
> Has testing been done recently on these devices as per above?
> 
> Kind Regards,
> 
> Daniel

What U-Boot commit are you using? See if this patch has been applied:

https://source.denx.de/u-boot/u-boot/-/commit/25e4aafd20589f8f8166a6d0dc565c39738b4ec1

I kind of broke it when I did some work trying to improve the
reliability of booting on emmc devices.

Thank you,
Chris

> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
