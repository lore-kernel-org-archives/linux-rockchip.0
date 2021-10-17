Return-Path: <SRS0=g7df=PF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D6A4C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 21:52:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EC6F661027
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Oct 2021 21:52:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EC6F661027
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OEaXGSFjAN+6vczgNL8XpZhrObvToGvcQwPp/NkKChU=; b=ACe1cqsTqApDoN
	vSGRnXU1F87s6zplMo3xUtqN5Oq1oYRn1yfynCThNfWVpx3dN2KYNrO2shh7/JztY8OELcbhV8Gg8
	Toeu59S0oidRsNheM/fAkmv39sbkXN82r9JFDlwnewaWc33FoEi95TQMmoZbNYzhACfS3x7Ttzr3M
	oZdOyPaS24+n8Co2FhX0gB1ctV+6HYMtFtsPV47zD+ugPc62z6IgeLLDthySmVCiayjs49H51dHP3
	yUjXT/zPipwAeKFkE4bnOvIisx1aYfGUReUlX/855lR10HS/9+RPePPy+PAcEPh3oFrPPPFajepoy
	lyJYNacgHt331JPy2TLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcE5D-00DOiq-N9; Sun, 17 Oct 2021 21:52:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcE59-00DOhi-S9
 for linux-rockchip@lists.infradead.org; Sun, 17 Oct 2021 21:52:41 +0000
Received: from p508fd4f7.dip0.t-ipconnect.de ([80.143.212.247]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mcE56-0004w2-Eg; Sun, 17 Oct 2021 23:52:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Thomas Hebb <tommyhebb@gmail.com>,
 aleksandr.o.makarov@gmail.com, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wenst@chromium.org>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/4] Fix Rockchip MIPI DSI display init timeouts
Date: Sun, 17 Oct 2021 23:52:34 +0200
Message-Id: <163450753815.562592.9456022037085526003.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210928213552.1001939-1-briannorris@chromium.org>
References: <20210928213552.1001939-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211017_145239_930341_C1A7586F 
X-CRM114-Status: UNSURE (   9.43  )
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

On Tue, 28 Sep 2021 14:35:48 -0700, Brian Norris wrote:
> The Rockchip DSI driver has had a number of bugs over time and has
> usually only worked by chance. A number of users have noticed that
> things regressed with commit 43c2de1002d2 ("drm/rockchip: dsi: move all
> lane config except LCDC mux to bind()"), although it was fixing several
> real issues of its own that had been present forever in the upstream
> driver (but notably, not in the downstream/BSP driver).
> 
> [...]

Applied, thanks!

[1/4] drm/rockchip: dsi: Hold pm-runtime across bind/unbind
      commit: 514db871922f103886ad4d221cf406b4fcc5e74a
[2/4] drm/rockchip: dsi: Reconfigure hardware on resume()
      commit: e584cdc1549932f87a2707b56bc588cfac5d89e0
[3/4] drm/rockchip: dsi: Fix unbalanced clock on probe error
      commit: 251888398753924059f3bb247a44153a2853137f
[4/4] drm/rockchip: dsi: Disable PLL clock on bind error
      commit: 5a614570172e1c9f59035d259dd735acd4f1c01b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
