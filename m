Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05D86C369DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Apr 2025 12:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oesa3AK2wGLAaB28TU4Ku2G7qvDGTr7NyibnyRCR7DE=; b=AMJIIpDBRsKQW+
	KfeeN+7Qlp1LGaFPMsl8a4YCi5VYcsr70RpU+k8Skq5DpsT18ml37sA2BQsDC5dz+YS1QEFmB97pr
	CeW/YuRKnPpoS6T5qc25AbgXAaq9Dr8/ZqjFAOdvQyMk1WbvLuS/pMZFTtTg8IpMvdjpUNuBn8CoF
	PoJBpH5hMumRxFdCxEI9ZbaaMXtPRJ/hVA0TkwmY2/JrfaaeXmVyBA+7sTqf/L/9Y86zHH4RSp6qF
	j7xJkW/T2bLXBRBUjKqImots+AdzWJXI+geBRqksIRLS9dxVTxpoyseViHGq/pj8TE+1PUam911HU
	oXrw3cAdPY/ombiS2sPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9k1L-00000009dfl-3bA1;
	Tue, 29 Apr 2025 12:25:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9jzR-00000009dKn-0alI;
	Tue, 29 Apr 2025 12:23:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=meoPhVggS3wumqy6Ke2Ko62bIsOAQVu1jBlESn1C8SM=; b=YRHZdCzIReVZ4PNeNIgCgBHoEv
	nFRJJttO6vwatbmRy5x2yyZnyzn1+tnUzWzlB9xvlbxfrqvbd0J7TEe3kDyXxUUCqWmPxNv/BaBr0
	eQrtCn+pZyEa7kjaRrVrSkyDHWClUSPEdy8My4s2O8M2zEWzqYECvuHL8uoiivu1P+A/CTk6U9BTD
	TBSUR6OmqvgKPjIAh63HeqQlmH2eIzRk+T7/q7+NZyoDKAKL2gQOfNbV7hHyIy2O5ZF6EsKqmcvY3
	PEATlGJ+2aZTluxOG416+V0QwefF1qXs3th/S2GLtn/y90Os2gXkSFfheB12Nixu8IaAS1b000OaG
	h8xgrCEA==;
Received: from vps0.lunn.ch ([156.67.10.101])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u9jzM-0000000DKHh-3nsy;
	Tue, 29 Apr 2025 12:23:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=meoPhVggS3wumqy6Ke2Ko62bIsOAQVu1jBlESn1C8SM=; b=B2
	iKM9PpkWmwizh8mO2WAIDAqfutsjR8oH4aJj8DxFvS8Uk6oE7cmBCvS0aM9BQd3NWwm2X9uX+MRlw
	N0SoQLzsQBOxRkXjh+tTXitrlzC+inE+6+BYrhV06OoWv8+wx+PeldZ9yILlKNXCNbpgOQEMTnlpF
	j8omBVlKPikhDaA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1u9jyy-00Aw3n-Vi; Tue, 29 Apr 2025 14:22:40 +0200
Date: Tue, 29 Apr 2025 14:22:40 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add rk3399-evb-ind board
Message-ID: <c9b46d09-f1ed-4549-8267-9a38ceca6461@lunn.ch>
References: <20250427094211.246-1-kernel@airkyi.com>
 <20250427094211.246-3-kernel@airkyi.com>
 <6291f6b8-75d3-4243-9935-9b64450e2b7f@lunn.ch>
 <c583c59a-d5b7-4e20-9a1f-96f51bd7b4f3@rock-chips.com>
 <15ee1a6b-55ba-41e9-b8a0-6e0bf62cabf0@lunn.ch>
 <027de192-4227-4010-a759-5283b6af1531@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <027de192-4227-4010-a759-5283b6af1531@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_132305_227624_D5DFEB90 
X-CRM114-Status: GOOD (  26.06  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chaoyi Chen <kernel@airkyi.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Jonas Karlman <jonas@kwiboo.se>, Jimmy Hon <honyuenkwun@gmail.com>, linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, Quentin Schulz <quentin.schulz@cherry.de>, Alexey Charkov <alchark@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org, Jianfeng Liu <liujianfeng1994@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Apr 29, 2025 at 10:42:59AM +0800, Chaoyi Chen wrote:
> Hi Andrew,
> =

> On 2025/4/28 20:45, Andrew Lunn wrote:
> > On Mon, Apr 28, 2025 at 09:47:34AM +0800, Chaoyi Chen wrote:
> > > Hi Andrew,
> > > =

> > > On 2025/4/28 4:42, Andrew Lunn wrote:
> > > > > +&gmac {
> > > > > +	assigned-clocks =3D <&cru SCLK_RMII_SRC>;
> > > > > +	assigned-clock-parents =3D <&clkin_gmac>;
> > > > > +	pinctrl-names =3D "default";
> > > > > +	pinctrl-0 =3D <&rgmii_pins>;
> > > > > +	clock_in_out =3D "input";
> > > > > +	phy-supply =3D <&vcc_phy>;
> > > > > +	phy-mode =3D "rgmii";
> > > > Does the PCB have extra long clock lines to implement the RGMII 2ns
> > > > delay?
> > > The 2ns delay of RGMII is implemented inside the RK3399 chip instead =
of PCB
> > > lines, and there are also additional delayline configurations.
> > If the PCB does not implement the delay, rgmii is wrong.
> > =

> > If the MAC/PHY pair is implementing the delay, you need to use
> > rgmii-id. You can then use additional properties to fine tune the
> > delay the MAC/PHY is adding. And the Linux preference is that the PHY
> > adds the delay.
> =

> The signal path of RK3399 is as follows:
> =

> MAC <---> IO <---> PHY
> =

> In fact, the delay is added to the path between the MAC and the IO, rather
> than being implemented in the MAC itself. These delay value is controlled=
 by
> the GRF register[0] . These paths are implemented inside the SoC and have
> not yet reached the board level.

'rgmii' implies that the PCB is implementing the delay. Since this is
not the case here, you should be using rgmii-id.

> According to the document[1], use "rgmii" when "RX and TX delays are added
> by the MAC when required". In addition, currently we can see that all RK3=
399
> boards use "rgmii".=A0 Is there anything I missed? Thank you.

What you are missing is that they are all wrong. Quite a few systems
get is wrong at the moment, and i'm being more strict. Ideally i want
to stop more examples of wrong rgmii being added. There is also a
discussion going on to clarify the documentation.

Implementing delays via the IO is also reasonably common. The MAC
should have control over the GRF register, normally via syscon. So the
MAC can implement correct behaviour. The default is that the MAC,
including IO, adds 0 delay, passes phy-mode to the PHY and the PHY
adds the delay.

Please consider how you can fix the MAC driver without breaking all
the boards using the wrong rgmii value. There are a few discussion
about this on the mailing list if you go searching.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
