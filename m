Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B7B4C43458
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jun 2026 07:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zFGwxLJpIOLtBPMvNNfLHQ86kWgmW4u6enuA68faWJ8=; b=tgsLgiGa7x9G1m
	RU1CR86pT6zEicwuuFKBVMt3X/hTBZVqMsgGM9Xw61iH3CXRVYBtTi12fg54NsspPM/o+8uMnYsYt
	KBPRni+z9Wf+tnWmT2eSiZnYeDiZyYAfGb6FiYefWuLVdvU2dfQjAEuqqOcB8D7OOQIGYPkYXNT5P
	EHh7cBZznNOM9Db0w98V16griPlprac0DeGizIqpbM6ksjimvGiGYlspUSEPlrfMdJrje3gCvAzRv
	xAvyjqwWVEJaknAqqLweQZ32ix3ekS3FkeQ9PbkrGsewJo0cL5BG1axbEA/fHEcoHRoOgNaL5K3zW
	/LHR7Dizl2OBBQMDCfiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we6fe-0000000Dw31-0Plv;
	Mon, 29 Jun 2026 07:44:46 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we6fb-0000000Dw2f-1Yhe
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jun 2026 07:44:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782719079;
	bh=mjdaelFFBbsf9dEtW9+UwJ9rw2Yq4Kx9/BLbeDxbjxk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=KoK+c+dt80d/uwglsQgyED1NamKLFrWEPawNWo+wJ++crZ9aaXLy4XjtnHM/DLGNT
	 KVzx0ItMd05iN1N8Ao0BN+o4Musg/zDHdXsTBGDvWf/9Ca9P0MHFZ5V+pqe/yqw1J4
	 bCS0fhf+/CGRRAYk9mdL8z/7gpSKHnt8GZ4WherUfvceDdd9OXUzaWCdR5XiBRWmIV
	 coMzlLacD7Vu1yFMtLfKnleLypPQfj4n4rDvD8gvSjoDYJXnCoNZX1zjNrmuvG3SNs
	 lkHTP/00B5cRs728gtTmEruHyb0IHMOREBnUTrqOiNN/bewRsj5BX54LHUebxznc9Z
	 hKv6eXxNi3tCg==
Received: from fedora-2.home (unknown [100.64.0.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7E96717E0851;
	Mon, 29 Jun 2026 09:44:39 +0200 (CEST)
Date: Mon, 29 Jun 2026 09:44:19 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Marius Dinu <m95d+git@psihoexpert.ro>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>
Subject: Re: [BUG] drm/panthor: intermittent freezes in Xorg xserver
Message-ID: <20260629094419.6bb56d99@fedora-2.home>
In-Reply-To: <aj5neetgYdu0QpcK@GRAPHRT>
References: <aj5neetgYdu0QpcK@GRAPHRT>
Organization: Collabora
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_004443_598417_FC659B35 
X-CRM114-Status: GOOD (  16.85  )
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

On Fri, 26 Jun 2026 14:50:17 +0300
Marius Dinu <m95d+git@psihoexpert.ro> wrote:

> Hi.
> 
> The system is Radxa Rock 5 ITX, RK3588, 32GB RAM,
> mainline kernel v7.1.0 with panthor driver, mesa 26.0.7 with panfrost driver,
> xorg-server v21.1.22 accelerated by modesetting driver, x11perf v1.7.0.

Are we sure that's a panthor issue? Also, is this a regression
introduced by the latest kernel version, or has it been like that from
the start?

Also, would you mind opening an issue on [1]?

> 
> The most clean way to reproduce this bug:
> Form a console or ssh session, start Xorg in background, without a window
> manager, and then run x11perf on that display.
> 
> Xorg :0 &
> x11perf -all -display :0
> 
> The bug: weird intermittent performance issues in some of the tests.
> Examples:
> 
>     1000 reps @  18.0799 msec (    55.3/sec): 10x10 rectangle outline
>     1000 reps @  18.0791 msec (    55.3/sec): 10x10 rectangle outline
>     1000 reps @  18.0790 msec (    55.3/sec): 10x10 rectangle outline
>     1000 reps @  18.0789 msec (    55.3/sec): 10x10 rectangle outline
>     1000 reps @   0.0287 msec ( 34800.0/sec): 10x10 rectangle outline
>     5000 trep @  14.4691 msec (    69.1/sec): 10x10 rectangle outline
> 
>  5000000 reps @   0.0029 msec (345000.0/sec): 1-pixel solid circle
>  5000000 reps @   0.0009 msec (1100000.0/sec): 1-pixel solid circle
>  5000000 reps @   0.0012 msec (818000.0/sec): 1-pixel solid circle
>  5000000 reps @   0.0000 msec (20900000.0/sec): 1-pixel solid circle
>  5000000 reps @   0.0000 msec (32300000.0/sec): 1-pixel solid circle
> 25000000 trep @   0.0010 msec (979000.0/sec): 1-pixel solid circle
> 
>     1000 reps @  31.6607 msec (    31.6/sec): Fill 10x10 trapezoid
>     1000 reps @  16.9012 msec (    59.2/sec): Fill 10x10 trapezoid
>     1000 reps @   0.0234 msec ( 42700.0/sec): Fill 10x10 trapezoid
>     1000 reps @   0.0272 msec ( 36700.0/sec): Fill 10x10 trapezoid
>     1000 reps @  32.1268 msec (    31.1/sec): Fill 10x10 trapezoid
>     5000 trep @  16.1479 msec (    61.9/sec): Fill 10x10 trapezoid
> 
> There are no messages in kernel log or Xorg log.
> 
> Visually, most of the tests runs fast as expected, but in some of the tests
> it gets "stuck" randomly. The test suddenly freezes while drawing the pattern.
> Then, after a while (a few seconds up to a couple of minutes), it gets
> unstuck by itself, draws a few more patterns extremely fast for less than a
> second, and then it gets stuck again.

It smells like a signalling issue. Can you check the CPU activity and
report any outstanding process? Can you maybe connect a gdb to the
x11perf to see where it's blocked, and post the backtrace here (or in
the gitlab issue)?

Regards,

Boris

[1]https://gitlab.freedesktop.org/mesa/mesa

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
