Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C841E606A33B
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 19:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AnS7GbE+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=BDJPVTAD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=lplVI5YE7wv1mPkPK6jKUkwozp/wGKjL5xuFY2QGPuQ=; b=AnS7GbE+CjYBXLSj8y3EJAWV9Q
	LA/wdYMo5eaAv2GQBZCHcpxG3xynThtWHp7m9MbS1VAxWPJ9Vfj/xMrGEewW+tLhEmgIUPD9vRUcd
	S/nMk84liLyrOAHjSTg215KKaDGMZ5oB+spiCYMbVrsK3INdnx4EVfPSm4SGCkcOJsXxCjk2dACAj
	MjweblJD2dSTbPPQwZg5tqoIwldQBmB49Azy+aEDP+MAu/CcdbU6e2bKekBeB244IgLbBqeoGLqFm
	RLqw73g+UQG5RGVffQLKSLZwr+mK5jgKMzNaT2hZC44RYh4xcBqgn4Ev96Q0TUWkMcEJmy8TOqKfa
	t2w3jcUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTl1P-0000000A50J-2k9r;
	Wed, 18 Nov 2026 19:08:43 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTl1O-0000000A4yj-10Zm;
	Wed, 18 Nov 2026 19:08:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6E7B1625B6;
	Wed, 18 Nov 2026 19:08:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAAFB1F000C4;
	Wed, 18 Nov 2026 19:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795028921;
	bh=j8NHvkg0mcHS6NppRIX+eDEokhzbE1hV9ZJ/sEvlK4U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BDJPVTADU+MiIs2CIl8rFOWWP+9Kt+G6akZKawZPdkAf8/Qm/NUbj1bozbJgxecFG
	 CJWqECGUh9QehHXJKFCjGT5C4nsLfq/JT9mKc9UMMxk5pw13fC+My2ZBlj+8s8Ijrf
	 eeVTd1gMOF+J3ER8O4/CteXSRjHc3ry65VUWdDO/Ez0ilceOqiLLzGLoWsGDAwegW9
	 63MbdibGqqdzH/1YN+xjeYbdiXqeLeYoDMicEE/3c+oIpqAGUt6vZYTqzrSz3hY1Ut
	 yDxj2PlvVER2TSmMwEPQlAMwfhF7ia8EPRxb14ufHd+/277knxt3tuD9qq5Ajj5OW3
	 tOpjPFZQvUduw==
Date: Wed, 18 Nov 2026 13:08:39 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cunhao Lu <1579567540@qq.com>
Cc: linux-arm-kernel@lists.infradead.org,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Conor Dooley <conor+dt@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>, devicetree@vger.kernel.org,
	Eric Dumazet <edumazet@kernel.org>,
	Jose Abreu <joabreu@synopsys.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	linux-kernel@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>, David Wu <david.wu@rock-chips.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH net-next v4 1/2] dt-bindings: net: rockchip-dwmac: Add
 RK3572
Message-ID: <179502891855.247733.11686816962535109949.robh@kernel.org>
References: <20261117-add-board-ok3572-c-net-v4-0-4e9da569395a@qq.com>
 <20261117-add-board-ok3572-c-net-v4-1-4e9da569395a@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261117-add-board-ok3572-c-net-v4-1-4e9da569395a@qq.com>
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Tue, 17 Nov 2026 17:04:35 +0800, Cunhao Lu wrote:
> Add the rockchip,rk3572-gmac compatible with the snps,dwmac-4.20a
> fallback and require rockchip,php-grf.
> 
> Mark tx_delay and rx_delay as deprecated and disallow them for RK3572
> so new designs do not use the legacy delay properties.
> 
> Signed-off-by: Cunhao Lu <1579567540@qq.com>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> ---
> Changes in v3:
> - Deprecate tx_delay and rx_delay and disallow them for RK3572.
> 
> Changes in v2:
> - Add RK3572 to the shared Synopsys compatible list for consistency.
> ---
>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 15 +++++++++++++++
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml     |  1 +
>  2 files changed, 16 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
