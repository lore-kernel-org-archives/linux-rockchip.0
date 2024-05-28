Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8589C25B7C
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 15:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DODTt2Py2XB0NQmEydN7d+gIee1qgHDXgqvF47r4Z0Y=; b=HqkmqMwz5MSB5y
	txnz/3bPIRemNzerP/8bNKBiOGI9AJj0MtNlNYCdfJtXo/1Lk9h/2ySgtccdA25St6RPqieesqu+X
	TTP5h+gKu776k2lc7fLXyVg/l6TSzMOhT8iUjIAgTu6CzXe0F2oWevUE5jS9X372VNpWK7JwdLJ06
	hzjf1oRFk5nzmV4hzzo/Z0SpBF6hBtIoVTroxJGNgVMQ+ChNKE04+MFSgXN2a0IdpmT5w5ubr2AAT
	8vJOACj4+U7fpCvfXuyNulznnkHmVCf9mqRYVjcr4gfoUeSe8QHDdxpOoErjCq5b68rky1xukTc0v
	wdVmBQgTZ6vcca87hZGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBySg-000000019Uk-3JrO;
	Tue, 28 May 2024 15:10:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBySb-000000019QE-2n8Z;
	Tue, 28 May 2024 15:09:58 +0000
Received: from [213.70.33.226] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sBySJ-0004pm-E9; Tue, 28 May 2024 17:09:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alex Bee <knaerzche@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Sandy Huang <hjc@rock-chips.com>,
	David Airlie <airlied@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v3 0/7] Add DSI support for RK3128
Date: Tue, 28 May 2024 17:09:23 +0200
Message-Id: <171690893341.1899981.5685030462624644928.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240509140653.168591-1-knaerzche@gmail.com>
References: <20240509140653.168591-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_080957_812366_82AF6734 
X-CRM114-Status: GOOD (  14.27  )
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

On Thu, 9 May 2024 16:06:46 +0200, Alex Bee wrote:
> This series aims to add support for the DesignWare MIPI DSI controller and
> the Innoslicon D-PHY found in RK3128 SoCs. The code additions are rather
> tiny: It only need some code in the Rockchip dw-mipi-dsi glue layer for
> this SoC and do some changes in the SoC's clock driver. Support for the phy
> was already added when the Innosilicon D-PHY driver was initially
> submitted. I tested it with a 800x1280 DSI panel where all 4 lanes that are
> supported are used.
> 
> [...]

Applied, thanks!

[2/7] dt-bindings: clock: rk3128: Add PCLK_MIPIPHY
      commit: 14a1d1dc35d346a1523f38f6517c349dfa447a58
[3/7] clk: rockchip: rk3128: Export PCLK_MIPIPHY
      commit: 577c04fbf255f81f26507a7ffb2477fce50c214d
[4/7] clk: rockchip: rk3128: Add hclk_vio_h2p to critical clocks
      commit: e745698209837a952d4515bc02cddd5a31a644b9
[6/7] ARM: dts: rockchip: Add D-PHY for RK3128
      commit: 45b22b83e00b1ec36d5de53b797cd9d8545a0d34
[7/7] ARM: dts: rockchip: Add DSI for RK3128
      commit: 73fc389129dfe22b5706b4b6cbc1a4f86d1fbc1b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
