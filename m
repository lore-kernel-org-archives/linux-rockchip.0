Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E157C48260
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 21:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZnJb3pka9Y20+oRg5ue0Plhoa3GJ7y8hiFI4vn24jU=; b=AH5S6PGMgNMlrp
	84fHyk/CuIOlXDxgZOhmejIDSC24bzszbyBM9ihUaZ6bvy/m7PIxYG67mY+3IvFjZCnUZVTsMwHll
	fasYJalLgbNPssDbyI4DgJgiOh2cHOyH5awB3TkCpAsfp7pBUh3RZONagQXOPrXtGQYqMDoQuX3sr
	2ex8ghvedzlbrfVMk5g3NNd34Uh444bdh76HpwvMCs0xyUyqEOlZcn7d1VAUSQlP+rWvwKQ9sqjVE
	RLvMAKjHt/TlFifQVtalvemJlUFefe3KEidGDKjmMm7ttQf2PDms/xJCD4nLoQtZ1MgcOS3SHx0xx
	0UgmCUIRQz1n0JjTjRSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT71S-00000001vGR-1qaU;
	Thu, 25 Jan 2024 21:12:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT71N-00000001vCq-02qm;
	Thu, 25 Jan 2024 21:12:27 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rT71J-0002EX-Dt; Thu, 25 Jan 2024 22:12:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: John Clark <inindev@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Thomas McKahan <tmckahan@singleboardsolutions.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: nanopc-t6 sdmmc regulator
Date: Thu, 25 Jan 2024 22:12:09 +0100
Message-Id: <170621707730.1872080.11556854185558963327.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240102024054.1030313-1-inindev@gmail.com>
References: <20240102024054.1030313-1-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_131225_095098_D68B3217 
X-CRM114-Status: UNSURE (   9.85  )
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

On Tue, 2 Jan 2024 02:40:53 +0000, John Clark wrote:
> sdmmc on the nanopc-t6 is powered by vcc3v3_sd_s0, not vcc_3v3_s3
> add the vcc3v3_sd_s0 regulator, and control it with gpio4_a5
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: nanopc-t6 sdmmc regulator
      commit: 6cb02674a061e4ef4f437ab60c91038d4c0d85ef

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
