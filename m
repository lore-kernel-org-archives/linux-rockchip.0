Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CC70C001DE
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jul 2023 15:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ntqwV3pLB2Xrbj/+1T8H+4TsL7jNBeJBIB15SpmTJGM=; b=JbJx8u/lB4hEkq
	11SmjhJxxfVcl0jsUBoV68ZiBR2w+G7hK03+LfW4vmuChbbv6gBI3/Hst7rQ38dOLiOqZvMBbH0E6
	rpswAuhFaE73WC0FwRkphbjHmKMsBjCnsAe/v+VtyxSigxX3dWL9JsEC0dqPLP//56xdEY83zqJ/9
	pqXDf7RvRFG3QRFpLqHflqc8jV6hn15HbsgSxmf/FRvTnLbNHOC7wFyV3qpfPV1+zMdTd2yvS2EIJ
	XGL11OESUT1NIS7AM/YZf9dx3YexExxqjuNx03emoucuhi2t6lB8J/qHKBW1HEYUq0jcWkRhw3Yft
	6N5ue9atF13IB/KL4o0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKKtL-006Xw2-07;
	Fri, 14 Jul 2023 15:39:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKKtD-006Xsf-2m;
	Fri, 14 Jul 2023 15:39:29 +0000
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qKKt6-0004Kz-RY; Fri, 14 Jul 2023 17:39:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/8] arm64: dts: rockchip: Add PMIC for edgeble-neu6b
Date: Fri, 14 Jul 2023 17:39:17 +0200
Message-Id: <168934909030.2268788.16181690719660508455.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230713143941.1756849-1-jagan@edgeble.ai>
References: <20230713143941.1756849-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230714_083927_893883_249D6D04 
X-CRM114-Status: GOOD (  10.34  )
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

On Thu, 13 Jul 2023 20:09:34 +0530, Jagan Teki wrote:
> This adds PMIC support for the Edgeble Neu6B NCM.
> 
> 

Applied, thanks!

With a bit of reordering and adding the missing "-regulator"
to one node in the first patch.

[1/8] arm64: dts: rockchip: Add PMIC for edgeble-neu6b
      commit: 0d3f385d71cd9ed710ff5a0fd76c0d94c41edcae
[2/8] arm64: dts: rockchip: Add microSD card for edgeble-neu6b
      commit: 61808d9341338dc1041a9349a75984943cb1c8cb
[3/8] arm64: dts: rockchip: Enable SATA for edgeble-neu6b
      commit: 89f713b0590185c3d6f1afdd66791cccc74d54bb
[4/8] arm64: defconfig: Enable PHY_ROCKCHIP_NANENG_COMBO_PHY
      commit: ccc1b7ee2eb4021506838c5f12a8055955332357
[5/8] arm64: dts: rockchip: Enable RTC for edgeble-neu6b
      commit: 8f3aa4f7086e998cf14f7802c0a9265402847f7d
[6/8] arm64: dts: rockchip: Enable PWM FAN for edgeble-neu6b
      commit: b65814bfb8b329f95408142f1fa8d50072dedc2a
[7/8] arm64: dts: rockchip: Enable RS232 for edgeble-neu6b
      commit: 9ee9ea88e6c47fd8e02ab999e18ae1b49eb47ce4
[8/8] arm64: dts: rockchip: Enable RS485 for edgeble-neu6b
      commit: 9b9fb10b9d4dc08da2d0f9a2ac4a53e6a2e7ebb8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
