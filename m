Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC65BC54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 22:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NaMx1ZluyYOiclmBhPeQRQUD7KOMSCmEXY5EoYosjDE=; b=07+q0GSEtqzagh
	rjnHazSHMdl/8toIPnfB9Zl2Rhu1OzCjUSb7P1Mw9efp6ZLEn1f+bRTR7vXimo+eJBXoWt9UO7qKr
	7+Jfhm2JvN//UBdugXoOzcvNKF253dHs+8UxJ2QzqRV+F4oOrIUsSbC0jw31LMxXDC9q9Gs3BsOeT
	qdo41UsNpnIBIAunVciHmok/Xr34PQ7rHzDLSyQt3Kc8PzW4/xcs/3MdCTpRwYXtxDpv6WZ7+Yzv9
	Op/wnD5AIRiy1CswNW8/a9vaa2PTeg7svZutbqnMoxqPxAaSFSfxoFfcWw90Xc3LQyjN91TwpVoBP
	T0p8rNhQGe/kwLJX4KyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf65X-000000076Gk-3d70;
	Tue, 27 Feb 2024 22:38:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf65J-000000076CG-0dh1;
	Tue, 27 Feb 2024 22:38:02 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rf655-0001zj-Lc; Tue, 27 Feb 2024 23:37:47 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: defconfig: Enable Rockchip HDMI/eDP Combo PHY
Date: Tue, 27 Feb 2024 23:37:45 +0100
Message-Id: <170907346109.770500.16742913187559024297.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219203725.283532-1-cristian.ciocaltea@collabora.com>
References: <20240219203725.283532-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_143801_222967_6DC99E0F 
X-CRM114-Status: GOOD (  10.40  )
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

On Mon, 19 Feb 2024 22:37:24 +0200, Cristian Ciocaltea wrote:
> Enable support for the Rockchip HDMI/eDP Combo PHY, which is based on a
> Samsung IP block. This is used by the RK3588 SoC family.
> 
> 

Applied, thanks!

[1/1] arm64: defconfig: Enable Rockchip HDMI/eDP Combo PHY
      commit: 23ed255e74317b10b41b396d4af5b79b47b28c22

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
