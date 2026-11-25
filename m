Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0937D606A334
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 22:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NDcgHaXI;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256 header.s=20171124 header.b=uS4w128y
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UXOme+bULj8AGeJYPuGuboL11ZRml7egnNpMyUrxpxI=; b=NDcgHaXI4iV3Izu5iGM6eAvkci
	PM4S7KhBczDlyeAtOWXpN1L26jpMa8lt0j8xW4432D2wiulwGsy3pkwQME4+N46S1wi+a5SQqE8lc
	ILVyz7Oqnfq1ZRdGSvRgtss/LZN9MZfR9s+hVmn5ryCga1WER7wpDrxGa7Oz032bIOUrwbpBbuN0b
	wubuWyKZSEz/JTN6w9nbQgmYMd48aKEK7wVBu/wGfn+/QcRRFt9WLqAf8T8kGPzf/ZAxD7BYJ15eV
	hKD8RDXYg0Q4+syaWPtmRMe/Hbjbsz9kAZMQPP/N9vJaFgpuDJXftyEe3+pf41pNVVtSevnheg/dY
	FA6Jg15g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWL86-0000000BR4V-0uLQ;
	Wed, 25 Nov 2026 22:06:18 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWL83-0000000BR47-2s9m;
	Wed, 25 Nov 2026 22:06:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=WeFpY/9MPCmFWavLLfubRxFj12l+xkudz51ii0gQVQ8=; b=uS4w128y6aHwss/qHSepgyV4yV
	9fUVsY7Cg7eDEFYU4G6yRalvyq1lQrJ7W735pnFJRRYmRpXKTpIX/0NYliBNcx9h+TskZ+0Gy0Xi+
	BzcgiB0P5h8VA5YCpv7TgCJhIRLsJJiwq2rB3h58dzfm9m9TufJTxRixFTGqyjzu71ws=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1xWL80-001Rg8-IG; Wed, 25 Nov 2026 23:06:12 +0100
Date: Wed, 25 Nov 2026 23:06:12 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Saeed Nourian <saeednourian82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Firefly AIO-3588Q
Message-ID: <fe692a8f-acb3-4c1f-9e91-e7af2a08995b@lunn.ch>
References: <20261125114757.654051-1-saeednourian82@gmail.com>
 <20261125114757.654051-3-saeednourian82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261125114757.654051-3-saeednourian82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_140615_732327_7A006012 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

> +&gmac0 {
> +	clock_in_out = "output";
> +	phy-handle = <&rgmii_phy0>;
> +	/*
> +	 * The PHY supplies the RGMII RX delay (rgmii-rxid), so the one in
> +	 * the SoC is disabled; the TX delay still comes from the SoC.
> +	 */

https://elixir.bootlin.com/linux/v6.15/source/Documentation/devicetree/bindings/net/ethernet-controller.yaml#L287

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
