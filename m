Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C9B4C5B572
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 17:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8awFvYeoFzGIflYKsoyim0+/8tFuK8Sa413MqRfzGM=; b=zZywUr5DjkxLSU
	jUkD0mDRm9yewSbZ2OFIWKA6bQGyK2YFHx4s8sez5RrK6GurNZsZqZDV6Xj4HD9IGYcxSluy19XOf
	BeN2wFdkTu3WIQuMbVwqwLiV4BpwyjTS/9lc1EzWDxTQCA6Ba6NFhPOiD4BciQ0qJRTbboIMMMr+A
	HPVa7zQ81dEyi2K4t4BnehuphmhcoQX7YnpG/ek7pBC/Erjikf3s/ev/0Kie5tuCSi/IroUn/YUvm
	t5jygsZdT4Sys6KIjtZxzDGzWe7k56C1RWmDrzeMkdGOKkOKh6+sXjw4pDTrKLohDqyCEzhMj0V7+
	1sRTTfnmBJAqfWMOLfFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtptO-0000000EaZt-2AnT;
	Tue, 11 Aug 2026 17:03:58 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtptM-0000000EaYq-2k58;
	Tue, 11 Aug 2026 17:03:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 687A741B04;
	Tue, 11 Aug 2026 17:03:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD5771F00A3A;
	Tue, 11 Aug 2026 17:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786467836;
	bh=584Qz42M+KdOvg2KnEA+L7oWF7uaVELq7LABA5+G+2c=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=or/cagrkjN9wIVzbDtV55iciNMn7vcL59y9Mbo7OZ3y7t9eegy8cQvV7SrA24UP9o
	 qe0LfI9l3qWJ7htp/iLiQaya1asO8pdaxAL+gdnV0CQL4u2pYkNrNogxO1LgkBpxLe
	 FZODshtBHhs8hsIDsYyw0AnxYUFwHiWQSt5XIvDZGbuEwbaXB1nQl5JXCOqHs/I10R
	 lXhYecwZR7cVF88MuFEJiX01n4ZQYq3ceuuU9vsQuHWxkqb58PTlTnQrdksJbidava
	 JzfHWz+5yf0MFYjxvsa9AysM680J65CSMzXBaBcAOatn782iY5FFCUxdSnZm4cWep1
	 M9bEizEmGaX+w==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Thomas_Niederpr=C3=BCm?= <dubito@online.de>, 
 Simon Wright <simon@symple.nz>, Diederik de Haas <diederik@cknow-tech.com>, 
 Andy Yan <andyshrk@gmail.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
 Sashiko <sashiko-bot@kernel.org>, Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20260811-hdptx-clk-fixes-v6-0-75bca0ee5753@collabora.com>
References: <20260811-hdptx-clk-fixes-v6-0-75bca0ee5753@collabora.com>
Subject: Re: [PATCH v6 00/10] phy: rockchip: samsung-hdptx: Clock fixes and
 API transition cleanups
Message-Id: <178646783026.1081354.15932403563102392765.b4-ty@kernel.org>
Date: Tue, 11 Aug 2026 22:33:50 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Tue, 11 Aug 2026 18:44:41 +0300, Cristian Ciocaltea wrote:
> This series provides a set of bug fixes and cleanups for the Rockchip
> Samsung HDPTX PHY driver.
> 
> The first part of the series addresses clock rate calculation and
> synchronization issues.  Specifically, it fixes edge cases where the PHY
> PLL is pre-programmed by an external component (like a bootloader) or
> when changing the color depth (bpc) while keeping the modeline constant.
> Because the Common Clock Framework .set_rate() callback might not be
> invoked if the pixel clock remains unchanged, this previously led to
> out-of-sync states between CCF and the actual HDMI PHY configuration.
> 
> [...]

Applied, thanks!

[01/10] phy: rockchip: samsung-hdptx: Fix rate recalculation for high bpc
        commit: f0c2c9c58a48b621b1cb90f0821da422b31af814
[02/10] phy: rockchip: samsung-hdptx: Prevent divide-by-zero when computing clk rate
        commit: c4fe5a9f379055ce0ec930f6495ae62aad237b89
[03/10] phy: rockchip: samsung-hdptx: Guard against clk rate integer underflow
        commit: 229788526ff24e0607726e93b74dd2ef157a99cd
[04/10] phy: rockchip: samsung-hdptx: Fix rate recalculation for 3.2GHz FRL
        commit: 9ac3daadb9060360e937a5993a5fd88360d6fdad
[05/10] phy: rockchip: samsung-hdptx: Handle uncommitted PHY config changes
        commit: aec3e4ce25da4ed37bbbfedcbb7107ae9428b183
[06/10] phy: rockchip: samsung-hdptx: Drop TMDS rate setup workaround
        commit: c2dd42e3ebd76f24bdc21eafe17149bec2ce1394
[07/10] phy: rockchip: samsung-hdptx: Consolidate consumer_put on error path
        commit: e49e4bc9f90eeb6b672762c6f089e2fafec104c4
[08/10] phy: rockchip: samsung-hdptx: Drop restrict_rate_change handling
        commit: 1bb1b4769e43ecc8ed30bd30b6d4514614753f2c
[09/10] phy: rockchip: samsung-hdptx: Simplify GRF access with FIELD_PREP_WM16()
        commit: 859fd8ae691e8c89c881da5edf0a827531daa372
[10/10] phy: rockchip: samsung-hdptx: Consistently use bitfield macros
        commit: f3a8aba9c36f26b5bb1024653d9083f7e1e6d8c8

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
