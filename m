Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3897BC433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Oct 2022 22:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwKPO0QK7LBPHUk8vAgmVs11uzNhIY4LtGvRLPdqBUA=; b=ol1S0uLRRitv4r
	Bf7LrqCLmZ4w5m/RHFRf17IlFuC2l6TQst2/hujbX0Pm9Wz52ra7rX2IO9za0/4s+baR8pWEA+wEm
	qU1lR9isHPOfeuXJ4R9hd2iGaZPAueKKA75Lsd48/XCQneFBmkvbdV3X9I4g3yiYw0h/mSpg9B2mw
	C7MPDkHZpRHi9BAm7Ozn6UupmxHqrnoIaTLGk0wTHdmKkodnuLRdLeKTq7uaXhfig6lPn91D9gz4C
	3zar0UcgpGxNEJqoKQhqBCP7zd7tMPjStlPwWi58qNv2zYlt/j/j5gfrtIey1C0pfKyu0t3RVg2Om
	nWUxHpFSvKZhXVXkeCBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oou0n-009pAR-Vn; Sat, 29 Oct 2022 22:09:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oou0a-009p02-Up; Sat, 29 Oct 2022 22:08:54 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oou0W-0008NZ-5E; Sun, 30 Oct 2022 00:08:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
	hjc@rock-chips.com
Cc: Heiko Stuebner <heiko@sntech.de>,
	daniel@ffwll.ch,
	Abaci Robot <abaci@linux.alibaba.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	airlied@gmail.com
Subject: Re: [PATCH] drm/rockchip: dsi: Remove the unused function dsi_update_bits()
Date: Sun, 30 Oct 2022 00:08:43 +0200
Message-Id: <166708118165.1656095.106090992653500085.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221017084330.94117-1-jiapeng.chong@linux.alibaba.com>
References: <20221017084330.94117-1-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_150853_005700_D038AFCE 
X-CRM114-Status: UNSURE (   9.23  )
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

On Mon, 17 Oct 2022 16:43:30 +0800, Jiapeng Chong wrote:
> The function dsi_update_bits() is defined in the dw-mipi-dsi-rockchip.c
> file, but not called elsewhere, so delete this unused function.
> 
> drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c:367:20: warning: unused function 'dsi_update_bits'.
> 
> https://bugzilla.openanolis.cn/show_bug.cgi?id=2414
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: dsi: Remove the unused function dsi_update_bits()
      commit: 3daf391fee830f2343cc6b1ba131b1b5115dea1f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
