Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89E41C3ABDD
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 20:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mvyJ8LIzzr9tFZvxsNBdcDhcBnaf0HIFKYWiLwMMjl8=; b=1I1yJSY8nSOdFq
	H3VX+mYwIHVzi7bYnebd1UFoL5n2nLmzgu91io5Z//F/z05Uz3W8UPhVrB9BdeWsMEmNyknMacvos
	bmpFmhw3AN1VnStZUb+UJTd04To3QIOQWzLPABNZZqxLM26CuRWameDsY4ET71L4MdiVws3Btti/a
	vfwxN3QUzo6pe/+5Ak1Fx+276m8D8/lDtWF8u3cjrpXpg9m2rdZFxHZfsTLsEtTqPBAhbWZrO6POT
	QI7OaK3bHB0ZrgoHMV/f2QEIMbtQ9AjFyyKUVW+wp2dJwy74xC2GgZnfkFZvUvutUQtiaYKZsxnlA
	fZacVPzvS5ahxa35PaKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH7Bo-0000000APeq-2utU;
	Mon, 19 May 2025 20:34:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH79e-0000000APHG-4An0;
	Mon, 19 May 2025 20:32:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=lgc1mOORiC8HFkaMdvW9xX85kqMLmkBHdBu/nZcEIx8=; b=CuKCu/ifSJ0H3i3LkowTpcIUGR
	1p+wk74pfLBfZ6I681e9iiZHymozFIxIdm4I5XWIydfQPhBezlHnJ1aiGNDQ/+dTd6suyukIPHeIb
	FjUGkxeDG+N8o1X+3+a65XmfoHEIqRKmK6Sam0qThY6WLLcxabf1FhbvEpARG0y7m4KlHFssZAF4b
	+qZFbsTkj4OIufdQynOkXdAZaSE+o0Yn+OnpScdcCS9dNWYqb+jB/S4pcuMFXsXfwnhwFOMvLl6zW
	3QTYo7PQzZT8eaF+XPLe3AqUghxTyuttxOQjNzL8Z9y3oBS+R9gvj+R194SlNOgY+mv6TIoV5WOB0
	GqdD5J6g==;
Received: from i53875bdb.versanet.de ([83.135.91.219] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uH79R-0001JQ-OP; Mon, 19 May 2025 22:31:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	andrzej.p@collabora.com,
	hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	tzimmermann@suse.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: cleanup fb when drm_gem_fb_afbc_init failed
Date: Mon, 19 May 2025 22:31:45 +0200
Message-ID: <174768669421.2818279.4158433368328822949.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250509031607.2542187-1-andyshrk@163.com>
References: <20250509031607.2542187-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_133211_050270_12F6891A 
X-CRM114-Status: GOOD (  10.70  )
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


On Fri, 09 May 2025 11:15:59 +0800, Andy Yan wrote:
> In the function drm_gem_fb_init_with_funcs, the framebuffer (fb)
> and its corresponding object ID have already been registered.
> 
> So we need to cleanup the drm framebuffer if the subsequent
> execution of drm_gem_fb_afbc_init fails.
> 
> Directly call drm_framebuffer_put to ensure that all fb related
> resources are cleanup.
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: cleanup fb when drm_gem_fb_afbc_init failed
      commit: 099593a28138b48feea5be8ce700e5bc4565e31d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
