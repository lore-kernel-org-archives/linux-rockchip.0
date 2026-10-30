Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4CF606A32C
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 17:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CMhek9aX;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=JiDfY8hP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=elKJA9SspHylvg8J2OtpgO+WQKli9IDkCcZEtmCXS8Y=; b=CMhek9aXcUSIwWPQQqHi72DkdG
	jog/+PyKrGU43t+joKGAEq6YsWwVjQElr/H4kixfCQif77/h72f+2LUAdyRerONWF3jWq2/vaUMTo
	Lxm8vUkzyoSFErTbESYKooUZDmMd1jTJUVnMIU+8o70+WbBwjS73gsaTpA618U2KaUXup84SX5cHA
	INsAnUhQtcehiU5LlvmPqSbGt42ux17EhRUzjguhKl+K3fxYppP1YIVXKaaFjf2pbLjjjWTbhCvN7
	BgfbITgkFMZapWFjmEBiB84FLNNSnLB5XQV4Bhl4K89CmfQIV+USvSlm6PhxkSHnrpaY2+JztWhLK
	+bBU1dWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMqp1-0000000CKQL-1QRq;
	Fri, 30 Oct 2026 17:55:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMqoy-0000000CKPX-3Iu1;
	Fri, 30 Oct 2026 17:55:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1341140B9D;
	Fri, 30 Oct 2026 17:55:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97A401F0093A;
	Fri, 30 Oct 2026 17:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793382919;
	bh=dHqkgOMA9Td5gDdmO7PZl3wHOa87W28GWf0OpcKFz7Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JiDfY8hPHUzLfE9EHO+s/TGhLElxX1Wla9Khx5gkIOcGm/DwIIfz6fG8npD6sAh4K
	 OjMD4sYU8zaXkHZcn6tU88lzOkBuhPeiv3pmgrS4aENXVLa0p+1vf9VEXuYLR4X7C3
	 CXSGFOr70PNRXT89GaHNXb8Na98574GNsxuTegalueX6TrMNiKEGCTRSYbiRgKNVPO
	 uqStMScNCOH8KFgYmQ0j05VVFJcLLLBiq+M6erAfSlCmTys/Dy8/c47E/Oy96LnVMC
	 UGd+Q4U20Sbr8/VQCZ8JZflXDAb9/TaH0qNlwjZXaeGBq+GlYFQqgTnRz4TmSucEko
	 VkXkcX4V+6Jpw==
Date: Fri, 30 Oct 2026 12:55:17 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cunhao Lu <1579567540@qq.com>
Cc: Eric Dumazet <edumazet@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-pm@vger.kernel.org,
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	Jisheng Zhang <jszhang@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	mfd@lists.linux.dev, Brian Masney <bmasney+clk@redhat.com>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Richard Cochran <richardcochran@gmail.com>,
	linux-serial@vger.kernel.org, Zhang Rui <rui.zhang@intel.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Jiri Slaby <jirislaby@kernel.org>, linux-gpio@vger.kernel.org,
	Stephen Boyd <sboyd@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, linux-usb@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	David Wu <david.wu@rock-chips.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>, linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, Ulf Hansson <ulfh@kernel.org>,
	Lee Jones <lee@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Linus Walleij <linusw@kernel.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 02/27] dt-bindings: power: rockchip: Add RK3572 power
 domains
Message-ID: <179338291694.1040563.11893867184826906953.robh@kernel.org>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-2-0b0fd85a31ee@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261022-add-board-ok3572-c-v1-2-0b0fd85a31ee@qq.com>
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


On Thu, 22 Oct 2026 00:10:59 +0800, Cunhao Lu wrote:
> Define the RK3572 power-domain IDs and require the system GRF used to
> check firewall status.
> 
> Signed-off-by: Cunhao Lu <1579567540@qq.com>
> ---
>  .../bindings/power/rockchip,power-controller.yaml  | 17 ++++++++++++
>  .../power/rockchip,rk3572-power-controller.h       | 30 ++++++++++++++++++++++
>  2 files changed, 47 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
