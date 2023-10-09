Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6797CD612F
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 20:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HdP63xMMIZvAYKr+L2bZDigpduF/Gceo9isB7sl27/A=; b=Tc+QKAbr/0/29m
	vbecAJV2/KebpaJeMiH3gm94k96luyJR+5p8LSBgMOXrWeEZv1gEQ2LWKxt+1ONYxR17d59Rsdrvu
	/4gxSc6ClacS+s0CN5ZpQ0bFBlFNdNGoPQKfx4UGA1mrtWvnRW1MFgLRQqBPOzt0ORIv41m+4yOtQ
	rwFxGf3NY18C/KJ4dhkh3YnP6SDWfUW8O2JV792RvsWzfgtEXYi7YKrkQ+BK6w3QB1JdbbvVnHuDI
	jITxXgqyDbfgsyxUp2SK7/ChxJ1uIdnaXIpeUzIxpEPKl1cx9q53FLKtfWjYejSPSvkzsLKcbNveF
	eHc8NTF4RotYm3QjdQ1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpx0M-00BaSj-0d;
	Mon, 09 Oct 2023 20:37:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpx0H-00BaPa-0k;
	Mon, 09 Oct 2023 20:37:26 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qpx08-00058Z-0N; Mon, 09 Oct 2023 22:37:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arnd@arndb.de,
	dri-devel@lists.freedesktop.org,
	u.kleine-koenig@pengutronix.de,
	linux-rockchip@lists.infradead.org,
	daniel@ffwll.ch,
	linux-arm-kernel@lists.infradead.org,
	airlied@gmail.com,
	hjc@rock-chips.com,
	Zhu Wang <wangzhu9@huawei.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH -next] drm/rockchip: remove redundant of_match_ptr
Date: Mon,  9 Oct 2023 22:37:12 +0200
Message-Id: <169688381987.192795.13711895828418269641.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731125304.87059-1-wangzhu9@huawei.com>
References: <20230731125304.87059-1-wangzhu9@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_133725_263401_B8221870 
X-CRM114-Status: GOOD (  12.46  )
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

On Mon, 31 Jul 2023 20:53:04 +0800, Zhu Wang wrote:
> The driver depends on CONFIG_OF, so it is not necessary to use
> of_match_ptr here.
> 
> Even for drivers that do not depend on CONFIG_OF, it's almost always
> better to leave out the of_match_ptr(), since the only thing it can
> possibly do is to save a few bytes of .text if a driver can be used both
> with and without it. Hence we remove of_match_ptr.
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: remove redundant of_match_ptr
      commit: 63a06c9fe30bf84d1ab6f07d0e408bd1d4ccaf85

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
