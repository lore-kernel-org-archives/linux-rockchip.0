Return-Path: <SRS0=N1pG=CI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73DFDC433E6
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 20:16:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 38939204EA
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 20:16:57 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="EtLjczK7"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 38939204EA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h7w6Lj7QqNaHjhencK8mCDE3kIrTfP/ioiygyfYbyIk=; b=EtLjczK7d/CUF4p9u7ONYL6WK
	ZRabQc7jbWGYTIMQykFO0vHV3I1yFWouEFNOzXSAtjQjraF1p7gZCa7Wm/aohhFpLLHQF15SyFEPy
	KeTursMdEujLMEq7xFCpWTDGNZkXQ2ApT+q/5z64j34XM1422w5vJ4EUXfR0IMyUomVd1U7cc8VYg
	RorjmyqwOospZcVn4NYhRlauposXlDZl/EizZI+J/z4FOvdnwlnrK7+aPt8BJzXfRt4gnqsufwV0A
	ui0QShUADycsyQU6kM9BsEaNAvgJLZ7UbxKoTovPsVKjE8zCzoKomqRuFmfjGB65syWkuMQOVgICJ
	ujoPOwQkw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCTky-0002p1-4q; Sun, 30 Aug 2020 20:16:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCTkq-0002mc-P6; Sun, 30 Aug 2020 20:16:45 +0000
Received: from p508fca7b.dip0.t-ipconnect.de ([80.143.202.123]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kCTkn-0002d8-L6; Sun, 30 Aug 2020 22:16:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: update cpu supplies on rk3288
Date: Sun, 30 Aug 2020 22:16:34 +0200
Message-Id: <159881858451.25534.11030928777586956509.b4-ty@sntech.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200813180241.14660-1-jbx6244@gmail.com>
References: <20200813180241.14660-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200830_161644_854638_29BA7A7F 
X-CRM114-Status: GOOD (  10.08  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 13 Aug 2020 20:02:41 +0200, Johan Jonker wrote:
> The use of cpu0-supply for cpu0 alone is deprecated,
> so add cpu-supply to each cpu separately and
> update all existing rk3288 boards that use this property.

Applied, thanks!

[1/1] ARM: dts: rockchip: update cpu supplies on rk3288
      commit: b282ae0511cdb6f17cb5052de20288245a8ecd00

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
