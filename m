Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68828C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Feb 2022 17:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eb+oD6FzpL6al7CLYUHGFkFpWEEpNwa/vtgEnmiXlMA=; b=OnGX9peSGXewg1
	Vhg22B1xOvdGwW2a+ybIlPC99i3wyYP28L7ZudY+I0tWe39NQ4hkD4aiY+GBT+tjgDUH8DdyO6i6r
	5Ayy5fn5pIOBITmhALB4jqVBzUlLyBP/aTwPW8PTbPxFGC9q8SpRnfZEinRxAHra2u5zwZTG3iwZ2
	Bpwi880kwEqF+YCs6ULLSLPyQNBOIkzIWtXVs6Yv7lmVZQTWSCvhtd8c/eFuqNBiC6OCPH+gXD1gH
	50zfyyG76y2P0ipTOIDD4na5Yq/urbzZMOSQvKM4Pezv4v1GNyDp3jR0Gcvg5mA1zp6R2hxklSJE5
	+sha/VVDAahoh+lIkGeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHU2e-00F1QO-JX; Tue, 08 Feb 2022 17:12:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHU2b-00F1Pg-D5
 for linux-rockchip@lists.infradead.org; Tue, 08 Feb 2022 17:12:34 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nHU2U-00034v-M7; Tue, 08 Feb 2022 18:12:26 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Brian Norris <briannorris@chromium.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Cc: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, stable@vger.kernel.org,
 Mark Yao <markyao0591@gmail.com>
Subject: Re: [PATCH] drm/rockchip: vop: Correct RK3399 VOP register fields
Date: Tue,  8 Feb 2022 18:12:25 +0100
Message-Id: <164434033775.248576.1440613083224554584.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220119161104.1.I1d01436bef35165a8cdfe9308789c0badb5ff46a@changeid>
References: <20220119161104.1.I1d01436bef35165a8cdfe9308789c0badb5ff46a@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_091233_463993_6F3F21FD 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
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

On Wed, 19 Jan 2022 16:11:22 -0800, Brian Norris wrote:
> Commit 7707f7227f09 ("drm/rockchip: Add support for afbc") switched up
> the rk3399_vop_big[] register windows, but it did so incorrectly.
> 
> The biggest problem is in rk3288_win23_data[] vs.
> rk3368_win23_data[] .format field:
> 
>   RK3288's format: VOP_REG(RK3288_WIN2_CTRL0, 0x7, 1)
>   RK3368's format: VOP_REG(RK3368_WIN2_CTRL0, 0x3, 5)
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: vop: Correct RK3399 VOP register fields
      commit: 9da1e9ab82c92d0e89fe44cad2cd7c2d18d64070

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
