Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AE97ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 13:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FE4226UMl/8nRSM9/FfRKY8CuXiFtrimWMrpYMvMuH8=; b=pqILTqgA/Uc3Zy
	huxFuIfXwAMwZSr5ja+s5HDUPS3HbKNnpwzyQUU0mH+8SY5sapcCeXXtHJIYuvVb1tloy5cKPKwsp
	zNJuK9jCXuIscnSJry4p/TQ9jYSjz90wSGsjPKEjeevHVclSEQYGXyEXL4chAdSyZg5sId6VOxdPN
	mg/eTy3+YL5yufT+36HWjjin/bGOYumEdpz1TMEl3QBUsWTNk9kih4eNgl2GlzK/AygQIzsb2OEwW
	x7ER0l9gEwpHNRzvfYSrA+j9vKHhS0FOzNmcG0y2E5lzw++Ci7gbYTJOEM5FPcIMHaxjgJpVOJrwA
	XLdL3l3S54QOy4zQcMGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYpFJ-009i4C-MU; Thu, 15 Sep 2022 13:49:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYpEy-009hh1-AA; Thu, 15 Sep 2022 13:49:20 +0000
Received: from [89.101.193.72] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oYpEt-00053R-Gc; Thu, 15 Sep 2022 15:49:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Markus Reichl <m.reichl@fivetechno.de>,
	Rob Herring <robh+dt@kernel.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add HDMI supplies on rk3399-roc-pc
Date: Thu, 15 Sep 2022 15:49:08 +0200
Message-Id: <166324955276.172936.16409378178377671658.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220915111138.1108-1-m.reichl@fivetechno.de>
References: <20220915111138.1108-1-m.reichl@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_064916_380999_0E128627 
X-CRM114-Status: GOOD (  11.35  )
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

On Thu, 15 Sep 2022 13:11:36 +0200, Markus Reichl wrote:
> Add avdd-0v9-supply and avdd-1v8-supply to hdmi node for
> rk3399-roc-pc to silence dmesg warning and match the name
> of the 1v8 supply to the circuit sheet.

Applied, thanks!

[1/1] arm64: dts: rockchip: Add HDMI supplies on rk3399-roc-pc
      commit: 1c33f8508b625e8c792b396155f6ef7cbc8f4212

I've moved the regulators higher up in the node to keep our
alphabetical sorting. Please do similar in future patches :-)

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
