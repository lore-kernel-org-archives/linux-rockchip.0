Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC576C3ABB6
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 May 2025 20:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+c3XzA1UsO/GfJofiGfiscobPj3YJNmEIfCycB8BjNs=; b=zJ6ux5LoqftU/z
	6GVm0tHIUKeib9W5tWUAbboPtROw14qddjQRDTSID/5/UjUuheadPAGdsUklBhoTbLch7ziI5bO0e
	7sdV5eK0cN9VucNpBQ0TUQTcjDyFjjYGxjL0oDd49ZK/Y9ZhvQT9yWp3XITmNzaJR1qqWRW3/B8Ei
	3jHX6VwXlbnNE0bTLShv6KUFNpMPi0dFeTpm6lvsbdxKi/XJxh3pGjlZi/sidDr8oBxcIXCZ5GGuh
	1T8ajov+fxZ1RRWbRBqP6skL2/cy5ETbG4KA9cNTD+eBhYVoaGJ05u/fmrRmhdWE+HlIMjEAks258
	dSwnIdKWx3f5QaF+6MsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC2oq-00000008Y27-0iRc;
	Mon, 05 May 2025 20:53:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uC2mp-00000008XsR-2oLz;
	Mon, 05 May 2025 20:51:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=FVu8CAAOjGOH1bx9/sKXfRmnx7Hckvr5z5ZblQxIGao=; b=JnN3ESRPJSKijjzcvIYnDU+U0G
	fyhM3kIv5rXcDOEWBbvY4cGJy9nPTQJOoYlUx5XsU1bkdvh4KW12rO7du3DYglRPV7aofhjrGSw51
	M2OG/LUtOPMc0L2Uxuhz4JK3wIux8igRe8EHKJaubX3dga+wcSmMjkjli1sZ06GtR5F1UwzuM/9A2
	tP8ExaG/dI/JjAljgwqlWAdQAguBfD362qve2v5hZj8/OjmeRfA0wkY9kgTxa1xIdicoJWEJJx4I1
	LMgJIeux3XU0ahbTyuk+BCgDqTvtWJvmUamG2LftvgcqJYwqp7vDMRsj3Wad/Ur+eQYCpg3gX9M1Q
	Lt8GIWpA==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uC2mc-0007Lg-OC; Mon, 05 May 2025 22:51:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH v3 00/10] Add RK3576 SAI Audio Controller Support
Date: Mon,  5 May 2025 22:51:15 +0200
Message-ID: <174647826637.1329543.9602946046704845460.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250502-rk3576-sai-v3-0-376cef19dd7c@collabora.com>
References: <20250502-rk3576-sai-v3-0-376cef19dd7c@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_135139_727799_BD49075A 
X-CRM114-Status: GOOD (  12.65  )
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


On Fri, 02 May 2025 13:03:06 +0200, Nicolas Frattaroli wrote:
> This series adds support for Rockchip's Serial Audio Interface (SAI)
> controller, found on SoCs such as the RK3576. The SAI is a flexible
> controller IP that allows both transmitting and receiving digital audio
> in the I2S, TDM and PCM formats. Instances of this controller are used
> both for externally exposed audio interfaces, as well as for audio on
> video interfaces such as HDMI.
> 
> [...]

Applied, thanks!

[01/10] dt-bindings: clock: rk3576: add IOC gated clocks
        commit: 4210f21c004a18aad11c55bdaf552e649a4fd286
[02/10] clk: rockchip: introduce auxiliary GRFs
        commit: 70a114daf2077472e58b3cac23ba8998e35352f4
[03/10] clk: rockchip: introduce GRF gates
        commit: e277168cabe9fd99e647f5dad0bc846d5d6b0093
[04/10] clk: rockchip: add GATE_GRFs for SAI MCLKOUT to rk3576
        commit: 9199ec29f0977efee223791c9ee3eb402d23f8ba

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
