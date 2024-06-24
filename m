Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 105DAC2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 16:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ef8TX2MjgCyE84Z+SYC9gKMdVo2tIO/Twnuh+/WyEqo=; b=fV4g+NDr1FRvl0
	vw/vGvVtfoSyGA3HbWfTMiJvJXGBr8eUAJTEjaeFyKAYZZZ3m+PJDtpZlCVQjhO75XuzGJURt8VPA
	qJ3oJZ9zMAIzwbEzoaLRRMZuKgQTVH/ff8qrHVQL0966QpXfoeIzMyKfhlUozTpF7UgvZ7QDK4um8
	F3TYrJu9jp3SBqrCc/UEdEXb9Twi0Q2jPmKemHUfMGUZBe471k7kGdRhPX1HOPf6/X6lzki2lBYwu
	jiEb9UmNsu3u+llHk1bVoOXEa/MWDpoKZsDLRctOI1CN2AgGJO92AB5XYcbiXpTL09FwJ/Dpdjcpd
	vz1M4ftky6klcBlj76uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmRS-0000000HT8G-0a1V;
	Mon, 24 Jun 2024 16:21:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmQn-0000000HSeI-35Ct
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Jun 2024 16:20:40 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLmQb-0001wn-4I; Mon, 24 Jun 2024 18:20:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	amadeus@jmu.edu.cn,
	devicetree@vger.kernel.org,
	chris.obbard@collabora.com,
	robh@kernel.org,
	linux-rockchip@lists.infradead.org,
	sebastian.reichel@collabora.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: add SFC support for Radxa ROCK 5B
Date: Mon, 24 Jun 2024 18:20:17 +0200
Message-Id: <171924573794.612064.15648078664530727010.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240623023329.1044-1-naoki@radxa.com>
References: <20240623023329.1044-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_092037_944550_D0931FB6 
X-CRM114-Status: UNSURE (   8.49  )
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

On Sun, 23 Jun 2024 11:33:27 +0900, FUKAUMI Naoki wrote:
> This commit adds support for SPI NOR flash on Radxa ROCK 5B.
> 
> SPI NOR flash chip may vary, so use safe(lowest) spi-max-frequency.
> 
> 

Applied, thanks!

[1/3] arm64: dts: rockchip: add SFC support for Radxa ROCK 5B
      commit: 9204a7ecca96403ee3d61c14cb9eb87ec89b0fcd
[2/3] arm64: dts: rockchip: add (but disabled) SFC node for Radxa ROCK 5A
      commit: 00224650dd45e166ea6eb1593f5f064583963ccf
[3/3] arm64: dts: rockchip: change spi-max-frequency for Radxa ROCK 3C
      commit: 06f6dd4d607766a527e37529f2f3f90dd1464293

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
