Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9F49C48260
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 21:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YAaTYptVDq+9EUtlS/Vful75hMiZRMTDhzKk7dtkf9g=; b=PEILEydP3ch5ZX
	W83MD/gvGxix7/Ak/2DcTzx5AEnWwhdAS3chd4UYjb5hL/gWCih0Xz1f3W9ME/8GLrYYFuuuO2w1K
	S7ociZ5Jd5OquQprSleJkzo21+obzfeuJ753D9sfBMOYFj+CWQUzB9hZaiLr8YyhC6dd7hPcEGfOz
	V9esFvRDqZZoDSEDqb4ueCqoEerXQwXZEqAqcypl6yMU/CI9UxHDeTUBrq764TKlFqyTWsWaNNQi2
	85tP4Mzac3sLIfeI1CDrRjruP3AOXmYMn0xcsEinvtLSRZeYXdaJEwgbUKZAFSjIc/mngNJj79zlA
	USmNYaLSWj5GurH1pSSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT72K-00000001vmL-3u1y;
	Thu, 25 Jan 2024 21:13:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT71T-00000001vGZ-2PoM;
	Thu, 25 Jan 2024 21:12:32 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rT71H-0002EX-K4; Thu, 25 Jan 2024 22:12:19 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Kyle Copperfield <kmcopper@danwin1210.me>,
	conor+dt@kernel.org,
	robh+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC dtsi for RK3399
Date: Thu, 25 Jan 2024 22:12:06 +0100
Message-Id: <170621707730.1872080.15784453219296022164.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <be3cbcae5c40fa72a52845d30dcc66c847a98cfa.1702616304.git.dsimic@manjaro.org>
References: <be3cbcae5c40fa72a52845d30dcc66c847a98cfa.1702616304.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_131231_678705_45F9B543 
X-CRM114-Status: GOOD (  10.13  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

On Fri, 15 Dec 2023 06:00:33 +0100, Dragan Simic wrote:
> Add missing cache information to the Rockchip RK3399 SoC dtsi.  The specified
> values were derived by hand from the cache size specifications available from
> the RK3399 datasheet;  for future reference, here's a brief summary:
> 
>   - Each Cortex-A72 core has 48 KB of L1 instruction cache and
>     32 KB of L1 data cache available, four-way set associative
>   - Each Cortex-A53 core core has 32 KB of instruction cache and
>     32 KB of L1 data cache available, four-way set associative
>   - The big (A72) cluster has 1 MB of unified L2 cache available
>   - The little (A53) cluster has 512 KB of unified L2 cache available
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add cache information to the SoC dtsi for RK3399
      commit: b72633ba5cfa932405832de25d0f0a11716903b4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
