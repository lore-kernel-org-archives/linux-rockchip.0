Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4721606A327
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 18:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=syMwDRfZ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=m1+tweTA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=2r+QHqc6QJAVFyF7fAyrnlY4bJTJXhLgp3sGicxeOz8=; b=syMwDRfZpcOcgPmk4vrWJ2zGfj
	9W1icmEsSkFKpO2YZjzA5gjopDN8iYRWllWWIbAiLoytM/GDNsJrGkGK7fL2aAwFJaaBvgB2xPz/3
	+jOKWjcgaueSwHaLYjCoi1L7noVzF3K7mAyh3lskdYbD8N+5YQ8hU3eyPkwW5tKyhRYl9WjcRbBmD
	EU171ZE63amkKb2vlf3mxk4hIH/TeIku1hMy32jTLTlM31nKVAWBnyRypdhVUifyy/YS/OPTopYhC
	VNeRcgqGhEQn18I+0yvcjbmQffdzif/BAJ87uf5QTBrsNJPVZE8k6UDIgWg2en9m1iFTVxLp6KyeG
	m6q61v9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMrAX-0000000CO6g-1s2v;
	Fri, 30 Oct 2026 18:17:37 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMrAU-0000000CO6H-1qfE;
	Fri, 30 Oct 2026 18:17:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4D8EE601EE;
	Fri, 30 Oct 2026 18:17:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A90241F000C1;
	Fri, 30 Oct 2026 18:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793384253;
	bh=X5x7xBzSu9MQJx0VW5rlzSeRxFUOvmHNtGRPFRc0mBI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=m1+tweTAyDL+KzKUMPs4dGwRjv+e38a0bJy8T2f9MRPJqMUJdetcYqltW7co3sQLO
	 6uare3isNFNyCc057oyfIbeQxzQVz5ReHHOWiJWDTKKTcP4Ah3Bpw/KyAHTcrPiQU3
	 ivIZPnmfsM934Ejwl5FUp6jACqhsqgI09YPpDmq+k47eKhC93J1dU9+EhzL9K8PJC8
	 jcEkg8jBgib97x7RuNt0KkA9/5e/Wm16Xr7D9lmFtu2EtSqKZbZRZ8rre8u68kJA6C
	 n8PBZdVdlJ97ogHIhBHMPxU+l3kJK4w6GE7TlVSTGW760S0BBNCWz5AA3NOF1mOXUs
	 /K81BO/2wxgOA==
Date: Fri, 30 Oct 2026 13:17:29 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cunhao Lu <1579567540@qq.com>
Cc: Linus Walleij <linusw@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Lee Jones <lee@kernel.org>, Ulf Hansson <ulfh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Brian Masney <bmasney+clk@redhat.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	linux-usb@vger.kernel.org,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Manivannan Sadhasivam <mani@kernel.org>, netdev@vger.kernel.org,
	Jiri Slaby <jirislaby@kernel.org>, linux-serial@vger.kernel.org,
	linux-mmc@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
	Elaine Zhang <zhangqing@rock-chips.com>, linux-pm@vger.kernel.org,
	linux-i2c@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	devicetree@vger.kernel.org, David Wu <david.wu@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Daniel Lezcano <daniel.lezcano@kernel.org>, mfd@lists.linux.dev,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	linux-gpio@vger.kernel.org, Andrew Lunn <andrew+netdev@lunn.ch>,
	Richard Cochran <richardcochran@gmail.com>,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Zhang Rui <rui.zhang@intel.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>, linux-clk@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>, Jisheng Zhang <jszhang@kernel.org>,
	Eric Dumazet <edumazet@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Jaehoon Chung <jh80.chung@samsung.com>
Subject: Re: [PATCH 19/27] dt-bindings: phy: rockchip-naneng-combphy: Add
 RK3572
Message-ID: <179338424846.1186130.13019984691130046587.robh@kernel.org>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-19-0b0fd85a31ee@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261022-add-board-ok3572-c-v1-19-0b0fd85a31ee@qq.com>
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


On Thu, 22 Oct 2026 00:11:16 +0800, Cunhao Lu wrote:
> The RK3572 combo PHY uses two input clocks and one reset.
> 
> Signed-off-by: Cunhao Lu <1579567540@qq.com>
> ---
>  .../bindings/phy/phy-rockchip-naneng-combphy.yaml  | 23 ++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
