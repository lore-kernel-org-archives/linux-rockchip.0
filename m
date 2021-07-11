Return-Path: <SRS0=P8Gh=MD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD76FC11F66
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jul 2021 23:26:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3C0546101C
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jul 2021 23:26:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3C0546101C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ezyahhv5vfbY0Dl909AphSXqwB1858TzeYLnSboA6c=; b=LbvN3vpNXjERcS
	rlzM7M4XKWWO4KpqaB2uBC5Qzr1SGYG3Dw3RyCgseMuq3WgnlBA6yAlV3O6qFuv+gRyyaYQFvZfQP
	JGHBrOfPKWO71C0xAvIMcwFzQ13jEQJqgsCkMPScNT4jreOV95RXv17HYDAgbaWpLQy9nac2nTHI5
	N/ZAO8mDdqp5M/9nQztzAv8Ib069iaD7tgAqpEfeEQV/6o0R27yy7+QU4E65OiDoEQ5jixxzqP0m/
	y7bfV+cvzaCeEz0CA78dKpdTztR6C0hFXanDExiw/xDNSvjS0URuPomxtPuaFvL6LNGedK/NJDhcD
	V1QfUg6Rr4zXBNUP8Kaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2ipw-005YUl-Cz; Sun, 11 Jul 2021 23:26:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2ips-005YS3-VM; Sun, 11 Jul 2021 23:26:10 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m2ipr-0000zL-9J; Mon, 12 Jul 2021 01:26:07 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rename flash nodenames
Date: Mon, 12 Jul 2021 01:26:02 +0200
Message-Id: <162604593565.371932.7856449984129682849.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210711145900.15443-1-jbx6244@gmail.com>
References: <20210711145900.15443-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210711_162609_117537_BDFB48BC 
X-CRM114-Status: GOOD (  10.97  )
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

On Sun, 11 Jul 2021 16:59:00 +0200, Johan Jonker wrote:
> Nodes with compatible "jedec,spi-nor" are now checked with
> jedec,spi-nor.yaml and mtd.yaml. The pattern is now
> "^flash(@.*)?$", so change that for the boards with a
> Rockchip SoC.

Applied, thanks!

[1/1] arm64: dts: rockchip: rename flash nodenames
      commit: 3a9476ad636e4044b5175d1cd1e1ce7ef1ba448c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
