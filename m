Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F016CD343F
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 19:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rT7xguH6Fx9aU/Hyj6Drf1Jk7wN4t5QqOSCp70cx10k=; b=Fsa8ATFAwtSbg7
	+MB0D69v5wuWOqVsP4JfigH6Xl5q+S063BvkA6aQ5ZMpcexi9B4iLgRjHcVUPpKMO4AAV7moHk9Zd
	+oYeubvqlQwgdPgNMdelShH5G6KKkIKJlKlDQBmHzdAJyqptgKFdjCwmHEqV0azMLkbLftOQ7iYf8
	ejUNoJNkEYqL0eS7UtRKvvUwu0SIZuVWEEp6si7niJNPfmyGxFCMlzoKYVVJ9wrJowRsxGO4+C6Wn
	WSgb5wKeuvV30UfRXpqLcm/ysQngyIeWY5jAEqn3WH0x1YSUSgBdz06AFCXC62olYMC/ACQ1yQ2Y1
	WXACo68F7oeWY9AH+qjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNyKw-00000009EN1-1DdS;
	Fri, 15 May 2026 19:36:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNyKu-00000009EMs-3u62
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 19:36:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 352AC60122;
	Fri, 15 May 2026 19:36:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BD23C2BCB0;
	Fri, 15 May 2026 19:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778873799;
	bh=aClW3vHF3CN4bB7VxdXrLwV0uPyZuVdGC0aCHX+/KB4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=b6G14a75Zsi3xZwm21EKE8LCXacUKOWTiGhI9qIsA5Ex9Ctlp5d+HMz5ndbaBIXNJ
	 PSutp3nZpRHKBM5ZSxmm3wVE20Vi2mIkboFjuEGoG8LwWAV+gqPJowAK0qbLZ/WvBS
	 P1VNiRPLUEscyox0rW9qwqbW3RHN5/9xtT6tnbo5T1qQ2M/4qSSggxMBm/skwki4ul
	 5UAdzdIlDN8aLJY+HVmzvvUunYKhpMMW8ep4IgLBi9JRJsWkj216WwHWGGTTo8bBc2
	 LokeJk9GYcp9RrumZYU2DK7msmYnkfPKs5g6D1wAygNvESLEVW5h+sWOCXAFu8qOUk
	 invt5AUmFQqEA==
Date: Fri, 15 May 2026 20:36:29 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V7 09/11] iio: imu: inv_icm42607: Add Wake on Movement
 to icm42607
Message-ID: <20260515203629.3dbf7133@jic23-huawei>
In-Reply-To: <20260515130018.237378-10-macroalpha82@gmail.com>
References: <20260515130018.237378-1-macroalpha82@gmail.com>
	<20260515130018.237378-10-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

On Fri, 15 May 2026 08:00:14 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for wake on movement for the icm42607 driver.
Could you add a bit on what is supported on each of the two parts.
Not everything on the 42607P it seems.

There is quite a lot of fairly complex feedback on this in sashiko.

Obviously we are late in the game and I should have suggested
this earlier but I would have dropped this for the initial driver
just to keep it more manageable to review.

It's very much an add on feature.

Jonathan

> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
