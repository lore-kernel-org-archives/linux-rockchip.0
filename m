Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DB94C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Apr 2022 16:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9+F0bU2QHqOC4yleCB1zhZhR4GXaObVb5UW+tk18SXs=; b=b8VZins9vaU8/1
	HQpv/+OEJxPWOU029YWyaiaXjUmbUFYO1zCxVdm4NSDMPAV+e4DsCIHgLFNLapEmxNgyOy63nPS21
	9L7KGBUl/UIleEuHUCnkyxzWy415rTm6WeFN3LtO8wXqJBE32b28NFL6gfwEDUkZcpPagT+3Y7z2/
	5fHgo47Ap9YWo18DdqYi8jH36NsnoMnISsXIIGR3re/McqpG+sZJUgqy9b2HMeNTK/1oXe4gOT5+F
	9gDRC9Xo3xLUUbypXuN+GegdR2qdUiuQ+0pI+oYLE25R606cSLB2Loo2E5+PUyxP3PC86GzQ4SDTE
	LThoQa+dstv8484f29lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkq0U-00Edhx-9E; Sat, 30 Apr 2022 16:31:42 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkq0R-00Edgw-Ta
 for linux-rockchip@lists.infradead.org; Sat, 30 Apr 2022 16:31:41 +0000
Received: by mail-yb1-xb36.google.com with SMTP id s30so19491664ybi.8
 for <linux-rockchip@lists.infradead.org>; Sat, 30 Apr 2022 09:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VQBIwY6gYucmpK0m5q+UiClACSjy1lrKIL+7r3g96NE=;
 b=mJewPIEQt6k7No6Cs9mgMKMZpiDMbHOCzpdmu9Hd2D9DK1XXla4qkJeEslHt343F64
 +fFfV++PExhSKg+0Bf478eXbqavUUHVfys017SvsqXZcWG2hLN4jjpGLjNpYDXC2w/3/
 RYIrLgVeRrda0EfPcWSmPMG+OhHTXlfLUsm1FMufxwwgFOsE7TbNXbwWUl8yhWVPzj4A
 sLqiOyLTwLyKxW0lgcKEWr5HEmhub0795GKjfrt1IrP4laVRkDo/fjxdPquNAbyww+8h
 xEos337yRLnzvj3kvKVdIS7id0MeXg2kUaebuvXcryseCVuCyfXBP/FLxWFXyTTQwR7/
 2Nhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VQBIwY6gYucmpK0m5q+UiClACSjy1lrKIL+7r3g96NE=;
 b=rxpGnhZbTypUP1mwFoNsDZW9FCgbMLxET7a7SXpepgJwO6NN/RFAX6TuiibUBe8+9w
 2SXDrzwpIkR6j0xca+tiCkrG5Vpn32nTQqFw9GohQvhA5c5Zn9KssT6Zv2S3X4FHCwxl
 f4SUfg2uSiGhPSXO38SeOci6S92UEhfbgZfYchPRvZnlWgIx1Vjda6VWTN652K/5lDdf
 oxLQTcanosrno0Rzjmd00r7u9t3q5FnuGxon6Bi4wZGEc28yRtug8lA82eHAUweqImkS
 xT8k6GmZ95UwVcdmQnVVqnR63S6LrU9A+05xuJAhtEIrbNgxzcfLjZRvTPfZXnMESKsy
 uBdw==
X-Gm-Message-State: AOAM531Iot92gX6/xuyGjcHwXDBYibZfcLeYqMZ8R7+mIRkWbWO6iCJa
 saER08Os2O5TToe291T7+uB97mCbaqzApph8bPI=
X-Google-Smtp-Source: ABdhPJyP1o+RQhfe6Taz8kwGwJR4bz9ro27WjlM3uAynYTPZWAZ04EdNCK1TxHTsM4b3MKj7CIqpMywzaDRHxrbbo2M=
X-Received: by 2002:a5b:dc8:0:b0:624:a898:dea6 with SMTP id
 t8-20020a5b0dc8000000b00624a898dea6mr4168113ybr.600.1651336298505; Sat, 30
 Apr 2022 09:31:38 -0700 (PDT)
MIME-Version: 1.0
References: <20220228233057.1140817-1-pgwipeout@gmail.com>
 <Yh1lboz7VDiuYuZV@shell.armlinux.org.uk>
 <CAMdYzYrNvUUMom4W4uD9yf9LtFK1h5Xw+9GYc54hB5+iqVmJtw@mail.gmail.com>
 <CAMdYzYrFuMw4aj_9L698ZhL7Xqy8=NeXhy9HDz4ug-v3=f4fpw@mail.gmail.com>
 <Ym1bWHNj0p6L9lY8@lunn.ch>
In-Reply-To: <Ym1bWHNj0p6L9lY8@lunn.ch>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 30 Apr 2022 12:31:27 -0400
Message-ID: <CAMdYzYq41TndbJK-=ah31=vECisgRbPmtFYwOLQQ7yn4L=JVYw@mail.gmail.com>
Subject: Re: [PATCH v1] net: phy: fix motorcomm module automatic loading
To: Andrew Lunn <andrew@lunn.ch>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>,
 Heiner Kallweit <hkallweit1@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Network Developers <netdev@vger.kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220430_093139_996211_3862BCC1 
X-CRM114-Status: GOOD (  23.93  )
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

On Sat, Apr 30, 2022 at 11:52 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > Good Morning,
> >
> > After testing various configurations I found what is actually
> > happening here. When libphy is built in but the phy drivers are
> > modules and not available in the initrd, the generic phy driver binds
> > here. This allows the phy to come up but it is not functional.
>
> What MAC are you using?

Specifically Motorcomm, but I've discovered it can happen with any of
the phy drivers with the right kconfig.

>
> Why is you interface being brought up by the initramfs? Are you using
> NFS root from within the initramfs?

This was discovered with embedded programming. It's common to have a
small initramfs, or forgo an initramfs altogether. Another cause is a
mismatch in kernel config where phylib is built in because of a
dependency, but the rest of the phy drivers are modular.
The key is:
- phylib is built in
- ethernet driver is built in
- the phy driver is a module
- modules aren't available at probe time (for any reason).

In this case phylib assumes there is no driver, when the vast majority
of phys now have device specific drivers.It seems this is an unsafe
assumption as this means there is now an implicit dependency of the
device specific phy drivers and phylib. It just so happens to work
simply because both broadcom and realtek, some of the more common
phys, have explicit dependencies elsewhere that cause them to be built
in as well.

>
> What normally happens is that the kernel loads, maybe with the MAC
> driver and phylib loading, as part of the initramfs. The other modules
> in the initramfs allow the root filesystem to be found, mounted, and
> pivoted into it. The MAC driver is then brought up by the initscripts,
> which causes phylib to request the needed PHY driver modules, it loads
> and all is good.
>
> If you are using NFS root, then the load of the PHY driver happens
> earlier, inside the initramfs. If this is you situation, maybe the
> correct fix is to teach the initramfs tools to include the PHY drivers
> when NFS root is being used?
>
>      Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
