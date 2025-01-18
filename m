Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B65D2C02185
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jan 2025 16:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:
	Message-ID:To:MIME-Version:Date:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bRWr3WXz/bVisQRHsb+manHj79vfam1AGhhengD7x94=; b=1W8WHiJgQRNQ/9Ndstf9F+7hPq
	Ei9WpvVHNL4/KyBEcu+HI+DGBs+Z7dP9VrA4IjEqV0G6IIRLOckYN4gY7XKi6gsgsMhIUdgp6bBoO
	FeTqR/LWbR8Ineqq8RxqJtFyoZd7Agc4OxeezHXV413U11k8HgNT8oLGo1wQEdeMMYFkQv4NeXrXE
	ckZSXr0g6b57vusI9iVWQ+b0X194Dslvyjbc69GUy3iRlvvGaALDoQi5jrJWUpgy4ZFmvORL4lzre
	MkuVyO/jzAH285yP6MrjMsMC58CJheQ3C+ActgN8XuZ7KCAI4MZGgtDsjeFVEBGKzg+L9dU564syF
	9cvWaEDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZBxV-00000002jBV-2QeN;
	Sat, 18 Jan 2025 16:46:05 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZBwE-00000002j9Z-1gVG;
	Sat, 18 Jan 2025 16:44:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8C05D5C4A63;
	Sat, 18 Jan 2025 16:44:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE501C4CED1;
	Sat, 18 Jan 2025 16:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737218684;
	bh=xEJNQ7UCENEVxsF0BiQrTaWFQl57AAQDyq63yXkGmNo=;
	h=From:Date:To:In-Reply-To:References:Subject:From;
	b=FpkUkkNqzIsITa81O0crZIsEKz97Fyod1mxFlN3uo6c+wSKKfonbTQ7wTesNFIGLt
	 J0G5XXp5Lr+CiKa2EgnDQ3a+40XK7rMVczL0602M0GRp7CVDdAziC67vfCXNdgMFQB
	 mEDXN6KBJ6fVv2eP+aCWlwrBcbF8B/G7IFKajNDnwUzNvVNGigdH20+VJrAZru/PmY
	 7gohkQZtXMN+jTHS868X6ymjgJdIfIkSilRop7DFcwX8MB2VyRbORp+63Epu18PP3D
	 DlyWGrRqig2gTwztJHo26LyAcfl7fZoqT9eUCFYuQru+s+gcfaD0BlTWKZDXAnpsPg
	 s1BfnmCTl1zsQ==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 77861380AA62;
	Sat, 18 Jan 2025 16:45:09 +0000 (UTC)
From: "antwain.schneider via Bugspray Bot" <bugbot@kernel.org>
Date: Sat, 18 Jan 2025 16:45:18 +0000
MIME-Version: 1.0
To: bugs@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, heiko@sntech.de
Message-ID: <20250118-b217334c14-2acb03f84910@bugzilla.kernel.org>
In-Reply-To: <20230419-b217334c0-3101f9f4b426@bugzilla.kernel.org>
References: <20230419-b217334c0-3101f9f4b426@bugzilla.kernel.org>
Subject: Re: RK3328
X-Bugzilla-Product: Linux
X-Bugzilla-Component: Kernel
X-Mailer: bugspray 0.1-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250118_084446_489651_FB08AB1D 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
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

antwain.schneider added an attachment on Kernel.org Bugzilla:

Created attachment 307504
as best a detailed list on the actual gpio modes for rk3328 socs

for the sake of completeness, a small program to dump the states of the grf iomux modes for each gpio pin on a rk3328-based system, even though some gpios don't exist, it keeps the output aligned

File: poc_4.3.c (text/x-csrc)
Size: 9.16 KiB
Link: https://bugzilla.kernel.org/attachment.cgi?id=307504
---
as best a detailed list on the actual gpio modes for rk3328 socs

You can reply to this message to join the discussion.
-- 
Deet-doot-dot, I am a bot.
Kernel.org Bugzilla (bugspray 0.1-dev)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
