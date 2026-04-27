Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09572FF8869
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 12:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eFJ98EmqL1Nsq31dtXpq47mnwtkZm5QbrFg/M7uB6U=; b=4wXM4ol0tr59Ww
	gp4uBBIX8NzTQIN7yQzH1DmNRUVHgW4ViGLrmHgwqKMuu4z3evs2ZaFYR2dX0I3a98q0wv1k8GTbY
	odt/C7m4YALBAZDU+wYbZ8bPX2+Er4uvmHbyxaj40bpQlb3iy/cvVDJ3xH+ILk7NOxAUizhh8lzAb
	nV69p91af8qXRz90HxSg3QlsPZDKgdRKjALMFX/vGjYvcMu7vKqWWi33zZyNkgsxDBrQLvDZyNCzN
	KPXC6EqbBj8oY0eDpK4v6QvtvpOWhd9KLYfsMROU7c4TxFEhXd0R7sjTwHJmdcFafypK2E9zbv8dn
	sXt8uNHLGyltYP4RDhvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHL0P-0000000GtLf-0c78;
	Mon, 27 Apr 2026 12:24:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHKzy-0000000Gt8p-0cnL;
	Mon, 27 Apr 2026 12:23:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=jjfLTmcyKD0hrkOGEYEgBYNd9aUyIP8bdXAALh7Ab8g=; b=qzViLN7HGQxYtfONvHpZgmKw3o
	eJMHy8bhLVX624B78Rb2+FrCMB67RXfZmovbCA5qe6ZgW8NrKkaX0hqZc9E0OFTik5ldpsxIThJf7
	GEZihLQ135ZMQVp6/ZgRxZdr/Z78OmQXVSR3m3mZvUbgMl2RLDpx/L/0kRVV1gYRvsbflv7hApfmE
	v24OrauXEdTct7U2yFuqi6DPCuJm6gTwTByvqvk9MiRtcc9OkxCMDAxQ3HQ9aPIJQyswmhQYHMmZ0
	4IXHF8KiLfY2HCv+DH3HBbqCTwA8Wk6XfdO5KGTx8NboZyFYtuRQFPy2ZbvDJQFH6PDfxu7g164Zy
	Ti0PyRiw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniele Briguglio <hello@superkali.me>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Ricardo Pardini <ricardo@pardini.net>
Subject: Re: [PATCH v4 0/5] clk: rockchip: rk3588: add I2S MCLK output gate clocks
Date: Mon, 27 Apr 2026 14:23:21 +0200
Message-ID: <177729258228.1866089.5793149531492182650.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260419-rk3588-mclk-gate-grf-v4-0-513a42dd1dcc@superkali.me>
References: <20260419-rk3588-mclk-gate-grf-v4-0-513a42dd1dcc@superkali.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_052338_207339_C65D65EC 
X-CRM114-Status: GOOD (  10.69  )
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


On Sun, 19 Apr 2026 13:43:05 +0200, Daniele Briguglio wrote:
> On RK3588, the four I2S master clock (MCLK) outputs to external IO
> pins are gated by bits in SYS_GRF SOC_CON6 (offset 0x0318). These
> are set-to-disable gates with hiword mask semantics.
> 
> The TRM documents the reset value of these bits as 0 (gate open),
> but in practice the Rockchip firmware (BL31) may set them during
> early boot, preventing the MCLK signal from reaching external audio
> codecs. The kernel should manage these gates explicitly so that
> audio functionality does not depend on bootloader register state.
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: clock: rockchip,rk3588-cru: add I2S MCLK output to IO clock IDs
      commit: 56c2ca0ae7cb9254c4c2b82baa0afe29feaa274e
[2/5] clk: rockchip: allow grf_type_sys lookup in aux_grf_table
      commit: 28820fc7983b9c8e160c0095067a570bdfcae1f0
[3/5] clk: rockchip: add helper to register auxiliary GRFs
      commit: 32d1d88c4165d0da31d3bfda912e80e8110d6fc1
[4/5] soc: rockchip: rk3588: add SYS_GRF SOC_CON6 register offset
      commit: 06c990bffdbea7cf655e728f4423ecd13fb030f6
[5/5] clk: rockchip: rk3588: add GATE_GRF clocks for I2S MCLK output to IO
      commit: 02b9b0bb626989b947d82bbe4e050f0254e2046d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
