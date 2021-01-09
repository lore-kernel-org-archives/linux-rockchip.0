Return-Path: <SRS0=bvFq=GM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27668C433E0
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 15:40:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6765023372
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 15:40:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6765023372
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ud+vSQ2LrVPNLldqQPkuD760QbBcwGLHnNdwVdYMyuc=; b=VU4ttEzmSoPrX0lUD1HiyI3WY
	1hQ+cIsnKG1OVzUIOs9VA498/bcDQiNTbAnSo8GafXLlTi9UmekNroxpzVhx1UmiV7Vz8/MwjUUnO
	lVwT16KIWWQxYFOINnZy58oSU1WwHrN2Kxtf+xuaebuSH4tPcGpHJP2sqEq67xxlioRniXGKel5AB
	tLBmt8Jl2Fv2eBuHWEtl3w06jITBCMpIXlTg/KNCg+GUvFjfFV/Zy1HjsHRtSPRNuytZV4TaR5jkU
	TGoG72KCMVxAUh6YrHouRJ0J9qfq3xyDGMEm/ygm4Qgs0txJOUW512iQ0zhf3d0zE9wlZvYnT+BYF
	YVArqeOvQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyGLm-0000fN-Ox; Sat, 09 Jan 2021 15:40:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyGLQ-0000Ym-4L; Sat, 09 Jan 2021 15:40:02 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kyGLM-0000jX-WC; Sat, 09 Jan 2021 16:39:57 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH v2] arm64: dts: rockchip: add SPDIF node for
 rk3399-rockpro64
Date: Sat,  9 Jan 2021 16:39:50 +0100
Message-Id: <161020678304.3482489.5731474695073425593.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20200810091619.3170534-1-katsuhiro@katsuster.net>
References: <20200810091619.3170534-1-katsuhiro@katsuster.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210109_104000_266943_48E2F0F5 
X-CRM114-Status: GOOD (  11.91  )
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
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 10 Aug 2020 18:16:19 +0900, Katsuhiro Suzuki wrote:
> This patch adds 'disabled' SPDIF sound node and related settings
> for rk3399-rockpro64.
> 
> There are 2 reasons:
>   - All RK3399 dma-bus channels have been already used by I2S0/1/2
>   - RockPro64 does not have SPDIF optical nor coaxial connector,
>     just have 3pins

Applied, thanks!

[1/1] arm64: dts: rockchip: add SPDIF node for rk3399-rockpro64
      commit: 7f02feb56d9dc8ee2fffe00993f7b9aadd8902ba

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
