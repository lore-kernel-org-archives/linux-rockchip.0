Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 609FAC54756
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 May 2025 13:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KF3GrzMPhfJMIavt1AkB4cChAIw7ykazOOC91qcE4Ig=; b=FBW/l0SS6qS3Gl
	1iIzGJbwilpCgakPD6yQptd4NlJB0Csq/W8BX7/kD8haTrRPq04Et2rS6XzG1vIgtLwoYD++GS+Mo
	JLpRu4qNgeqXBMsiBL6OZlsA+E/blU1sbbSn6P99fAK+glH/ZlrX/0XBuOo9sM1ncMx9EJIWziSY9
	84cdeyA2L9Fcc2O/MMNCRIVCs5glwlX0ADuxSedOEA1/7PDFMHOp8rm6j12IzlRWP5Uj16QOAiMD7
	CxFBfSqunYEQgWoidUwi+XNcVlbi046rJHlPpRHaamFev+sN4hV72usFvSzb/uqQpn9gVWC0m7reO
	jTbd0NY97NzCA62dJWxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFCYQ-0000000FI5O-2kt5;
	Wed, 14 May 2025 13:53:50 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAKz-0000000Etzf-09MC;
	Wed, 14 May 2025 11:31:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 60DC161155;
	Wed, 14 May 2025 11:31:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C81CC4CEE9;
	Wed, 14 May 2025 11:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222308;
	bh=6Y5lH/WN0GXq+set7ttl4tqIU0/kQ62gjvDykjHOqzE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=sLcy25pS7iL/rQ9QW6thOkXNhocSovucg+Eoa69c+SKgcsR7i/6khpAhCx3CmHHET
	 RMgf6+yVpOtHzY/LIXjq0JVkQ80rVW4vdF7bXKvulUh1sPz6I+H7lCHfA6gnP5v6j0
	 bMJTk79HQaa3x2/L8jBZX63VPTvbnh2z67tP+9XPuaTZ/x/m2yrwoUBneGuxNAELxH
	 cOCabt81A3kS13yfg72CA28bKh1nng0dGBdQtXSy+945S5rXZqNEnuzEzDIK+1MZ/Q
	 dMvbH49Kp36wfIQ4anz0Xpbx3zjTdif8qQrMs6V1TH4aa/jZXUP4aB5Bupkllp44eS
	 OYSott8KMl/0A==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, heiko@sntech.de, cristian.ciocaltea@collabora.com, 
 andy.yan@rock-chips.com, Algea Cao <algea.cao@rock-chips.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250427095124.3354439-1-algea.cao@rock-chips.com>
References: <20250427095124.3354439-1-algea.cao@rock-chips.com>
Subject: Re: [PATCH v2] phy: phy-rockchip-samsung-hdptx: Fix PHY PLL output
 50.25MHz error
Message-Id: <174722230604.74407.7449753819890518835.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:31:46 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
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


On Sun, 27 Apr 2025 17:51:24 +0800, Algea Cao wrote:
> When using HDMI PLL frequency division coefficient at 50.25MHz
> that is calculated by rk_hdptx_phy_clk_pll_calc(), it fails to
> get PHY LANE lock. Although the calculated values are within the
> allowable range of PHY PLL configuration.
> 
> In order to fix the PHY LANE lock error and provide the expected
> 50.25MHz output, manually compute the required PHY PLL frequency
> division coefficient and add it to ropll_tmds_cfg configuration
> table.
> 
> [...]

Applied, thanks!

[1/1] phy: phy-rockchip-samsung-hdptx: Fix PHY PLL output 50.25MHz error
      commit: f9475055b11c0c70979bd1667a76b2ebae638eb7

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
