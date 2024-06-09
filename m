Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EED4C27C53
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Jun 2024 16:06:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zp/OpANoaa7uaNorTcFlwmxnskzdBVgPAgqpWt0xTeA=; b=UR+SN0VolYbNQX
	UlN0h90sxtPJ4InNZgvFiwx2V1eFDFoRCcL10vUYHW+ewaepIrh0gUk+3I5USmqKRD5N0utcvSGtG
	ce7hB0O9xAdp0BsFr5hehKcyi7PbdMivzgV6j40Wp08pKx6OCpXZ8PFWaZw8pJ9+IAzylz5DXf9mb
	3GtRxqZEQLKGiYl4aM+RVzYDHAG6apaZJJ4O+t/R0Aa2S2U09vLTmX3ZwJvxr0xmR0iToeOdaik26
	BXVi56gBfLviCyg/uFRrVRvwX4TBbhTGh+Q7OkgQZqGoYMyqNQsyvjIYKdAa9kLTfI4kDl7pzTDpq
	pDS30T/fHJV8UKnDX5mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGL3j-00000002qpW-2COA;
	Sun, 09 Jun 2024 16:06:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGL3g-00000002qon-1o0k;
	Sun, 09 Jun 2024 16:06:18 +0000
Received: from i53875b65.versanet.de ([83.135.91.101] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sGL3G-0004V8-Ee; Sun, 09 Jun 2024 18:05:50 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Space Meyer <me@the-space.agency>, Sebastian Kropatsch <seb-dev@mail.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add FriendlyElec CM3588 NAS board
Date: Sun, 09 Jun 2024 18:05:49 +0200
Message-ID: <4035271.e99z0qppnp@diego>
In-Reply-To: <f5cfcf3e-27e5-464a-9adf-261753ad6de7@mail.de>
References: <20240602211901.237769-1-seb-dev@mail.de> <11747652.CDJkKcVGEf@phil>
 <f5cfcf3e-27e5-464a-9adf-261753ad6de7@mail.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240609_090616_515326_DCB3063B 
X-CRM114-Status: GOOD (  30.12  )
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

Am Samstag, 8. Juni 2024, 19:22:01 CEST schrieb Sebastian Kropatsch:
> Hello,
> 
> Am 08.06.2024 um 16:38 schrieb Heiko Stuebner:
> > Am Donnerstag, 6. Juni 2024, 15:13:20 CEST schrieb Space Meyer:
> >> On 02.06.2024 22:20, Sebastian Kropatsch wrote:
> >>> Some RK3588 boards are still using this property, the following quote
> >>> is from rk3588-tiger-haikou.dts for example:
> >>>       &sdmmc {
> >>>           /* while the same pin, sdmmc_det does not detect card changes */
> >>>           cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
> >>>
> >>> I am unsure as to whether this comment from the quote might apply for
> >>> the CM3588 as well. Please let me know if you are able to tell :-)
> >>
> >> I don't quite understand this. However GPIO0_A4 *is* routed to the micro
> >> sd CD according to the NAS schematic, page 16 around A5.
> > 
> > for the actual sdmmc_det functionality ... possibly some pinconfig thing?
> > I.e. pull-whatever settings?
> 
> I have no idea. I just removed the "cd-gpios" line in v2 due to a
> suggestion by Jonas Karlman and then stumbled over this comment.
> So I'm not sure whether to include or not include this property
> for the CM3588 NAS since I don't know the consequences.
> Probably in the end it doesn't even matter :)
> 
> >>> +	vcc_3v3_pcie30: regulator-vcc-3v3-pcie30 {
> >>> +		compatible = "regulator-fixed";
> >>> +		regulator-name = "vcc_3v3_pcie30";
> >>> +		regulator-always-on;
> >>> +		regulator-boot-on;
> >>> +		regulator-min-microvolt = <3300000>;
> >>> +		regulator-max-microvolt = <3300000>;
> >>> +		vin-supply = <&vcc_5v0_sys>;
> >>> +	};
> >>
> >> These are 4 seperate regulators according to the schematic. However, as
> >> they are all fixed, idk if they should be split or kept like this.
> > 
> > personally, I really like the power-diagram to match schematics.
> > I.e. $debugfs/regulator/regulator_summary will produce a really nice
> > graph of all the system's regulators, so it's definitly nice if the
> > hirarchy matches. Also prevents head-scratching later on ;-)
> 
> These are indeed 4 different regulators according to the schematic.[1]
> But they don't have any pin to control them separately. I can
> duplicate them 4 times if that's the preferred practice.
> 
> But matching the schematics won't be possible either way, since
> e.g. there is only one single 5v regulator acc. to the schematic
> (vcc_5v0_sys), but vcc_5v0_host_20, vcc_5v0_host_30, vbus_5v0_typec
> and so on are needed since each device has a different control pin
> to enable its power. Or is there a better way to solve this while
> having only one 5v regulator node but still being able to set the
> control pins separately for the different USB ports?

The other option we often use is to define multiple phandles
for a regulator. For exactly that case where one gpio controls
a set of regulators.

So you have one regulator

vcc_5v0_host_20: vcc_5v0_host_30: vbus_5v0_typec: regulator-vcc-whatever {
	foo;
}

So in short there is not set rule, but more like a best-effort to get as
close to the schematics as possible. I.e. someone going from dt
to schematics should be able to just search for an identifier
(of course same for the other direction).


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
