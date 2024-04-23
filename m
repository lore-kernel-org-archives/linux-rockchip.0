Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F23BDC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 15:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6pBc0f5pPZB69NCLFoivz7zJCgML+9XNrMhgV4iJ3bM=; b=CfI+ibAE2JSwqI
	okZPxXOjda/+C2gptooN/0g8RLBumoDXhlZHcaScucbmiLE/3hBL0/O+Ol7RFJGXsVf4GggtF8Cpi
	o+qYRQtsVzf5sOVsE80H/fhM4K+6DyiEiJo8NvRaoLM+azna1Aq1T2sm45yglSU55O9goiRK+5NZ6
	4FENd+G2Qpdc3bomTUH+5OajtE5eZVYG7y40sA8PXp/RK3seqQ2cERzw5BTbb/iE3vfWNL5Ebwe3G
	QSSISdxcnxTFQDs1M5but/zNI7g+rGJLklxGv9+ZEEybJFekyoTAs0wkwP5nt4YbbR80iKa+wc48X
	vKzIqt8/kEjlTUVd5eaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHsS-00000000THN-23p8;
	Tue, 23 Apr 2024 15:16:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHrz-00000000T0E-1bgC;
	Tue, 23 Apr 2024 15:15:45 +0000
Received: from i5e861d9e.versanet.de ([94.134.29.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rzHrw-0007PZ-DP; Tue, 23 Apr 2024 17:15:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzk+dt@kernel.org,
	amadeus@jmu.edu.cn,
	linux-arm-kernel@lists.infradead.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	robh+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Correct the descriptions for Radxa boards
Date: Tue, 23 Apr 2024 17:15:33 +0200
Message-Id: <171388532520.2652222.16202058595399007422.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org>
References: <1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_081544_230030_D3673EDC 
X-CRM114-Status: UNSURE (   8.86  )
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

On Thu, 18 Apr 2024 18:26:19 +0200, Dragan Simic wrote:
> Correct the descriptions of a few Radxa boards, according to the up-to-date
> documentation from Radxa and the detailed explanation from Naoki. [1]  To sum
> it up, the short naming, as specified by Radxa, is preferred.
> 
> [1] https://lore.kernel.org/linux-rockchip/B26C732A4DCEA9B3+282b8775-601b-4d4a-a513-4924b7940076@radxa.com/
> 
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Correct the descriptions for Radxa boards
      commit: d78084cdb5a959a5759efed9b3bc3182d005073c
[2/2] arm64: dts: rockchip: Correct the model names for Radxa ROCK 5 boards
      commit: 45e831033f7a00a14f64afa1e34c476a9ff0f9f0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
