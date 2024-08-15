Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACBF3C52D7D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 10:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7WaJ7CAidKZNAIoNW1Fs1uF50jyK0r7bdyrLEPypxfM=; b=BJp4kvzI4nC8Dy
	rRbw9dg7EVVd+oHs+4XcnJVyJKPj36YGZjMQW1e8CFMMkvAf9O5/jLQxyaro3jo9yQb2dcHJ0/mzc
	0+ASy/EC1AyQiJmhvBsYJDdOHEZHiaqIaLXDAK3KLlQsR3rezRLeuZWFRQg5fCbErgk8Yok/aiInM
	FduFgPhP5DVzZuv6mETtpdd0OOBGgtUihK6Be/hEhG3XP8UUbMbqm8rwjQVMh+VL7z+zFbn9z1F8G
	1TNWyo9WEvgK5UBz5QmtYLogTBtQkLQKl2gbeg5wDS4FFm5o2FgzW0Zgvpk/pKJ0KsuCIi0Tz4GgZ
	iXoMDCNpweOwSUrlydAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seXvl-00000009f4H-3bre;
	Thu, 15 Aug 2024 10:42:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seXue-00000009egL-1eym;
	Thu, 15 Aug 2024 10:41:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ZfYK7CYAUIxMbRcTcFjunsEAy/oAQUNbSaQ1fM7YYXY=; b=BNvAh2yJ2Ar5mFtoajYWdpn1vE
	cTvt45WFpfMt3Wa+9OH92u9nf4ZISyRgfbZP9dt+FPVs/jzsNwEj0JcLPl9qCvDz8kPZxeXath+7G
	p4iJnf6IkFLovBjYppTzUFIpzEOiog0k3kvM9Y3ArNz6IFUgn5NhZtmdq+S5IxFScLAKQhfnCyu+a
	XxSpdzFxjQwNSESHQK6jcW4E0U0Q5AAZHgGIFQ4MvnyOar9GoS6AVdvMgDREozm99I9xhUXzkU84W
	LdXkSR12fvCZ4wcjVLg2XRgyH7vm7SqXDD+0fn7+NkqmC4aNuqjyCT6NRfhZxJJHdr4iyz39CyG3T
	Tioa8Igw==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seXuF-0000nZ-IW; Thu, 15 Aug 2024 12:40:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Daniel Vetter <daniel@ffwll.ch>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Sandy Huang <hjc@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	kernel@collabora.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/4] Rockchip DW HDMI driver cleanup/improvements
Date: Thu, 15 Aug 2024 12:40:29 +0200
Message-Id: <172371788340.684432.15742063069748528028.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240813-dw-hdmi-rockchip-cleanup-v1-0-b3e73b5f4fd6@collabora.com>
References: <20240813-dw-hdmi-rockchip-cleanup-v1-0-b3e73b5f4fd6@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_034100_443329_056875BF 
X-CRM114-Status: GOOD (  13.41  )
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

On Tue, 13 Aug 2024 00:15:07 +0300, Cristian Ciocaltea wrote:
> This series provides a few patches to cleanup/improve the Rockchip DW
> HDMI platform driver.
> 
> Note the patches were initially sent as part of [1], in an attempt to
> add support for the RK3588 HDMI TX Controller, but were removed in the
> next revision as the patchset followed a different development path,
> i.e. not relying on the existing driver anymore.
> 
> [...]

Applied, thanks!

[1/4] drm/rockchip: dw_hdmi: Use modern drm_device based logging
      commit: 1b8f576c69588ddee9e093d322449bb069e51f6c
[2/4] drm/rockchip: dw_hdmi: Simplify clock handling
      commit: d2a80cb57a017c97d40c35f6b0cc7d103065f0cd
[3/4] drm/rockchip: dw_hdmi: Use devm_regulator_get_enable()
      commit: 6a3283603c73e366c946195f0cfd30fe56d603be
[4/4] drm/rockchip: dw_hdmi: Drop superfluous assignments of mpll_cfg, cur_ctr and phy_config
      commit: ee689a9500efb4daeab45f44d43c782fc214dada

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
