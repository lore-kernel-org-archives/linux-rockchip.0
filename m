Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFBD5606A31C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 13:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=D0MddPCZ;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256 header.s=20171124 header.b=t0Gz1Geq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=K+eXFF/p+XfXfm2iuMazumVa5SDvXtj4PQ+4QX6EiS8=; b=D0MddPCZoJHYh67qqRUctlz3f5
	VIR32KE47bBLv6sOzNM8ujrxG0HC64fpu7stZIhck/4Uea3KMGmLhLG1kfjHp+4lfTB1zkYw3xlCZ
	Tj+XVruj53jHO2bpOMfJ8bwxpmP6Ry9u1UEi7Tpq2CCm74N1X9+QKhDd8bXhPuA3z1wnHEMp2inRm
	RQbVvucYiCyTjHcUQNcOynN+dsRtivYL3CqBylbQ17n/1C3O3VD1aeDUmpHRs6uK3PKUTbsJqgZa0
	SsNzjsxhB3VxxvBJJUb7pTv+9IyM/uL2y9TxRy6BojZkUvVu01vJj6vgYrxl04EgGSpf5cpIVGfMo
	vLm6SJ0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSx0i-00000002gD0-0XcW;
	Mon, 16 Nov 2026 13:44:40 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSx0f-00000002gBr-086q;
	Mon, 16 Nov 2026 13:44:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=xyOPebxqczNB/gJfDkZwbXaMote1MbilyqqQ/50z+0A=; b=t0Gz1GeqYdligw2G0195Np4K7S
	J4qjzX/g7YT7Ah4vixjvHNMBSUKX4e8o10jS3yArLjMJ7D30wHuxXkxL8YO1F8GiL0WQp8QZ6CFGg
	NaV159lQ3Xn9YmAmpWNAVdeVBeOOCVAjlHSB8oz58yMWc/cElf/Kbu4LRHImYIWnegqs=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1xSx0P-00GvLr-61; Mon, 16 Nov 2026 14:44:21 +0100
Date: Mon, 16 Nov 2026 14:44:21 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: 1579567540@qq.com
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	David Wu <david.wu@rock-chips.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH net-next v3 1/2] dt-bindings: net: rockchip-dwmac: Add
 RK3572
Message-ID: <03378e2f-4667-4cfb-9662-f65629e04321@lunn.ch>
References: <20261116-add-board-ok3572-c-net-v3-0-a957fdcd9c7a@qq.com>
 <20261116-add-board-ok3572-c-net-v3-1-a957fdcd9c7a@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261116-add-board-ok3572-c-net-v3-1-a957fdcd9c7a@qq.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_054437_087214_043E5F9A 
X-CRM114-Status: UNSURE (   9.46  )
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Nov 16, 2026 at 03:39:14PM +0800, Cunhao Lu via B4 Relay wrote:
> From: Cunhao Lu <1579567540@qq.com>
> 
> Add the rockchip,rk3572-gmac compatible with the snps,dwmac-4.20a
> fallback and require rockchip,php-grf.
> 
> Mark tx_delay and rx_delay as deprecated and disallow them for RK3572
> so new designs do not use the legacy delay properties.
> 
> Signed-off-by: Cunhao Lu <1579567540@qq.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
