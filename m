Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68AE1C282D2
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 14:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lSsTbKS4cp7MretlTqO1dzlWXuhObmJM5Ne3h9LFBzg=; b=Xkr/i7V50BqVmR
	3fiiFEHgbvu5+x1BJekArT/S9t6Pdq5ysN/d4vv+eDS2ZCK598jOizb3QMCY4BCAnuRG9SCPGHksi
	XNpyVvf9zz6/rKMDO4yFaxi5Fa5j6dnJWsHA5y7YTx2zyjjQIzYKNC7KIjyNHOcXP6NCUl+oQvbTd
	7AbqnopH/8CFqZRHu2ikWY0o/vK96uHgj3MYaUekjsOyNrm8KFup1VDawV8whRjrWh0wMMK3YU/HB
	EKLfi2mD99MEwCYSfVDdtixtYTsxc6n13jL50V3oVXcpbG5QZ2WriLhv6eRTgr5l+U/Q1c6h/RNg5
	EcIn2C7y/nnkm9BE1kCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpTNf-000000051Fn-0gCQ;
	Tue, 04 Mar 2025 14:36:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpTM4-000000050u0-3CkE;
	Tue, 04 Mar 2025 14:34:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4Gqyom2Qw8VXFf3AYIpGbjCuS8c9RY7yiAyJBWvJUfc=; b=KTdCEV/zTusAeUlTIrBuBAb6SW
	QOPuOTIm7BL/bYx2YPLJAYBFDF28jitg9fxcPZ6HfAEBuQ/bthkTDwK5mTWRX18uOq1FNvKIvh7J6
	nTZB1nFXW3Y9YXExh4df+JzoAmiG3am5R5qRJ7iGejoN6o5z8ZsxZtlZXjVud8XaTZOA/wZPmNnTU
	gyqZTRpr2ewIXAoPpKPAfT8rwGqDQ6/IUPt7HnGhQrwTp9dhdUv2IhbA+BD94/tn+iAIwwDt931X8
	61QfDmBDGVaoGcaaRbJJCC8q/qOP13pFtoMMx9v14XgF/L+KL4Bq5OYk1nh6j816lZCTw6sCXW70X
	Ucn1A1wQ==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tpTM2-0003uT-SQ; Tue, 04 Mar 2025 15:34:42 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Add ES8388 audio codec fallback on RK3399 ROC PC PLUS
Date: Tue,  4 Mar 2025 15:34:40 +0100
Message-ID: <174109881585.132749.2987468837584062976.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250304104200.76178-1-krzysztof.kozlowski@linaro.org>
References: <20250304104200.76178-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_063444_803331_4D3628F5 
X-CRM114-Status: GOOD (  10.47  )
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


On Tue, 04 Mar 2025 11:41:59 +0100, Krzysztof Kozlowski wrote:
> Devicetree bindings for ES8388 audio codec expect the device to be
> marked as compatible with ES8328.
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: Add ES8388 audio codec fallback on RK3399 ROC PC PLUS
      commit: d83f6c32d70f96037cb187e63785e7a58f9e751b
[2/2] arm64: dts: rockchip: Add ES8388 audio codec fallback on RK3588 boards
      commit: ced36c336d241eafbc812fed27e6a52908d249bb

Thanks for the heads up Krzysztof, about the asoc patches getting accepted
for 6.15.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
