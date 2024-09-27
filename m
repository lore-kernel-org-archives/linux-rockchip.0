Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B56ECEBF8C
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 09:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZFdqD5JEVbXdyYM4yC5YhY2I675A/Nb67xNeQk4oT0=; b=HawfRGkVUfSd6B
	IpeJA1IPBGtcNHcOwDbxyWXBcIb9LRVHnjTbSOAlK86ryNYQP65/nv0DOCVylz4V+vURAm15cP66D
	bDs300S4cBHYe8aIeZ9As3ZiUQvscbd/4IjLw+3lWuNsUWWnhDU4UYYZq+rkH806zqysrtzIymaMM
	N4OEaC7JqBFZfHEo1nzz8+jPJau1GwRcl1VpmFElVo78DlZYajWuOJaZw57VPHXJnAR3PKYgze6Bc
	KoO5V1d2aT/xoG5lY+qx3x4Zzctn2fo+jBjoujhoBIpDadTTLkpSs/VyjOJeNAmv/4UKgbm1qyM45
	jKdhXpFyKfjvA+DzRv1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su7S9-0000000AglX-3KPt;
	Fri, 27 Sep 2024 09:39:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su7S7-0000000Agjb-0xhb
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Sep 2024 09:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=2cWhXr6AROsolgkQ2supnsF0SMEDxH/xJbk04hs3JOA=; b=wWkJ8JfGUqJeuSR1vg/HSR6UjT
	ls1EHMln/amI1/Jn6vbGnqNl2NfYYp2/9SMN13Al2xKUAxbxZLxT6wEbTeXPGyjPA83jCAK8O7LCw
	MxXza+mXGq9PD23ic2G/tsgO7wmvCj9H1YJRY1D6W0PGwU87wncj2h/xyyCwPRpEDbaQpVvmRhcDm
	lqIdADkamvti+VIm+tUGXXMA/XSFEF3JZIsWo0hcgaYesnMR2cPhMJB3BqjlYz84WHzA+g95JhPkq
	ijaSSoWchztneE0cPf66XvjeO/EBkvbjv9oAJgfE1/USDpkAChObIvSqs/FszB3Ltdup/z8PYswNq
	NhXx4Xnw==;
Received: from 85-160-70-253.reb.o2.cz ([85.160.70.253] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1su7S3-0001cH-0H; Fri, 27 Sep 2024 11:39:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jakob Unterwurzacher <jakobunt@gmail.com>,
 Quentin Schulz <quentin.schulz@cherry.de>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: add attiny_rst_gate to Ringneck
Date: Fri, 27 Sep 2024 11:39:49 +0200
Message-ID: <3885598.FjKLVJYuhi@phil>
In-Reply-To: <050724b3-aed6-41d3-b2b4-18b90fbf0ad3@cherry.de>
References: <69f79284-b52e-496e-a286-d7e5ce3d90ce@cherry.de>
 <20240926132028.21910-1-jakob.unterwurzacher@cherry.de>
 <050724b3-aed6-41d3-b2b4-18b90fbf0ad3@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_023955_333691_38136261 
X-CRM114-Status: GOOD (  18.86  )
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

Am Donnerstag, 26. September 2024, 15:24:03 CEST schrieb Quentin Schulz:
> Hi Jakob,
> 
> On 9/26/24 3:20 PM, Jakob Unterwurzacher wrote:
> > Ringneck v1.4 can contain (placement option) an on-board ATtiny
> > microcontroller instead of an STM32. In normal operation, this
> > is transparent to the software, as both microcontrollers emulate
> > the same ICs (amc6821 and isl1208).
> > 
> > For flashing the ATtiny, the SWITCH_REG1 regulator of the board's PMIC is
> > used to enable the ATtiny UPDI debug interface. If the STM32 is placed, or if
> > we are running on an older Ringneck revision, SWITCH_REG1 is not connected
> > and has no effect.
> > 
> > Add attiny-updi-gate-regulator so userspace can control it via sysfs
> > (needs CONFIG_REGULATOR_USERSPACE_CONSUMER):
> > 
> >    echo enabled > /sys/devices/platform/attiny-updi-gate-regulator/state
> > 
> > Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
> > Tested-by: Quentin Schulz <quentin.schulz@cherry.de>
> 
> Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
> 
> This is a candidate for backporting to stable branches as well I assume, 
> @Heiko?

That is more on the darker side of gray here.

Looking at the stable-kernel-rules [0] the criteria is
  "It must either fix a real bug that bothers people or just add a device ID"

This change instead is adding a new feature to allow said flashing from a
running system.

sidenote: please don't post new versions as replies to previous versions,
as that confuses tooling a lot.

Heiko


[0] https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
