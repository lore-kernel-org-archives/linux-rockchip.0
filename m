Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97586C44536
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jan 2026 02:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KCN6V1zsyFiResILzRSzo7KqxbNXZxNfow6Es89kyXA=; b=GqALn3lzbkOEuj
	SawPCh+XE5KJeAw0XJYtCCUCG6rZ7ULEDo+3vEr35WBtsVwJcl6ZElO8MmeMvQ/nZ9fxK07vPBCAz
	EeS+6++8Bwb5IULjWGch7GHywzXluiPaKJN83iGEiy257cfkKxn7bonV9H4DhytUBDy+gCW7TlCr9
	YATXQolUGaecQmqTLlj2YTSt1rRF+Ra7vqJtpoymNyxqkLJuO9p3YKl9xzp6BG0VKabdh1PXtFH0Q
	GHgoLcLyC1QN/enydrdqOEv91xTuj36qoGFbuQDe3vihTgXGcSDZWpK12eM776WZXHNCw0xmsdOKa
	NqDwGfHFGZvSpWONryKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vikd7-00000006L5Q-474d;
	Thu, 22 Jan 2026 02:41:05 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vikd4-00000006L4V-2nnI;
	Thu, 22 Jan 2026 02:41:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=YrPmST8jI7niC6e2a8Z2ytgeg5kAjBAHeBddbsgELu8=; b=MqndBoLvpfIaJH0zLCXrl23cMj
	vSCEZL1+oQQ486a1eYYfN3dX5ZTf6cx4kZPhLADSaOa0wlrbDRvVbE4i1QFYu7RS8mhrI52ppgsYz
	lStWQbpD0lO58KKprV+oE4Te1D4ZTnVT+xuPoNKeClIDJ1Zu2YCjUEB00ViXnuqdo93A=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vikcv-003uBU-9r; Thu, 22 Jan 2026 03:40:53 +0100
Date: Thu, 22 Jan 2026 03:40:53 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexey Charkov <alchark@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Stephen Chen <stephen@radxa.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Change gmac phy-mode to
 rgmii-id for rk3576 evb1
Message-ID: <55c9b522-e43d-4df3-9f7a-3f2976b72854@lunn.ch>
References: <20260121031548.402-1-kernel@airkyi.com>
 <20260121031548.402-2-kernel@airkyi.com>
 <b87d0c82-b8b7-4e14-85c3-c4ba88aa4000@lunn.ch>
 <81D509A8F65F0243+c7b58aef-95a4-4f2a-a423-7e8b2c0bbeab@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <81D509A8F65F0243+c7b58aef-95a4-4f2a-a423-7e8b2c0bbeab@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_184102_706064_51C0A1DC 
X-CRM114-Status: GOOD (  17.66  )
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

On Thu, Jan 22, 2026 at 09:38:17AM +0800, Chaoyi Chen wrote:
> Hi Andrew,
> 
> On 1/21/2026 8:55 PM, Andrew Lunn wrote:
> >> @@ -721,6 +719,7 @@ rgmii_phy0: ethernet-phy@1 {
> >>  		reset-assert-us = <20000>;
> >>  		reset-deassert-us = <100000>;
> >>  		reset-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
> >> +		tx-internal-delay-ps = <1950>;
> > 
> > The PHY should add 2000ps, as required by the RGMII standard. The
> > difference is so small there is no need for tx-internal-delay.
> >
> 
> Thank you for the clarification. I chose 1950 here because I find that
> the MotorComm yt8xxx Ethernet PHY binding only offer the options of 
> 1950 or 2100. 
> 
> > In most cases, 'rmgii-id' should be sufficient, unless the PCB is
> > badly designed.
> > 
> 
> I suspect the ROCK 4D board might be an exception. Sebastian once
> reported that it wouldn't work properly under "rgmii-id". Well, I'm
> not sure what strategy to adopt in this case.

Please check the report. And also, check what the PHY is doing for
delays if you don't specify the property. Is it defaulting to near
2000ps?

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
