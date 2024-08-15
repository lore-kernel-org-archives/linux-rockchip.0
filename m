Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52704C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 17:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jz8GEiYLrhu5J41dvoUbOtOhpYVsfdN0QBlVIefdtbI=; b=PdgJtYXO0pTCxN
	sBEiSrQOrYbaqO9OsWPSevwjEUx+iKHeEv/SWlVIceWr9Lt4t70bAlWGikAyzGcvzUZAWZCzEHvUn
	xyPpPlCzV+km806P6Ofb1IuBALuzlItcJCS9SCAR8TTPqWsW2kTg1p2UaHmVNK9lNXo8RrjgTmxLZ
	cfxRen96te2QDs8iTpGgHKo79S7o7vZlEo4zEGddZU2faBmyxTSg77l7l1kDje7AM1CXpPl+Sy3wL
	q5x3G7cqo2kEJ6ZBughm2bhjpJaZO8HuJTqWza/MvWmEuEM0yiAi0mbE7nIx3ceA6CMgb4jswBRyv
	iI05ovclOTDFgjuA5pGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seeKA-0000000Ae0f-2rnK;
	Thu, 15 Aug 2024 17:31:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seeK6-0000000Adzt-3Ksy;
	Thu, 15 Aug 2024 17:31:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=sIqbPZiRjTrgtxDOdljm9mWZF6jTEwBez60mkfjEyt8=; b=Pvls6HWN8l5GaiaDcc4IV0GFI0
	Pus+1D2WrPk64VPX8x33SMmVLSB3wXemWYDEjQ1e/Qa9ntKX17Y+yCYRlG6svngd78oKxCXbwG0Rh
	WG7bS7uAYSEsv66cguoIuGyGLzfI8htBJvzRdSr0aUNImX0ZcoeM0ZYRsm2PUQmYrkvk/JhGyP9rc
	LsOFL6aSrmSYu7gzD0EL40sxCCVcdjJYP1ToLsPCEad1KnRR0trriP2lUiCF3FtNBv/1e6UrCYdWl
	qw/GSaQwOCyFMBAmsC72zyzymTBh+X3C3g0VOra/TAOt4aZJMdnalJ7+HBacznfCoA/TiprlZmrq3
	OaK6ScQg==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seeK3-0006A2-RC; Thu, 15 Aug 2024 19:31:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org,
	Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 00/13] rockchip: Enable 4K@60Hz mode on RK3228, RK3328, RK3399 and RK356x
Date: Thu, 15 Aug 2024 19:31:38 +0200
Message-Id: <172374306461.802599.8555618948226226004.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240615170417.3134517-1-jonas@kwiboo.se>
References: <20240615170417.3134517-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_103142_874703_74F682FE 
X-CRM114-Status: UNSURE (   9.77  )
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

On Sat, 15 Jun 2024 17:03:51 +0000, Jonas Karlman wrote:
> This prepares and enable use of HDMI2.0 modes, e.g. 4K@60Hz, on RK3228,
> RK3328, RK3399 and RK356x.
> 
> Patch 1-3 fixes some issues to help support use of high-resolution modes.
> 
> Patch 4 fixes reading of EDID on RK3328 when using a forced mode.
> 
> [...]

Applied, thanks!

[03/13] drm/rockchip: vop: Allow 4096px width scaling
        commit: 0ef968d91a20b5da581839f093f98f7a03a804f7
[04/13] drm/rockchip: dw_hdmi: Fix reading EDID when using a forced mode
        commit: a5d024541ec466f428e6c514577d511a40779c7b
[05/13] drm/rockchip: dw_hdmi: Allow High TMDS Bit Rates
        commit: 1213b65e436d64611cf74ef8f005b22f6793275f
[06/13] drm/rockchip: dw_hdmi: Add max_tmds_clock validation
        commit: 5f5f657a9c3efe16a2e1455b840c5009f9c75af5
    Fixed the double rk3228 in the commit message.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
