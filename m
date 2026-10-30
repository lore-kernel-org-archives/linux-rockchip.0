Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46202606A31D
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 18:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lO74yOMO;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=gDyaGAuh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KIazDOQjxNHjqiGKqgFqDd/62bZ2rNFpS9hOnqevcWU=; b=lO74yOMOhOBmWM7EToAPz05WLE
	dqj4nw6SCXzF5xcyj5i1tq95AMv5gMDJcMFYq4kdXbf72U4XzTpoLcbNLxE6G15HWQAyw2xWpMOUQ
	ZYPGRI5VzBzfcE9IdpOIRu25ulinWkTPrFatMK6XECSRVwdjMBs+ktzFJUGHxf5KMOo7RJZ0EZKSj
	zJNengRZxb2QVAAM4IEGBvRvTjofXU3v9TnluZFMmsgAaZQBqV+ceI/2RhsgCV+GDwRFaX8e/e2Yb
	EwUDv+c9WmdQse+yv9wrSQuks9RDpWKJCldXfg8GfC66QOz2TeWG9OyHbITDg2EA+axbjYWdSKr1Q
	1VT9C4ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMrBu-0000000CONx-2j3z;
	Fri, 30 Oct 2026 18:19:02 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMrBs-0000000CONG-3QCU;
	Fri, 30 Oct 2026 18:19:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 41523601EE;
	Fri, 30 Oct 2026 18:19:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99E441F000C1;
	Fri, 30 Oct 2026 18:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793384339;
	bh=/86/zTFvnDVScJqAiZwRttfyW+WaA8SdHKVirRpFfLg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gDyaGAuhwSMS4Uxww8tbJ+uX2T6fAKbb2TWpaBEp8xgQ9d0Dj3LEEIRfjLIKGxyzc
	 RG1zNn49EjcuRe4tPpTakD/KEHtV/orWfreE5HSZe/DDf9A2pu/OVgkZokmHfW2yH3
	 Koj+5phapacpf6OzO+C325iOlqWc0gaWBccH/lFvANRz/Muo1++S8pY4cy2PCN/9Ze
	 d+0xamfYGDaD91WF3Q0MnuGmlaFzWBt1M1DbBnWOOQHwPmN38xoOWbRegNHOpTIFD9
	 ZXLayVjJnG/yATtVtf0GFnbQlu1LuFb2XSiGaR4fhOqsBdfOyZfTkqtsETfiOM4Bic
	 dqhzRXZKdSrdw==
Date: Fri, 30 Oct 2026 13:18:56 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cunhao Lu <1579567540@qq.com>
Cc: netdev@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>, linux-gpio@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>, linux-i2c@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Manivannan Sadhasivam <mani@kernel.org>, linux-mmc@vger.kernel.org,
	Jisheng Zhang <jszhang@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Richard Cochran <richardcochran@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>, Paolo Abeni <pabeni@redhat.com>,
	David Wu <david.wu@rock-chips.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-clk@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
	Ulf Hansson <ulfh@kernel.org>, linux-usb@vger.kernel.org,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	linux-kernel@vger.kernel.org, Jiri Slaby <jirislaby@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>, linux-serial@vger.kernel.org,
	Eric Dumazet <edumazet@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Jerome Brunet <jbrunet+clk@baylibre.com>, mfd@lists.linux.dev,
	Lukasz Luba <lukasz.luba@arm.com>, Jakub Kicinski <kuba@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>, devicetree@vger.kernel.org,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	linux-phy@lists.infradead.org,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Linus Walleij <linusw@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
	Brian Masney <bmasney+clk@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>
Subject: Re: [PATCH 12/27] dt-bindings: serial: snps-dw-apb-uart: Add RK3572
Message-ID: <179338433630.1195689.10561281082605142294.robh@kernel.org>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-12-0b0fd85a31ee@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261022-add-board-ok3572-c-v1-12-0b0fd85a31ee@qq.com>
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


On Thu, 22 Oct 2026 00:11:09 +0800, Cunhao Lu wrote:
> Add the RK3572 UART compatible using the Synopsys fallback.
> 
> Signed-off-by: Cunhao Lu <1579567540@qq.com>
> ---
>  Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
