Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49A0AC4829A
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 20:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1vG6hGF9FcbakVytEayJW1TRtaN+nqqkmk+3It+kZw=; b=ZCYH3OK+0PQp8v
	k1uzdK3xJjYe/YhGWXk8Ha1Z+W0RpbgnBPOV3vuRNTky/NqjlVZQe3ZiyTt76TS9ZvWFNs4c8QvUl
	X28uSFHkTvhLdYQ/tSnY3seiuV2BuVYAe92J+hwIXJUnL8NyEAuh1TjrMqAMlQBSFjz5JH712l+zb
	uspz1kW4cqa6RxXxRHNp8tf+YQMTUDzK678Z8pjHDBpah3WCTD3yCxdhWdlWC+1F2//lgxHF3HjNy
	L+fXRbEODObfkNNeGBf/jMB+xwD8GpcgFAgOLGse01oZrLIgj/yYSCWkf2SN14YWmMJbwDy/18BfK
	vrNsINMECIKateg5erLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZz3a-0000000AZQ8-1LAA;
	Tue, 13 Feb 2024 20:07:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZz3X-0000000AZOD-2kHj;
	Tue, 13 Feb 2024 20:07:04 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rZz3M-0000G3-0B; Tue, 13 Feb 2024 21:06:52 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	Sandy Huang <hjc@rock-chips.com>,
	linux-kernel@vger.kernel.org,
	Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	dri-devel@lists.freedesktop.org,
	David Airlie <airlied@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Daniel Vetter <daniel@ffwll.ch>,
	Maxime Ripard <mripard@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dan.carpenter@linaro.org,
	kernel-janitors@vger.kernel.org,
	error27@gmail.com
Subject: Re: [PATCH] drm/rockchip: vop2: add a missing unlock in vop2_crtc_atomic_enable()
Date: Tue, 13 Feb 2024 21:06:49 +0100
Message-Id: <170785480543.3398384.2668111589921036012.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119190841.1619443-1-harshit.m.mogalapalli@oracle.com>
References: <20240119190841.1619443-1-harshit.m.mogalapalli@oracle.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_120703_717318_DAC50C70 
X-CRM114-Status: UNSURE (   7.73  )
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

On Fri, 19 Jan 2024 11:08:40 -0800, Harshit Mogalapalli wrote:
> Unlock before returning on the error path.
> 
> 

Applied, thanks!

[1/1] drm/rockchip: vop2: add a missing unlock in vop2_crtc_atomic_enable()
      commit: b6ddaa63f728d26c12048aed76be99c24f435c41

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
