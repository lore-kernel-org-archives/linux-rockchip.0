Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE148606A31E
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 17:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JHdBIqIB;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=iRrrY2w2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Qo9KHp10QpIKapCV3EPJytWUBWli35nOV9UXs/vgks0=; b=JHdBIqIBW+uA/QUeX53jxPvqh0
	5Pq2xA6XQlevWM7AhGkxt3UZ+ebejF2mpZMVzAcIOcd1afjRGHl3reicoxKd90O96c51ycsNgePDu
	QumsxmchIj1PgIQ28wfLkeIQlQiiUr5loHqbLiuzQrfo2dumxHY0WXEZ1vSIKxnJrshoLAQRVWQkM
	ImtJMdcYVOMXx/mJwPJFpPx1eb3lY65kLD0ZHJkqfiyr6e/prVvdGushzQB46ysBWlgwYjgHZyYjF
	9b0d9mwCDhmdvkp3pIihBK9WhoAbFDuxBQ8yIQDmAq8Rsj5W870unTM2NrnjLoVYH/DNDm9yT5DGy
	BOuLet0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMqqn-0000000CKn7-2lzr;
	Fri, 30 Oct 2026 17:57:13 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMqqm-0000000CKmj-14hE;
	Fri, 30 Oct 2026 17:57:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5E3AE601F8;
	Fri, 30 Oct 2026 17:57:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A51321F000C1;
	Fri, 30 Oct 2026 17:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793383031;
	bh=gFpY/CcR/0PfOj1nIommMYQjTVE3zadszE3CB4i7mAE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=iRrrY2w2Y9xtSge+L94oD6rgtPud3fBfQiMrTX+Al7/W8zTnhkfqM7RDC18GrIhox
	 ewQIqX1WdvTOZ7Bnb8kEiJxB7vhfupJcXLrqJHfVJmQuVjhMMGXh4BltBQj2wnNR+f
	 gHAKGwB4eULVAAtBRqGGT+UhCMdv1ulj+vFdkMfOiB/4G3wIYw5rBSpE4srr4r0CmW
	 q76IDsn7CCP3CkEPo3n6bChvAruH3xBsEU7scFsGK7oWP5/Q9cRFt4v4aV25qfb1ak
	 aJKqW1mvY/un9fp6I0lUH/lcAIhAvvtx3QVQGuyqUr+A1akCy+DS634oukVT0Fm81S
	 JylpU6Y2OJtGg==
Date: Fri, 30 Oct 2026 12:57:07 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cunhao Lu <1579567540@qq.com>
Cc: Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	devicetree@vger.kernel.org, Ulf Hansson <ulfh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Richard Cochran <richardcochran@gmail.com>,
	linux-i2c@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
	linux-mmc@vger.kernel.org, Jaehoon Chung <jh80.chung@samsung.com>,
	linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-gpio@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	linux-serial@vger.kernel.org, linux-phy@lists.infradead.org,
	David Wu <david.wu@rock-chips.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	linux-arm-kernel@lists.infradead.org,
	Andi Shyti <andi.shyti@kernel.org>, netdev@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Stephen Boyd <sboyd@kernel.org>,
	"David S. Miller" <davem@davemloft.net>, linux-clk@vger.kernel.org,
	Lee Jones <lee@kernel.org>, Brian Masney <bmasney+clk@redhat.com>,
	linux-pm@vger.kernel.org, Eric Dumazet <edumazet@kernel.org>,
	Linus Walleij <linusw@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Jiri Slaby <jirislaby@kernel.org>, mfd@lists.linux.dev,
	Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH 15/27] dt-bindings: thermal: rockchip: Add RK3572
Message-ID: <179338302704.1052003.1217038556098024817.robh@kernel.org>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-15-0b0fd85a31ee@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261022-add-board-ok3572-c-v1-15-0b0fd85a31ee@qq.com>
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


On Thu, 22 Oct 2026 00:11:12 +0800, Cunhao Lu wrote:
> Add the RK3572 thermal sensor compatible.
> 
> Signed-off-by: Cunhao Lu <1579567540@qq.com>
> ---
>  Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
