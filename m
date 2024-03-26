Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36746C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 08:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AopNr/RC0zBYXak+DPd65/Uioq+xMgCapdpY4rSKI6k=; b=zgmcmKsL5XsWrE
	+zdp91IbuF+fLb5QDFY+udYM2dv9/9Hk5H7iTrRhwifq3MPWdJd440uqyD5Il2Cp7scKrTXDFpeZT
	SXaQYpL4C/OKrIDNb54NtGbQvovN5Qnh8BgVfCvx2CYT3Iy4NUMh9m9HVPawtFAleV/C1lNw+0VaW
	Ba6PWUyIyPRwghKVWNt6YNLkyYknQILxkXRDNUJpZLnmSiHtybWetH/QadMOvln5j5oxEfiLeSGrI
	y1Xgf2NQfGZjjsRP7ET/X+PyME0OmNFoJlvRxbyGGe3G2k7seZNO+Kxbyh61B8v1SekkgunyEN8TF
	xXtiyCvwHQcLvWvgwsLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp2Yk-00000003gR8-1M7O;
	Tue, 26 Mar 2024 08:53:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp2Yg-00000003gOY-0wC2;
	Tue, 26 Mar 2024 08:53:28 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rp2YQ-0000nO-2v; Tue, 26 Mar 2024 09:53:10 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	hjc@rock-chips.com,
	Andy Yan <andy.yan@rock-chips.com>,
	linux-kernel@vger.kernel.org,
	s.hauer@pengutronix.de,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: vop2: Remove AR30 and AB30 format support
Date: Tue, 26 Mar 2024 09:53:08 +0100
Message-Id: <171144316040.1076426.18341528146329962592.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304100952.3592984-1-andyshrk@163.com>
References: <20240304100952.3592984-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_015326_299889_17C982E4 
X-CRM114-Status: UNSURE (   8.97  )
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

On Mon, 4 Mar 2024 18:09:52 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The Alpha blending for 30 bit RGB/BGR are not
> functioning properly for rk3568/rk3588, so remove
> it from the format list.
> 
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: vop2: Remove AR30 and AB30 format support
      commit: 905f7d53a1bc105b22d9ffd03dc11b6b42ec6ba6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
