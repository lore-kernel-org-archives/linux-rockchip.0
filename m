Return-Path: <SRS0=Brux=FE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8561FC64E8A
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 13:51:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9B9582067D
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 13:51:28 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="zSiEMceo"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9B9582067D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=13noFAu8N8lXJgja1ag0wBHZzWIs+BdVhZe8uJTyZ5U=; b=zSiEMceoPEJ0U5Ofe/wkuHEJ/
	rAhX5BG9G1oAPM34IHl/Sb8STXXyK/bG23rR0yf033MbPQNUe9so6h/U6EGZrf098W1hIEhcNPf2D
	Nb9QJkO/Dgw+Lkz27yI6AsMT/N4ka5ChEmEHenx8sJzZcBz6vMmdadjHetRFd3qSmzrxR1V6SAU2u
	owqx9jCVdsJilcCWA53T/KF2bIYNfD3vQa74nsP/VT06Qp6ptGxNLplqKOBL/hC/J/BH1C+54yPWc
	MQxczRtfGoXXgi8+vFBRjNjGr2QgjYrr9nsjeEsFVhVR7zg6Bb3xqd1EX0n1qc7Q6B5xHZgELrQqa
	mJDeKuV3g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjjaN-0006nQ-J1; Mon, 30 Nov 2020 13:51:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjjaL-0006mR-V5; Mon, 30 Nov 2020 13:51:22 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kjjaE-0002ZS-9I; Mon, 30 Nov 2020 14:51:14 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Will Deacon <will@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: (subset) [PATCH 1/2] arm64: defconfig: Enable RTC_DRV_HYM8563
Date: Mon, 30 Nov 2020 14:51:13 +0100
Message-ID: <2124337.iCxCd0tNoN@diego>
In-Reply-To: <160674371009.1066509.16638501077486662468.b4-ty@sntech.de>
References: <20201023181814.220974-1-jagan@amarulasolutions.com>
 <160674371009.1066509.16638501077486662468.b4-ty@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201130_085122_102805_8F6EB7C4 
X-CRM114-Status: GOOD (  13.20  )
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
 Suniel Mahesh <sunil@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Montag, 30. November 2020, 14:50:21 CET schrieb Heiko Stuebner:
> On Fri, 23 Oct 2020 23:48:13 +0530, Jagan Teki wrote:
> > RTC HYM8563 used in the ARM64 Rockchip SoC's SDIO power
> > sequence enablement.
> > 
> > Enable it as module.
> 
> Applied both patches, thanks!

I've also split the hym8563 addition out into a separate patch in front.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
