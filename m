Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D85A9C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 11:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcUWv04nVyQpi/6Zt6YIzqT4HszBgkiGPaDN5VgJVN8=; b=jOBTQU6Pfx+Jn5
	f33Iu0viNMK6xSJJrgLXpENiFWwKrNtZn/UGpq9Mi6gQYIeOO9LQbIZMUyFA1uh/xWRtCNAuHfKXh
	2YGkMSO6RvOATtVzmllmbPeck8zrzkrdZdLNw3EK2Kc48M9Q8eLNJOnYBed2ODFH2d1A8rhg/Kyff
	gHuk9y5Y0ZkWHVHiEkIpuTgTT489Y1O1H55gvChNxNaqMB30xjTMHMXKpqPEodFzvuw6IuJkxADQT
	KFABrr5cePMeJayQ1VY+qTykfMG15dSZkiGvkB75u+bRzJBovHLGJW2kPH8ntLSEtpRB5QXjIwSM3
	a0ZyOLKeNuTbdg0YwOFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4hLF-001vZV-S5; Fri, 24 Jun 2022 11:19:13 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4hLD-001vYe-Mm; Fri, 24 Jun 2022 11:19:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=drUiWUYPOZ/mgsA2rYPc/1tb3Z6e5waNzU0Gaj97Y94=; b=V4tqB7bt46YbBvHVmMMPgnR83K
	SfeytZgNSy7zchvIyqboLlbKzOGDcOlf9dQ3cfVgR++WaU3YrpDSu/lVJYFuJHRDpUWeBU5WiVe7y
	w6QpuEML9NK9hHmIz0/fmJbSzphOfHsYOKGz0bDe0UR2+6Z8VGFk0rAE3c/Wf/XJkTpg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1o4hKv-0083zQ-1I; Fri, 24 Jun 2022 13:18:53 +0200
Date: Fri, 24 Jun 2022 13:18:53 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	David Wu <david.wu@rock-chips.com>, kernel@collabora.com
Subject: Re: [PATCH 1/3] net: ethernet: stmmac: dwmac-rk: Disable delayline
 if it is invalid
Message-ID: <YrWdnQKVbJR+NrfH@lunn.ch>
References: <20220623162850.245608-1-sebastian.reichel@collabora.com>
 <20220623162850.245608-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220623162850.245608-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_041911_795660_5689B5AC 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

> @@ -1422,7 +1420,7 @@ static struct rk_priv_data *rk_gmac_setup(struct platform_device *pdev,
>  
>  	ret = of_property_read_u32(dev->of_node, "tx_delay", &value);
>  	if (ret) {
> -		bsp_priv->tx_delay = 0x30;
> +		bsp_priv->tx_delay = -1;
>  		dev_err(dev, "Can not read property: tx_delay.");
>  		dev_err(dev, "set tx_delay to 0x%x\n",
>  			bsp_priv->tx_delay);
> @@ -1433,7 +1431,7 @@ static struct rk_priv_data *rk_gmac_setup(struct platform_device *pdev,
>  
>  	ret = of_property_read_u32(dev->of_node, "rx_delay", &value);
>  	if (ret) {
> -		bsp_priv->rx_delay = 0x10;
> +		bsp_priv->rx_delay = -1;
>  		dev_err(dev, "Can not read property: rx_delay.");
>  		dev_err(dev, "set rx_delay to 0x%x\n",
>  			bsp_priv->rx_delay);

rockchip-dwmac.yaml says:


  tx_delay:
    description: Delay value for TXD timing. Range value is 0~0x7F, 0x30 as default.
    $ref: /schemas/types.yaml#/definitions/uint32

  rx_delay:
    description: Delay value for RXD timing. Range value is 0~0x7F, 0x10 as default.
    $ref: /schemas/types.yaml#/definitions/uint32

So it seems to me you are changing the documented default. You cannot
do that, this is ABI.

   Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
