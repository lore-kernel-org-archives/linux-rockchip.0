Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91630C021B8
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 21:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4n+tGAdjzONhPwW7uNqvnezVFxScereLRE7dT5d/3Fw=; b=5GmBSMr1ovat1A
	bZMLaaQ9MCZwO+E5fXkjjTHtNY+T9P8bakFZlc/DmRYTFzB5t55vzt6D7F6s9o2K2MGEJYTmubNvE
	2dohYgOMrMvT6vUn8sjL2gB3a1gszl5JgN3F0Fko6bXXYKlB1aVpWz3jQ0cZfiWseOC9GujPWJC2v
	dCJzGVPkJrOXD1nrmGccUDxfQgyNRklxGSYP7NcL6ij2oGu51brJ/j2hfbo1Sr0qmZD+zGecWGeXy
	dPLXFHVOzYTHETsQDiM+oyCTCCeJll0Z1q5yBsD39Yv7/yAWqzSQzrvsPT85puN8/3E/uDTkVBfBm
	rRBKFZGvJ0XHAfdZu4Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpaCu-00000006LEz-1MUM;
	Tue, 04 Mar 2025 21:53:44 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpa6m-00000006Ka5-0HE0;
	Tue, 04 Mar 2025 21:47:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=eqkQ8jxL06OZOj6WptzRpdH3n3jo9zyINbgB/IlYG8I=; b=BhQCqKm9uWw7rPgzwaB62xEoV9
	jZwZRFzqX0WlykwunY/ksobRzq33VJim3uaVX7+MaxeWq2bdtFdMpT0C8bpVlFnC30WpTvOHrxMc7
	6qDzfdqfpw/huJw+0tW2Rq+KIdowB06mQhAJ6d0ctNzOiYn1pCnzWMd+xpdBT04Aq7EWwMkrpOSWt
	KN19nIioHQYj4d0GZ2gB/Px5Z/sUJSzGsB8bzoIhLrVmOtXxbJDWcwknpVwZAghMLOcE1kfLjhzjO
	NMJOplXFmiMaQiDSgAKftLZYIHq3TwFveJo5+SvZJaCfzBiyomJNjAtIP7p1x39yVe1V7U/CFrdut
	Z3Mrfp3g==;
Received: from gloria.sntech.de ([185.11.138.130])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpa6j-000000049T3-2OxG;
	Tue, 04 Mar 2025 21:47:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=eqkQ8jxL06OZOj6WptzRpdH3n3jo9zyINbgB/IlYG8I=; b=U4fHcHpD4mm0027TZsBlsn8aCP
	t6vPvt66OTGQpQnQ3zUengcnEtst/6IplDjIY/XQ1pUucRlneEW57FeWxKJCNgxxSZXTggoq/URBv
	+8SPKcYHjg1SVpabIfeAB3FLWkPYT3qRfUJEb0n/U5M4C4P/hXdhocklCNksnSR1KnkOn/9diW8a/
	QXEb55JGJ94fw/co7ufVsrKjsWVzUmlmyyFf5yYyy+7RAxdPf9vTz9Jfb55qm44Vhd5yabbgSyWhZ
	GPgaw/rZk5eZlkFNaISUWJ7nZYUY/aZLF/B8gkKbcE2vVZtxjj+Ud0T4zXg/X80BahofLh/0yPVE0
	PZ/smrig==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tpZZL-0006E9-C4; Tue, 04 Mar 2025 22:12:51 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	quentin.schulz@cherry.de
Subject: Re: [PATCH v3 0/3] drm/rockchip: lvds: probe logging improvements
Date: Tue,  4 Mar 2025 22:12:41 +0100
Message-ID: <174112269652.340957.10714067153847883727.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250304124418.111061-1-heiko@sntech.de>
References: <20250304124418.111061-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_214721_636018_F14FDB7B 
X-CRM114-Status: GOOD (  10.02  )
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


On Tue, 04 Mar 2025 13:44:15 +0100, Heiko Stuebner wrote:
> Getting the panel already uses dev_err_probe to stay silent, when
> the panel just probes later, and the lvds defers.
> 
> But the phy needed on px30, also has the capability to probe after
> the lvds. So make the rest of the lvds probe/bind logic also use
> more modern logging than DRM_DEV_ERR, that is deprecated anyway.
> 
> [...]

Applied, thanks!

[1/3] drm/rockchip: lvds: move pclk preparation in with clk_get
      commit: d4f5efb9139cad34823f265053c57baf6af3c70c
[2/3] drm/rockchip: lvds: Hide scary error messages on probe deferral
      commit: 37c18639504aacbd31371f562fabafdb890bcd2e
[3/3] drm/rockchip: lvds: lower log severity for missing pinctrl settings
      commit: 4006be2f77cd26d065133b338dc51f59857d20f0


With some freedesktop.org hickup, I forgot to send the "patch applied"
mail, when I applied the series this afternoon, done now.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
