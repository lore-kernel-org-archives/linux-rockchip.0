Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C124AC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 23:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6BcHymPrb65RczQ9pVS8hH2ip+2WEFLyzJG6dv6wXis=; b=S1P4mHRBBcrmz6
	AEmq2gQ/niKyenG1It5Kr0+odGgsk2/VIAD24zaIe2IuX2V5KH2RxKmGhVAYh2lGOLVdnHbpokyvP
	4fNIyKvbGfJ0mjJ5g1S9Nd4Bskn/VXab8CV2r4+Fqxs6+SWzskh9bqFwzn7XCihyAk/zDKS4tIF2B
	GFvj42EeD6/zFh+i27UrZAhxuiN7Hb1T8E9+y+MEctbHIbRv8ZijngQ7/jzUdCXlgfqdxqmvDku+6
	yclMI27TQVaLmRFOvlLuZs6gzlrjnuaxoRX7vGrglQyi54fQwfy3xfWAlZgAJNF3I9xu5ei7ofjES
	XUgvZyElebpuQpWxS3zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7kzW-003f0o-1v;
	Mon, 27 Nov 2023 23:26:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7kzS-003ez7-0i;
	Mon, 27 Nov 2023 23:26:11 +0000
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7kzO-0007MW-Dp; Tue, 28 Nov 2023 00:26:06 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Update edgeble-neu6 bindings
Date: Tue, 28 Nov 2023 00:26:03 +0100
Message-Id: <170112754115.2134471.134877295882135358.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231125142914.57459-1-jagan@edgeble.ai>
References: <20231125142914.57459-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_152610_258051_93F307D9 
X-CRM114-Status: UNSURE (   9.96  )
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

On Sat, 25 Nov 2023 19:59:13 +0530, Jagan Teki wrote:
> Current binding has following compatible combination for SoM, IO board
> - NCM6A: edgeble,neural-compute-module-6a,
> 	 edgeble,neural-compute-module-6a-io
> - NCM6B: edgeble,neural-compute-module-6b,
> 	 edgeble,neural-compute-module-6b-io
> 
> This board topology now changes in final revisions, so a common
> compatible IO board, NCM6A-IO, is made available for both variants
> of SoM: NCM6A and NCM6B, produced by Edgeble AI.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Update edgeble-neu6 bindings
      commit: 02dbe73da5c4f6a8dc7c381b21c181006a06fb90
[2/2] arm64: dts: rockchip: Use NCM6A-IO board for edgeble-neu6b
      commit: ec31f0f98433f0edf456e2074301b76bdace5f3d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
