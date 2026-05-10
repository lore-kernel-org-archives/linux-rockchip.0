Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98A60CD3427
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 May 2026 07:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cBj9XrpI9Y1T+UiRjix1hCG1ZLVje1jM6ViRBlcnXWI=; b=31mNwtiYpDpuKg
	ql4NNWrbVbqIA6A1FOlA7VvvMX048dJAE+bwTdTdNqL3ICWgy1ObBRIqpa5j+tH78UmkWae1qc3gZ
	0px4+smpUbzhMD42evl6AjqGZ9PCLjTCU2Cszk5e6OxV/yzeyO3c9I8aG6SWjjQ+EA2sDJ+kgyEVh
	8g8flykGtFAlCTgNk4BMGYqtWg/mfSXXKQolkhCdy24tDZsSHfOjK+fnoFh9IKYvMXYqbCNcC1PEn
	1dGBI+YlSUXGDgolrrDLvXvDVDYtkqh2QowXPkqTl0sCZKzFHrRdIiNDmjAR5vc/COt0ejTz6FRYh
	dw1iwnQR0qu8dBYT1AIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLyiB-0000000ALxJ-30Eh;
	Sun, 10 May 2026 07:36:27 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLyiA-0000000ALwW-1QEi;
	Sun, 10 May 2026 07:36:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 569456132E;
	Sun, 10 May 2026 07:36:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87E05C2BCB8;
	Sun, 10 May 2026 07:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778398584;
	bh=BPNo5pN9Nh0GjrveqNQIy/7dB1DQCVUuMTqlOt1ZeBk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PCGcnOgRXDuMvtvCY2xs7f69k5bAD2hjMPy6D7dQb6oqVYLrWc6UtBd4DVVsAa9IO
	 AUiqzWiHjZ0EqyPIiGtyndWuJHbEWUTxyAngADzSdeZ+t2kBDML3QJfxjxHLbyCMln
	 EV9Qi5w/56HlHLaDt4zmaw35XM2t7O5PVnvoc3aCBjcWxNwE68gHipux7zNZPlTS/t
	 y7Xm8e3UnoZe/N/ywiuKtlkiSrk4wUSrvHt36ks3yuXaHMAq8QwtvtE1/YG1HssPNy
	 WpDwyDbnyUt1uNNXGP+wUf/eNp/JAYku7TSpOwvWmC64XtBvKg+sEusbPgk3M2GU3P
	 SZzMJKkpjjj/Q==
Date: Sun, 10 May 2026 13:06:20 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Algea Cao <algea.cao@rock-chips.com>,
	Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/6] phy: rockchip: samsung-hdptx: Clock fixes and API
 transition cleanups
Message-ID: <agA1dFpheTaBfyUt@vaman>
References: <20260227-hdptx-clk-fixes-v1-0-f998f2762d0f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260227-hdptx-clk-fixes-v1-0-f998f2762d0f@collabora.com>
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

On 27-02-26, 22:48, Cristian Ciocaltea wrote:
> This series provides a set of bug fixes and cleanups for the Rockchip
> Samsung HDPTX PHY driver.
> 
> The first part of the series (i.e. PATCH 1 & 2) addresses clock rate
> calculation and synchronization issues.  Specifically, it fixes edge
> cases where the PHY PLL is pre-programmed by an external component (like
> a bootloader) or when changing the color depth (bpc) while keeping the
> modeline constant.  Because the Common Clock Framework .set_rate()
> callback might not be invoked if the pixel clock remains unchanged, this
> previously led to out-of-sync states between CCF and the actual HDMI PHY
> configuration.
> 
> The second part focuses on code cleanups and modernizing the register
> access.  Now that dw_hdmi_qp driver has fully switched to using
> phy_configure(), we can drop the deprecated TMDS rate setup workarounds
> and the restrict_rate_change flag logic.  Finally, it refactors the
> driver to consistently use standard bitfield macros.

Sorry looks like I have missed to review this one.
Can you please rebase on phy/fixes and send...

Thanks
-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
