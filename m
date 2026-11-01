Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95128606A6DD
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 22:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xwgRchXa;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=UoD8PMbq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ZD9C0j4hSjUrZvEgnq/bHajgVz3tk9V1d7u498DYGdM=; b=xwgRchXaHquFxW/FACGiWkEE9h
	/c8jS6ox5GRVSrXxlkA1dBuJSBEb+6OsYRWdUYDYjQepvLJcba4ieOOMd2DhxVpTCTn2CscMttW6d
	ytVIa4Qf6eJm3J2QZ5U+KYY8zLX8zcjWKpPCLC31P348xJAo16XMqv5PHrdXHdvpNOV2jW68L6vVi
	PYbgyDwV2aZcrSAi6ywmbf0wJETzHUmTl4lUpuvxQ8XMQsidQK/SmAgFV6k4/zmczEMekbrZ6KfRw
	w9AGvMcWAB94Fu8YHJNY7vBjXygTTjPVhOKBqpY2kafZTYa1xqIeFxTt8AMuuBmqOCEeuUar7Tyup
	8kXyZY2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdqZ-0000000Ezj7-2H4i;
	Sun, 01 Nov 2026 22:16:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdqA-0000000Eyqj-30vp;
	Sun, 01 Nov 2026 22:15:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=3Kd169eysaQu7RCb4n9yzxMgogeBCixS4WYZtP9OonQ=; b=UoD8PMbqgQD4c34zCJSg0GJaet
	sBJfOa1YATL6vN9ZpXCsr93MAYgEA/9x6i0ePk4fu4h0qWMVRyMlCJ69Z6ZW4whSSCGGAUz1wy6/b
	krAaVXWmaj5kofRsvfjuUQnyVB58wSmTFsfHtq7mHtjckC7cNye2QLCeeHiG0cQDvxwQrKrF0/Bx8
	EdkEs5azs5pRwirYVOeTd+J6FleptIYySNG5GksLjSGWv4y1Hm4YUD+oh2IaIyH7+KFg1JTza3/wP
	XYS29q7CKPrWrrsjb8XtSMNl0gbbQNSVo7mv/4+XHtLkIjeEgoDhXy+eP/O5RTwPc150j7Q718Buc
	1hIOykDA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Richard DeFrese <richard.defrese@proton.me>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: route ES8388 MCLK to the IO pin on Orange Pi 5/5B
Date: Sun,  1 Nov 2026 23:15:28 +0100
Message-ID: <179357131391.4107717.16406250143729815997.b4-ty@b4>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260822194730.526392-1-richard.defrese@proton.me>
References: <20260822194730.526392-1-richard.defrese@proton.me>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_141550_765757_0C0849E1 
X-CRM114-Status: GOOD (  10.72  )
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


On Sat, 22 Aug 2026 19:47:58 +0000, Richard DeFrese wrote:
> The on-board ES8388 codec on the Orange Pi 5 and 5B has no analog output:
> the codec's master clock (MCLK) never reaches its pin.
> 
> RK3588 gates the I2S MCLK-to-IO routing in SYS_GRF SOC_CON6 (bit 1 for
> I2S1), exposed as I2S1_8CH_MCLKOUT_TO_IO. The codec references the internal
> mux (I2S1_8CH_MCLKOUT) instead, so nothing enables the IO gate: the
> 12.288 MHz MCLK is generated inside the SoC but never driven out to the
> codec. With the ES8388 as I2S bit/frame master, the SoC I2S controller then
> never receives a valid clock and aborts:
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: route ES8388 MCLK to the IO pin on Orange Pi 5/5B
      commit: 27bb79d40d4890814cacde534e9b3d9cd8ad7435

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
