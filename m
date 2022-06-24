Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5739CCCA47E
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 16:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ubYVk1QT1kRVsnFnqLueKg7F+135SAdeBqzV07r/fQ=; b=3lgn2Fc6O0GFGr
	xYSYXzcQYbhJdPFjuMm3sdkAlOoxsBn5p8b9sxoXkE/vNdfCwybZQ3zoP/iAORzS40kLNKN/fIad8
	9xWoViB0QidMf5s4PeOoylEAo2cwlY7ZHRoJOG05T1M/GS82kAxeTmWAqOhgDUltOCbCH6sd0hBMF
	V+4CN6QPPzojr/sJuEPeLSzOsvT9Zvth9KdMa2KtO6fUR1aEw7BNgDxcHNSru1i0Q/3FdvGst20Kz
	mrqXxWr8TAexydlFyCNESdacno0NeOvGsj8RZZGddkSisA24Df2SRJ9YyuuR+fM4A+PbAtyG67K53
	cyrU8dgxCO3R+1bdQkNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4mY4-0034bZ-DV; Fri, 24 Jun 2022 16:52:48 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4mY1-0034Xe-Lk; Fri, 24 Jun 2022 16:52:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=z/TLLw7mRzYQAex8p/0tcUML3Z0CyUY3N6YPN7Zygq8=; b=yTHVrYXvbdipcml9LQ8q2WwBVS
	8kHZmLGGojsXKF2Hv4vohMrDU8/tuTU/kSVMM/BwMOvv1OlzNHNPK5iGFSwJTvLXUy2dPJMQZv9On
	5kQhOf8DqYQ4eu9UGZBMzL6n6SyKB9FQKLgIKapmgmnHZmzGouHfD2e7hgimsJmgVtMc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1o4mXi-0085tJ-Tz; Fri, 24 Jun 2022 18:52:26 +0200
Date: Fri, 24 Jun 2022 18:52:26 +0200
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
Message-ID: <YrXryvTpnSIOyUTD@lunn.ch>
References: <20220623162850.245608-1-sebastian.reichel@collabora.com>
 <20220623162850.245608-2-sebastian.reichel@collabora.com>
 <YrWdnQKVbJR+NrfH@lunn.ch>
 <20220624162956.vn4b3va5cz2agvrb@mercury.elektranox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220624162956.vn4b3va5cz2agvrb@mercury.elektranox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_095245_780129_32A1A772 
X-CRM114-Status: GOOD (  10.30  )
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

> > So it seems to me you are changing the documented default. You cannot
> > do that, this is ABI.
> 
> Right. I suppose we either need a disable value or an extra property. I
> can add support for supplying (-1) from DT. Does that sounds ok to
> everyone?

I'm missing the big picture.

Does the hardware you are adding not support delays? If so, rather
than using the defaults, don't do anything. And if a value is
supplied, -EINVAL?

	  Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
