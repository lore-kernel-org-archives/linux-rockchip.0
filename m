Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7157C54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 21:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILGddK8O+TJsUBlQNaqd3iqHJdLwxfxQlZYaJUKoiT0=; b=BdpYWS/GK2pvz8
	UnC2HrJTdrYi+ntxxV4eZW1dVNyI4LTpANyKDSg5yI504qe5tSdzZrr/GMXwaRvq84ttIU++JyrhL
	tHANVi+77wBO5qK5Og9e0LICQJJNiRI1Hx9Yz6Vp2zeU8WXaxPjXRkF53Ar4bLFolEf4+A+7Ub1Zc
	pAROVsOsc0xvp+JFJHDNNQoSWZTYCOHWGboKyWJ8kqT4wxkOkYtvsaJ4MnGj0uNu5ugjy1+J/t41Z
	tg+GykShfMSqzfvN10PkP3UvH5rFeAo5RSonrwxIIzsBV8J42BL1pvhSz9guHFfW3CFaJyH7uYP/x
	IW+vLwNuXnULrUD9zpuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf4oz-00000006s3l-3evz;
	Tue, 27 Feb 2024 21:17:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf4ox-00000006s33-1JmX
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Feb 2024 21:17:04 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rf4op-0001Cx-FU; Tue, 27 Feb 2024 22:16:55 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Stephen Boyd <sboyd@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-clk@vger.kernel.org,
	Michael Turquette <mturquette@baylibre.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Kever Yang <kever.yang@rock-chips.com>,
	kernel@collabora.com,
	huangtao@rock-chips.com,
	Elaine Zhang <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	andy.yan@rock-chips.com
Subject: Re: (subset) [PATCH v8 0/7] rockchip: clk: improve GATE_LINK support
Date: Tue, 27 Feb 2024 22:16:53 +0100
Message-Id: <170906852031.753268.5145089861354297384.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240126182919.48402-1-sebastian.reichel@collabora.com>
References: <20240126182919.48402-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_131703_380178_72FEE972 
X-CRM114-Status: GOOD (  14.85  )
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

[1/7] clk: rockchip: rk3588: fix CLK_NR_CLKS usage
      commit: 2dc66a5ab2c6fb532fbb16107ee7efcb0effbfa5
[2/7] dt-bindings: clock: rk3588: drop CLK_NR_CLKS
      commit: 11a29dc2e41ead2be78cfa9d532edf924b461acc
[3/7] dt-bindings: clock: rk3588: add missing PCLK_VO1GRF
      commit: c81798cf9dd2f324934585b2b52a0398caefb88e

First part that needs to be shared between clock-tree
and the devicetree change I sent out some minutes ago [0]


[0] https://lore.kernel.org/linux-rockchip/20240227210521.724754-1-heiko@sntech.de


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
