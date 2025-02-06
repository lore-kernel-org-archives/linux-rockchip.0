Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80F38C02194
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Feb 2025 11:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36zXKDnMOra3YzQzhNasfk4O9+3g4ZcYVKM5ShzkNCA=; b=X4vPwHEkWbenxQ
	JM4cVYFbYurbtsByy57ocUnZd5EwBKtnMV/QJ5ujayk/64v+h/x4JBDBUK8yHWQjGkG/edOC2NDvz
	Tf6BSSd0uKXSyQ6J8pn3w2u/sSxegOLBEEoJUhWWVa3iZm51ZUlm63Q1oL9+ATfeKh4sIZpmANd+I
	OjuuMiyEJwemJNfeoXYQv947sARikyKNsCINuSVrqPt+IUnfS7s1zYowVCuUcOla1jzM9TavBHDqj
	mLuWhe8btun9Eu/c4RkPYvC2ry2yau6s4clXlhskf/fQWRsywgnKZLmlHVej85zdWiv4IrSghrJya
	jCewIB0WDSA2iT2Pf2Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tg0Gt-00000006Aqq-1BDW;
	Thu, 06 Feb 2025 11:42:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfziV-00000006486-1D7b;
	Thu, 06 Feb 2025 11:06:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=PTzceVVLGcE4E9r04+uL5fw9YsIKV1pPWUyw+5BW8vM=; b=2XgVpoDcIYvuoLxlEnwsV1w+br
	JtE+n+kZ8EsG+Kqbad1GYZoZCmDxePBZ99wFJ7CRDYsvkBqCMLk+ZsU27IeiE63MfLTWbkM8K7hna
	+sSopEOzPHQsuh01RKeZwpPhvCcsNLKkOGTLy+RC3jSH4hUvj9EsNXHFTQR8jChES+EqQcCsRD7hW
	10mUxM3eG/SZcFqbpuctsAstUMC4WlT/ZLOwfYRP7KRN27JbqIb1fSnEc/s3MR23lcgoxT/fbftdf
	XZhkKH4tYpOqnYyRl0osJ2eNCcLKSyYFNjNBHHzh/Kx6CEIcI8sRmfdbpx1GLaH8DqJKEIjw4jMSV
	IGgrSyuA==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tfziG-0008NO-DT; Thu, 06 Feb 2025 12:06:28 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	kernel@collabora.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: (subset) [PATCH v3 0/5] Improve Rockchip VOP2 display modes handling on RK3588 HDMI0
Date: Thu,  6 Feb 2025 12:06:17 +0100
Message-ID: <173883997042.679546.13069476307207799965.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250204-vop2-hdmi0-disp-modes-v3-0-d71c6a196e58@collabora.com>
References: <20250204-vop2-hdmi0-disp-modes-v3-0-d71c6a196e58@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250206_030643_324629_3EEF3A35 
X-CRM114-Status: GOOD (  13.86  )
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


On Tue, 04 Feb 2025 14:40:03 +0200, Cristian Ciocaltea wrote:
> VOP2 support for RK3588 SoC is currently not capable to handle the full
> range of display modes advertised by the connected screens, e.g. it
> doesn't cope well with non-integer refresh rates like 59.94, 29.97,
> 23.98, etc.
> 
> There are two HDMI PHYs available on RK3588, each providing a PLL that
> can be used by three out of the four VOP2 video ports as an alternative
> and more accurate pixel clock source. They are able to handle display
> modes up to 4K@60Hz, anything above that, e.g. the maximum supported
> 8K@60Hz resolution, is supposed to be handled by the system CRU.
> 
> [...]

Applied, thanks!

[4/5] arm64: dts: rockchip: Enable HDMI0 PHY clk provider on RK3588
      commit: d0f17738778c12be629ba77ff00c43c3e9eb8428
[5/5] arm64: dts: rockchip: Add HDMI0 PHY PLL clock source to VOP2 on RK3588
      commit: eb4262203d7d85eb7b6f2696816db272e41f5464

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
