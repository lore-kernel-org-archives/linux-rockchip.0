Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15764606A324
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 22:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=x10Dy1HB;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=jfr1jagI
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=15HzxB6TzspFkmSHd9fwbpaSLR6NREyYhqhINrAW+rM=; b=x10Dy1HB14/EHPWsf5V5eR5+mC
	fx86IQdVzZulGzwu5buEBNyzAPIDLoi+m/KFBqy/D0z8C4E9ppJqvsVX1KwzOIXEP5Qm9nm6qsoEZ
	zJPf8wYk3s4+4XP9RVx9WRrSIpo095BYUU0xvjqasU5euF6UuwlOSMzsGlnSlRXneBn4WohW175Dx
	QyWwW3ZHJ2WT+pfYRyjDCEl5QKxRi6sqyEDRvmWZ9/se5vbDFCIUgnAWudesSqgOCFzmD8qNCK7SV
	t9ad/YKN5A0SBa83d3mYKVvf1lkz72to3mjpMi/uls2utCzBGTkNo87f1OMD2XYiXNSFUmW+eoOZf
	ZeORmYeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLTHJ-00000003N9x-0DId;
	Mon, 26 Oct 2026 22:34:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLTHH-00000003N9U-141Y;
	Mon, 26 Oct 2026 22:34:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 33BC9601F7;
	Mon, 26 Oct 2026 22:34:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 255931F01828;
	Mon, 26 Oct 2026 22:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793054089;
	bh=v2Nrgywn65NL+RE7paBhmd1KoquJfEvns7IjUonmCkc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jfr1jagI2Pt7wvdiivuSrWwaHZsjr7u7Ggk+4UrVhiB5fU4Je/W8tTTJCjIxJpK1J
	 Tzeb1RBUqdUJfpPxa1yyfqbGUkdK04/mN2ACZgCpTU6LHGP/tBhQfJllPNAePmdlgv
	 w2FMqcuwbZKetfkBm18RKMOUZLiTglEecAMrH8KVJRgxWcALpS1wsHMbbxGetnnn8x
	 iyLLIEa5I5iQ7M1jTzvYZuPkJcIxab5Z+kank8/A6ajRzxrW+QNFbHS/XuOJAQJLq9
	 4nGIAS98j6N+ECXwN3QSrQGmckdeTHGPoT0dOuN0TAuyngnPnRE0glbUHmUA/vBlCL
	 /oGT3gc4ZA0sw==
Date: Mon, 26 Oct 2026 23:34:46 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: 1579567540@qq.com
Cc: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
	Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, Lee Jones <lee@kernel.org>, Linus Walleij <linusw@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Richard Cochran <richardcochran@gmail.com>, 
	Ulf Hansson <ulfh@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@kernel.org>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, David Wu <david.wu@rock-chips.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Jaehoon Chung <jh80.chung@samsung.com>, 
	Shawn Lin <shawn.lin@rock-chips.com>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	mfd@lists.linux.dev, linux-gpio@vger.kernel.org, netdev@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-i2c@vger.kernel.org, linux-serial@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH 11/27] dt-bindings: i2c: rk3x: Add RK3572
Message-ID: <at_VaLUwxn7h3Dal@zenone.zhora.eu>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-11-0b0fd85a31ee@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261022-add-board-ok3572-c-v1-11-0b0fd85a31ee@qq.com>
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
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Cunhao,

On Thu, Oct 22, 2026 at 12:11:08AM +0800, Cunhao Lu via B4 Relay wrote:
> From: Cunhao Lu <1579567540@qq.com>
> 
> Add the RK3572 I2C compatible using the RK3399 fallback.
> 
> Signed-off-by: Cunhao Lu <1579567540@qq.com>

Acked-by: Andi Shyti <andi.shyti@kernel.org>

Thanks,
Andi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
