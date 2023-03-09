Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C736C64EC4
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Mar 2023 01:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/3msbWrlzvkBHy6SNEGeER8HAQeA48AcsSR/b4y2Iw=; b=prq1MZOu7E8j/A
	xMuhZjbavrlmJJNmGpvdA82a3QilfUz0Usp4Om94Ls90excmIrZrTSW1MjWRD1A6FzSG8rwngzUQ5
	7WBGNBByNHINc5BlaQTFKMXZeQbA889q/GXjxo7HrDqtY5L5Ecqozcx1vS0ORYnf1Q18C8cM+asui
	LtdKdx04hasY7FYI1A7eFX1FJ/znrZ1qxEFwGLTFqNnsbhIJBqoU4bKHZUKNZ58/pejrvutQ1b5NQ
	kbH61KuRSY1vUjt9so5msW1z0s0aFS6RoKKZiMFV0SNA46w89k4Va/p9U0o6hl6MxNBkET0NAt3r5
	LvnLhr/HAysWM0OCiFmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa4ky-007MdV-Jg; Thu, 09 Mar 2023 01:07:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa4ko-007MZO-6y
	for linux-rockchip@lists.infradead.org; Thu, 09 Mar 2023 01:07:35 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pa4ke-00041d-8q; Thu, 09 Mar 2023 02:07:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	dri-devel@lists.freedesktop.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de,
	FUKAUMI Naoki <naoki@radxa.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Dan Johansen <strit@manjaro.org>,
	Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH v6 0/4] drm/rockchip: dw_hdmi: Add 4k@30 support
Date: Thu,  9 Mar 2023 02:07:21 +0100
Message-Id: <167832398243.362678.10460061288778589921.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230216102447.582905-1-s.hauer@pengutronix.de>
References: <20230216102447.582905-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_170734_270974_E5556699 
X-CRM114-Status: GOOD (  11.21  )
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

On Thu, 16 Feb 2023 11:24:43 +0100, Sascha Hauer wrote:
> One small fix compared to the last version, when checking for valid
> resolutions I accidently compared the current mode width with the
> maximum allowed height which resulted in wrong resolutions being
> discarded.
> 
> Changes since v5:
> - Fix wrong check width vs. height
> 
> [...]

Applied, thanks!

[1/4] drm/rockchip: vop: limit maximium resolution to hardware capabilities
      commit: 8e140cb60270ee8b5b41e80806323c668d8d4da9

Dropped the height check from the mode_valid function
and adding a suitable comment to the commit message.

[2/4] drm/rockchip: dw_hdmi: relax mode_valid hook
      commit: de13db32b0f89a040b50a51d129b9443159a660a
[3/4] drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
      commit: 83b61f817f43ed67572d1e241c9f552e0a8bfff4
[4/4] drm/rockchip: dw_hdmi: discard modes with unachievable pixelclocks
      commit: d13b10ec6696b0c523fa21b65c7ff6f246a49560

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
