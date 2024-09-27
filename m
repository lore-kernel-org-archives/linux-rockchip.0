Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B93DCDD1B8
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 14:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8MmtaM5CUD/Az2UZ4dvgbQJAxa72YkbdADj2zvnhCHE=; b=plMTInjK+xijth
	HRJTzSphRuRv6hwuVIUc69EsvPyTf/FakTHIzzsj95K7FPnKv9kyjIPMSh1AK573IHbqVIs45H3Ts
	dIZZcY9mhWC9erY0tc37eEjPKlME8NFAf81Odua98ATxaLel5EzYaWFRrs5CB7kHV6YPYoMUHtA6D
	k9+tvx1xgo2HzBeAg4gipgk6O0N7FPaMtt7DCJaMCZL6KAeeVPa6K1KTPbw+OS+RKuI/ueGoBLZ3y
	3KhTUPp6qX1mnLdeOY/gPW+MiD9x1FBWJijjQ5eAHLZ7BYC4LepxxpnCy0e11qEhUm/k1tRSnNKCV
	gF3WAfTd1xweqcnx1FcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suCGi-0000000BVkw-1Ale;
	Fri, 27 Sep 2024 14:48:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suCGf-0000000BVkO-1prT
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Sep 2024 14:48:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=e7+ejxWy+FeNgwZderI1+RcWjnrYFg9VpnRoJUCKCvM=; b=bYiorrujtwke8PNwVODF4XACP2
	ZhKpOflMsOponGRFEPKZSMfOqy5+wVzPAeQDK4eriIysfZrYS8nS2nO8BB+C2Kjxe9Tb8LFSNloQB
	ZvkkSmZXRVV1QvkaLCyd17FsXfxj/WvYvzu3UP5ou6kX/Zel4CbjNRvntxRRFI5Dx0XdyzGGl+mGO
	6SaPBUOFv66UlsRL1dCD4PXfsF6Bx5LMTOcb7VLjTDokuLeUBb0w1XMihUiTdNRPo5QV7CFUpnr+I
	ESpNVcZvsvurjKD+w0C7KUv4EhtFKDr1Ancok/q0xbc31hD0JoPeLf7xuPbhj7lqoSeko7hmklrxF
	Ykba9Nfw==;
Received: from 85-160-70-253.reb.o2.cz ([85.160.70.253] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1suCGd-0006Q4-EV; Fri, 27 Sep 2024 16:48:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jakob Unterwurzacher <jakobunt@gmail.com>,
 Quentin Schulz <quentin.schulz@cherry.de>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: add attiny_rst_gate to Ringneck
Date: Fri, 27 Sep 2024 16:48:21 +0200
Message-ID: <2507281.uoxibFcf9D@phil>
In-Reply-To: <75946cd5-8f6f-40fd-a218-66d399a0da19@cherry.de>
References: <69f79284-b52e-496e-a286-d7e5ce3d90ce@cherry.de> <3885598.FjKLVJYuhi@phil>
 <75946cd5-8f6f-40fd-a218-66d399a0da19@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_074825_513185_26963351 
X-CRM114-Status: GOOD (  21.41  )
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

Hey Quentin,

Am Freitag, 27. September 2024, 11:50:46 CEST schrieb Quentin Schulz:
> On 9/27/24 11:39 AM, Heiko Stuebner wrote:
> > Am Donnerstag, 26. September 2024, 15:24:03 CEST schrieb Quentin Schulz:
> >> Hi Jakob,
> >>
> >> On 9/26/24 3:20 PM, Jakob Unterwurzacher wrote:
> >>> Ringneck v1.4 can contain (placement option) an on-board ATtiny
> >>> microcontroller instead of an STM32. In normal operation, this
> >>> is transparent to the software, as both microcontrollers emulate
> >>> the same ICs (amc6821 and isl1208).
> >>>
> >>> For flashing the ATtiny, the SWITCH_REG1 regulator of the board's PMIC is
> >>> used to enable the ATtiny UPDI debug interface. If the STM32 is placed, or if
> >>> we are running on an older Ringneck revision, SWITCH_REG1 is not connected
> >>> and has no effect.
> >>>
> >>> Add attiny-updi-gate-regulator so userspace can control it via sysfs
> >>> (needs CONFIG_REGULATOR_USERSPACE_CONSUMER):
> >>>
> >>>     echo enabled > /sys/devices/platform/attiny-updi-gate-regulator/state
> >>>
> >>> Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
> >>> Tested-by: Quentin Schulz <quentin.schulz@cherry.de>
> >>
> >> Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
> >>
> >> This is a candidate for backporting to stable branches as well I assume,
> >> @Heiko?
> > 
> > That is more on the darker side of gray here.
> > 
> > Looking at the stable-kernel-rules [0] the criteria is
> >    "It must either fix a real bug that bothers people or just add a device ID"
> > 
> > This change instead is adding a new feature to allow said flashing from a
> > running system.
> > 
> 
> This does mean that the new version of the device won't work as well 
> with an older kernel though.

"new version of the device" being the key here ;-) .

You also would not expect a new board dts or a new board variant to be
added to stable-kernels.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
