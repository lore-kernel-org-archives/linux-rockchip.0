Return-Path: <SRS0=ojj+=P4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7384C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 11:33:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A75EC61184
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 11:33:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A75EC61184
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P3s00/y8EX9BMGu4Eo/p0G8OVPmq3XgIPBQSzBOc1jY=; b=birX77SXLp3Zfm
	SjUb90CzLIVOHKxLoK/zjSrgH5i3PUcVMa1PJXkZXvSGXclSfme0UsjTss4o39IarRUzC7if8vrT7
	Puvzvs7H2TVCh+MzdpD/vtbtnXKdNRkrgYYTLDnFpzbNA9kN+eFMDdQvtC4g/IJ9TFS02gkCLi5PZ
	Tpg0bKT6nld35nuJK8LkE9cFMrS4+HisIFj0IQtadh1BT+Y2aLvxxVWGVce2Lfuz6ZAkP2tXpND/7
	AjCxd7k6ctgRj4CYGTCy55rGG2b8IfS7qr/uLNSAt2WsaIymsRDxcK3LJvA/pQ2loaQr9KbCeZcTf
	d/uyGk7EvOXxppK1sgcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkPNK-001joX-VW; Tue, 09 Nov 2021 11:33:14 +0000
Received: from mail-oo1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkPNJ-001jnR-Ag
 for linux-rockchip@lists.infradead.org; Tue, 09 Nov 2021 11:33:14 +0000
Received: by mail-oo1-xc2d.google.com with SMTP id
 a11-20020a4ad1cb000000b002c2657270a0so2789401oos.8
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Nov 2021 03:33:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CSSmBGiZVMNlw9saF2eyI7HOrgrdT0YOSip6CH89u1c=;
 b=TaEIl/KFsdk7aCm+psQMJAvJANY9fl88AA6fiFvOsx4MD/EZynOYrLCLBFHxr4nP3z
 TQvoDi45fZ9jV5aILC7hS1SJkobjR2iKX5kJhLNeQwMHiRKyiZ6IJsUhBGAr+afnrw6+
 x+d+BJjiiG4SuDpiBLjkkG8vTIL29TR5I6uJdzPfbVJy9UPzMyYnJJahks0Wcp6A67OH
 +F2tNvawnF4i4K20iq+ZwMye0Uzjqad6sUB9BRaPfYEmwHEPHo+kNomEeE8sNnYVeM7r
 OjHNtXuEIJyMq6csGdMlzvKEOPfpIB0ApOcBTaJlf70eH89kNAPHT7uA+XoLkRQ8M0Tj
 AH4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CSSmBGiZVMNlw9saF2eyI7HOrgrdT0YOSip6CH89u1c=;
 b=VrTd8++p4B+1Vr5V1bRTjqv+iECm+S/IXXvJEUXp8o0qkKdjeN8PeMAU10/MQmeo6v
 0hUBt+6MSPzsEFxdDFakjaKYQtYAZEIxczsUC4g65WL73U+5B8KBPp280q/HK4Mo0X/u
 O6z9JyPfUUCI696q1Jh9SWEag8/+W/96wgsoBVRe7r8VZDxGwm3lCfTRYwaoU0YU+NUb
 F8/n51e7nY+BcasCMWfhh0t9OZ4WdEnCmL1rSl8v7jA04S78WGhUdndQ1jtFIroWRl4r
 /wxUaNxN0+yilwf9nZWPSApYev/XfTogRAAWAacCtITEmNasy8okKzBsFY/glvyfkB9h
 3Lsw==
X-Gm-Message-State: AOAM5339AwXXUcQPr37XNFY5ZibSs2ieFjPH5QDGtcDxemzG3Xs7z9/A
 01bIADO45LO4ECr14aojah6v5+fser1NMktPIWA8hQ==
X-Google-Smtp-Source: ABdhPJywvZKJoZBox3QIktaEO2rKrJtRPMqM6AhEvJyTlBaJAPM8lakOBpMg0SgtBEI2NKgbHRswI7RDSSX7KAPjZjg=
X-Received: by 2002:a4a:e5cd:: with SMTP id r13mr3324482oov.84.1636457592495; 
 Tue, 09 Nov 2021 03:33:12 -0800 (PST)
MIME-Version: 1.0
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <20211105124242.27288-15-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20211105124242.27288-15-andriy.shevchenko@linux.intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 9 Nov 2021 12:33:00 +0100
Message-ID: <CACRpkdaFNhy8DrY7L76OC3Udkeo33t8vGv10T8NoFp+R9x1jKQ@mail.gmail.com>
Subject: Re: [PATCH v1 15/19] pinctrl: st: Make use of the
 devm_platform_ioremap_resource_byname()
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Jianqun Xu <jay.xu@rock-chips.com>, 
 Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>, 
 Andrew Morton <akpm@linux-foundation.org>, linux-gpio@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Bamvor Jian Zhang <bamv2005@gmail.com>, 
 Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, 
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Michal Simek <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_033313_392130_6A6E20A1 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
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

On Fri, Nov 5, 2021 at 1:43 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:

> Use the devm_platform_ioremap_resource_byname() helper instead of
> calling platform_get_resource_byname() and devm_ioremap_resource()
> separately.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
