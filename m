Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A267BC30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 18:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aAMOmyiMGERHJKTCwbcDioMUsNF9gv8nmBkPsbnAu3E=; b=ExQly3PR+qvFyA
	OwnkuRwBilgOA7DNADnYDV+rh7a3w9L0LBmaO9JcM1ZOj4eoLhXMFC9z+Q5Nz2qOuwdA8SqOLk11Y
	iwYYaIRAmke9bgOCTn5FeVWVtNtJRlzUw2BQA4CGI108eMvr5B2HTUn7FZXMRqJaWnLLT9R58os/W
	dfk6oVY7T4WDPG2XJ3HxKjJkoqDbWlIVelDCtrwjFcqml2LwmmcdobAXJkldKRu+JIIQeqQOJK775
	o+0MKs9tWBSoE09lN6p/valKdXyZXPaPgsXedPE4ZhV23svbxBdYvcGkMmNcMd8Ijs+pfZFzpK0KB
	JCZoTEn302ioKWPaKj8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPQmW-0000000E6dq-0qqV;
	Thu, 04 Jul 2024 18:02:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPQlv-0000000E6PM-2rRc;
	Thu, 04 Jul 2024 18:01:33 +0000
Received: from i53875ac2.versanet.de ([83.135.90.194] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sPQlt-00049m-5j; Thu, 04 Jul 2024 20:01:29 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	robh@kernel.org,
	didi.debian@cknow.org,
	linux-arm-kernel@lists.infradead.org,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org
Subject: Re: [PATCH v3 0/2] Add and update GPU OPP voltage ranges in the RK356x SoC dtsi
Date: Thu,  4 Jul 2024 20:01:24 +0200
Message-Id: <172011606369.897267.6994750929052061276.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1719763100.git.dsimic@manjaro.org>
References: <cover.1719763100.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_110131_739373_F8E107DD 
X-CRM114-Status: GOOD (  15.97  )
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

On Sun, 30 Jun 2024 18:00:39 +0200, Dragan Simic wrote:
> The first patch in this series adds support for voltage ranges to the GPU
> OPPs defined in the SoC dtsi for Rockchip RK356x, which is, for example,
> useful for RK356x-based boards designed to use the same power supply for
> the GPU and NPU portions of the SoC.
> 
> The second patch updates the values for the exact GPU OPP voltages and
> the lower limits for the GPU OPP voltage ranges, so they match the most
> conservative values (i.e. the highest per-OPP voltages) found in the
> vendor kernel source.  This is performed in a separate patch to allow
> easier regression tracking, in the unlikely case that some issues are
> discovered later, resulting from these voltage changes.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Add GPU OPP voltage ranges to RK356x SoC dtsi
      commit: 2e1fae80023a38ea03dfca3eab65b3b46617ef3b
[2/2] arm64: dts: rockchip: Update GPU OPP voltages in RK356x SoC dtsi
      commit: eb665b1c06bcaf16df10018550d8f467ed4b2887

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
