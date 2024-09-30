Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85195CF6497
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 11:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vvMFE9NSP5Jv4Ulde2st5m35HclNMgSpkeNTtPrseDw=; b=HFSjFVRBpe2+8t
	Dpv5ESeshGYzABhCSqJAASeOrvz0jDFqVRCycehrTzcHz9f0t9KQSQLg+N9TtkNIc8lz1WagG+9yl
	92WYrge6Obagt+/mYQaqoxD0SiCSBFVPd4h+XjlQT2eNcr9k2Cw3iHva1j/dgSRzJCRLWVv36Dt8c
	FKBpqwlDgsh7OxrO4W3HpmpRNAJ86hF3+R6s9RTPFyarP320XjdYKK8NfvxWte2JGI5aRP8CA4NwW
	gVQhkmMQXeYO3Uzy0hP+1rkZ4J3MVuRxbQ1ux0FZIGdBdM2RXmcMmcLvGQfkMRIx3DLa7GhnxhtLJ
	rdF0pL9H1EnaVCNzsuqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svEBM-0000000GmxS-2Oz9;
	Mon, 30 Sep 2024 11:03:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svE4Q-0000000GlR8-4AQ0;
	Mon, 30 Sep 2024 10:56:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=6nxfXp/DSbrKC7cMEW/UjsMiK4M8teeOxL8WO/H/mEs=; b=2py54zRP2R6qyrBekjMjUPjlXW
	NzerkOyMDPos6gk3QWHK3d1F5JxOWj50Xm2XvkkqYkkG/e3IS/o7N7luRBiZiV+gybm/OghD2UoIs
	mllSVdkcFHYU3L2M7W8shfOV8k2fqvzf3+tQn7TdlVQoN5bzG8nx+7R+PyrE7+BooZccQA8+qMPI6
	YCir1bC7d6Wxt73l5a2P50Hk5+O0ZahgTwJ+PEPJBJREUmLSf5ljT2D31Ug5n3uJ3tMMSTm+7vwrB
	fnaDYr5cG/97ppbT1aN/u0azJ+ltunSv0nBOsegqV1eR/FYppr+Vfdh0YWUS8rhiSzc7u5jcvD05s
	8uv9izNg==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svE4G-0004Xd-1m; Mon, 30 Sep 2024 12:55:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jacob Chen <jacob-chen@iotwrt.com>,
	Andy Yan <andyshrk@163.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: rk3399: Fix rt5651 compatible values
Date: Mon, 30 Sep 2024 12:55:39 +0200
Message-ID: <172769365130.1880381.18361044471691107696.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1727358193.git.geert+renesas@glider.be>
References: <cover.1727358193.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_035603_048754_5A05DB58 
X-CRM114-Status: GOOD (  11.57  )
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

On Thu, 26 Sep 2024 15:48:39 +0200, Geert Uytterhoeven wrote:
> 	Hi all,
> 
> This patch series fixes two occurrences of the "rockchip,rt5651"
> compatible value, which is not documented in DT bindings or supported in
> any upstream driver.  Presumable these are typos for "realtek,rt5651",
> as the "simple-audio-card,name" properties in the "rt5651-sound" nodes
> refer to Realtek codecs.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: rk3399-eaidk-610: Fix rt5651 compatible value
      commit: 2f39bba3b4f037d6c3c9174eed5befcef1c79abb
[2/2] arm64: dts: rockchip: rk3399-sapphire-excavator: Fix rt5651 compatible value
      commit: 577b5761679da90e691acc939ebbe7879fff5f31

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
