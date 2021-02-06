Return-Path: <SRS0=YjQ7=HI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A18A8C433DB
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Feb 2021 00:06:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 02DA564E02
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Feb 2021 00:06:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 02DA564E02
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MwZHik2xksMTeqiAgar1MainSKuB8/vNn9BrRXgHV3g=; b=AtCJwy9x7EsM+PQliQdfndKhX
	r1f1eiZsFlZr/X8wrlqakdySxOvCEORor4uguWQ8GeBC0JstKXnYXNFWJHb57wHO5K/CAi3vqjnkX
	t5T4FzCHLQI2II2Cix5LHqaG4vE+n/p8ADjA6kzhqv7qp0OSclRUfvNVAPEohuKOanii7NdQL6/cx
	Oxlfe0bNX1+pLVmoUihasqXCCGp9TwUV4xP6KwKzYVDP6LZqbZNKJotMhNyaiimOTPzpyeIvRIGET
	RWeslF8sBk/zzVmjA3RTu7KHeTonjTYeRKhavKDu0qzcRUnCYc23+JQ5i1kz1x9ZcZDqqG6p2yy/f
	YSsdKgPvg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l8B7E-0003cy-Bi; Sat, 06 Feb 2021 00:06:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l8B7B-0003cY-QL
 for linux-rockchip@lists.infradead.org; Sat, 06 Feb 2021 00:06:18 +0000
Received: from p508fdf7d.dip0.t-ipconnect.de ([80.143.223.125]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l8B78-00052x-Dn; Sat, 06 Feb 2021 01:06:14 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/5] clk: rockchip: add clock ids for PCLK_DPHYRX and
 PCLK_DPHYTX0 on rk3368
Date: Sat,  6 Feb 2021 01:06:12 +0100
Message-Id: <161256995504.1897877.6561871784286411999.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210205110502.1850669-1-heiko@sntech.de>
References: <20210205110502.1850669-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210205_190617_864260_54963B8A 
X-CRM114-Status: UNSURE (   8.92  )
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
Cc: devicetree@vger.kernel.org, sboyd@kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 5 Feb 2021 12:04:58 +0100, Heiko Stuebner wrote:
> Needed by the mipi dphys.
> The naming follows the clock names in the manual.

Applied, thanks!

[1/5] clk: rockchip: add clock ids for PCLK_DPHYRX and PCLK_DPHYTX0 on rk3368
      commit: 0be10b6f68b217876665031f643e571a5661fc9c
[2/5] clk: rockchip: use clock ids for PCLK_DPHYRX and PCLK_DPHYTX0 on rk3368
      commit: fabb841c5b16721298cfe649b569a4fa40af28a6
[3/5] clk: rockchip: add clock id for SCLK_VIP_OUT on rk3368
      commit: 686458aa752362f86d881d7fa4576c9f175b2d9b
[4/5] clk: rockchip: use clock id for SCLK_VIP_OUT on rk3368
      commit: ed2243e0038b8afdd7726d117da34ee4577e11ad
[5/5] clk: rockchip: fix DPHY gate locations on rk3368
      commit: 4bc23b3c83c9a3fc0a7dd8f2f11f451aa92c85cd

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
