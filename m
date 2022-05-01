Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D3A1C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 May 2022 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Leb3UPuks9GFp8oBPrydQCFEIQdBke/HnPTOiTEmd24=; b=pk0hbP5t1ik8jb
	27SpgzYO63FaVb8/LhMXmidsgzlY4WCRGgrfIZ81wdCvWl4G8uvd3znRUxz3aeN1gcRxZls+orBwQ
	Qda8Mix6CJ2b6TSMIlDQMSQvTBwzNz/hDXp9HRcE7qnUgfZLbPscIsZdKi22R0VZ+KM47s8rzzlUf
	NNfzYrb0bKOg39SPzWIAnXoA5yjL0G1y2dM1sKJNSiDuCqNY4sG2HTGTrzDeb9qMdzi5L+2dH4wye
	U74xo/QNrJogJevIPar1uWNsVURjKAVknNy1TpNrc5CbrRK9btNbZbXWA1lB85nH2lAKx6GSLqi5h
	zBNcW6gLauATVgr4Etig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nl9Gk-00GNvA-7X; Sun, 01 May 2022 13:05:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nl9Gi-00GNuc-4L; Sun, 01 May 2022 13:05:45 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nl9Ge-0006BV-1w; Sun, 01 May 2022 15:05:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/7] Add support for several new rk3566 SBCs
Date: Sun,  1 May 2022 15:05:38 +0200
Message-Id: <165141025789.655760.7485683050420620213.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220429115252.2360496-1-pgwipeout@gmail.com>
References: <20220429115252.2360496-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220501_060544_210718_CE65D0E6 
X-CRM114-Status: GOOD (  11.74  )
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

On Fri, 29 Apr 2022 07:52:45 -0400, Peter Geis wrote:
> The following series adds support for the following single board
> computers:
> - Pine64 Quartz64 Model B
> - Pine64 SoQuartz SoM with RPi CM4IO carrier board
> - Firefly Station M2
> 
> Patches 1, 2, and 3 add the requisite dt-bindings.
> Patch 4 adds support for the SFC to the rk356x device tree.
> Patch 5 adds the Quartz64 Model B device tree.
> Patch 6 adds the SoQuartz CM4IO device tree.
> Patch 7 adds the Firefly Station M2 device tree.
> 
> [...]

Applied, thanks!

[1/7] dt-bindings: arm: rockchip: Add Pine64 Quartz64 Model B
      commit: c37415f55bdadffe5b4c0e7981e9fc7e8b96beea
[2/7] dt-bindings: arm: rockchip: Add Pine64 SoQuartz SoM
      commit: c466828fb3ba8cb7f5c3bf28766da9b70bf9745e
[3/7] dt-bindings: arm: rockchip: Add Firefly Station M2
      commit: e52ded5543708e0382f236ce35372a63f4568341
[5/7] arm64: dts: rockchip: add Pine64 Quartz64-B device tree
      commit: dcc8c66bef79befa6c9ebe7d7d62b0ce66983c20
[6/7] arm64: dts: rockchip: add SoQuartz CM4IO dts
      commit: 5859b5a9c3ac92d831bed164374cb837519524ad
[7/7] arm64: dts: rockchip: add dts for Firefly Station M2 rk3566
      commit: 30ac9b4e25d8cece00d32c7419f9d919f55421fe

I've adjusted the styling of comments a bit, also dropped one double
newline as well as fixed the node name for the ethernet-phy for QuartzB.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
