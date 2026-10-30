Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E317606A320
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DWQ/m84y;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=GUQgTEW/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=adYa1XD+csTsKgdwcf4UyXAxxp5hXlll9Hgna5oD8gk=; b=DWQ/m84yser3IV50VH6ftZli3T
	M3S4TuKJFRlrf13QB8RsToHIT7XsDCrKPueo/mTcm3wAXWtVzlBjKCRmxGFr2BUXACyQ29TrK1f4V
	GFllfLGRmqrFNB7LeuAJp/8Wq1axQ1GXCMg3PPEWi0ugl9p3MQJswWDu+ihi6apagwiNDdOxNjXSq
	ubdPSK8K32kAoPsm2pjIj8qN7uxI706GpQrq+N4rRDujrSiInBEH3uaZGQs4w4jJWshHId9eRrHox
	jsUPLaTNQf+GUdw2AR4tVnZx1f1yNjkmm371DuW6V4WmO5Wf6vtwcfw9g7vnYyaTj888Ku+4ROI9O
	hS5Lhc+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMrCg-0000000COYf-1MUG;
	Fri, 30 Oct 2026 18:19:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMrCd-0000000COXz-3yN8;
	Fri, 30 Oct 2026 18:19:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 38A9B40F49;
	Fri, 30 Oct 2026 18:19:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D351E1F000C1;
	Fri, 30 Oct 2026 18:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793384387;
	bh=t9k0BgLWrg0mUnaOFTvLZXWxj8nv9nzACn3VaTjGowg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=GUQgTEW/T3UIswkAHLvn4oCvzwgBSpQxdyWQcY9WV9CIvLZjqNBcLb72+RvfvltfV
	 tWQhVoH5G9sEFXejJkpQvfX3R2tTbHKbt3vFjZoFyv8oZ5HSIS0h/jQQsx0axMuO4g
	 TxA1awu6asKWvsnoVD6+k5Dzq57ldWC8SkhjAixObYwjmARl03NJLnDIHjbFgjESk/
	 C3I4bxi1vFVuc7qtV7gsiSVE4QSR6kInbi7l+B6sJDfuMhQ4YzTqllZQCVYsQBJXKo
	 GHhm7najGasgVQrYJENzMvqpo0qtbJsUi41wQ7Wz7x7RnfSZ1CKX/JfMkxUHvgcE/W
	 dBVEDTKFnqzWQ==
Date: Fri, 30 Oct 2026 13:19:43 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cunhao Lu <1579567540@qq.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-clk@vger.kernel.org,
	Brian Masney <bmasney+clk@redhat.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	linux-gpio@vger.kernel.org, linux-usb@vger.kernel.org,
	Zhang Rui <rui.zhang@intel.com>, Eric Dumazet <edumazet@kernel.org>,
	Lee Jones <lee@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	David Wu <david.wu@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Linus Walleij <linusw@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
	linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Jisheng Zhang <jszhang@kernel.org>, Ulf Hansson <ulfh@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	netdev@vger.kernel.org, Lukasz Luba <lukasz.luba@arm.com>,
	linux-rockchip@lists.infradead.org, mfd@lists.linux.dev,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	linux-kernel@vger.kernel.org, Jiri Slaby <jirislaby@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>, linux-pm@vger.kernel.org,
	linux-serial@vger.kernel.org, Andi Shyti <andi.shyti@kernel.org>,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Richard Cochran <richardcochran@gmail.com>
Subject: Re: [PATCH 25/27] dt-bindings: arm: rockchip: Add Forlinx OK3572-C
Message-ID: <179338438342.1201325.14780731681186218967.robh@kernel.org>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-25-0b0fd85a31ee@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261022-add-board-ok3572-c-v1-25-0b0fd85a31ee@qq.com>
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


On Thu, 22 Oct 2026 00:11:22 +0800, Cunhao Lu wrote:
> The board uses the FET3572-C system-on-module and falls back to the
> RK3572 SoC compatible.
> 
> Signed-off-by: Cunhao Lu <1579567540@qq.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
