Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5015C54FAD
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 13:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+212AbRKJufyDV1zyJUTK5N1rY9wV8I5CxMJ/RL9bnw=; b=ee7792bPx+ekiy
	bhNPycWJ0L9UxDU0SsYW9SXk2p8Ol0Jb3JMjHdz0N9SrnALYLBLYHWdxQJ4Z11gm8E3eNhRy6sTJI
	NQ1FbKoHPf9PIrVAAz0PrH3hq703SgNPPi0e97g3v/Q171x6zqgY5TGkTagXtj5oB3ARqhh3jBT0O
	jH+tLa4FburK0cSYRzFnLJThdV5VnLhUqxc509v+EFH/y9zbG+2SjwZJZK2oUsadW6xANHlI1B2PT
	oDDRiXqgo96GC/SUVq3x8ZJxmdQpscOb5g7tXjLYSx41ZABw/V0xTnBM42bJqZ/g9A81omBg4ow2C
	Adu8AOy2UpvJ2oo6xeZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIMa-0000000FSWG-1UPO;
	Wed, 28 Aug 2024 13:05:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIJ8-0000000FRg4-48hO;
	Wed, 28 Aug 2024 13:01:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=69SKT+PKbsqR/IWoM1lSbvTSHLKO5Vqf0QLF3x2EfAc=; b=Cp5ECIh8zK9jXYUjfefTv96G+L
	q2cQWq0FYGLEkkAxx1g8xXSQQrysmkdfkRLqD2EeLWRWjXJHrrnwAN2P5yZtg1yojhEcvxqis5XIu
	JvUCwCPYPkZW83LBOV713DwvQJhtz36GGXRmlzeDf8/qQJE+9YiHlQVPP7UWvi/Mdif3Jm0iu5ni7
	WZCGZyATECOocrQ5DoA6d2cDg0DLiBxkLsf3Y2rF1T47vMnimK/H+TgubWjDVemX1Ga+VxPGGonyp
	NpQdFoRCDFj4HCNeeIrchUWrX+/5hvL2tuJePLoGUnVRwMF5RSrOhcQTJd/uXo04/MuUFAy36yf7B
	VhqG0s8g==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjIJ3-0005Q5-M3; Wed, 28 Aug 2024 15:01:49 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jonathan Liu <net147@gmail.com>, "Rob Herring (Arm)" <robh@kernel.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable RK809 audio codec for Radxa ROCK
 4C+
Date: Wed, 28 Aug 2024 15:03:01 +0200
Message-ID: <3044642.0vhOF50zNu@diego>
In-Reply-To: <172484936512.3462690.18423493121475512611.robh@kernel.org>
References: <20240828074755.1320692-1-net147@gmail.com>
 <172484936512.3462690.18423493121475512611.robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_060155_061375_7C3E567E 
X-CRM114-Status: GOOD (  21.14  )
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

Am Mittwoch, 28. August 2024, 14:51:12 CEST schrieb Rob Herring (Arm):
> 
> On Wed, 28 Aug 2024 17:47:53 +1000, Jonathan Liu wrote:
> > This adds the necessary device tree changes to enable analog audio
> > output for the 3.5 mm TRS headphone jack on the Radxa ROCK 4C+ with
> > its RK809 audio codec.
> > 
> > Signed-off-by: Jonathan Liu <net147@gmail.com>
> > ---
> >  .../boot/dts/rockchip/rk3399-rock-4c-plus.dts | 46 ++++++++++++++++++-
> >  1 file changed, 45 insertions(+), 1 deletion(-)
> > 
> 
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> New warnings running 'make CHECK_DTBS=y rockchip/rk3399-rock-4c-plus.dtb' for 20240828074755.1320692-1-net147@gmail.com:
> 
> arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: pmic: vsel1-gpio: {'rockchip,pins': [[1, 17, 0, 194]], 'phandle': 138} is not of type 'array'
> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
> arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: pmic: vsel2-gpio: {'rockchip,pins': [[1, 14, 0, 194]], 'phandle': 139} is not of type 'array'
> 	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#

unrelated to the change in question, as that affects silergy regulators.
But I just asked Jonathan to check on their board if we can just remove
those seemingly unused pinctrl properties.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
