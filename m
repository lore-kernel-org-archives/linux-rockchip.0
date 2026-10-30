Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51337606A329
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 17:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=POnhD8tN;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=DOJuBrbP
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=rcphlEYwsTVoiKAonvZcq3hP5akuP+3nKUQ2VcFWV5E=; b=POnhD8tNM6pJNNhHdFCkr6mg5Z
	ZW0UrpohVXOmNCPuL+H11OccUMx8+xROXsBsqm9Sn4z49ArkNQB1p+gLB2Q7IFCn+Ib/Jv9b+U3BE
	FLB2+9ycOja9CysKVzmGMOvTkVVBbmlgFqZ12fxzGxAf+1eojr/IL1SsE6VmIg2roDCVtITYCZ9Fn
	fUsel3PZDLx9y7txwUoUTIBzxaQrnFyDVyhe95p5ushbcsv3nqNIJtADSFC8w0SH1PR4aBq0INpz/
	y/e4rajY70UH3KvSucLu1asSszq+BsNkOfiKXQMuxOtFimJozP7do6z+RmQNaH7xYuPaCIuW1ayss
	9xEAx73w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMqlc-0000000CJdC-2Ntz;
	Fri, 30 Oct 2026 17:51:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMqlb-0000000CJcC-0F1i;
	Fri, 30 Oct 2026 17:51:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C9E2F43874;
	Fri, 30 Oct 2026 17:51:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 631561F000C1;
	Fri, 30 Oct 2026 17:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793382710;
	bh=ayqwgRHACXH+SFqhaDzomPKX9uSy7Y6hyx5tLAf6IwQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=DOJuBrbPJsL9PyQJ0j++GXkM0ur22mU6Tw74m4mz1qxIJy+ctz5iw7JWPSE8lSji1
	 UX3aHxiFM0K77MP1897A9nyjFl7GXZEOwpoVGPezRXaRNTZrOWH9dAxeAQNlT3WpNE
	 hlkubG4PeAqrToOEK7ehcs6dE8KVomyy1GbIKeeA+R5w8SM4avEeOx5hE4Xgr46nGY
	 0eDqMME8/hgABVMRmkYFKx7uT8Z05+mUu6mhd7GFzg4j8quP21VDoeB7k3ax2jka/S
	 LMyr3x4445njHS9AlXkvGLc5qLQfDnEpMp049ML8fcNaKUwdBJiVnZx55MKy2JC2Bq
	 GUGGeSUYFXagA==
Date: Fri, 30 Oct 2026 12:51:47 -0500
From: Rob Herring <robh@kernel.org>
To: Cunhao Lu <1579567540@qq.com>
Cc: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Elaine Zhang <zhangqing@rock-chips.com>, Lee Jones <lee@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Richard Cochran <richardcochran@gmail.com>,
	Ulf Hansson <ulfh@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	David Wu <david.wu@rock-chips.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	Shawn Lin <shawn.lin@rock-chips.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	mfd@lists.linux.dev, linux-gpio@vger.kernel.org,
	netdev@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-serial@vger.kernel.org,
	linux-mmc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH 04/27] dt-bindings: mfd: syscon: Add RK3572 QoS register
 compatible
Message-ID: <20261030175147.GA1015085-robh@kernel.org>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
 <20261022-add-board-ok3572-c-v1-4-0b0fd85a31ee@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261022-add-board-ok3572-c-v1-4-0b0fd85a31ee@qq.com>
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

On Thu, Oct 22, 2026 at 12:11:01AM +0800, Cunhao Lu wrote:
> Add rockchip,rk3572-qos to the syscon compatible list.
> 
> Signed-off-by: Cunhao Lu <1579567540@qq.com>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Rob Herring (Arm) <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
