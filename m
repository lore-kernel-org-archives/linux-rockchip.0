Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0951606A33C
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 17:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=j4LRixPt;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=JVXKBOye
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=MojRhVh0k0571/mJ6sHPhaoL0Tp9tHJqfucKsDOY3Tk=; b=j4LRixPtcdRaTIirWyHmOstJ+D
	Nj2jaSCKW5JFL22AncptJ1N18ZC6HZCUQQukcsJic/WhmRflnD4npu02GyQ6st9AVDDaA0gWBWYUd
	LzUvfstjUg6BPamKPMEY1NRQm+1+Wtz6ZE7e+jMHijSnbt950oiQH6FbVyuwQ1R1AA3Tf+2ST8Esq
	BFsVaxd2lEf8ecSZ2Tn1baTZ790WOpAuNXv7brUHkwr6FLfyrhCAGGXrXr1U/23kwAXVsZmQ+KcqQ
	cQ6r1HpwynDRy3kXhjgejTKD34HYWz4NtY4R8ldraE1XCkSP59u2mJwQAQNjVXKrFLQaIzT6B/o10
	RoetxkXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMqj9-0000000CIX7-00mQ;
	Fri, 30 Oct 2026 17:49:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMqj6-0000000CIVO-0aOS;
	Fri, 30 Oct 2026 17:49:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1AAC4605D0;
	Fri, 30 Oct 2026 17:49:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71B951F00A02;
	Fri, 30 Oct 2026 17:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793382554;
	bh=ZLx/b2ua4Zd1yUXxRK6Mux+7pE/jsjGxjCPHmBP7rM4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JVXKBOyeacLReNNa2EEW3SAE8Ys5gImVRYowVR1gsFBt+Bu8DUy6D2cLOJw92crbf
	 Ysrn4MNX4WGx5BqOWOxpn5RwmdiLabSOcqkXbiuvtw+bqLEek0rA6CcEE9WA0j7pr9
	 cfiCvIP6eAb4H2GQyGhEd+qezjMDOFiUFpZ8cznscnZtVxfDLS+VziBqPeXe4lmq64
	 S0n62bXlHRiBzJQDIF3dkXiq5EuS7j5k4qrg3XTvKLVl0TvbFf6ucpwBkrcrQdy8+C
	 eNrGUxkyg+QCaevcoMKLTZ8QEcD8A9lL+yYUSOXKBU81us4OrwtgFUEUi+xD65uY8J
	 hOTu58dWq2tGg==
Date: Fri, 30 Oct 2026 12:49:11 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cunhao Lu <1579567540@qq.com>
Cc: Ulf Hansson <ulfh@kernel.org>, linux-clk@vger.kernel.org,
	Andrew Lunn <andrew+netdev@lunn.ch>, linux-phy@lists.infradead.org,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Elaine Zhang <zhangqing@rock-chips.com>, Lee Jones <lee@kernel.org>,
	Brian Masney <bmasney+clk@redhat.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Jiri Slaby <jirislaby@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>, mfd@lists.linux.dev,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Paolo Abeni <pabeni@redhat.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Bartosz Golaszewski <brgl@kernel.org>, linux-pm@vger.kernel.org,
	Jakub Kicinski <kuba@kernel.org>,
	David Wu <david.wu@rock-chips.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, linux-i2c@vger.kernel.org,
	linux-mmc@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
	Richard Cochran <richardcochran@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>, linux-gpio@vger.kernel.org,
	linux-serial@vger.kernel.org, Zhang Rui <rui.zhang@intel.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	linux-arm-kernel@lists.infradead.org,
	Linus Walleij <linusw@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	linux-usb@vger.kernel.org, netdev@vger.kernel.org,
	Stephen Boyd <sboyd@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Jisheng Zhang <jszhang@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Eric Dumazet <edumazet@kernel.org>
Subject: Re: [PATCH 03/27] dt-bindings: soc: rockchip: Add RK3572 PMU and GRF
Message-ID: <179338255087.1001548.4507997389311414177.robh@kernel.org>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-3-0b0fd85a31ee@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261022-add-board-ok3572-c-v1-3-0b0fd85a31ee@qq.com>
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


On Thu, 22 Oct 2026 00:11:00 +0800, Cunhao Lu wrote:
> The RK3572 PMU and GRF blocks are system controllers shared with the
> clock, power-domain, and USB PHY drivers.
> 
> Signed-off-by: Cunhao Lu <1579567540@qq.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip/pmu.yaml |  2 ++
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 12 ++++++++++++
>  2 files changed, 14 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
