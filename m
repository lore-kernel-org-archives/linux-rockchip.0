Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7113C30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 19:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IA1AHD2oMVJlpT8aIDGQmQJ+Bu8m0xuoJvDm2TZKacA=; b=hwotuz3v99G9fo
	F7QSwsYDn/dXe5r57BJGMEU7pfU8QppA0h9NDuNjXDxQW4rag09NmDtkORmwPjWqAVNzJrJo5orft
	BARae2eekBugPWx5P8jRWS494XVZHU7CH5vNFC1v+ZhlPe0mThzHmp72dsIyjx/BTguKLqdbhWuh6
	q1gJcQJalD/SuK4Eittq7CKqHByMdiHV8mxZRKh/OdhE8gpPhjU3ezvEukWHG69Js480fg7lPLFl2
	JEowZBI8cv+V7f6ZUprB+ayIbE+tghTWv8ogMzSa00ouj1HLS7IewBF1uMJQxEpad7T2sDkSFFLIE
	Owt+UMH41a94MJGP01WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPRrF-0000000EEko-2Tg0;
	Thu, 04 Jul 2024 19:11:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPRrD-0000000EEkN-1zPx;
	Thu, 04 Jul 2024 19:11:04 +0000
Received: from i53875ac2.versanet.de ([83.135.90.194] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sPRr5-0005yl-2S; Thu, 04 Jul 2024 21:10:55 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/9] arm64: dts: rockchip: fixes support for Lunzn Fastrhino R6xS
Date: Thu,  4 Jul 2024 21:10:53 +0200
Message-Id: <172012023331.904079.9875958937623810307.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240630150010.55729-1-amadeus@jmu.edu.cn>
References: <20240630150010.55729-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_121103_537600_CA8CBD8C 
X-CRM114-Status: UNSURE (   9.02  )
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

On Sun, 30 Jun 2024 23:00:01 +0800, Chukun Pan wrote:
> Changes in v2:
>   Separate commits for regulator and supply changes
>   Separate commits for R68S Ethernet PHY changes
> 
> Chukun Pan (9):
>   arm64: dts: rockchip: fix regulator name for Lunzn Fastrhino R6xS
>   arm64: dts: rockchip: fix usb regulator for Lunzn Fastrhino R6xS
>   arm64: dts: rockchip: fix pmu_io supply for Lunzn Fastrhino R6xS
>   arm64: dts: rockchip: remove unused usb2 nodes for Lunzn Fastrhino
>     R6xS
>   arm64: dts: rockchip: disable display subsystem for Lunzn Fastrhino
>     R6xS
>   arm64: dts: rockchip: fixes PHY reset for Lunzn Fastrhino R68S
>   arm64: dts: rockchip: use generic Ethernet PHY reset bindings for
>     Lunzn Fastrhino R68S
>   arm64: dts: rockchip: remove useless tx/rx_delay for Lunzn Fastrhino
>     R68S
>   arm64: dts: rockchip: Enable UHS-I SDR-50 for Lunzn FastRhino R66S
> 
> [...]

Applied, thanks!

[1/9] arm64: dts: rockchip: fix regulator name for Lunzn Fastrhino R6xS
      commit: 2dad31528de9ea8b05245ce6ac4f76ebf8dae947
[2/9] arm64: dts: rockchip: fix usb regulator for Lunzn Fastrhino R6xS
      commit: 9e823ba92118510c0d1c050b67bb000f9b9a73d7
[3/9] arm64: dts: rockchip: fix pmu_io supply for Lunzn Fastrhino R6xS
      commit: cfeac8e5d05815521f5c5568680735a92ee91fe4
[4/9] arm64: dts: rockchip: remove unused usb2 nodes for Lunzn Fastrhino R6xS
      commit: cd77139a307fbabe75e6b5cb8a3753e3c700f394
[5/9] arm64: dts: rockchip: disable display subsystem for Lunzn Fastrhino R6xS
      commit: 2bf5d445df2ec89689d15ea259a916260c936959
[6/9] arm64: dts: rockchip: fixes PHY reset for Lunzn Fastrhino R68S
      commit: e261bd74000ca80e5483ba8a8bda509de8cbe7fd

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
