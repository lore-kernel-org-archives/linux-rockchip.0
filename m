Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13D04CA0FED
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 02:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOk00fOCSlOC3O44iov+2HsY77G2OxG4QMf8t7K4+74=; b=BrPeR7cTJOVnum
	U4ApK/4JKt+yFdKveRVyVHF0K4Uc7xXkQkBTi+6tb+MBLMG/JsalkNt2bSnqMvmiKksR9uQkkZ2Kv
	uOnC+NIpbvZBvn1szBMWCo6/D+aftvCaS3PTtvNM3a2K+JyU/rYRTHUtK2n9CQAYFiqDnX9SJNoak
	EvE4qgENpPY08nzyZqBOgyeQ7G+0IPj0Urphnp0HzGucCIVs82TdtWiaupAv2/8LF8jjNoogfl2LJ
	3vGwh1PAb41/9eXJOcTxuvCH7w3SAmCRd5KyBRxz9k+uH8nPcQuEC+o4zGZt9fbN7P6pNWw9gV/0F
	DHRvuWAsSOu/ehHAjmog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwB1R-0000000Bm6d-121Z;
	Wed, 10 Sep 2025 02:57:25 +0000
Received: from smtpbgau1.qq.com ([54.206.16.166])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwB1N-0000000Bm0A-1aC1;
	Wed, 10 Sep 2025 02:57:23 +0000
X-QQ-mid: zesmtpgz1t1757472967t74690c6b
X-QQ-Originating-IP: M3qgbrrmtUk2hnbg2au9CWkEhPxB9US2+LWcIhSpDN0=
Received: from dkx-H410M-H-V2 ( [183.51.121.90])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 10 Sep 2025 10:55:22 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 654995868464269577
EX-QQ-RecipientCnt: 16
Message-ID: <76B19AD42CA555FC+fff44db30522cf270802ec31912a9c19d29b2d39.camel@t-chip.com.cn>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add devicetree for the
 ROC-RK3588-RT
From: Kaison <dkx@t-chip.com.cn>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Jimmy Hon <honyuenkwun@gmail.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Wayne Chou
 <zxf@t-chip.com.cn>, Quentin Schulz <quentin.schulz@cherry.de>, Dragan
 Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>, FUKAUMI Naoki
 <naoki@radxa.com>, Peter Robinson <pbrobinson@gmail.com>,
 devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,  linux-kernel@vger.kernel.org
Date: Wed, 10 Sep 2025 10:55:22 +0800
In-Reply-To: <307a76a6-cc92-44a1-9ac0-97005bf51b4b@lunn.ch>
References: <cover.1757322046.git.dkx@t-chip.com.cn>
	 <42ae6d16ed9162582e7b03cbad661a7950c0db55.1757322046.git.dkx@t-chip.com.cn>
	 <307a76a6-cc92-44a1-9ac0-97005bf51b4b@lunn.ch>
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:t-chip.com.cn:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: NvH2zBBgt3uTdl+uxtT3Jsbg1a7g0wQHlVEXQoS2rvKxciQbP1Rez7a0
	8byPVUCrAj7gBU4op0UymMlhRr8XgB95+4neIXBOlJiS21lyeyhriEurswxtMs80ZZELwt4
	CQ+jWJXXu1rA4YcfZKaUx1CBRTku1ilk+ONGdElqLhtnaLIMtyL4CpXDThKYY/0/Jpyxt6U
	bX+Y7TT6BKN6n2XQ2a9naXbzVR4yTs+Kir+K+l2ZYQBV3yd98FGofRLgfj4eE/jDVrUiZNm
	EzfBk9RktZcPYakLv9cVKRNaJDf757ynv/doxMDjgAHblxDZo6Hb1yjmUqQLGT9RIgTDTbW
	K3qXWRrv7+JlESjPhjetwQ2rxbO9AaHVH1swR2P59uYCuitUNDQ95CgEy/71JfmVdp/Zb4X
	88A+Y/y6g5pzJGbkxGr7e7uKjRFnUlz15kdlw8anzMstTOrlG941yWHNzAdvXpYC9SWtsFm
	wh8d4uf0Vqb3MevW3pp50MQkOd3PplmkF8VTuRm4kC+HgOOwdsn/gfJCzNUCxLBTLNf3jqt
	TA2H/CdoFQYKC8mXgb5ZHlJb6Ai7rH2U5QhbT2ITDzxfUrfgpePeFPLNMrbYYaHLzAiIQUN
	kwYTVyyJq6TMAToW8Quz/C/uUk0xeTId2sZ88DLrjRkI404IVdT8oBKq7S6qM/7jQKdvYRB
	M4zKgeMA+P/yzOeV5af+Dz5CEgYG0fqmt+irOzKNrxRvKc1X1iuggcxq2NXGq+WpmVz1H5l
	WYBJa3WwAtKIvpKbFDEWzwEhUf+YQm1YM+hqQfRUJ4ANBNI1fpIDH8RRuhxNQzwzMjG7icO
	FrSJJ6B1roDEzLtwYmRyrriZNHUNSYkihoBIt2yLwWKbUBEg+FyAu19AQIYWp3f8lm9cBI6
	7wH2aG9Io675UVOgghvd/zYnBy3tyn+80pKpyAsa/NeOL81rU9rtDYt4yA+TwkKF11s4o+P
	gXWALLWqzbKGL0X+JEm2R7XT/ptO0GDm7OWEaYzXkvYKXh6WTEIiuo7C1Ptk8XK6pxTZIEv
	+5tNpQh7Eo09VfkPAsWdUE7XRKb3ty2xrGpCiq1E7OiM3ZaBw+fQuDOZtG/Gc=
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_195721_796975_FD69A4F6 
X-CRM114-Status: GOOD (  15.41  )
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

hi,
I'm very sorry. Due to the default configuration of my email, I didn't
receive your email normally. I have fixed this issue.

On Tue, 2025-09-09 at 14:31 +0200, Andrew Lunn wrote:
> > - 2x Gigabit Ethernet, 1x 2.5G Ethernet
> 
> I actually only see the 2x 1G. Is the 2.5G not supported yet?
The 2.5G Ethernet is based on the Realtek RTL8125 network controller of
PCIe 2.0x1.

+&combphy0_ps {
+       status = "okay";
+};

[snip]

+&pcie2x1l2 {
+       pinctrl-names = "default";
+       pinctrl-0 = <&pcie2_2_rst>;
+       reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
+       status = "okay";
+};

> 
> > +&gmac0 {
> > +	clock_in_out = "output";
> > +	phy-handle = <&rgmii_phy0>;
> > +	phy-mode = "rgmii-rxid";
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&gmac0_miim
> > +		     &gmac0_tx_bus2
> > +		     &gmac0_rx_bus2
> > +		     &gmac0_rgmii_clk
> > +		     &gmac0_rgmii_bus>;
> > +	tx_delay = <0x47>;
> 
> What happened about my comment that "rgmii-rxid" is probably wrong?
> 
> If you think it is correct, you should reply with a
> justification. Maybe PCB is very odd? In which case, a comment would
> be good to explain who it is odd.
The Ethernet part of the board is designed with reference to the
rockchip evb1 board. 

link: 
https://github.com/Firefly-rk-linux/docs/blob/rk3588/firefly-public/en/Common/GMAC/Rockchip_Developer_Guide_Linux_GMAC_RGMII_Delayline_EN.pdf


The document describes the usage of the rgmii-rxid mode:

When the hardware enables the RX delay of the PHY. Need to turn off the
RX delay of the GMAC, and the dts configuration mode becomes "rgmii-
rxid".

> 
> 	Andrew
> 

Kaison


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
