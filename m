Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563FB606A31C
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 21:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dbBxXJV+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=e5V8y1Ur
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=yh57REYFzP1du3y59ZPCGniQXDeG3zDGjje9A1m/HHw=; b=dbBxXJV+m2DdyQ2NiK53Gq5onT
	Ik9kU9PvFF2auyMwzSuYbb3X7wCSA5vOrj2cd7k7R9IiPDz19rX74MUz6EznxRvUWw7V9To1fEGYl
	YcQqT52agllDeGSZ+6i/VuIlxCfQR5DgP0qy1UxTBcrxGAiJD1Ov8zguPGXiePBhnFvg+v7E4zGwG
	YKFgc+SvktrCsJW+bj6+mlvOYGis2CnmH0e1P1PWdloBel52d4tMvsvmmsfiFIlwQT04+buV8B4KF
	3LLdzzOVkJQMKjl1mY4pbYqyn2AOCaySYdB91u6XbGr/1rL8u6zU6IpLq3c4Mx6wcRUuE6T7novyH
	CnkU/UAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xX3X2-000000007D6-15aE;
	Fri, 27 Nov 2026 21:31:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xX3Wz-000000007CX-1p5D;
	Fri, 27 Nov 2026 21:30:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=q3m2yyt50RINKi6ioBAszyxO/hF+Qz9GpX0rwheQRCQ=; b=e5V8y1UrtccmyPxmIkUjF2ky3U
	exC1EK59wpjZe9T+uL8fDgx5yQnFLqvPPdf5wVpYR4AJDFvFarpaJ0we3NixMOBz5+Laf3+VkDQ7c
	gGFyGoHCP2domoIm+STqlYwwvxhnqjGKFJp4CATKCk7mjuX4buNRea9eF2/OCuvT5QKSOsg9LJtxy
	nBhWutwfY3LNRTLq8udK7VI8Xer4qBRRmVo6k5Yy53uJn5cAssMH+2HjAOh2r6o05sUCp5yAxDq/q
	iZx2haoFDURMSaUDE0TqY/u7XuVnsgsJF/a+SomX4q0VkDbQ5+b83JCXnYzlI8whw7zKYHkXjGKJQ
	7BICBRrQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney+clk@redhat.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chanwoo Choi <cwchoi00@gmail.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v3 0/6] arm64: dts: rockchip: add RK3588 DFI clocks and RK3576 DFI
Date: Fri, 27 Nov 2026 22:30:41 +0100
Message-ID: <179581499871.254621.2470437130945394639.b4-ty@b4>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261126-dfi-clocks-and-rk3576-support-v3-0-0f33c1b8df48@collabora.com>
References: <20261126-dfi-clocks-and-rk3576-support-v3-0-0f33c1b8df48@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_133057_835326_4156CC3A 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Thu, 26 Nov 2026 15:52:35 +0100, Sebastian Reichel wrote:
> When RK3588 DFI support was added, support for the clocks was missed.
> This series fixes that and also adds the clocks for RK3576 as well as
> RK3576 DFI node itself.
> 
> The DT binding for the DFI side already got merged together with the
> driver changes today, so there is no dependencies for this series:
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: clock: rk3588: add PCLK_DDR_MON_CH clocks
      commit: 76c1bc06e04007247ca47e45d7313c24ac0b2570
[2/6] dt-bindings: clock: rk3576: add more DFI clocks
      commit: 2268455f297ec61b42ab44dfeaf982d2af370255
[3/6] clk: rockchip: rk3588: add PCLK_DDR_MON_CH gate branches
      commit: 2fb95541b66c05384c75259f06d51efa69e16bca
[4/6] clk: rockchip: rk3576: add missing DFI clock branch
      commit: 8b8862a19dc62e1fd838ce3eafd43382f78d4d01
[5/6] arm64: dts: rockchip: add dfi clocks on RK3588
      commit: 6046a394edaff1e6f67911ebe4ef0f508a9f82cf
[6/6] arm64: dts: rockchip: add DFI node to RK3576
      commit: b4f857a1d2ca5999295247933d29ebaf3b5377db

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
