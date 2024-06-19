Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10B08C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 19:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u+8G5f5bS2EHLkxZq3qrJfh+H9NkUvZONVadDzrm1gk=; b=J3+9agGq0a6+JK
	4rq5/SuXD+xlKhlI5nzeaIecbd6TWdlVetmoi7G1CHPGIlVi+ACfJnAfKHzJDnbY2JLZH7y0+OCJ4
	NvvZ+YlNFOE6pu77GPeqTFaFPSzNV4AmBakrU3zxxR/Ig3Ic6PEPUCUYtjfWGn+SU/MMfS5dqN8oF
	Y1yDj+l2ycGr5Lpzar+wLLJq9eY0C/7tBFRkGlO/POd9kXSGmxl1Ok6z2clvofrnx5A/sXbBpXtcJ
	so2OZMS+i/aYPlt8wZ7oOtyuAi306+F3muvYCLqtzWV4Zf0DMoD1Fukrq3fzwpngpOaQ6Zi5T3CpF
	T3pXfLqAPnb1N6XSkCmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK124-00000002X3M-2pdQ;
	Wed, 19 Jun 2024 19:31:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK121-00000002X2a-0kBJ
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Jun 2024 19:31:46 +0000
Received: from i5e8616dc.versanet.de ([94.134.22.220] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sK11w-0000NM-TM; Wed, 19 Jun 2024 21:31:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH 1/2] arm64: dts: rockchip: fix PMIC interrupt pin on ROCK Pi E
Date: Wed, 19 Jun 2024 21:31:39 +0200
Message-Id: <171882539855.4191977.2793236782363724538.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240619050047.1217-1-naoki@radxa.com>
References: <20240619050047.1217-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_123145_427782_6E5AF191 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
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

On Wed, 19 Jun 2024 14:00:46 +0900, FUKAUMI Naoki wrote:
> use GPIO0_A2 as interrupt pin for PMIC. GPIO2_A6 was used for
> pre-production board.
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: fix PMIC interrupt pin on ROCK Pi E
      commit: 02afd3d5b9fa4ffed284c0f7e7bec609097804fc


Patch 2 is not appropriate, sorry.

The aliases are sorted this way since 2021 and the order is userspace-
facing. So for the last 3 years people have boards with the sdmmc as
mmc0 and changing this now would possibly break a number of boards.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
