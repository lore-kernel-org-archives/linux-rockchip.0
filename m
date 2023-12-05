Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBBB7C10DCE
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 00:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+7fDXumUfk6huNLNkrxQwYzvTy/mHT5xJH/KA0FM6cg=; b=3MV7KIUz3odIm7
	kJCsV7CfHczTZ7sRmj8KkUf8D4gtubDGaRKHLeb0OdavU8jJHSqHqe5a7lqLSs+8n32+no2+ozgSS
	AxT9ZLuQW/PsnGhwPdinTgj+MPqnqOY+NEHXt4qtRcJFtDdVFhKGZlronVcuj4z5RpUMzw8Xa0SXh
	g5amM3qtA6m4Yhio6tOr7NpN/sM0C1o+gULakXt917lnR7Te96uje7bQW1DWeRbSlXowYCNx7EK97
	5H/58Vmc/Rt72og7EALzWuUaZ1Y+q34HaOHbVwUmSuhwmG8PKnGOWGjdmi5ZA+MjVyhSyg8vpVIDY
	p26imL5C6JF2ah+3u7mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAIxF-005qfx-1v;
	Tue, 05 Dec 2023 00:06:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAIww-005qWz-28;
	Tue, 05 Dec 2023 00:06:09 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rAIwt-0001qb-Qe; Tue, 05 Dec 2023 01:06:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3399-gru: Fix PCI node addresses
Date: Tue,  5 Dec 2023 01:06:00 +0100
Message-Id: <170173468936.501889.14178301756278206830.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231130191830.2424361-1-robh@kernel.org>
References: <20231130191830.2424361-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_160606_930733_43760B60 
X-CRM114-Status: GOOD (  12.38  )
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

On Thu, 30 Nov 2023 13:18:29 -0600, Rob Herring wrote:
> The rk3399-gru PCI node addresses are wrong.
> 
> In rk3399-gru-scarlet, the bus number in the address should be 0. This is
> because bus number assignment is dynamic and not known up front. For FDT,
> the bus number is simply ignored.
> 
> In rk3399-gru-chromebook, the addresses are simply invalid. The first
> "reg" entry must be the configuration space for the device. The entry
> should be all 0s except for device/slot and function numbers. The existing
> 64-bit memory space (0x83000000) entries are not valid because they must
> have the BAR address in the lower byte of the first cell.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3399-gru: Fix PCI node addresses
      commit: c13c823a78b77ea0e5f1f73112d910e259911101

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
