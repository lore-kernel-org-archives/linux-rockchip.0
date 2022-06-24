Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2897DCCA481
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 17:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7eXYevjFJttTWqgJa8X2qjue2xDKYERpPD8yfQqi6tg=; b=1sQb+mEhKDOvBW
	r5hhEWSpWWjnskzP6vdDsQQLRhFxp07J78ZKEmVdoVXlOgCuo3ceTg7Ug4Y4VkbN3UUcQsTxfUFsJ
	AmhF2hf0Jd0ZZUn76yic9fHKB4p7QxeuLGzfbX3r55kZnGrAb7FymTTgrqW9rZhnwg794Dzsdto6p
	Ef1MW9CDWZu+l9S7QLX5PdffaWEgMsIxfhv2DElWjUUbOUu5Ikld8kkRrsiOwU9Pd+gjygS3M747P
	9F6Y//M2O27mubUV9zgkNXVm+IU6kw8Zv4G1U1ul98Jxn+mqmg2uL4MFBgvFOESL+TPCJAh12pOuc
	kYGLEonOrcDRJlpJHroQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4nFE-003Hcv-2O; Fri, 24 Jun 2022 17:37:24 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4nFB-003Hau-H2; Fri, 24 Jun 2022 17:37:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=OjiL9cpfwIvGhF77dlQtO6kFUnGncsoSTCdcTHq4R+I=; b=VI7ulctH+rbeC9bs/wVLn7jsbN
	InOnqIL6VDuYYDHnXt4zg3vrjxiaAk54TUknZZzraUjwtDKL24mN/BjBU0u5kgVUkEyJexcX8eGNT
	4GUjayl5S1ot9Qe30HXx3MkZkLUv624ZLja6WR390oaq2YhKBdab08pe9d2tmcBKZJj8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1o4nEy-00863L-Qo; Fri, 24 Jun 2022 19:37:08 +0200
Date: Fri, 24 Jun 2022 19:37:08 +0200
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
Message-ID: <YrX2ROe3a5Qeot4z@lunn.ch>
References: <20220623162850.245608-1-sebastian.reichel@collabora.com>
 <20220623162850.245608-2-sebastian.reichel@collabora.com>
 <YrWdnQKVbJR+NrfH@lunn.ch>
 <20220624162956.vn4b3va5cz2agvrb@mercury.elektranox.org>
 <YrXryvTpnSIOyUTD@lunn.ch>
 <20220624173547.ccads2mikb4np5wz@mercury.elektranox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220624173547.ccads2mikb4np5wz@mercury.elektranox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_103721_644719_A809D829 
X-CRM114-Status: UNSURE (   5.64  )
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

> The Rockchip hardware supports enabling/disabling delays and
> configuring a delay value of 0x00-0x7f. For the RK3588 evaluation
> board the RX delay should be disabled.

So you can just put 0 in DT then.

   Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
