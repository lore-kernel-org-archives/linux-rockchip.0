Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7926CD98FC
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 23:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbvZsboDBQHlAWXxDlGKXK+L2nlQgDTowGQmZWrJhk4=; b=nt17p2bUhOyM95
	D5r+13Gfu398087HJy7ltOkDiD2ZBCMC6EdIjwiSURJ8bkiZBHqnCuJ8NHOIFsBHAuSRXmuSAPsAX
	eqBanqaVctDxu+3uniz4BuEmxUt+qvSwKFxta7xo9z3xQqRB9TUz72l0qz8YTh1pZXsANv2yYtwq6
	lLdt79/fTm1biRqy0VozPh+1qtk+btXzQjLDbTn5HjzrlIwVYsTnajecwkke1SP4l7T1ERIQqPXtB
	LLDuhNeeTZiZj6FHUit2fxVBvkAxnS8iso1S59TbPwZq2Srfh7bap7HrebLAZVx2tjRmQlK0EbRKo
	CWNAcP8GyOuyLoGwc9cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJgNT-0000000BEUj-31WW;
	Thu, 13 Nov 2025 23:05:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJgN6-0000000BEJe-3jpc
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 23:04:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ZJCp3P0F4Jj0K3+/vv6V9OliuL+KNxuUlmKGEYBzIeY=; b=wONSgeB7byNxYEkgaoMudJUvqR
	uEsyYNyzlJrfKhPlK8vtLsIGEQnYc0oKqpnbtpTuKSiWfA82LiAA4BDTf1iiLsUblARDcanBBMobI
	1GmPo+nhfmKDHJZl7cDj7ynpGteqJEZc3JNuWm5ZoGwxJCZYEg2VZpwy32hy9ZgaFnmG2a7PZKLni
	zD5zBxvO4PcpB0kTTsQYBk+s3FhD/TCiX0cPEqFOf+QVQzNZHlw295QO8YbBtXlecZdR0nfHsfT/i
	poQ+ynihZvDaMM8tlUaKdXB/YhQj1ldo2iEjuP4MpU8u4E3ChuDf+QtbTw9OzLSnlkTQHsBQb0Nm6
	6nmZgA6A==;
Received: from i53875a11.versanet.de ([83.135.90.17] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vJgMn-0005bo-1O; Fri, 14 Nov 2025 00:04:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	liujianfeng1994@gmail.com,
	dmitry.baryshkov@oss.qualcomm.com,
	sebastian.reichel@collabora.com,
	andy.yan@rock-chips.com,
	nicolas.frattaroli@collabora.com,
	dmitry.osipenko@collabora.com,
	detlev.casanova@collabora.com,
	didi.debian@cknow.org,
	damon.ding@rock-chips.com,
	jbx6244@gmail.com,
	kylepzak@projectinitiative.io,
	dsimic@manjaro.org,
	alchark@gmail.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 0/3] Fixes and improvements to sdmmc descriptions for Radxa ROCK 5 ITX/5B/5B+/5T/5A/5C
Date: Fri, 14 Nov 2025 00:04:28 +0100
Message-ID: <176307502893.495066.1213119327156938500.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251111071730.126238-1-naoki@radxa.com>
References: <20251111071730.126238-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_150458_851122_2C508039 
X-CRM114-Status: UNSURE (   9.89  )
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


On Tue, 11 Nov 2025 07:17:27 +0000, FUKAUMI Naoki wrote:
> This patch series fixes microSD card detection for ROCK 5 ITX/5C and
> improves sdmmc properties for ROCK 5 ITX/5B/5B+/5T/5A/5C.
> 
> FUKAUMI Naoki (3):
>   arm64: dts: rockchip: Fix microSD card detect for Radxa ROCK 5 ITX/5C
>   arm64: dts: rockchip: Add sdmmc pinctrl for Radxa ROCK 5
>     ITX/5B/5B+/5T/5C
>   arm64: dts: rockchip: Remove sdmmc max-frequency for Radxa ROCK 5
>     ITX/5B/5B+/5T
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: Fix microSD card detect for Radxa ROCK 5 ITX/5C
      commit: c7a9549ce46e7422e96e2b677ab578b32b3eef25
[2/3] arm64: dts: rockchip: Add sdmmc pinctrl for Radxa ROCK 5 ITX/5B/5B+/5T/5C
      --> merged into patch1 ... property and pinctrl should be in the same patch

[3/3] arm64: dts: rockchip: Remove sdmmc max-frequency for Radxa ROCK 5 ITX/5B/5B+/5T
      commit: 57bd160290f39ee90bc51b4daa224b481d726480

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
