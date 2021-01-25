Return-Path: <SRS0=VpfD=G4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F140FC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 23:57:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5D8B022597
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 23:57:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5D8B022597
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3G/gKBjKHOgBcaguHIjrNLAeKqabDwsiwBS45D/NZX8=; b=qU9NlHUBqzYY7u5gfTLZALb7m
	dMJ84l9X+r9Zel5JhoD/lkDZZKF9zxeybxDsmCU9RR+wO84boN9aPzy0BKToLjhMQd+H4Sd0X3aUB
	DNYC50LKFvX/bPeHa9uDjPcTh9coxQCayp0fiBBcDp5WCTGxyuf36XRf52E0qf87xMIIwcDdSjk/T
	m2o8ypyARiUafJTMJ6Bga4O+cpHyUCYOPDi6954kRLwCZtwjbH3JM4XwlxGdhBXaJrm+NCBBpM46D
	XnTfpcZa/X43WUeCaY8NwlaI27cbj7XDYkZU/AAayO2I5baNns9uKttpRa/vGDnVoeUDhiB00Ssr9
	sS/8unByw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l4BjG-0000IA-6m; Mon, 25 Jan 2021 23:57:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4Bij-00006t-Jc; Mon, 25 Jan 2021 23:56:34 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l4Bii-00066j-5K; Tue, 26 Jan 2021 00:56:32 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: (subset) [PATCH 1/2] arm64: dts: rockchip: Remove bogus "amba"
 bus nodes
Date: Tue, 26 Jan 2021 00:56:23 +0100
Message-Id: <161161878917.2050283.4200932861977149473.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <131e0ea065109760ea3b59c4bb90cf4fac7826f7.1611186142.git.robin.murphy@arm.com>
References: <131e0ea065109760ea3b59c4bb90cf4fac7826f7.1611186142.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210125_185633_707102_82BBDADA 
X-CRM114-Status: GOOD (  12.67  )
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
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 20 Jan 2021 23:42:21 +0000, Robin Murphy wrote:
> The "amba" bus nodes wrapping all the DMA-330 nodes serve no useful
> purpose, and certainly bear no relation at all to the actual underlying
> interconnect topology. They appear to be cargo-cult copying from a
> design misstep in the very early days of FDT adoption on ARM, which was
> righted with the "arm,primecell" compatible, and the last trace of the
> idea finally purged by commit 2ef7d5f342c1 ("ARM, ARM64: dts: drop
> "arm,amba-bus" in favor of "simple-bus"").
> 
> [...]

Applied, thanks!

[2/2] ARM: dts: rockchip: Remove bogus "amba" bus nodes
      commit: 5eae5696eed5cc460867521c3c67db9ab62e1a0d

Patch 1/2 applied as well, b4 just didn't handle the separate
branches well.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
