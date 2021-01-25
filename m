Return-Path: <SRS0=VpfD=G4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF3EC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 23:58:32 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E52B122597
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 23:58:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E52B122597
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VbkaOw1cEDPgM52SsNrpgW6bv9WOvX+Ck4ZeKo58K5c=; b=1vaDNmjD13dg6tRLxXYdT9exS
	+A4z/3RDz0d/Gk/yJZfTexN+GrzJp953zfDKucI0XlkLNTMLQWU4lSVH15ECXpbsGLVFNLVPGllBd
	+H/q2mFN9RJ7MExBCeRWD6YDkpUc4zcododTJdQqr4ybSCyAPmF4SgVa9ftApcTmiqPOiZtGmC8EC
	1sEeQ6RaMPsF53x3qo+wgqM2aE0vqmhyWQw7Sr5IGkqihZnwXafD4jJVL9H0/TDlsiySnI6WRFOmA
	9qT9QvGy50uUiXLsyWwtjnng8a+FkJyXfiJ5sZiRJPUxwoTWbs8kaBLlv9S0spiKcCFnX4UiCmB0g
	sIjG68ARw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l4BkX-0000nu-Ft; Mon, 25 Jan 2021 23:58:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4Bip-000096-H5; Mon, 25 Jan 2021 23:56:40 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l4Bij-00066j-Gg; Tue, 26 Jan 2021 00:56:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chen-Yu Tsai <wens@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: (subset) [PATCH v4 0/4] arm64: rockchip: Fix PCIe ep-gpios
 requirement and Add Nanopi M4B
Date: Tue, 26 Jan 2021 00:56:27 +0100
Message-Id: <161161878915.2050283.9418666502176859174.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210121162321.4538-1-wens@kernel.org>
References: <20210121162321.4538-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210125_185639_647783_7C19366A 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
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
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Johan Jonker <jbx6244@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 22 Jan 2021 00:23:17 +0800, Chen-Yu Tsai wrote:
> This is v4 of my Nanopi M4B series.
> 
> Changes since v3 include:
> 
>   - Directly return dev_err_probe() instead of having a separate return
>     statement
> 
> [...]

Applied, thanks!

[3/4] arm64: dts: rockchip: nanopi4: Move ep-gpios property to nanopc-t4
      commit: 3503376d6cc385b6266f93c24ead9a33d8dfe8cb
[4/4] arm64: dts: rockchip: rk3399: Add NanoPi M4B
      commit: c7b03115003f7f337ab165542cee37148cf30a8a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
