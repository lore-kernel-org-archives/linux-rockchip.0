Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA2B3C52D7D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 10:42:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Ql+phID20Pq9e9rDED3Aj+fHORN5rhK0ijn1pgWkKU=; b=DZeV84pEV7oKFH
	VNNXARhHCZH+AKxKlMw/VYVVG9EMskAlxyVQqUGKiW2tIPWwkDG2vICY16zuN4aBT6UkpTEnetxoW
	yt/LDDknbaLeMxM+Pol/D0SFxt0T/WfZK/Q+YAqH+GqRZgoFd5vCs6aHCnbG/hlnnLGfuMW9NHpJa
	ArLq1RfaKDjFmzoLi8EVjZrcxXXvC+2BfaoH2eZvzSIkun/9unlhMWVCoLUvhlQjxHLlIjqsgi9f+
	jT4ccaqOvKzY3M5cAHTBmS5gvXK3IR6MTM1q66y9lOzselbUwH3AEGyXHgFypFGS8/5U2dbTSCurf
	h8KUVjtgnXQaF6JqKXag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seXwO-00000009fIJ-1fWs;
	Thu, 15 Aug 2024 10:42:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seXuf-00000009egk-0Ts4;
	Thu, 15 Aug 2024 10:41:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=a9GBbYPkeTfUE5fCEbTb5Vw8tBG93HmtU9gtgrmT2E4=; b=KnZffoTboGeiLJ31fWWRKFDwo8
	gj8Ve/5+yxpOV6um7lLHc8KK4lyjkpPHARerdBEoi1xe4aupb2DWRJZF41FaR/zyzb/maEN6EKJBS
	ozdIBQerQM9CUW5TBcCzcbUWqSf2UpF6/W33zSHPR0wIsVDTJlqrJ49qMipD5oyMhiE/hxr9G95eR
	qVSd0IBduLgAnKu5pqnj69AN3uX3LoaN4Y8qexV1+B9BcNrpZdYzfAP8PGhtqQ9gKLHicaQeSsviZ
	g7UBWPcr6yZqIClmLcrctpZDlu6i2aZySE0DB6T8mGy9aviB36/8Sx+n3BGIqjwM+kcrRCQeInA42
	/Oa88cIg==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seXuE-0000nZ-US; Thu, 15 Aug 2024 12:40:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Daniel Vetter <daniel@ffwll.ch>,
	Andy Yan <andy.yan@rock-chips.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	David Airlie <airlied@gmail.com>,
	Sandy Huang <hjc@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: Constify struct drm_encoder_helper_funcs
Date: Thu, 15 Aug 2024 12:40:28 +0200
Message-Id: <172371788341.684432.4454726624748844330.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <128f9941aab3b1367eb7abca4ac26e2e5dd6ad21.1720903899.git.christophe.jaillet@wanadoo.fr>
References: <128f9941aab3b1367eb7abca4ac26e2e5dd6ad21.1720903899.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_034101_157736_B2D9EBEB 
X-CRM114-Status: GOOD (  10.16  )
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

On Sat, 13 Jul 2024 22:52:05 +0200, Christophe JAILLET wrote:
> 'struct drm_encoder_helper_funcs' is not modified in these drivers.
> 
> Constifying this structure moves some data to a read-only section, so
> increase overall security.
> 
> On a x86_64, with allmodconfig:
> Before:
> ======
>    text	   data	    bss	    dec	    hex	filename
>    7458	    552	      0	   8010	   1f4a	drivers/gpu/drm/rockchip/analogix_dp-rockchip.o
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: Constify struct drm_encoder_helper_funcs
      commit: 7af62003181f8589b3b597ef96b147d4303771c4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
