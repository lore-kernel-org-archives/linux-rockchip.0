Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 027D6CA5FF0
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 17:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2GK6olX7t1QcDL5AJAEGXscCESLaw2vgNuF4ffhVvr4=; b=wcjAya3+wr7pDW
	Xz9yfSkDdil0bGQvupqNZPLiNEbpihOmRBGvquTXlbTpR4nmLHcSvVybLC6WwVkvICGVHlPJeyXrB
	7ZjZSGrk3Y1TXFr5VZzaGvVA/Z0yNidebgSt0Otgxo8PKW2MsyFNV1nIGtBowjhmYJWmvl4wC5/e4
	fKnkfSjfNjeZ07UHVK837eMK4xET5M34PtHtAcw+PS3W5rCfUyomt6wMjiVW8Snq5XTq4BSZ9PvI5
	oFRz7kbhkHbcNmf7omy9IdkYiiON40s4u5k6xwo0wsA5wTQ5Ip+iHVBtOlRbrZ/Ks8VMWSl8Ab3Sg
	jwnnZ1zNLjb+O402aORA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDmDT-0000000GtaH-2hu0;
	Mon, 05 Oct 2026 17:11:07 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDmDS-0000000GtYl-1PVo;
	Mon, 05 Oct 2026 17:11:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1A80B414D2;
	Mon,  5 Oct 2026 17:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C07521F00893;
	Mon,  5 Oct 2026 17:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791220266;
	bh=HYh2rxKMx2Wm+Lvc6QK3nB5xBauzxm6BmT4G4eVxSRw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ol/xJsFgT2Yczz6kItqZg4PP+pPv2843l7xlxzUkrJigmBhMGNe0PAkqpxaMgl7+R
	 e0rZEDY8t4JKy/E54WTLLVpxIxf4gtJKewD84TlTTR+qRVPimWeUVX/xY6VlaaGM+N
	 VoeT7ZwIZhH9zLh1L5Ci3GpGlrF9Ss8XT0RSi/BdGEJo/ibQkv88zFUfH65ZSv8iTS
	 zERF4e1IFNdmw6A/EQ+HbwGY8UNtKK/+eYoQZ3d2P69bBQgucMVeJeZ/socIyT2QlI
	 iwz6KVzrVYsvjLGn5FdXBV2iHoIIz6VWDqVhn52hWnz2mM6PV3DUmUWcK36ZPm5aja
	 yDGeUGGFxRwsg==
Date: Mon, 5 Oct 2026 12:11:05 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-rockchip@lists.infradead.org,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Brian Masney <bmasney+clk@redhat.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jerome Brunet <jbrunet+clk@baylibre.com>, linux-pm@vger.kernel.org,
	Stephen Boyd <sboyd@kernel.org>, kernel@collabora.com,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 3/7] dt-bindings: devfreq: event: rockchip,dfi: add
 rk3576
Message-ID: <179122026463.1037372.13014542138147307791.robh@kernel.org>
References: <20260921-b4-rockchip-dfi-rk3576-support-v2-0-04f847016321@collabora.com>
 <20260921-b4-rockchip-dfi-rk3576-support-v2-3-04f847016321@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260921-b4-rockchip-dfi-rk3576-support-v2-3-04f847016321@collabora.com>
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


On Mon, 21 Sep 2026 23:15:05 +0200, Sebastian Reichel wrote:
> From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> 
> The RK3576 has DFI hardware for monitoring the DDR's bandwidth much
> like other rockchip SoCs do. Unlike the RK3588 however, it only has two
> memory channels, so only two per-channel pclks for DFI.
> 
> Add a compatible for this SoC's variant, and add it to the conditionals
> at the bottom of the bindings file.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/devfreq/event/rockchip,dfi.yaml          | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
