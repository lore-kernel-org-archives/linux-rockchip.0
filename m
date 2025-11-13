Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 318E7CDB463
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 23:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pEC3Gh16dyRJwZXvQA1hCGJgSLjl65r1z0x0PbzFB2Q=; b=DnE3Aw0vcjkJKI
	PyEsWPFQ/pHXjHkldeBhnkUgsg/wn0LMcdNJKo59U0Gp+YfSGPd5BidnlQqVqBmxzq89bxr1+8Xty
	3QJCl8P7pTXvEaNOwI3juSZgSTY3OZqBHYyZyHCbehSRsr8avumrhEhVg3ou5DkAFKXNIqkKSkaVY
	Wz3reCZgLhMhySYpuaYIaIEN3AK9CIGHV34k6W6XodJ4WoSfzDbZPIVQUFmostsyijb1ss2sJNas/
	G4tC0c0zEusdXFQ0JLI4CInbGR9q1D5HDuK4y1WE2EnPw/s3qR9vL5IAhSBzaCmYHFW86Ia7OWLIx
	Qp+DHUycKw0Pas5QhJGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJgNT-0000000BEUC-1uLV;
	Thu, 13 Nov 2025 23:05:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJgN0-0000000BEHQ-07JQ
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 23:04:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=TGjiCjLsY9tI5cL4nDSBFe3+2NEuF0FspNqqQdwrCdI=; b=YP2vYy3gs2H7kWn+vbqXWQhwAn
	bzCLRtRBQOOuBGVN/N9SeNGeU+k7nmpRr5LG8jYY4CaYAcnQwRHskQiELzScZCjIaK1HBOL2Pw7AO
	9xBEUulSV0KjuVwEonSSNxkn8xfOwLaItTx3m7uUOUfBkV114Nvb9QrGMovn7I6UEH+2wBH4ZYOS+
	hid8szMq+6FYNdBbcDOIanNFsy11DUjcSn6YMszVKjGQ0g3pIs0vhBvPD7kD4594B6CSrlfCmyUiK
	P3qegZY+0BXnkB2bYSR2wnOFVNpEnHs9ediZ63FvFycSJyM/Qm/0Cqr8zXNEaD4Vj+DHCj+kvLdVb
	QCY7aKiA==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJgMn-0005bo-In; Fri, 14 Nov 2025 00:04:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	pbrobinson@gmail.com,
	kylepzak@projectinitiative.io,
	damon.ding@rock-chips.com,
	sebastian.reichel@collabora.com,
	dsimic@manjaro.org,
	alchark@gmail.com,
	amadeus@jmu.edu.cn,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/4] Fix and improve EEPROM chip descriptions for Radxa ROCK 3C, 5A and 5C
Date: Fri, 14 Nov 2025 00:04:29 +0100
Message-ID: <176307502897.495066.5667820718032411897.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251112035133.28753-1-naoki@radxa.com>
References: <20251112035133.28753-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_150450_396124_EFFCC3C1 
X-CRM114-Status: UNSURE (   9.50  )
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


On Wed, 12 Nov 2025 03:51:28 +0000, FUKAUMI Naoki wrote:
> This patch series fixes incorrect or missing entries related to the
> eeprom on the Radxa ROCK 3C, 5A, and 5C.
> 
> FUKAUMI Naoki (4):
>   arm64: dts: rockchip: Move the EEPROM to correct I2C bus on Radxa ROCK
>     5A
>   arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 5A
>   arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 3C
>   arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: Move the EEPROM to correct I2C bus on Radxa ROCK 5A
      commit: 92e6e0b0e595afdda6296c760551ad3ffe9d5231
[2/4] arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 5A
      commit: 3069ff1930aa71e125874c780ffaa6caeda5800a
[3/4] arm64: dts: rockchip: Add eeprom vcc-supply for Radxa ROCK 3C
      commit: 260316d35cf8f8606c5ed7a349cc92e1e71d8150

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
