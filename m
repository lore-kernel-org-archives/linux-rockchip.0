Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC008606A326
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 20:22:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jGOR8jTM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=rJ1qih2B
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nrQ24hIF6zx8+EcZejkqVakt/7EJHlwO8PLERmkRlUY=; b=jGOR8jTMiiAd8CpyvDi+cadXBw
	dOoHrilOvVf9SmoDkwcpeql1FnpO9dabmAT6zYj8ooe8meXliENSroNEHidpXqNFK6J4jWTt00xPu
	gnFOb2SHbtYIIA/keww2ZEz4FJdRMdK8PfsOg7S1d7rtVIbuOuQtQDGiGCJdOl7ffWqJxjGP+0Yur
	1XfkR0iY1zsghmip7JBoM1Q9RvNUFSJrQyRBPXW7BpmkA2rolJ4XW97C+kyVqejjkYVIzHyohHiIt
	4TtulkNZJtBSScGW8LCAolgyfVeUhblx/QtVSyJaTtEAOVxqdGY5ZbsFSEBBi46DvmiB1bkP5rxhO
	McKeQnFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWJVt-0000000BGmQ-2bM2;
	Wed, 25 Nov 2026 20:22:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWJUd-0000000BGEo-0n9d;
	Wed, 25 Nov 2026 20:21:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=V2GUmZwFsfLBFSSZQCmvVdVgdpxOnuSFTIyva+aBgq8=; b=rJ1qih2BJIeNTNyt1+R9p1juni
	HfYACOBScWidZ1qkh0nQqzZTDl0RwHHQba9FnIsjZOp86x77yDpH9+l4pUMVAu2M2saqyb3skySTS
	oImIDPW+ygv6HQqCmcQLXH45LK4IJY+UsHyEedRuCWM/oPOeP5yuTd0K8RwyPVeItqY2Csm5PJmDv
	q9q9UP2sQVOuITTD+MW8FfKfUkdLxlRljmHD5zeGN0nw2CqrrUQF+7cPsdnshTG/ViSPSuQZjkm3E
	vVZh6M/JRmuZ5f3IApHM7l6ulQ8fxcgasukbuMZeqdzXowtOWtNMCuudR7rZfS45erRxmmX70TigO
	ODGB5bpQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	John Clark <inindev@gmail.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Alexey Charkov <alchark@flipper.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/7] arm64: dts: rockchip: Updates to RGMII PHYs on Sige5 and NanoPi M5
Date: Wed, 25 Nov 2026 21:20:57 +0100
Message-ID: <179563805247.3885553.6358930861216631692.b4-ty@b4>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261120-rk3576-phys-v1-0-6382cd14e3dc@flipper.net>
References: <20261120-rk3576-phys-v1-0-6382cd14e3dc@flipper.net>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_122127_286590_FAB42771 
X-CRM114-Status: UNSURE (   9.19  )
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


On Fri, 20 Nov 2026 14:48:08 +0400, Alexey Charkov wrote:
> Both ArmSoM Sige5 and NanoPi M5 boards use the same Realtek RGMII PHYs
> which currently share an issue preventing them from enumeration unless an
> earlier boot stage left them out of reset: at power-on, their reset lines
> are asserted, so they cannot answer an MDIO probe. Until they answer, the
> OS cannot look up the ID to match a driver. And until the OS has a driver,
> nothing releases their reset line.
> 
> [...]

Applied, thanks!

[1/7] arm64: dts: rockchip: Describe NanoPi M5 Ethernet PHYs by their ID
      commit: 693e0c4f00389a097d710577ed5c24c4ac3f75a7
[2/7] arm64: dts: rockchip: Describe Sige5 Ethernet PHYs by their ID
      commit: 5d839ad9553f90c727157c45471a911f64cd067a
[3/7] arm64: dts: rockchip: Drop NanoPi M5 PHY reference clocks
      commit: 9c83b53e6c858a9a8f00ca82ecd1f46d2d723b70
[4/7] arm64: dts: rockchip: Enable ALDPS on NanoPi M5 Ethernet PHYs
      commit: 620ad5b09bec5abd83d35bf23c1af1fb68eed80b
[5/7] arm64: dts: rockchip: Enable ALDPS on Sige5 Ethernet PHYs
      commit: e48f1d304f7b69b47c6f98b701aa6f8c84ffbb9a
[6/7] arm64: dts: rockchip: Shorten NanoPi M5 Ethernet PHY reset to datasheet timing
      commit: 5efab9e7c28448f6035e7216255f7b76b28ff97b
[7/7] arm64: dts: rockchip: Shorten Sige5 Ethernet PHY reset to datasheet timing
      commit: a2a390e7fa9e73ff07d2a9fc002114e299483202

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
