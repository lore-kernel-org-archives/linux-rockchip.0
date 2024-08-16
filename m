Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBE96C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 06:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jBSy+ZWKCbGd790Sq8t89fNjxw79jMBAEst7OnpSKKg=; b=pN3CsStOP+DOSn
	ev3RTNcjQm0Np9r7kzi0ejbCM7eS9iCvK70fd2C+Tom2lKxB97f1AAOE+OSuG8/ugLyujef7lPtXW
	VtozMQ7aYkHQA1O0WLFAQzKkabLWJytSAix0of2zlQjvO6Ts7RzxkgG08Gv2GKpFNRPtYY+l+YP/x
	tetVQkOxWLj42vpmxNZsP6erdgHKaF6RSOiiBVo+VmyC02qWEuPiGiHTrznaisfj8zYkR/5I2FJzH
	BwffvEyIgtgoJBUXdkLr2r/4yZIHAtePfny8ptWN2r3iSswUHw+0fBDACMBdN5aGwoTQDgabj+4sb
	qgQfaH+LrCDIb37wLJ5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seqdv-0000000Bxpn-45Rx;
	Fri, 16 Aug 2024 06:40:59 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seqdG-0000000Bxl6-12nw;
	Fri, 16 Aug 2024 06:40:20 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 30FA841A4C;
	Fri, 16 Aug 2024 08:40:13 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FE_tVLB1Jtg9; Fri, 16 Aug 2024 08:40:12 +0200 (CEST)
Date: Fri, 16 Aug 2024 14:39:38 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1723790412; bh=+d3XRUf7fgNNMkPhiBADu1Mygie2bfYXkkG+stkBDbU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=loK2DQeQIcnGWc14T58cYt6F3lIPFvHEUxGbwKVUWvORBCWX6XEMF52h3WmB2kCUx
	 hlm8Lxh88wonxf3bvyTY+IjDfE3k5X6TMIAtTLnLkooLmwPEQvokft9EOfdcjKwZ7M
	 ZVCDQARu5buW+9uVxxFe+790ijbIy341vAk/TdTekKVr8Md0XTi/U7d7F7lzfx+Ic+
	 81LG7Jb0VL8kG7ckXVWA2sLYlzC3iU+eq0bBZPFxggE/OFna+HfMyvvCBQV3Dma7Ey
	 wrjIWEbh4P+L1ywrnrSsJDeuWMT+64mOLh6xuenU7HIPIS3W2Lco/i3hVqk4AYnHCY
	 YGNaMbU2z5LdA==
From: Yao Zi <ziyao@disroot.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
	Ondrej Jirman <megi@xff.cz>
Cc: Celeste Liu <CoelacanthusHex@gmail.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Subject: Re: [PATCH v3 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
Message-ID: <Zr7z-SOFIgcuplq-@ziyaolaptop.my.domain>
References: <20240814155014.18097-1-ziyao@disroot.org>
 <20240814155014.18097-4-ziyao@disroot.org>
 <10324095.IZOipudI63@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10324095.IZOipudI63@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_234018_736265_844ED2B3 
X-CRM114-Status: GOOD (  18.28  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Aug 15, 2024 at 06:43:20PM +0200, Heiko St=FCbner wrote:
> Hi,
> =

> Am Mittwoch, 14. August 2024, 17:50:13 CEST schrieb Yao Zi:
> > This initial device tree describes CPU, interrupts and UART on the chip
> > and is able to boot into basic kernel with only UART. Cache information
> > is omitted for now as there is no precise documentation. Support for
> > other features will be added later.
> > =

> > Signed-off-by: Yao Zi <ziyao@disroot.org>
> =

> not sure if you have seen Krzysztof's comment yesterday, that he found
> the soc node getting documented in 2019 [0].

Oops, I don't read that before sending the series.

> I guess that counts as a strong suggestion. Not sure how you're feeling
> about that, but I guess we could move to that scheme for new socs.
> =

> So would you be willing to move the mmio-devices to a soc node?
> (stuff with mmio addresses in the node name)

I'm willing to, there will be patch v4.

> =

> Thanks
> Heiko
> =

> [0] https://lore.kernel.org/all/6320e4f3-e737-4787-8a72-7bd314ba883c@kern=
el.org/
> =


Best regards,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
