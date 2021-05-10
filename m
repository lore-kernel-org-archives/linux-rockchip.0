Return-Path: <SRS0=aAmn=KF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF10AC433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 00:14:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3A85A61377
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 00:14:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3A85A61377
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jR+HVg6ADgyyKVuXFKYuwq9gedY7vL1oKAzSfMEgqUM=; b=UqEOrrex0XItiE2U5Nx2SmXmF
	Wv15d/vOZIQrteR5ess26HVZwBt0GxFYDu/x3yKXkCRM56Rr//TZVjnxAgX8ILkpSUF3qVQFmbdCs
	zKbbvsCYy8gnHQ9GvG+rCnN2VQpK/w6Gg0XU79YHSRaDWM0OmuQgxO9MV0kinYVjo6N4cIju46p2D
	cIhzCQmbvEGieW1k2wwa1kxE1FkcrozdwwoSxDjlJmHqCHUL/+DsOJvHaXJMp2Xq26H0LhqsRJe5/
	3UGyaBtZsPZtrFKO+3wnoDxY4y20892NwjvaxWEIkOfN4UKiTEQ5rJ3MVLv52THP/rzMZ6x8tX+Ec
	VsRiwo4mg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lftYu-00CaKC-Az; Mon, 10 May 2021 00:14:16 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lftX9-00CaDg-5I
 for linux-rockchip@desiato.infradead.org; Mon, 10 May 2021 00:12:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=oqkTq+JnTDpqzTaUSDsGaoiOnTx6gjbzESNtgUweKpg=; b=LP6LbsUFe8t/Il7BBreEuEt0C/
 znHNKH3xpLwwx0umpStteePXHaDhZ5I6QhTYC7SibKbgdkm3Rs7H7uJ0HadwyvdW8iV8WDQVQog6C
 3oAinvPt6dps3ORZEUu9lae9ZLMbuO8YSUta1r1atWacUf+6nknDu0uky5xqTOsGZScxcGQ2964gm
 La9mT1A7Me9b+JMpKjWlWsECM1LfTomUz66ilXTwSxCRekexK4T3592bHuxLhlKokbaYhfks/RRyK
 CvJ2Xs7wSyEKj2E6r3yD4me3hHLtpRZLiD/guSOb38BzNmtczWmOA95IsAvmCam+ADM5naLlswOXK
 qBKwjv0g==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lftX6-008APZ-OC
 for linux-rockchip@lists.infradead.org; Mon, 10 May 2021 00:12:25 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lftX5-00085c-Br; Mon, 10 May 2021 02:12:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, kernel@collabora.com,
 Rob Herring <robh+dt@kernel.org>, Kever Yang <kever.yang@rock-chips.com>
Subject: Re: (subset) [PATCH v2 0/3] Rockchip Timer DT binding YAML conversion
Date: Mon, 10 May 2021 02:12:21 +0200
Message-Id: <162060552749.1271206.3008409330703145492.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506111136.3941-1-ezequiel@collabora.com>
References: <20210506111136.3941-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210509_171224_809699_2634B8D9 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
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

On Thu, 6 May 2021 08:11:33 -0300, Ezequiel Garcia wrote:
> Changes from v1:
> * Fix the order of clock specifiers.
> 
> Ezequiel Garcia (3):
>   arm64: dts: rockchip: add timer0 clocks on rk3368
>   arm: dts: rockchip: Fix the timer clocks order
>   dt-bindings: timer: convert rockchip,rk-timer.txt to YAML
> 
> [...]

Applied, thanks!

[2/3] arm: dts: rockchip: Fix the timer clocks order
      commit: 7b46d674ac000b101fdad92cf16cc11d90b72f86

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
