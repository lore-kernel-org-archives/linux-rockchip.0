Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23CB4CA0EDC
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Aug 2025 13:14:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Db/O/iKl40gJ3UY2LWBQoDG8XLoM20jdeG2MSaFRtQ=; b=iL0Gcfkk6Ikzno
	8ZEogZLh5LsDJIwjvRRqYMFj2n0qziyC3pf/awokgNB8eA5Knkn/ZrM3WlJR2sYKjZx5ic0JJBMPf
	2iteOKxyiZWTekJ+znvulwIxRsUyj0xmK1Q1yeAYbIg4BffAeSpHM5YTY9/XYFGVJ3ca5XHlOkJdo
	5YxEVfROz1FiMt5TBm+YtSNh72VSRZOkriYPs+IrvyZSb8o+CVeML17ap2Lyy8wXXkHeEilSwSLpk
	dNCnSXDeMqD/aqJL6TpsmLy88fjRHDgpErHv9qFb8vIPlCLoW8xfvRfqnh63ZQPB1Xx25DwI54Oji
	UYzn6Cxzt1JzfngYVsJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXn0-0000000GxXJ-1agY;
	Thu, 14 Aug 2025 13:14:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umUXY-0000000GTYO-2LSt;
	Thu, 14 Aug 2025 09:46:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=05/vse8ASg1P0/ndE2WSZb4gOfA6W4MnqPW426TsnGA=; b=qK8A472o2otBBti0xeI04GLtZl
	kw9ejz/ghw2oo30k2Zsr+FPLcZ3fCi5eGjlg5PAieWgKKLQ2DOkwcSMXs9Cp+NJ6NrEL7KMck8xjO
	SsYs1fWK9dqrJ9YQmMAHvMasWD4OSKqufhu/lXeukj8aF9Q6TicLdiCq57qzZEuJvHx0O6lh0QPJS
	+FJX/W0RlGN9YWtrnKoG78xxrHZdylEsZTNtOmNVPysjP+wuocXGKUhHvbEKnUa1E23GU0ACx6YW/
	xH+qrE1y+L4wuW7xzj383HRh8Qwnx8h3BHki8x3iv9P63LwW/2vGEDRo9BoGc29HYN9A8rhJD4iMa
	YgsU6psg==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umUXV-0000000GKio-0MGJ;
	Thu, 14 Aug 2025 09:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=05/vse8ASg1P0/ndE2WSZb4gOfA6W4MnqPW426TsnGA=; b=r2nCGCuyVC/DLCAypokD2yGjuf
	uoMbh4ejTqfrC1NXM7+9nH4NcB6kP7qhVOza6dAii9HF3fygtAt3YYOwmbs7nXgvGsRK4AOoYXlle
	SGxyG+07r6Uev6efb2C/vcujg22EIaaqDrhO7y44v8CSLwTNlr8SvcH9E9gWtJvWEAw+vp8kt6XDk
	TpQX2Cuh8sac73oJJAliw2ls97feDEq+cEct2y4B36jHSgqOfkk8kpxcB26GAY7b38HgUwuqGH1ki
	ilcjyr93XUHOYPJNdokZslNyLI/Hf8Rdua39dFoeoZg1T0zcCIIb48dHgLtZPeGo+erQ1RV1RBuxZ
	CixnDSCA==;
Received: from i53875b38.versanet.de ([83.135.91.56] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1umUXD-0002c8-8Z; Thu, 14 Aug 2025 11:46:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rudi Heitbaum <rudi@heitbaum.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: cdn-dp: select bridge for cdp-dp
Date: Thu, 14 Aug 2025 11:46:07 +0200
Message-ID: <175516475519.1500001.13265929847217022418.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <aJrlUzV1u4i65NRe@8eba3d7b3083>
References: <aJrlUzV1u4i65NRe@8eba3d7b3083>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_104629_291208_2024A20D 
X-CRM114-Status: UNSURE (   8.24  )
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


On Tue, 12 Aug 2025 06:55:15 +0000, Rudi Heitbaum wrote:
> Select drm bridge connector when building cdp-dp.
> This was missed in previous commit causing build failure.
> 
> 

Applied, thanks!

[1/1] drm/rockchip: cdn-dp: select bridge for cdp-dp
      commit: ea177a1b1efc6e42e73ee4a17581842cd254e006

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
