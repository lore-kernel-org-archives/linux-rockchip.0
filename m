Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C839BC432BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 18:43:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7A832613A5
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 18:43:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7A832613A5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AN2YnHEt2//CTmemeo6uGbA4oXgk1PqH/HEqzOGMeTM=; b=LDtb5RS/fMlfGM
	akf+dXqoX1C+UsJbVfRhLcDoG0b3qL0sjBcjcp2kujAYeJcGZ+PzmUJGWcMESFCpzQiqw8Yvc8jZK
	KkG2vkIithDVvTFue7e/35AkhUVcdHSTgV1R46pxzLOXrt2LYxk2kSQmq0UhwS3ptuP4Oc5dhr0LG
	ti/g+5SiQuLpFZtbKTJQNPwxBnpMAy0jMUBG+k5u793xw0iDhlH5/6SJ1TcKdahKglMt2w/eVTgEA
	d4n3FkR1eQw9QPTzTm6/2+5bDpUfxAPg2DrNWOtDAumfNIP4xYvHI8i/tiLVHQzPh7DmB183ZAcRO
	s3r5OeUixLYzkh9exApg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIEue-000L1z-A7; Mon, 23 Aug 2021 18:43:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIEtx-000Kqx-33; Mon, 23 Aug 2021 18:42:30 +0000
Received: from dynamic-046-114-139-102.46.114.pool.telefonica.de
 ([46.114.139.102] helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mIEts-0002Jl-9S; Mon, 23 Aug 2021 20:42:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, Liang Chen <cl@rock-chips.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add saradc to rk3568-evb1-v10
Date: Mon, 23 Aug 2021 20:42:16 +0200
Message-Id: <162974163916.2977894.3931424916722931571.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210823110716.10038-1-michael.riesch@wolfvision.net>
References: <20210823110716.10038-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_114229_195579_7A49124A 
X-CRM114-Status: GOOD (  10.16  )
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

On Mon, 23 Aug 2021 13:07:16 +0200, Michael Riesch wrote:
> Add the SARADC to the device tree of the RK3568 EVB1.

Applied, thanks!

[1/1] arm64: dts: rockchip: add saradc to rk3568-evb1-v10
      commit: b12a5946f5ea7a54b8b983c42f0812152e3122de

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
