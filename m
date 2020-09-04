Return-Path: <SRS0=xWqI=CN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E270C433E2
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 21:23:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D7EC2087C
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 21:23:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="l/geF8e9"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6D7EC2087C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lJZAASx7w8kZucA6lN6Uq+Lk+j2z4PA4Tt37iduoJ9Y=; b=l/geF8e9VsL+v0o8xHLjdlnUL
	18CgPFzDUwPKIOLxmZPR4HZBY+G8D5CwpRe8TdtfWzOlpTmOUpu9C73dMmKH8tvO70wKRgY/YYGbh
	TPQxiypFHrHCa4xeH7xuQAxubxW5TR9v7rLsNzwWoxR5yFN0yecwnhN6EMuOMAD3BsVISzacEhBNl
	6ZN5sOhPLEbIl6l1C7oslhKac6WG5AT+w7o2hsiK4C2OC+lugNKV4aFf5XolEiGF2vDQEtEP3D+rx
	1ak12H/8gIj4ue8BlhjB0Lb/p9TX7HUZnAWjjphk1rBV7/Yx5ddmXRhaD53zMNdDEp4lxAlAaMVi4
	Ijg6EZoLQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kEJBK-0008Gl-JU; Fri, 04 Sep 2020 21:23:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kEJBH-0008Ft-41; Fri, 04 Sep 2020 21:23:36 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kEJB4-00015W-HH; Fri, 04 Sep 2020 23:23:22 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 0/3] extcon: Add Type-C Virtual PD
Date: Fri, 04 Sep 2020 23:23:21 +0200
Message-ID: <6955091.ERBjKZ0CLf@diego>
In-Reply-To: <20200904191830.387296-1-jagan@amarulasolutions.com>
References: <20200904191830.387296-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200904_172335_207458_30A6F35F 
X-CRM114-Status: GOOD (  17.31  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jagan,

Am Freitag, 4. September 2020, 21:18:27 CEST schrieb Jagan Teki:
> USB Type-C protocol supports various modes of operations
> includes PD, USB3, and Altmode. If the platform design
> supports a Type-C connector then configuring these modes
> can be done via enumeration.
> 
> However, there are some platforms that design these modes
> of operations as separate protocol connectors like design
> Display Port from on-chip USB3 controller. So accessing
> Type-C Altmode Display Port via onboard Display Port 
> connector instead of a Type-C connector.
>  
> These kinds of platforms require an explicit extcon driver
> in order to handle Power Delivery and Port Detection.
> 
> This series support this Type-C Virtual PD and enable the
> same in ROCK Pi 4C SBC.
> 
> Any inputs?

I tend to disagree on the design via an extcon.

That the Rockchip rk3399 currently carries that extcon thingy is unfortunate
and only works for ChromeOS devices based on the rk3399.

The kernel now has a real type-c framework so we should not extend this
extcon hack any further, because that will make it even harder to roll back
later. Also simply because other Rockchip boards currently can't really make
use of type-c due to this, as they use the fsusb302 phys directly connected.

ChromeOS actually spend some time to make the cros-ec pd part of the type-c
framework if I remember correctly, so a viable battle plan would be to:

(1) move the Rockchip type-c phy driver to actually be part of the type-c
    framework, with the extcon being a deprecated fallback for old DTs.
(2) implement your gpio-altmode as part of the type-c framework
    (which may even already exist)


In short, please don't extend the rk3399 type-c extcon hack.

Thanks
Heiko





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
