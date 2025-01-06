Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBB02E77188
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jan 2025 15:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0QMz1nbuxEgryWPNWQ9dxm6h8pJUsOTbQwY3Ik51e4=; b=pHkM3mgD3PSuXX
	k+MIUaBciXBacGBAzhVrc1275nJiRSyTtR1Cg4vZunhgxuN7SYmTh4ByatjSWTSxFP0mHwC18HjbJ
	K+7Kf11MT0NclGnnmnO1Sekr/YyYtTJwmXm/0sWqMa/90OaiOhdxlBWYXjzuNLl31m3xRCzFsj7x8
	jqMXmKlVfi3ub00EHZjMWvHn4GtlRN5PfCEOuz0nM0sDtknHN88rIY10qJvtSPlVyqRfPzZa5VTXF
	dpYys6Bh0+wkHScT0sT7SiS7kmQjCUXMl3VWUd2wNXs6YSId0Oh+NWksP+QRK5MxH43g4iF6XR8EZ
	lcQusMCww+lgQmPxgqLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUpCo-00000001nz4-1xxz;
	Mon, 06 Jan 2025 15:39:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUpBc-00000001nlB-08rV;
	Mon, 06 Jan 2025 15:38:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=xIHJ3N6FbqQwLKdBookcSrozPRMb1anppfm1oqShOzQ=; b=AdRV+Zs1KfV5w9RyuCicb7IK1Z
	+PMU7vNfSRy8IV6SFLlggCMXeDf6Pmh2ruBGN8/XD9X/5CVAX2Uu6h269MkPrGjrbYMrOz5Uv0YEl
	UKa4HhfRoTnXZDDMfHmkOhWbEAXP2rktYfQJlWoi+IO1sf+aBB4F5Wki1f92TDZ0YvKoUsaew85Ky
	TOcws2XXplYBLYjrIYD8IwJ7zafd4j3xjZLxKhtCpx/uX8nNqmw5TqWcNO8QmNGBUzHIjKYTd7HC1
	avLKuunwyzsToQwCMMPkiCi6JQz4Xx5WuzM2bM3Pnc/Jft4bqB6TAhpxD+06DIpBnflsSSjW0rdIl
	h/csPflw==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tUpBQ-0006Va-4T; Mon, 06 Jan 2025 16:38:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzk+dt@kernel.org,
	mripard@kernel.org,
	robh@kernel.org,
	hjc@rock-chips.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 0/3] Add HDMI support for rk3576
Date: Mon,  6 Jan 2025 16:38:11 +0100
Message-ID: <173617782282.2587484.17610708009808824460.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241231094425.253398-1-andyshrk@163.com>
References: <20241231094425.253398-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_073836_091077_EA95231B 
X-CRM114-Status: GOOD (  11.78  )
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


On Tue, 31 Dec 2024 17:44:16 +0800, Andy Yan wrote:
> RK3576 HDMI TX Controller is very similar to that of RK3588, but with
> some control bits for IO and interrupts status scattered across different
> GRF.
> 
> PATCH 1/3 is add platform ctrl callback for IO setting and interrupts
> status handing.
> PATCH 2/3 ~ 3/3 are add support for rk3576
> 
> [...]

Applied, thanks!

[1/3] drm/rockchip: dw_hdmi_qp: Add platform ctrl callback
      commit: 3f60dbd40d3f7aca312d1aa1131e204eb97a68b3
[2/3] dt-bindings: display: rockchip: Add rk3576 hdmi controller
      commit: 3a5981b65f77bfb8abcc6f29c13f1b89ce9df3a3
[3/3] drm/rockchip: Add basic RK3576 HDMI output support
      commit: 36439120efbdc62e2f47053e7ddfcc4e34364640

I've fixed some minor stuff
patch1: my review nits (empty line + hardird)
patch3: drop Detlev's Signed-off
patches1+3: fixed some more checkpatch warnings


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
