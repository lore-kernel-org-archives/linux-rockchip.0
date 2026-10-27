Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE71606A32D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 10:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lkiANwwL;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=VO7hBpsz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hCOosF6mk3gOqoVRuRn7LBLVVm2I4jYs9tOu5dcqDcA=; b=lkiANwwLlX9cVcQ0Qmo2lh+/8Z
	cH0gCtO1RlD5zMe92eKYMGsdqLdzRV2oE3rbfjAzaqZCbYPVBhRRa9LvJ9IKXEhH91Up0gmTUTQ8A
	4rpZFiarOf1k5GWJ4LFiTdYkb8NVA88T2J3Ttyl/ypQYo2e4EGsOBShwTFAAHqMcMEBAegdwqyv/z
	xC+f5u7ABbD60f5BeDL9Vbf2KRLxxpdPOVweyQaZdCE4mj+eQM5oVC+xHHjj/T17xxNsMqkPzGIQK
	pCaw4yvI3qEpU7gT4n+EqwixSNg9T5JowAXVLE5zl4FrNGHt5UyREI+iRT+TIY6rTFMBf68E9vnON
	Go6y2bfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLeF1-00000004HOE-0Jfw;
	Tue, 27 Oct 2026 10:17:15 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLeEy-00000004HN7-2vNM;
	Tue, 27 Oct 2026 10:17:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E29C260052;
	Tue, 27 Oct 2026 10:17:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91FA61F01825;
	Tue, 27 Oct 2026 10:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793096231;
	bh=350ox5QQqjyuw0S50o6SyzYoMNexUoMgbyvdSGfqoWE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VO7hBpszikm9a8mzgYN7h9BuRv6QFbAY5Gkml1AKjTGSzjW/OELKbP39a35AI7KqO
	 Ny/9CKi1Y3g2sDlCoO6wzK5jwCk58KwSysj90m4nhiC/RIUJ5dEulE7PQ4+pppEdY7
	 3Bg7UbWe93ZS66AXGuDYkCxeJTmW8iPughSoKZAqx69gxyp188K/Vyedlt+QK7E1Bz
	 kEKGsHruIEbfrfUXw4v8PSufIbJpYiv038zXLHiCSAM2bd/Wr1Ax2DWEZbkz0Cz+VN
	 TVuXfEbyY1xAxKzLXmPr0qOd0qJJAYHOsl6yjTqRp5c8VeKBRWJtIrGNTpNDv864a7
	 wPAOguRpG0tGg==
Date: Tue, 27 Oct 2026 11:17:08 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Cunhao Lu <1579567540@qq.com>
Cc: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
	Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, Richard Cochran <richardcochran@gmail.com>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: clock: rockchip: Add RK3572 CRU
Message-ID: <20261027-vagabond-gabby-caracara-4edabe@quoll>
References: <20261026-add-board-ok3572-c-clk-v3-0-dbabfa39d692@qq.com>
 <20261026-add-board-ok3572-c-clk-v3-1-dbabfa39d692@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261026-add-board-ok3572-c-clk-v3-1-dbabfa39d692@qq.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Oct 26, 2026 at 02:56:47PM +0800, Cunhao Lu wrote:
> From: Elaine Zhang <zhangqing@rock-chips.com>
> 
> The RK3572 CRU uses the PMU0 GRF for the AUPLL reference mux.
> Describe the controller and define its clock and reset IDs.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> 
> - Documented the xin24m input.
> - Made the PMU0 GRF phandle required.
> - Updated the example.
> - Closed the reset ID gap while preserving each named reset's register
>   mapping.
> - Removed CLK_NR_CLKS from the clock binding.
> 

All your patches seems to have odd commit msg.

> Signed-off-by: Cunhao Lu <1579567540@qq.com>


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
