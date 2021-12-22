Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C54FCC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 13:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UoIyR3SppfkY+W/pqeZwtS1aYzhB7q21EPqYqZc/u5Y=; b=QGfV1HfNjSgHqh
	9HsFfyEXyCSPy3v+X578NVHeg63AfjwYtJXwG8LPODqGxRCW8NHMauLyUagmBA71sUdAVxNsZOtnk
	liXUFCvrlbY0L1A2VbVc70Ux0QxG1HV6sUwy/LVDySQQyAw2dGHrS/azg6DOYFeszY8T+AmiVMl6w
	atVG9Tpo+4/LB5DhC7rzO4BTucfe83Xz++hBnC3bXCXxSY1scV4dxw0K0IVcSLkpOcy1FnZtZj4Zt
	Ztd6ckhEkBMdmIuakFZkDV3COB/bErGo+iVaVhCZuXzymiBXRaU+Y9PT3XI0ieOKmB0GiaYiOa7PM
	b04JK4zLr23MG3/Ui0rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n023V-00Aawa-Rb; Wed, 22 Dec 2021 13:53:21 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n023J-00Aatx-11; Wed, 22 Dec 2021 13:53:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 232D5B81B9B;
 Wed, 22 Dec 2021 13:53:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6DA0C36AE8;
 Wed, 22 Dec 2021 13:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640181185;
 bh=/KzC2xyljtBoaNohEViyGh73ITduqs9Zk/DPszDRrQU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=gGflq5VPEwzudhYipFqQPDD/Ubx2GC39e2yzonLLQ3d7pe/bpO60Ni8GkFaHwIYb4
 qxYYjIauCmjet5pZZa24eu6Mp4Mmlt5F5Jubl356R1rQBMsv4Uqr5i3MkfDN0oniSQ
 9J34zaqts38g8TF0DvRHvj5WD1q/M+6nzQsGGk8i36zYv8n12ss8ElIYh18tsz10+B
 +4H7esxvCsRnF8+XYPC2gUtBwgoB8WVub4/nTkeWo8g/UBRpx4aH0rwbeczZeesoq6
 Uu2Q6IGXC3WmR/k1uQ6vZ5LEx/M9UKStDgCunejoNDqfcjfl3QKvEdQFw5G7xY9EdS
 UM45Rh8X07r2Q==
Received: by mail-ed1-f54.google.com with SMTP id o6so9037813edc.4;
 Wed, 22 Dec 2021 05:53:05 -0800 (PST)
X-Gm-Message-State: AOAM5322djKBZGJopqxLHd57kaxhMAJET6Ut4IKlGRvS0UJ6cO0dNZSD
 u4yRlr0HQaYGIEYpZLuCH9h1lXMJPCeQ+GxgWQ==
X-Google-Smtp-Source: ABdhPJwLfi+vd0gUpA9WEffP9MKdcCMUgOls/PZATt71sVDW2zlwKzs9m5myZYELczFdRRkgPlO3+bbg0IhlzRSpnbM=
X-Received: by 2002:a05:6402:350a:: with SMTP id
 b10mr3000857edd.89.1640181184247; 
 Wed, 22 Dec 2021 05:53:04 -0800 (PST)
MIME-Version: 1.0
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <20211220110630.3521121-9-s.hauer@pengutronix.de>
 <YcHlO/m/tGEEMnX9@robh.at.kernel.org>
 <20211222104736.GZ6003@pengutronix.de>
In-Reply-To: <20211222104736.GZ6003@pengutronix.de>
From: Rob Herring <robh@kernel.org>
Date: Wed, 22 Dec 2021 09:52:51 -0400
X-Gmail-Original-Message-ID: <CAL_Jsq+jhaE7DWNu1=n9JX+oNp8XRW7mNi--8moDU6RYNyBgBw@mail.gmail.com>
Message-ID: <CAL_Jsq+jhaE7DWNu1=n9JX+oNp8XRW7mNi--8moDU6RYNyBgBw@mail.gmail.com>
Subject: Re: [PATCH 08/22] dt-bindings: display: rockchip: dw-hdmi: use "ref"
 as clock name
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel <dri-devel@lists.freedesktop.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, 
 Sascha Hauer <kernel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Peter Geis <pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_055309_256211_0D9D6227 
X-CRM114-Status: GOOD (  19.67  )
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

On Wed, Dec 22, 2021 at 6:47 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Tue, Dec 21, 2021 at 10:31:23AM -0400, Rob Herring wrote:
> > On Mon, Dec 20, 2021 at 12:06:16PM +0100, Sascha Hauer wrote:
> > > "vpll" is a misnomer. A clock input to a device should be named after
> > > the usage in the device, not after the clock that drives it. On the
> > > rk3568 the same clock is driven by the HPLL.
> > > To fix that, this patch renames the vpll clock to ref clock.
> >
> > The problem with this series is it breaks an old kernel with new dt. You
> > can partially mitigate that with stable kernel backport, but IMO keeping
> > the old name is not a burden to maintain.
>
> As suggested I only removed vpll from the binding document, but not from
> the code. The code still handles the old binding as well.

The problem is updating rk3399.dtsi. That change won't work with old
kernels because they won't look for 'ref'. Since you shouldn't change
it, the binding needs to cover both the old and new cases.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
