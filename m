Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A6D4C43334
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 10:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UsB9dCUWwViONaWHn+1/sIWJt78Xr+J7IfYA50IiMH8=; b=vxv6dxDl2JVX4t
	w21RuXFPXTY/4et0JxYJUTueSaTW03MrrtJiESQpZM05gcqYC5EmpdHjtu31N/tYoSJft3FQyhpAP
	cCbiWj1LUmAn9zfdSfjHnMnbaFUMr0z4dvYRuu3c8nl3C6KmqmedSCzxQsOZ82zt6pfd55jgFweox
	QEJ805ZNW7oHW2Q2lKaiMKIFpYSdeHkdfszoBd08mZHQDSQdXcqSTdKeoHyINlsn0h4bLV8SAeWWN
	nXZmoSX93QlnmNIRNx+J5ZPDQDTXmdr5+NKzvOedf9y5lINDO5l7pVcVf2GSZOL8rVxq66OEarDgN
	/ouN+hhHgnY9QAh6g/lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7Dx7-0045Xn-27; Fri, 01 Jul 2022 10:32:45 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7Dx3-0045Wz-Lq
	for linux-rockchip@lists.infradead.org; Fri, 01 Jul 2022 10:32:43 +0000
Received: by mail-ed1-x533.google.com with SMTP id o9so2349342edt.12
        for <linux-rockchip@lists.infradead.org>; Fri, 01 Jul 2022 03:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JOFbrEFB9DCfHsTRcts2PWWLes6+Uj7GP9RbVOzCFVM=;
        b=G+gv7lbE9ycKvCE2XLzqdLc2Ydvt8ZMtLvSeU8HaZ9IBTC9+4C4J6ma8pDYRasv6wq
         dcAt/tL/BVFPZBcEhMgdJxdBXiLcrR5bmHv75VIK3GY2JxCSNscmZtvnZBYdFRUX9Qcy
         IisiKj6sGhICKwcz5anBl2siQIhcRP+Uc4j32evQkEIK3AZcvRK1nehjJQIM5EzR/bPG
         fi6N0RqIPnU/tv562fCX7SXzZa+R0t5D5E/Ffu34GINVQTBi1YcK1LVQLyZlIFvcww/7
         Qm2IqQQtvN82DMspOaGPkO152of48xEt9tQYjv0rwDLdjcEcLNFX8kaM4qN61e0hgIvf
         93/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JOFbrEFB9DCfHsTRcts2PWWLes6+Uj7GP9RbVOzCFVM=;
        b=3calmNJg1DXuhI811nfrQduZ9TswzYOKwZLuDfIKPh2guoVjDra+TQy8qsZRNDbVzQ
         Dq7Z2bWqCT49inLvQyHHUQQ9rte1faR77KWqSzfk7eXPW/5sVIlYrcs8AeTbLYc/Eg7+
         +mjWD2pBl8CEGP/e0E9ohqUHSU6ZONGT7L5RFOYRJ0Y3yQ8yuFx97DyDMdAS8e/Ah3Ew
         u4xJIEUghw6fTT9jiW9BBYRCNlRVqDMTzvM87Ly11mZ3+1NB4Ol86fZ+t/vKrXpTTcrg
         yt93it5+JakWo1nnU6ELacowF+AsVSg5g+GRczBtGiXDWRdcw89W8BWKy912cZgDkJgj
         PVxg==
X-Gm-Message-State: AJIora9ZePnAf/CBGkNHWOjnQsbPFK6dhu26rljrhJYzoDBBlIfn2oh8
	X6Q86UHHlT/hCuZp3tBNMfWkaXV9y5WMiFJ+xeaIHg==
X-Google-Smtp-Source: AGRyM1vgIA6SqnHR0nHNlzVRqwiqRXFzYSzGJQPFnq7om9GgN5s8pDmkyBxQwG7kziOKv65nyKva/jRmpalBobiJTEQ=
X-Received: by 2002:a05:6402:d0a:b0:437:66ca:c211 with SMTP id
 eb10-20020a0564020d0a00b0043766cac211mr18200869edb.29.1656671558454; Fri, 01
 Jul 2022 03:32:38 -0700 (PDT)
MIME-Version: 1.0
References: <20220623160801.240779-1-sebastian.reichel@collabora.com>
In-Reply-To: <20220623160801.240779-1-sebastian.reichel@collabora.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 1 Jul 2022 12:32:27 +0200
Message-ID: <CAMRc=Mc9KHb1Y4EGbhaAKgVFwto+ujcF9f+VWC2P9imbawrcog@mail.gmail.com>
Subject: Re: [PATCH 0/2] RK3588 GPIO Support
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_033241_750623_94D00FF8 
X-CRM114-Status: GOOD (  12.40  )
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

On Thu, Jun 23, 2022 at 6:08 PM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> This has been part of a bigger patchset adding basic rk3588 support.
> Since that gets more and more out of hand, I'm now sending patches
> for each subsystem as individual patchset. Previou patchet:
>
> https://lore.kernel.org/all/20220504213251.264819-1-sebastian.reichel@collabora.com/
>
> Changes:
>  * None (except for collecting Acks)
>
> -- Sebastian
>
> Jianqun Xu (1):
>   gpio: rockchip: add support for rk3588
>
> Sebastian Reichel (1):
>   dt-bindings: gpio: rockchip: add gpio-ranges
>
>  Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml | 2 ++
>  drivers/gpio/gpio-rockchip.c                                   | 3 ++-
>  2 files changed, 4 insertions(+), 1 deletion(-)
>
> --
> 2.35.1
>

Both applied, thanks!

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
