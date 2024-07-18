Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CB68C3DA60
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 07:59:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ay57DOPuJeIMc43CkVK+FUSaUcwRAgIs8iP8Sfm52KA=; b=D/onlc/RUzBORpOBmmK2afgwBf
	LNYfz4hgPpg2YhbD0/0eXf+zryiW+5vDb/OlyJI8t4GPX8mWvWbn7u83xqwdZKRBKjcdcKPX37PzU
	CvBTp6CV5HOrc4v5X1cDAOQHAfJCsWLFJIaUcHyUuMTJcQ+lxMiHbdCt2P5l5yzyQjCzIbixdq7in
	dEH5hSkH7cnqjkoItx2h3BikzhbCZbu5ApWU4TiWVHEiONnO+tcAk/eGPc6vfXnSBF88a6k2EXCBs
	R7SA1cyGwLcaR/PXe9ik/9opgMdGOtzpGSPYx6sALkO1utHLO1sczZdAtPjrnwLJj9gDIm/17RQFX
	vm+d4YAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUM2q-0000000GJXc-3P6J;
	Thu, 18 Jul 2024 07:59:20 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUM2U-0000000GJSU-40nD;
	Thu, 18 Jul 2024 07:59:00 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721289536;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Mtt1ez6V0zk2MdNMt3EH626hc/PXnX2HobUacwKbti8=;
	b=isS/dPJPsmGvct89HID4hfB8oq+ywJh8gDFL+VPEXkTdtceBFz7hmwbIek3nF0SHT7TmTu
	WMxQqjAEUHsEJj/tmEJHePCo24CBXDaMBs+IsseCwXs7m29oz8B/EKnE5a8gC3+KrSdqNt
	IO3zZr6Uon23rWJY9jF/qEpPVJ275go1ss34PqnNf+JcRS5wf02uwJ1TkD3WQWzlNxNR9N
	seUrN4e4EGOxtb3SGpuulLiHSGL5noSabwfXNUxyAt8hCVT+1aiyS23U/Qu5zXSHOm8xqd
	nEflpghE1dKnt92kLmy7m6T1QI3e8mI0EdUT+0MQnEAaosS2aD9Bqw45OPj/GQ==
Date: Thu, 18 Jul 2024 09:58:56 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com,
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: fix the pcie refclock
 oscillator on Rock 5 ITX
In-Reply-To: <CANAwSgRZR8cM9qDD0Xn5ims4GX+PNMQ1+PEMBDQtZq2GxFd6Rw@mail.gmail.com>
References: <20240715110251.261844-1-heiko@sntech.de>
 <20240715110251.261844-4-heiko@sntech.de>
 <CANAwSgS_ZaEkt5-kKud9OwdN4za+xvW5SoBr34EmOdU2OQJWnw@mail.gmail.com>
 <8a16eb6a29a39719ba4e4c43bae3b6ec@manjaro.org>
 <CANAwSgRZR8cM9qDD0Xn5ims4GX+PNMQ1+PEMBDQtZq2GxFd6Rw@mail.gmail.com>
Message-ID: <72b84761ef93c1d4d6d61b16ef1bb1ce@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_005859_184390_6A93DE44 
X-CRM114-Status: GOOD (  18.18  )
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

On 2024-07-18 09:52, Anand Moon wrote:
> On Thu, 18 Jul 2024 at 13:02, Dragan Simic <dsimic@manjaro.org> wrote:
>> On 2024-07-18 09:26, Anand Moon wrote:
>> > On Mon, 15 Jul 2024 at 16:35, Heiko Stuebner <heiko@sntech.de> wrote:
>> >>
>> >> The Rock 5 ITX uses two PCIe controllers to drive both a M.2 slot and
>> >> its
>> >> SATA controller with 2 lanes each. The supply for the refclk
>> >> oscillator is
>> >> the same that supplies the M.2 slot, but the SATA controller port is
>> >> supplied by a different rail.
>> >>
>> >> This leads to the effect that if the PCIe30x4 controller for the M.2
>> >> probes first, everything works normally. But if the PCIe30x2
>> >> controller
>> >> that is connected to the SATA controller probes first, it will hang on
>> >> the first DBI read as nothing will have enabled the refclock before.
>> >
>> > I just checked the rk3588-rock-5-itx.dts in the linux-next.
>> > You have not enabled sata0 and sata2, which might be the problem
>> > for the SATA controller not getting initialized.
>> 
>> Rock 5 ITX doesn't use RK5588's built-in SATA interfaces, so that's
>> fine.
>> Please have a look at the board schematic, it uses a separate PCI
>> Express
>> SATA controller for its four SATA ports.
>> 
> yes, But I am referring to sata node not enabled which enable
> the PHY_TYPE_SATA.
> 
> see rk3588-coolpi-cm5-evb.dts and rk3588-edgeble-neu6a-io.dtsi
> rk3588-quartzpro64.dts
> which have sata port on board.
> 
> &sata0 {
>         status = "okay";
> };

QuartzPro64, as an example, uses RK3588's built-in SATA interfaces,
so it enables sata0 in its board dts.  Rock 5 ITX doesn't do that,
as I already described.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
