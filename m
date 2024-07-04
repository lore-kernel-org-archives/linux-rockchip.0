Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4816BC30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 18:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5+rT4EOkGqnMrrzVS6IJTewm1pSAzqe+odPa6CVRem4=; b=TKcK0oekvzfD1e
	cuwhx9lmCA77BixoVvL2VUzaXx1GN3+A3VBwKIcfpspVc9y6sHdcF2OW5xsDI2mlfcmj6kLXpF5RW
	qOvfc/Qijq7FqqCFeFcXg7rHRElmiUez2mDEoDfj6IZerrIGaVMLUxr602SnXQ2/WLA5NMYbHboiI
	H68D1nzoQiHu2tusQyqIFpjmLwNAqdN0JxvCXa+8Ii78+4sifW44R8aDpo/q1gE/MOfCbTtGbjRln
	Dj+IiVZHVQhIrS6e+Ifp8vCDz/tofZrSOdZZB+ZBHIUpNjMznQ9TnmkXOq61jmEslU8xFA7GeeEw1
	c7xkahHDqQ0A5/HvqC3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPQmu-0000000E6r8-39hM;
	Thu, 04 Jul 2024 18:02:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPQlx-0000000E6QJ-0Hv8;
	Thu, 04 Jul 2024 18:01:34 +0000
Received: from i53875ac2.versanet.de ([83.135.90.194] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sPQlu-00049m-Aa; Thu, 04 Jul 2024 20:01:30 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org,
	Marek Vasut <marex@denx.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Sam Edwards <cfsworks@gmail.com>,
	kernel@dh-electronics.com,
	Dmitry Yashin <dmt.yashin@gmail.com>,
	devicetree@vger.kernel.org,
	andrew@lunn.ch,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>,
	kernel test robot <lkp@intel.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Alexey Charkov <alchark@gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: Drop ethernet-phy-ieee802.3-c22 from PHY compatible string on edgeble-neu2
Date: Thu,  4 Jul 2024 20:01:26 +0200
Message-Id: <172011606368.897267.15049642504598741819.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240630034910.173552-1-marex@denx.de>
References: <20240630034910.173552-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_110133_158507_44E21C7B 
X-CRM114-Status: GOOD (  10.51  )
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

On Sun, 30 Jun 2024 05:48:41 +0200, Marek Vasut wrote:
> The rtl82xx DT bindings do not require ethernet-phy-ieee802.3-c22
> as the fallback compatible string. There are fewer users of the
> Realtek PHY compatible string with fallback compatible string than
> there are users without fallback compatible string, so drop the
> fallback compatible string from the few remaining users:
> 
> $ git grep -ho ethernet-phy-id001c....... | sort | uniq -c
>       1 ethernet-phy-id001c.c816",
>       2 ethernet-phy-id001c.c915",
>       2 ethernet-phy-id001c.c915";
>       5 ethernet-phy-id001c.c916",
>      13 ethernet-phy-id001c.c916";
> 
> [...]

Applied, thanks!

[1/2] ARM: dts: rockchip: Drop ethernet-phy-ieee802.3-c22 from PHY compatible string on edgeble-neu2
      commit: 9c29e5d7a2d1d91c29976c0c8aa7f42780e4a254
[2/2] arm64: dts: rockchip: Drop ethernet-phy-ieee802.3-c22 from PHY compatible string on all RK3588 boards
      commit: 3573653dcf29a254a274b50f699af14e987b1925

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
