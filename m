Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14C74C3ABCB
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 21:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kHJwT0aeS/FC9nLYr1LFyh/3B0rVZzWMAe8l3brU48g=; b=i37xK1u5EZCkLV
	2ddDsgYJMAx9ZfkgrjMa6tH7Zb56YfyhJS6LEi10GSN+eh4WPH2116XoOMj4iDCfv1aV/MeCQ+NDX
	DFuVJ2se8bWq7pgbUV6y4nnEjUd8wMW1cMA8PE2sz+TRDvSHax3JETDnEhRA517NuV0tOwLQ0TbTM
	0UJo5vNooygtQOuCC5nlljYwQ0cSCNUs08IxYGqbiH9xWq9+CHgHsRiIGCou835WUSiZ5T2S6yttk
	P5iOslQIb21Qu+VVU8zJRXxj0HQoAx8QRY7ZNn3o0RUhuIsn4KaabLJcC6lCUAtpSxjEqwgSZzWt0
	YOoILZj5MKFuw91E4R9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDUxn-00000004ugU-3dqu;
	Fri, 09 May 2025 21:08:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDTtn-00000004i8T-3dUC;
	Fri, 09 May 2025 20:00:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=i0QTL6OGoLDoSHo02DwPWhUp/ii7lcgusrtzJi+Dd24=; b=QcULRaeWBG0HypA38YARbZ+MZa
	G6dGDhQkzY7/zF+XtNGvIp/ww5yqiwJLRB0FK+PINYJ02h3JUqHF83wiqKovAiKWqnArwx6HLlJPh
	BI+llkEE50dJACP4dsvkvpG8e2LOSj1FxghJyq988noOvadB+tOWDChqo48ty/S7iDExNzaSG+Hmw
	/ajS7q8HPClfKXcmASay4oV35JwGIVo69BgeX7ErikyYIjWFL5WR7XrDnlBr/w+c96Vxfho6SN3Zw
	i4FI0SgUKa4B2BLKoMi7F8oOPqMUcyRRIG4qIg3MAimo4NrUvRvfIVmHpQhuszVZU7bUdKDsC/3m3
	e3PRuT2w==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uDTta-0004Jo-N8; Fri, 09 May 2025 22:00:34 +0200
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
	linux-sound@vger.kernel.org
Subject: Re: [PATCH v4 0/5] Add RK3576 SAI Audio Controller Support
Date: Fri,  9 May 2025 22:00:21 +0200
Message-ID: <174682074864.2029046.1413189234015489546.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250506-rk3576-sai-v4-0-a8b5f5733ceb@collabora.com>
References: <20250506-rk3576-sai-v4-0-a8b5f5733ceb@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_130047_902702_5D78F486 
X-CRM114-Status: GOOD (  14.76  )
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


On Tue, 06 May 2025 12:42:39 +0200, Nicolas Frattaroli wrote:
> This series adds support for Rockchip's Serial Audio Interface (SAI)
> controller, found on SoCs such as the RK3576. The SAI is a flexible
> controller IP that allows both transmitting and receiving digital audio
> in the I2S, TDM and PCM formats. Instances of this controller are used
> both for externally exposed audio interfaces, as well as for audio on
> video interfaces such as HDMI.
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: rockchip: Add RK3576 SAI nodes
      commit: 3dfeccdd3cc88792e631539792a1ecc37a9581dc
[2/5] arm64: dts: rockchip: Add RK3576 HDMI audio
      commit: 7f1561d82e3d3589038782f75faa50c65d9cdd42
[3/5] arm64: dts: rockchip: Add analog audio on RK3576 Sige5
      commit: f4a9c9fbf02c8948029846aba63c65c0425cb275
[4/5] arm64: dts: rockchip: Enable HDMI audio on Sige5
      commit: fcdeb39bb5615c4bb36f69d2ec11f25b54168304
[5/5] arm64: defconfig: Enable Rockchip SAI and ES8328
      commit: bd088836a10e418aaf7dbda4a1db9da864f09fb8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
