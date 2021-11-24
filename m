Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ECFAC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Nov 2021 16:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tzFEZVa2OhrmKP0u1E+7LR42t6RXTUTx17ySlYkC3M4=; b=mcHuoSVhHcfD9m
	MkUpotx7PEZY+grvt1cFdxSGKeAfXQtikNt2dxdHLCfkhjOMkQ5MuvX26EGTFDsmR33gP9Pqfti3G
	haPJLInbI3lYYtjyawsYtOEJ7qVlDY+EgQHOBhwgkPo+Khw5Z2q6f8UdOSfdQx34gmfkS3ReoTe7j
	s34DckNlpCeSBHnqoXstCSm7oUCs+A7RpKedDgunceVnJmFRB0wMF1oOraG57/q71KcHx5Gnoymub
	oA8wBFSBxM0iKr4pMbCA5gvredJPay6dDNc8y9LNZFGevxsrKbsbW+fuqhLSg5sI+C6nXvUl6WiQi
	DkGuuCQsbU5umAHKDLiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpvVd-005Ksp-Pu; Wed, 24 Nov 2021 16:52:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpvVN-005Kp6-Ow; Wed, 24 Nov 2021 16:52:23 +0000
Received: from ip5f5b2004.dynamic.kabel-deutschland.de ([95.91.32.4]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mpvVH-0006PD-AE; Wed, 24 Nov 2021 17:52:15 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: robh@kernel.org, arnd@linaro.org, ulf.hansson@linaro.org, rjw@rjwysocki.net,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, lukasz.luba@arm.com,
 Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH 2/5] arm64: dts: rockchip: Add powerzones definition for
 rock960
Date: Wed, 24 Nov 2021 17:52:14 +0100
Message-ID: <2457824.5MrYSl4YA0@diego>
In-Reply-To: <f2609d56-f014-3713-8f73-c7ca9c7cba60@linaro.org>
References: <20211124125506.2971069-1-daniel.lezcano@linaro.org>
 <bf994aa8-df18-22d0-e718-2c8b406a5cc8@arm.com>
 <f2609d56-f014-3713-8f73-c7ca9c7cba60@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_085221_861141_D140BF4F 
X-CRM114-Status: GOOD (  21.97  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Am Mittwoch, 24. November 2021, 17:41:34 CET schrieb Daniel Lezcano:
> On 24/11/2021 14:49, Robin Murphy wrote:
> > On 2021-11-24 12:55, Daniel Lezcano wrote:
> >> Add the powerzones description. This first step introduces the big,
> >> the little and the gpu as a powerzone place.
> > 
> > These look more like SoC-level properties than board-level ones - should
> > they be in rk3399.dtsi?
> 
> Yes, it makes sense
> 
> If Heiko is fine with that I can add this description in the rk3399.dtsi
> file

Sure. Robin's suggestion sounds very sensible as these properties are
quite specific to the soc itself.


Heiko

> 
> >> ---
> >>   .../boot/dts/rockchip/rk3399-rock960.dts      | 45 +++++++++++++++++++
> >>   1 file changed, 45 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> >> b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> >> index 1a23e8f3cdf6..83540bdb64cd 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> >> @@ -61,6 +61,51 @@ bt_active_led: led-6 {
> >>           };
> >>       };
> >>   +    powerzones {
> >> +
> >> +        PKG_PZ: pkg {
> >> +            #powerzone-cells = <0>;
> >> +                        powerzone = <&SOC_PZ>;
> >> +        };
> >> +
> >> +        SOC_PZ: soc {
> >> +        };
> >> +    };
> >> +};
> >> +
> >> +&cpu_b0 {
> >> +    #powerzone-cells = <0>;
> >> +    powerzone = <&PKG_PZ>;
> >> +};
> >> +
> >> +&cpu_b1 {
> >> +    #powerzone-cells = <0>;
> >> +    powerzone = <&PKG_PZ>;
> >> +};
> >> +
> >> +&cpu_l0 {
> >> +    #powerzone-cells = <0>;
> >> +    powerzone = <&PKG_PZ>;
> >> +};
> >> +
> >> +&cpu_l1 {
> >> +    #powerzone-cells = <0>;
> >> +    powerzone = <&PKG_PZ>;
> >> +};
> >> +
> >> +&cpu_l2 {
> >> +    #powerzone-cells = <0>;
> >> +    powerzone = <&PKG_PZ>;
> >> +};
> >> +
> >> +&cpu_l3 {
> >> +    #powerzone-cells = <0>;
> >> +    powerzone = <&PKG_PZ>;
> >> +};
> >> +
> >> +&gpu {
> >> +    #powerzone-cells = <0>;
> >> +    powerzone = <&PKG_PZ>;
> >>   };
> >>     &cpu_alert0 {
> >>
> 
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
