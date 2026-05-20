Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 033E6CD4F3D
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 May 2026 18:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Vt23gcUgclA2TXQWACAuCdK0kkaCKtq0Hh8qlkLXos=; b=of6oZaMLf21FHv
	D9yqIIky2oxm49KD/+p0Zeooa7Vkdxx7e74ByHmV8QhTGzA+GcejuDBUevSspK1AEeNB22b6+zxyP
	pdvzpU3mbb6fUbM/BUjHu9RHkLzEoADMUcj1G/xlpPzv/pJM7QfGWB3Yu9yDvHWsfiHwhHHEVeXMK
	HVioQzH1J1d6YLN4z58NHZ/uyvHNMGn7+jMcrB9OiPytJMmHtqBmEk6zD/41vrJojWnmVG8YwgumV
	i+q4r4kQhp17J7DdmhRqt+nlsWieDWEv1eWWy2Scx3zwKlMqSti82VMP2fh0iekmhKx82lJ058aBv
	4YyPAFMCLOVCnw91wuhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPlbg-00000005RDb-0VID;
	Wed, 20 May 2026 18:25:24 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPlbd-00000005RCx-46UC
	for linux-rockchip@lists.infradead.org;
	Wed, 20 May 2026 18:25:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 43DC540B22;
	Wed, 20 May 2026 18:25:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A668B1F000E9;
	Wed, 20 May 2026 18:25:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779301521;
	bh=qC3laSeJVYxtXQW1VP6ZHwBO3kT+Jq0l1y1d3tRQhlw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=KfUi31sEzWWY99MWECO8x9Yww8S3TwnQFcnQilGBH37r0zUWUMXAVgtvGwOG+/j1/
	 DJGcbxN+XLgITyazTmod6aaY8dsBE3W2pP5dNn8yMQuZuZ/vuV3d61rybSVKBt8WZO
	 K19mRMw0mlf1GtEzqyahnzS8sApV17VLItLJ4PqvoYujDr5GrLVN9bUknoiFCJBpNU
	 U87UyL6dvSjTK+YEXX5f7VZ0f1FHlCPGd3BbEwgckAhA8lrabxeG6/lmmbOs1RCgGu
	 lpQwov3SGzvjX1JxumS9H8XMiltztJrtAalxoyATEQ18a2yeg1f85Or/RYO7cBQkLA
	 scFxm+ajpFu9w==
Date: Wed, 20 May 2026 19:25:10 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V7 09/11] iio: imu: inv_icm42607: Add Wake on Movement
 to icm42607
Message-ID: <20260520192510.7b6fa723@jic23-huawei>
In-Reply-To: <20260515203629.3dbf7133@jic23-huawei>
References: <20260515130018.237378-1-macroalpha82@gmail.com>
	<20260515130018.237378-10-macroalpha82@gmail.com>
	<20260515203629.3dbf7133@jic23-huawei>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_112522_046613_1FF10E3A 
X-CRM114-Status: GOOD (  17.58  )
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

On Fri, 15 May 2026 20:36:29 +0100
Jonathan Cameron <jic23@kernel.org> wrote:

> On Fri, 15 May 2026 08:00:14 -0500
> Chris Morgan <macroalpha82@gmail.com> wrote:
> 
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Add support for wake on movement for the icm42607 driver.  
> Could you add a bit on what is supported on each of the two parts.
> Not everything on the 42607P it seems.
> 
> There is quite a lot of fairly complex feedback on this in sashiko.
> 
> Obviously we are late in the game and I should have suggested
> this earlier but I would have dropped this for the initial driver
> just to keep it more manageable to review.
With hindsight / v8 I failed to say I meant just the bits related
to wake on motion. I'd failed to notice that the fifo interrupt
handling is in here as well. That bit is definitely needed.

> 
> It's very much an add on feature.
> 
> Jonathan
> 
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
