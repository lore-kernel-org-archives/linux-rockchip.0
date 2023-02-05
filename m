Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E28CAC636CD
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Feb 2023 14:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZcxbV9nTMfpt6Vl9RRnraIG7WalxE+lQPQL7kZ/hTY=; b=i68PMby6iVZ6Ph
	IpBNIQNE06o66vXFPcQiUxyn/SMoO62gpyQkvlOCdGjWvBxmmebuc2vqdjMP0COA7HAJouY1duca4
	f0bjOVX5BMmDFQL/EKytbKHB+jVKzuokwq0Dlxs30Hj4NpGicmcS395nkN6GA2mKpY3xeNTJpggWq
	JTPUDdbMDPg/p9iKDkobo6o1D5M0V2iB+mCdwprEzFs7KrdzfqoQ9XAmfHdKEAtDkdYDIkvnQw4bh
	H4AbswgFdHyvpVeBuBmXfd9dO8omcgbcEcRa9/O848Stoiy1UfONjT7YmvRHadBIxTnjYUMimazHR
	R5cwTy3aWvxMPo2jyf5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOgRq-006Rir-0Y; Sun, 05 Feb 2023 14:56:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOgRb-006RcT-UR; Sun, 05 Feb 2023 14:56:41 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pOgRN-0007OK-2c; Sun, 05 Feb 2023 15:56:25 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org,
	Rob Clark <robdclark@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	David Airlie <airlied@gmail.com>,
	open list <linux-kernel@vger.kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
	Rob Clark <robdclark@chromium.org>,
	Daniel Kurtz <djkurtz@chromium.org>,
	Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH] drm/rockchip: Drop unbalanced obj unref
Date: Sun,  5 Feb 2023 15:56:22 +0100
Message-Id: <167560896727.1025063.1209601146004303880.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230119231734.2884543-1-robdclark@gmail.com>
References: <20230119231734.2884543-1-robdclark@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230205_065640_004170_880B04FA 
X-CRM114-Status: UNSURE (   8.13  )
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

On Thu, 19 Jan 2023 15:17:34 -0800, Rob Clark wrote:
> From: Rob Clark <robdclark@chromium.org>
> 
> In the error path, rockchip_drm_gem_object_mmap() is dropping an obj
> reference that it doesn't own.
> 
> 

Applied, thanks!

[1/1] drm/rockchip: Drop unbalanced obj unref
      commit: 8ee3b0e85f6ccd9e6c527bc50eaba774c3bb18d0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
