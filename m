Return-Path: <SRS0=E6vg=EH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D090AC55178
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2020 15:34:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2BE9E22246
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2020 15:34:01 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="xAuwT3ev"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2BE9E22246
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XhgRo11Cjo1pGigyUx0vyQ8VVj599XCShXAOpi3ymxI=; b=xAuwT3evKx7wxtlzxIQ5Ds1Cc
	ucgmzRZd6UV/qVTL8wOCuXFow79sBOTew+0l+RTr1S5WzIT3gQVTWbM+MDQXPBQIUCLyVKGR3Z1rM
	OOqkAF4oN3MaF9opBxEe+PL6UpYyS3LRFyjtukTs2p7Nvp7RxkIELY4ugi0EzcgdL033VWY46GqpX
	QmWF90syyZKIV24fFqy6+W9fA88Qm2KK6mQLQOFLlr7fw9qatuRzenYa1infk+qbJ4LvjYsJBTlnt
	LCCVdmHoJ9b/aGbM6J9PaDP+E4uieUiaveHIMZIxPlrIn/nT5F2HXewqiT+gamJ779t/8UTgWrKh/
	vDUJtU2+Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZFMk-0003er-OV; Sun, 01 Nov 2020 15:33:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZFMi-0003dL-5G; Sun, 01 Nov 2020 15:33:56 +0000
Received: from p57b773f8.dip0.t-ipconnect.de ([87.183.115.248]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kZFMZ-0003rS-NV; Sun, 01 Nov 2020 16:33:47 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>, sboyd@kernel.org,
 mturquette@baylibre.com
Subject: Re: [PATCH] clk: rockchip: Add appropriate arch dependencies
Date: Sun,  1 Nov 2020 16:33:44 +0100
Message-Id: <160424139255.1224767.12169508412175070171.b4-ty@sntech.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <72abb0f794b8ed77e274e8ee21c22e0bd3223dfd.1603710913.git.robin.murphy@arm.com>
References: <72abb0f794b8ed77e274e8ee21c22e0bd3223dfd.1603710913.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201101_103356_234069_B3564300 
X-CRM114-Status: GOOD (  10.38  )
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
Cc: linux-rockchip@lists.infradead.org, zhangqing@rock-chips.com,
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 26 Oct 2020 11:17:20 +0000, Robin Murphy wrote:
> There's no point offering support for 32-bit platforms to users
> configuring a 64-bit kernel - and vice-versa - unless they are
> explicitly interested in compile-testing.

Applied, thanks!

[1/1] clk: rockchip: Add appropriate arch dependencies
      commit: 6e0781e092a150b040cc305fd1832730cf78580a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
