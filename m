Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BE72C25B76
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Jun 2024 19:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sQ3ysS8hKrNIK5Jc0FEOogVN9I6ULaDaddW75Tq/hmI=; b=zPHJCVuy2NlKvT
	alFYP7jtQ0MF/Tlrqhn/4HSx6G8nEY3esQDW5NRgC5IjstpMT6cPcZFhmFrNFCSvK4o76o2JsHC6x
	8bXQYNA+hfqhk0lABInLJLwLNQX56qNNkvFbRI8NngC15zohgzDDPWaqNaLbb7PM0Ppk4gM3c469b
	N25ke70baB4nJS8CjdyC4awlRTIKe5KjJ2sl2cdnBLuDgMm224x5rI9oh2JUqNAlfGrU/4ndaCTXR
	OX2HW/oPSXFARiWshUltqSdizI9s7t/Ecxyc8R7G9Ht4WLC4XBqdgZZft/UWKEIZqHLg4Tk36OLa7
	9zpkldpSwbElm04pUZ+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sG1Js-00000000cC9-2xxl;
	Sat, 08 Jun 2024 19:01:40 +0000
Received: from wfout4-smtp.messagingengine.com ([64.147.123.147])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sG1Jo-00000000cAR-0LRO;
	Sat, 08 Jun 2024 19:01:38 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailfout.west.internal (Postfix) with ESMTP id 955DC1C0007B;
	Sat,  8 Jun 2024 15:01:28 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Sat, 08 Jun 2024 15:01:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	the-space.agency; h=cc:cc:content-transfer-encoding:content-type
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to; s=fm2; t=1717873288; x=1717959688; bh=lt2gCnDCMY1CyDDj1IemD
	rmxftjgCwzl3+LRlMhaArk=; b=N9f2oPm98Ay9T7k7p3IatLbue+16UQnGWG8OS
	zq/2CodnPgeSEkOloW1sZF3KYf9hraoJ9A4HEzWopgRwfRrGbUxvLjQ5bt9YEPWA
	7T8P886Ikd/d0Oh2xjXGdhVHOenlaHdf5vm5avZRHCBWmxclRQRcVdgORQx6sJOp
	rsclWrkOrlDWImZwZia/77it0snyHCozAiSDrjI2+CTrESg1TvJVLdTbJsVl8aWc
	7yBXJTTNTqOqqu8g7l/jPyAKZYwSXqPqN10OEcITerDfUHVUbVG7GC2jItaxCwSJ
	2Ve5d61i5SWVSqw41v0F3gq22twcF2r+h1rBW6vN6Jn6sH4fw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1717873288; x=
	1717959688; bh=lt2gCnDCMY1CyDDj1IemDrmxftjgCwzl3+LRlMhaArk=; b=m
	SUrlLSIN4QuF74SAFmGE67uiQfC+4J0bvliRa/bdVpHHXJvShU9pjp3iTaiIg80I
	YrKE1XzglH/Nq42HztkXNY0ok0dE+Gb7N1i7Rb7AT4++WOEF8aBm4wN8e3z7vYVl
	PUAhYolE0TEnuFDVo/seOGSisY095mSQxCbHBDge4+yKQCJiepgTCuwFL7bSnk7u
	WzBzyYUFXYz+7VI7SXWprHQuovoNtdzkX2uOAskmA0T4yu6Y/3ioynps1xplWoCI
	VtZC/mNBjX2XNluxeGbiuzWWsPjNpKkTffZHrWwzorZ9bSmxFLocaeTWjOMJeUdW
	nMKu97547yUfp8FSBWShw==
X-ME-Sender: <xms:h6pkZilYKHMzjCAaEsWj3eDiBhyipM5yWUYeEOBrBiFi7atUwB9hQg>
    <xme:h6pkZp17JGN2k86_IpjlMW90clmmnntEoH2m_KfnbHPcC_4JcTBiX-REmTJjYvITC
    ZvFsvUswkDuXxtkWw>
