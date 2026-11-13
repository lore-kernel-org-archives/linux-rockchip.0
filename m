Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3801060A5BD0
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 21:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4osHN5uD;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=nZIhhgZd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zV1jvvr/TIFJWnt/nlY4SyNWgO8JDn3A2EzJo0vO6RM=; b=4osHN5uDdkdwl+RuJ9H1fRKcrI
	IKKxflVGc3SXqjrGKRbWlEwZM1ChXLVM9oS7UAG2WYcw+tbv+2wiElAA5yS4LWZy3wjttKhtSWa3I
	sF3J2tnApcG8WWExvQZzcnQNFUJITpp4bq/VVhuZ+qcILwlgM/NuNCra6A3OyLt1k6cl5uCMhRBYB
	jGtH4TMipSoLY9TNCGACokOGRetaZzCtpxkfNybYw49iRN7Zs59iWsdqt2aj4onEZw/liF4GQcafq
	AIxUcNi+pNXlO9d6J2mh4yfAOqJFXmTvSV0jxeZY8KDP92fVEaYRV9yuz8LXLwJoJDZHYCvQ65Vop
	3glONJ8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRyWk-0000000EXZC-2Hb8;
	Fri, 13 Nov 2026 21:09:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRyVM-0000000EWmW-1xDd;
	Fri, 13 Nov 2026 21:08:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=uhrSsfkZelttWvoilY1I6PmftUCwaXRwT6836hZLb58=; b=nZIhhgZd1BDwsr7gqq3pDmzr0y
	OkzTVQekJSOoHOCTdGt4OLee0rBFy4DvWXg3zf6nCNeHeSkLrzG+Uy4byNbYhiJJY47gYiskWgJin
	m2mrxyZSozPZUuPIlxnw1ZyB+nDnxTbzWcemNXqEfEm7L4IMviMwC3HKt8xj5w4BiEbl9L56lFWsa
	V840/FGeax3D9SiJ8XCffTMPGsmme/9bpOs34LeWq3YAh8zd2uWs0inbPbcD6A40pLuR4OBOKciEp
	SVCVK8oaTQAA3avGP9amEEroInVrCxVx7OjlJdcgPsCkuWp3kCL2PEWfExo56keHFcv0e8JVbfYN0
	D5uQfp5g==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ricardo Pardini <ricardo@pardini.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	broonie@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-sound@vger.kernel.org,
	luca.ceresoli@bootlin.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v6 0/6] describe RTL8125 PCIe NICs on Rockchip boards
Date: Fri, 13 Nov 2026 22:08:06 +0100
Message-ID: <179460406449.1165597.15463539316974362465.b4-ty@b4>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261109-rk3588-dts-rtl-eth-describe-dt-alias-v6-0-91f1efefba0b@pardini.net>
References: <20261109-rk3588-dts-rtl-eth-describe-dt-alias-v6-0-91f1efefba0b@pardini.net>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_130818_564801_08A30EEB 
X-CRM114-Status: UNSURE (   8.29  )
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
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Mon, 09 Nov 2026 13:32:15 +0100, Ricardo Pardini wrote:
> Several Rockchip rk35xx boards carry on-board Realtek RTL8125 2.5GbE
> NICs whose PCI function nodes are not described in the DT. Describing
> them allows for stable ethernetN aliases (matching the GMAC alias
> convention on these boards) and lets U-Boot's fdt_fixup_ethernet()
> inject mac-address properties from its ethaddr/ethNaddr env, so MACs
> stay stable across boots and U-Boot and kernel MAC match.
> 
> [...]

Applied, thanks!

[1/6] arm64: dts: rockchip: describe PCIe RTL8125 Ethernet on NanoPC-T6
      commit: 4eda11fb5710e3de4305d927ad7c9393e023108a
[2/6] arm64: dts: rockchip: describe PCIe RTL8125 Ethernet on ROCK 5 family
      commit: cd745c39406cf013a468743426d4f367ab62b33b
[3/6] arm64: dts: rockchip: describe PCIe RTL8125 Ethernet on CM3588
      commit: 2184164a940ca2379995b43de0f6c9149cd65a20
[4/6] arm64: dts: rockchip: describe PCIe RTL8125 Ethernet on NanoPi R5S
      commit: ce3c2a83e2469a7a913fe2b0e0582de95894d7a0
[5/6] arm64: dts: rockchip: describe PCIe RTL8125 Ethernet on NanoPi R6C
      commit: 1d3e2e77edc323215df7a2c3b1aee0e3ff8da38e
[6/6] arm64: dts: rockchip: describe PCIe RTL8125 Ethernet on ROCK 5 ITX
      commit: 44020ac2d5ed7b5cce56bbfd29f0a697f70d04d6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
