Return-Path: <SRS0=BK9L=MJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D858C636C9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jul 2021 21:52:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E33A7610C7
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jul 2021 21:52:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E33A7610C7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q0uY9x+gF58OQe87OFdHUyAqADuEgccrCxTC9QSsIkY=; b=O3iSLtr9xDb9ev
	ZlyxpE/usYH9f7HvWP6wqQ9Ug3B76jydoyUMsApq8/T/AMUS0Eia89JNfK7xoiXlUmMVmELRBAMkW
	5BjLZP3Uza56G2MZfXiCW86bhGCjIReMfUVHgCCNSK7d5LVABH5cINbE1vFfqmlWubRuMG+pRt/ue
	T+v4tHJKGSJafaE0IWHgssq6X7NVCsN3gmamHBx6qjk3c+MeDX2f/6wRVdHpBJ0WH9EoGQL3sM4Md
	ZvQuMrIP8sHOPVmxA3TxD5J0olNE1mlFQnRl8DP0f9L+YE68IeqCzuZp78sRPWut/wKJMxelMdrmV
	qI6HGqVOvy5H/EiJ5/Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4sEj-0074jH-DT; Sat, 17 Jul 2021 21:52:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4sEN-0074fi-PC; Sat, 17 Jul 2021 21:52:20 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m4sEI-0006yf-JE; Sat, 17 Jul 2021 23:52:14 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 "matthias.bgg@kernel.org" <matthias.bgg@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 Simon South <simon@simonsouth.net>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Guillaume Gardet <guillaume.gardet@arm.com>,
 linux-rockchip@lists.infradead.org, Matthias Brugger <mbrugger@suse.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Disable CDN DP on Pinebook Pro
Date: Sat, 17 Jul 2021 23:52:11 +0200
Message-Id: <162655869103.853863.17662789602843984386.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210715164101.11486-1-matthias.bgg@kernel.org>
References: <20210715164101.11486-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210717_145219_856191_FC3725C2 
X-CRM114-Status: UNSURE (   8.98  )
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

On Thu, 15 Jul 2021 18:41:01 +0200, matthias.bgg@kernel.org wrote:
> The CDN DP needs a PHY and a extcon to work correctly. But no extcon is
> provided by the device-tree, which leads to an error:
> cdn-dp fec00000.dp: [drm:cdn_dp_probe [rockchipdrm]] *ERROR* missing extcon or phy
> cdn-dp: probe of fec00000.dp failed with error -22
> 
> Disable the CDN DP to make graphic work on the Pinebook Pro.

Applied, thanks!

[1/1] arm64: dts: rockchip: Disable CDN DP on Pinebook Pro
      commit: 714b35da2b6eace13bfe23ae02330e3b6a2ea4e7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
