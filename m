Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A965CCA47F
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jul 2022 19:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SHc0HDqZr9YOaIOjoFvXbjyaW6C/VinXxrVjcHeW9TE=; b=PAEkLkdwDDJ+YF
	dNBtOO60+PLeHblngAaX1EB6bH7GAXufx9sJ9jQ3zcT2daSIn6Cn0QEHzdiLdc14eGWWtMtF+YK6F
	XqqchuRf8gM0HVcKE/kb340g4BRyGjQV/ATstLtl+MHK9lWRnlxoeCl+zczrcYIXlQOH6Gl/4tMe7
	w8Gff0WMqvLOm+4q/cyldoWsPERaCKVIlT3r3c06wBCBfGmsy0YV7E8mSFDRPS+bjgT3OTwWEbUzD
	KFrTGKqS8L+jLOTxr5AuS6Ai2THZ+sBDA3aJZ7yb98gW+UFqK7Ilbdm/J8Bb5Ar8A47AYfXQMfMBV
	uD+gjEQ7NaNfZ8pSZcpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9XNY-00HaNg-7y; Thu, 07 Jul 2022 19:41:36 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9XNM-00HaKU-RS; Thu, 07 Jul 2022 19:41:26 +0000
Received: by mail-oi1-x235.google.com with SMTP id s188so24364756oib.6;
        Thu, 07 Jul 2022 12:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Wz86QKRHnj/MzzGjPiA/OihJZ8/+5T6Oq/nltkUkjeQ=;
        b=EBzKxQoFNquptYjnPmsNGzg6ttCIDNdfnEylByDZWOM3k8m/qMfwJvtkKm/foB12lU
         EaoYJVyT9Q/OMHE7/BwDvHEtQuhksafloPvdUEBSUmpN1lxUYY4epo2IFcmMjbfy/Uv+
         ud3iog1hudI9+aeiZK5e5HHDeQ3J9NEdgx1oZi/YZH5XVG4u5xnnMMzOsCpfCfdkzl8L
         Qp1ELBzLZ5aflJp6X3bB1b62J152xJ1cHxd2Ah1cP0eYDBwX6ZPU49c0L15qKrqpP9Id
         dmVcnHls/Q8jbMQdNfBRKUCmRq4d5qNrPWcLWzeLpv3izmhfO/fUyn0jS7Tr8ver6Ohb
         8Frw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Wz86QKRHnj/MzzGjPiA/OihJZ8/+5T6Oq/nltkUkjeQ=;
        b=U/SULl1McO+dpuNjSbh6h5ueq3YElvG1BvAXW7n0B2F5WMzlyLM9vlDIuKQ3uPMO11
         clSZtIN7h2MJNsUk0sHQh/i7B3iyV5JctVpKnzEQDn6ljjOlru7XWLmJUo6VpK1pbvSi
         MqW1m/cwXCrHeMoSCeJ0qHDGW9y9fTQO4yXI44BLKheWeSzWz5OrQC7npzu7LgSqA1Cc
         nqQS+fAD2f+AezdbhHnaq13Jq/w0cZD0asyWcCNkOvGBbkz96VaYKGk+xbX5c2x5ekL8
         BpZQaGjCQSOLn6evjgS6gNLuwp7a+0zMBL9F4YXOILgY6me4euqy/WoDqboQbXxzaKkC
         9CTg==
X-Gm-Message-State: AJIora/voOwWBrbCm7rJnCK+a27VXwSsHTpswyWqOXEvsfC+b1uarHiV
	K+yA8zQBNXrETGd710svLMYmeWDVpiFcKANCKp8=
X-Google-Smtp-Source: AGRyM1vBKpqkOG1+8HnXie17TyP6e40WbpSsab9ACDEoP5++MkGGca64AkausYZ+Ec+Am/jIxen/+cHoLTXgPJh9k0c=
X-Received: by 2002:a05:6808:3096:b0:335:796f:abc2 with SMTP id
 bl22-20020a056808309600b00335796fabc2mr3594892oib.173.1657222880210; Thu, 07
 Jul 2022 12:41:20 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-54ed588d-4b2c-4177-83b0-4eda8ff16a42-1657210235522@3c-app-gmx-bap68>
 <trinity-ec3b4258-cb12-42c2-9058-362260a275d2-1657216287085@3c-app-gmx-bap68>
In-Reply-To: <trinity-ec3b4258-cb12-42c2-9058-362260a275d2-1657216287085@3c-app-gmx-bap68>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 7 Jul 2022 15:41:08 -0400
Message-ID: <CAMdYzYrs0oJXVcViOmJk4E7PSTeP5TYs0O_ePHmrcAiKtOAWXQ@mail.gmail.com>
Subject: Re: [BUG] USB broken on rk3568 based R2Pro
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Samuel Holland <samuel@sholland.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Vinod Koul <vkoul@kernel.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, 
	arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
	Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_124124_924140_23517AFD 
X-CRM114-Status: GOOD (  21.06  )
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

On Thu, Jul 7, 2022 at 1:51 PM Frank Wunderlich <frank-w@public-files.de> wrote:
>
> Hi,
>
> traced it down with manual reverts to this one:
>
> commit 6a98df08ccd55e87947d253b19925691763e755c
>     phy: rockchip-inno-usb2: Fix muxed interrupt support
>
> luckily i can revert only this and now upper usb-port works again
>
> @samuel: have you an idea how to fix your problem without breaking my board? :)
>
> @greg/Vinod: maybe we can add a revert of this in mainline till issue is resolved?
>
> regards Frank

I don't know what you're running, but with the standard arm64
defconfig w/ all rockchip stuff built in, I have no issues here on
5.19.
Note, the following changes are necessary to the 5.19 dts here:
Remove the extcon from usb_host0_xhci, as the production model doesn't
have automatic switching capabilities. The ID pin was removed in favor
of the usb debug function which also doesn't work.
Add dr_mode = "host" to the same node, for the same reason.

>
>
> > Von: "Frank Wunderlich" <frank-w@public-files.de>
> > i noticed that upper usb-Port (otg) is broken on my Bananapi R2Pro with 5.19-rc1, works with 5.18.0
> >
> > this port is a usb3 (xhci) port which includes an usb2-phy and should support otg, but i still want
> > to use it in host-only mode (USB-A socket).
> >
> > already tried setting dr_mode in dts back to "host" as this was changed in rk356x.dtsi by this commit:
> >
> > bc405bb3eeee 2022-04-25 arm64: dts: rockchip: enable otg/drd operation of usb_host0_xhci in rk356x
> >
> > i see no error in dmesg and usb-controllers seem to be initialized completely (visible in lsusb).
> >
> > r2pro has ID-Pin not connected, so i tried also peters Patch without success :(
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
