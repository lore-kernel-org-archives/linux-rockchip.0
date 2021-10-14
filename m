Return-Path: <SRS0=Ggyc=PC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CDA3C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Oct 2021 12:46:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 121A9610CB
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Oct 2021 12:46:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 121A9610CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iw9/I0Jmdc+3JQjFCD+ICLFnSneG289Utxunmh6EtJU=; b=pvbCzLPjL+JiXf
	XVKa3OZ7eHSu0uq6oLhExjr5PACYDk4foX51uehFFpCFHWZhXOW+piH5+aW6qIiWXhkQcX5jtnUUj
	ZWo44vkb12zCxxOBlIKU69AiFAXtlvoKl0nirIg9Ymxy2PupkicKhMVgN25XjliFqgpgBfqnlV4aS
	7xlo9NaQsY7xf+N6g/EN4waQLltku/2Jw5zz/QiPGWzGyZa2Dy5fe1TX+wRSlIQeYmxo4r3HAUqLP
	AiDiJkVWSgRfScUbxSFTJSD1nMsf88AJfJLa7lSIU9ghPqJJPu2x9IUISpLCvvqeEcD8TrrZPbWcA
	BC5oSQyXik62ILnbUGWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mb08A-00376i-5R; Thu, 14 Oct 2021 12:46:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mb07w-00373w-Jo; Thu, 14 Oct 2021 12:46:29 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7EB6D61130;
 Thu, 14 Oct 2021 12:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634215587;
 bh=XbSRCH8PSEwEGv16RGZ3qTyIO0oHwkvF7BoEkM58F4U=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=sKpELf23o3I7fUD3hlhowck9VaWYrC+jp9n+bbQok7cvXzJvuXioQv/b2+zj/qaVR
 Xzyu9viGRr86A5krBkEk1aK3IbLiFbFSOqwltkjmp3or20yST+K5m4GCeZlBpBT/qV
 F3utGokWlD5jhaXjL6Bgp/QX7+qg/emlWpVO++jzNQGdU6m+kKUougMmgTCIV5Vgqi
 8eYIBdJ/3P9hin9nf1vdUhLafleVK7sVzaumi3N9KoBB3fj0CN8o+Sk4IL9N/OIP3t
 yY9klZsCm4wDv+cTLDJiY1t9jXDhK6fvrJbrSPcmPvKvOJ8kKGU+KkVZ6ZONQEc8u6
 65by6ARvFuQqw==
Received: by mail-ed1-f46.google.com with SMTP id g10so23949277edj.1;
 Thu, 14 Oct 2021 05:46:27 -0700 (PDT)
X-Gm-Message-State: AOAM5327AVe/KJ9298McBIVnzVGSCfFHsYHZ4tsB8ZMgeGV8k76sVpeG
 7j7PfIlr417o0YUzOH9E0RmaqTkAQCzuZ1KouA==
X-Google-Smtp-Source: ABdhPJxckYEhRUOh622IWcX2ltVSYroafWoIFCPByyFwbACExBb1A1o94FlwmqlA+hE13l9617JKTwNkRyh6l34NmWQ=
X-Received: by 2002:a05:6402:27d3:: with SMTP id
 c19mr8295232ede.70.1634215584892; 
 Thu, 14 Oct 2021 05:46:24 -0700 (PDT)
MIME-Version: 1.0
References: <20211007144019.7461-1-jbx6244@gmail.com>
 <1633661172.660863.1409603.nullmailer@robh.at.kernel.org>
 <CACRpkdYArdPwEVf_5pwsROKPjbnVAtU3mf9v1z6WXGPoBb=SZg@mail.gmail.com>
In-Reply-To: <CACRpkdYArdPwEVf_5pwsROKPjbnVAtU3mf9v1z6WXGPoBb=SZg@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 14 Oct 2021 07:46:13 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLKizR0tPrmxzM0cGFjj8dzARuU45gkvYn-giZ0SNXCaw@mail.gmail.com>
Message-ID: <CAL_JsqLKizR0tPrmxzM0cGFjj8dzARuU45gkvYn-giZ0SNXCaw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: pinctrl: convert rockchip, pinctrl.txt
 to YAML
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Johan Jonker <jbx6244@gmail.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211014_054628_688722_537A58DC 
X-CRM114-Status: GOOD (  17.10  )
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

On Wed, Oct 13, 2021 at 5:32 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Fri, Oct 8, 2021 at 4:46 AM Rob Herring <robh@kernel.org> wrote:
>
> > On Thu, 07 Oct 2021 16:40:17 +0200, Johan Jonker wrote:
> > > Convert rockchip,pinctrl.txt to YAML
> > >
> > > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > > ---
> > >
> > > Changed V3:
> (...)
> > Running 'make dtbs_check' with the schema in this patch gives the
> > following warnings. Consider if they are expected or the schema is
> > incorrect. These may not be new warnings.
>
> Rob can you tell me how you like me to handle this?
> Do we merge the nice new bindings and deal with the
> aftermath or do we need to fix the DTS files in the same
> patch series?

Did the next paragraph not answer that? Added back:

> > Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> > This will change in the future.

So no requirement to fix the dtb warnings immediately nor create any
merge dependency.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
