Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25CD0C5478C
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 21:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vM7m38OfI3Ll4gIHRwEI4bMKxPiXamqTDbH9jTDaE1Q=; b=p3/ZyHdP9dytjQ
	0YACaiLPh3N6RMvRXbAap0BKS3yW/nwuaOdgpbEwb8OWss6ocxpoMg6jocereHNoAM74c3pw15qHv
	Z2xbuXMxr+d+9k3RWLjmok4ApW6WMnEWaCNZpxiqe21+5lmu4VFX6Sq4dWfbL5+MauBdxHqlZBbWN
	A7i4LVKyuP0V/dCUztlbY5+BLpUz8/MiSXVOdVY9YLHDNYF8eaU8NeDTuiOr7ZZ1PNYHIyhWkpYfp
	r25W10Drh+fBTOugOqWoQwRyBIlTCfluyCwUn8bw48bgsyGIBnAsO4qnCfP4DoSO73GRJU8w7rVk3
	l2HN/D5Nzid/wc4HSt5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf4zl-00000006ugN-3Lcv;
	Tue, 27 Feb 2024 21:28:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf4zj-00000006uf2-1eLh
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Feb 2024 21:28:12 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rf4zg-0001JV-J8; Tue, 27 Feb 2024 22:28:08 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Michael Turquette <mturquette@baylibre.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	andy.yan@rock-chips.com,
	linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	huangtao@rock-chips.com,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v8 0/7] rockchip: clk: improve GATE_LINK support
Date: Tue, 27 Feb 2024 22:28:06 +0100
Message-Id: <170906921352.760270.17022081132871097984.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240126182919.48402-1-sebastian.reichel@collabora.com>
References: <20240126182919.48402-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_132811_463661_BDB1FCB2 
X-CRM114-Status: GOOD (  14.90  )
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

On Fri, 26 Jan 2024 19:18:21 +0100, Sebastian Reichel wrote:
> This is a follow-up for Elaine's series. These patches are written from
> scratch, though. There are two parts:
> 
> part 1:
> Elaine's series used to contain patches for the VO1GRF handling, but they were
> dropped at some point because of the CLK_NR_CLKS feedback from the DT
> maintainers. I added some code, that should hopefully fix everyones concerns by
> figuring out the right number at runtime. I also moved the correct handling of
> pclk_vo0grf/pclk_vo1grf before proper handling of GATE_LINK clocks, so that it
> can be merged ASAP. These patches are needed for HDMI RX/TX support on RK3588.
> 
> [...]

Applied, thanks!

[4/7] clk: rockchip: rk3588: fix pclk_vo0grf and pclk_vo1grf
      commit: 326be62eaf2e89767b7b9223f88eaf3c041b98d2
[5/7] clk: rockchip: rk3588: fix indent
      commit: 2a6e4710672242281347103b64e01693aa823a29
[6/7] clk: rockchip: rk3588: use linked clock ID for GATE_LINK
      commit: dae3e57000fb2d6f491e3ee2956f5918326d6b72

2nd part of the very easy and obvious clock patches that make
sense on their own already.

Now I just need to look at the final piece of the puzzle :-) .


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
