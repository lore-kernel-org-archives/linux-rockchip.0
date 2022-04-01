Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 602AEC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 07:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nvyhnc8nAR3f/HwfXN8AtGY3hOTPCiCjFSSdG1pm9R0=; b=lNKF2nKQ5Wx75f
	y8+GpImjVO4781yvg5jU1vO0FdnT3EJT3EIBYUQb54mwHpLwHBZm8msOGfuuupbPO9r1jy/iHzCr0
	VoE40itLdUrc8aE0N8ymGFfsVURJ7JUKJyiRhPwU2r8pTVTOrt+ZIu84CyBI/12SRhZ9haJiaPFtl
	D10zdXSTTJ9rvTFznnigbIkU6EGQUjvmZ8itCQwRsfguSlGKgMyrJEVkiwr86C+zP/FP93nisTcyA
	ZNj6WjWl9Z1ipMlvxrAuIpLJSL/QlAjOP2Ym0M6kETgwq9wC1SjoTcLjIHu+ATJbngCUgxARAzHT5
	v5MlBQnc/xXUNqDYQqVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naC8o-004qUo-6o; Fri, 01 Apr 2022 07:56:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naC8b-004qRW-TZ; Fri, 01 Apr 2022 07:56:07 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1naC8T-0006pi-L5; Fri, 01 Apr 2022 09:55:57 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, zhangqing@rock-chips.com,
 Stephen Boyd <sboyd@kernel.org>
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: clock: convert rockchip,
 rk3188-cru.txt to YAML
Date: Fri, 01 Apr 2022 09:55:55 +0200
Message-ID: <3107512.vfdyTQepKt@diego>
In-Reply-To: <20220331225134.7A0A9C340ED@smtp.kernel.org>
References: <20220329111323.3569-1-jbx6244@gmail.com>
 <20220331225134.7A0A9C340ED@smtp.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_005606_004632_E565C6A7 
X-CRM114-Status: GOOD (  24.32  )
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

Hi Stephen,

Am Freitag, 1. April 2022, 00:51:32 CEST schrieb Stephen Boyd:
> Quoting Johan Jonker (2022-03-29 04:13:22)
> > diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
> > new file mode 100644
> > index 000000000..ddd7e46af
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.yaml
> > @@ -0,0 +1,78 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/clock/rockchip,rk3188-cru.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip RK3188/RK3066 Clock and Reset Unit (CRU)
> > +
> > +maintainers:
> > +  - Elaine Zhang <zhangqing@rock-chips.com>
> > +  - Heiko Stuebner <heiko@sntech.de>
> > +
> > +description: |
> > +  The RK3188/RK3066 clock controller generates and supplies clocks to various
> > +  controllers within the SoC and also implements a reset controller for SoC
> > +  peripherals.
> > +  Each clock is assigned an identifier and client nodes can use this identifier
> > +  to specify the clock which they consume. All available clocks are defined as
> > +  preprocessor macros in the dt-bindings/clock/rk3188-cru.h and
> > +  dt-bindings/clock/rk3066-cru.h headers and can be used in device tree sources.
> > +  Similar macros exist for the reset sources in these files.
> > +  There are several clocks that are generated outside the SoC. It is expected
> > +  that they are defined using standard clock bindings with following
> > +  clock-output-names:
> > +    - "xin24m"    - crystal input                 - required
> > +    - "xin32k"    - RTC clock                     - optional
> > +    - "xin27m"    - 27mhz crystal input on RK3066 - optional
> > +    - "ext_hsadc" - external HSADC clock          - optional
> > +    - "ext_cif0"  - external camera clock         - optional
> > +    - "ext_rmii"  - external RMII clock           - optional
> > +    - "ext_jtag"  - external JTAG clock           - optional
> 
> I'd expect all these clks here to be inputs to this node.

The optional clocks are all part of a circular dependency.

So for example xin32k normally is generated by the pmic and fed
back into the system, so to get xin32k, we need the pmic to probe,
which needs i2c, which in turn already needs the clock controller.

Or optional clocks may not be available at all.

So for the past years we already relied on the clock-system's
self adaptation if a clock becomes available at some point
during later boot and hence do not have those in a clocks-property.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
