Return-Path: <SRS0=Y7pG=FI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA96C4361A
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 11:02:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 50A6F229F0
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 11:02:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 50A6F229F0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=27b46xxg2/FSQxtMTxoIIjD/ajcDn5FJ5a4lmUJQzdk=; b=JGrGpFqGsgT+mKoA1mxQ+WF4l
	utoqd8J0oKSNFP0qkBzcA/Qp4PeOTrcCiMZIkUtXq/EJBF67a5ZI+cBatxgddwT4QqfI5pTXlqQ89
	X7raD4pMHS9yjK53TZvRNSlBf/k42ZmDICnmyPH6zG2HK8tJGjrx3XVmEyk9Jb15HGCWV6++K7Fh8
	BsOjIAyc0OCePFz8MysZHM+JdmoDfodIhouy6M63jHg25Ax0BqVQFGYsXbibtz2C7wQYvBYxaBkrA
	Nk2JRHKu84cBCM8P/KUcDfFiQvFxRODYRaopOiuAlUeQj8vhVJcAjXaRbA1+zhZMGV8Y8PGwXGKz5
	nS1B85Dkw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kl8qp-0001n3-Ur; Fri, 04 Dec 2020 11:02:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kl8qn-0001m5-6f
 for linux-rockchip@lists.infradead.org; Fri, 04 Dec 2020 11:02:10 +0000
Received: from [95.90.166.74] (helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kl8qf-0005Lx-4R; Fri, 04 Dec 2020 12:02:01 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, Vicente Bergas <vicencb@gmail.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Carlos de Paula <me@carlosedp.com>, Robin Murphy <robin.murphy@arm.com>,
 Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: miscellaneous fixes for
 rk3399-rock-pi-4c
Date: Fri,  4 Dec 2020 12:01:54 +0100
Message-Id: <160707971061.1322141.18081942487939649780.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201201154132.1286-1-vicencb@gmail.com>
References: <20201201154132.1286-1-vicencb@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201204_060209_337469_6835B20C 
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
Cc: Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 1 Dec 2020 16:41:29 +0100, Vicente Bergas wrote:
> This patch series fix several issues found on rk3399-rock-pi-4c
> 
> Vicente Bergas (3):
>   arm64: dts: rockchip: fix supplies on rk3399-rock-pi-4
>   arm64: dts: rockchip: fix I2S conflict on rk3399-rock-pi-4
>   arm64: dts: rockchip: use USB host by default on rk3399-rock-pi-4
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: fix supplies on rk3399-rock-pi-4
      commit: 328c6112787bf7562dbea638840366cd197868d6
[2/3] arm64: dts: rockchip: fix I2S conflict on rk3399-rock-pi-4
      commit: eff57d38b546b3a50588e447a41ff3571a407c9f
[3/3] arm64: dts: rockchip: use USB host by default on rk3399-rock-pi-4
      commit: e12f67fe83446432ef16704c22ec23bd1dbcd094

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
