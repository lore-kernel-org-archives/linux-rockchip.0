Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4135FC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jun 2022 09:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqcG2KATXjn2iYliApDCb8m/7O2QqHe4w4fPjiyK11Y=; b=SUdBb/eFIcZUO8
	cXhaLzb+Zjkyk4n6tKyppEL78a3DM24hGHcOEXa3iQhiHR8rN7B7GolIjnsSPJBwX+6ZAB+IESpYQ
	P24TywxcmkEt6YMRbJcVM2tjkPgkDShp6sRmPmfhwYcEvn68oGspI7hrpi1kXyElPUCA4JaujloZ8
	91AQMCj+9CGwwT3az4yYQB5VN1HgZLBL5dPeAcPPz6uQsAE70me24r5Eg7rkbgTGRbY7Lj9j3SgOQ
	0+i2daH4PMokrJTTFgAtQlsL5oBDJPc1PgSRSx6rodoNAmJ+rEfrYpZA+KapasAbUGjdckaUJZJsM
	zEoKbCejO1Ky+XysZ6QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyVgI-006J3W-6s; Tue, 07 Jun 2022 09:39:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyVN5-006A1l-Sr; Tue, 07 Jun 2022 09:19:34 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <heiko@sntech.de>)
	id 1nyVN1-0004mn-JB; Tue, 07 Jun 2022 11:19:27 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Frank Mankel <frank.mankel@gmail.com>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix ethernet on production Quartz64-B
Date: Tue,  7 Jun 2022 11:19:24 +0200
Message-Id: <165459351568.925770.7603077024855299605.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220606163023.3677147-1-pgwipeout@gmail.com>
References: <20220606163023.3677147-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_021932_027611_E1791D21 
X-CRM114-Status: GOOD (  10.11  )
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

On Mon, 6 Jun 2022 12:30:23 -0400, Peter Geis wrote:
> The production Quartz64 Model B has compatibility issues when using
> rgmii-id mode. Switch to rgmii mode and use the SoC's delays to ensure
> full compatibility.

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix ethernet on production Quartz64-B
      commit: 16bc4d196b2a8960cac3bdfd4c98d72c44ab043b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