X-ME-Received: <xmr:h6pkZgoItA8XTH2nw7kY_Rxaa89c5bwyRsqJEJznUuyZZUfhhKP4oDyoBfMn-Txzia5K6L6SqoNbdpkHhkchqtlkCGTEXDJbRok42rU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfedtgedgieejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtjeertddtvdejnecuhfhrohhmpehmvges
    thhhvgdqshhprggtvgdrrghgvghntgihnecuggftrfgrthhtvghrnhepkeffjeettdegje
    ejfeevhffhieeufeevhfdvhffhhfeljeeuteeifeehveetudffnecuffhomhgrihhnpehf
    rhhivghnughlhigvlhgvtgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrh
    grmhepmhgrihhlfhhrohhmpehmvgesthhhvgdqshhprggtvgdrrghgvghntgih
X-ME-Proxy: <xmx:h6pkZmnU-8hD1FjcWJFg_lAyiSRuUFBMVNCnJ-r0vIyUioVMojNcAg>
    <xmx:h6pkZg2LH-9y92OYWaisAhzU3UkUFhnNKLcwGzoeo5HMz8E7yq5Czw>
    <xmx:h6pkZtt-Ph7nOiKRhX3oeQxLE_05BR9lRyHTjrF-q-jqAKcCeMknmw>
    <xmx:h6pkZsVWFlUqYIW7itQ8ws7H7WZzn9OdcaWXvxbnS3KYUvK8GWISkQ>
    <xmx:iKpkZmOSSZ-i34a9_HW-2ICEIB18TK0bIT43sQXQWw_nueGn2mVIAV1N>
Feedback-ID: i2f914587:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 8 Jun 2024 15:01:25 -0400 (EDT)
Message-ID: <279b22e7-56ab-49ce-8b35-3a68258a4a91@the-space.agency>
Date: Sat, 8 Jun 2024 21:01:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add FriendlyElec CM3588 NAS
 board
To: Sebastian Kropatsch <seb-dev@mail.de>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240602211901.237769-1-seb-dev@mail.de>
 <20240602202132.2012-2-seb-dev@mail.de>
 <c4087311-cbd2-415e-a582-3565f2f62e81@the-space.agency>
 <11747652.CDJkKcVGEf@phil> <f5cfcf3e-27e5-464a-9adf-261753ad6de7@mail.de>
Content-Language: en-US
From: me@the-space.agency
In-Reply-To: <f5cfcf3e-27e5-464a-9adf-261753ad6de7@mail.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240608_120136_642742_2BA608B6 
X-CRM114-Status: UNSURE (   9.58  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey Sebastian,

On 08.06.2024 19:22, Sebastian Kropatsch wrote:
> But matching the schematics won't be possible either way, since
> e.g. there is only one single 5v regulator acc. to the schematic
> (vcc_5v0_sys), but vcc_5v0_host_20, vcc_5v0_host_30, vbus_5v0_typec
> and so on are needed since each device has a different control pin
> to enable its power. Or is there a better way to solve this while
> having only one 5v regulator node but still being able to set the
> control pins separately for the different USB ports?
> 
> Cheers,
> Sebastian
> 
> [1] 
> https://wiki.friendlyelec.com/wiki/images/1/15/CM3588_NAS_SDK_2309_SCH.PDF


There are these SY6280AAC power switches, which have enable pins and 
unique power net names coming out of them. I think it would be best to 
treat those as regulators. i.e.:
- Page 4 C4 has GPIO1_D2 as enable, outputting VBUS5V0_TYPEC
- Page 17 D4 has GPIO4_B0 as enable, outputting USB3_PORT1_5V
- Page 17 C4 has GPIO3_A5 as enable, outputting USB3_PORT2_5V
- Page 17 B4 has GPIO1_A4 as enable, outputting USB2_PORT_5V

Each can just be seen as a regulator outputting either 0V or 5V.

Kind regards,
Space

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
