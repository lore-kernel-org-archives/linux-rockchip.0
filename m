Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54473C3601E
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 15:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Q6OvK3SNEJE5cWaPTiDyDfwEwn0/eMTtPs8sArrCb4=; b=aAtFMIUcPpPRHU
	97sweFPMRgIwfZm1F+iBUyBbFFUotwzf0Smvj2LbkjdM5E4CJLwq8Cj+/o9bl/XHeHCXnq3qUbE7Y
	DT1XFyAjQlBneHFp+7baz2phkXoLfOAQmnx3yxcCpkj1ywyyKORpO1JeSBkfSGCMQMRyB3+Ws0IYn
	4+qBkrgSeGOkhROtQK43Ch5QNt8oHRXgmVQcqEwLjxWRpJrTz4KpqM91WfuRdjYRbRikRH1pvsQOO
	U20R4L4Aif3NoPcpkoi67eTf213BY5LG+4shXHB04SmhZAhocMAGv9UY7zuVWZ9Mxp2mHKkKGIxO8
	DaCGNDAcRz7gcvohR16g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2u4z-0000000B4MR-1P78;
	Thu, 10 Apr 2025 15:44:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2tGq-0000000AuhE-3ybJ;
	Thu, 10 Apr 2025 14:52:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=iJn1Z7AeBAcITUdgwhks/NDpv6LzzL6aEB2Wcwj5P0w=; b=OOTLB+eySxaxv1N/Fd+RNdDn+P
	8GAqxc+mODU9q7jz+BIuda8002f4DXr8yTJGg9RF3S7xHpg4J3RU3DfKSM0dJKP5b/8NLfh80/vpC
	w6YcIo37ZsM/GVU7wsjN5pu+1XIFFER7pa9Hnd3svWenXbSceNSStB2JAvBWG+5R685+ekn4/k6rG
	/tMb9Y+1mznsSEazUbwbMuwuLRPxE89rhRf7eaXfDgZPstN0ay7AnCWVwtBSbJ1UStPXH1XhFaQSY
	PHJWGiVeyXmwlzWoqqHl9v3qRcaqnch6ijSxHMqNTEUm+K70ARIbNWJmz/bQ3su1ac7uwKbg7SG47
	zYS9g1ow==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u2tGh-00012N-98; Thu, 10 Apr 2025 16:52:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/3] arm64: dts: rockchip: Add DMA controller for RK3528
Date: Thu, 10 Apr 2025 16:52:24 +0200
Message-ID: <174429674411.910874.7341307376411610204.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250401100020.944658-1-amadeus@jmu.edu.cn>
References: <20250401100020.944658-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_075248_985954_B47172A7 
X-CRM114-Status: GOOD (  11.28  )
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


On Tue, 01 Apr 2025 18:00:17 +0800, Chukun Pan wrote:
> First commit adds missing uart3 interrupt for uart3 node.
> The next commit adds the DMA controller that can be used
> for spi and uart. And add DMA description for uart nodes.
> 
> ~# dmesg | grep dma
> [    0.103466] dma-pl330 ffd60000.dma-controller: Loaded driver for PL330 DMAC-241330
> [    0.104212] dma-pl330 ffd60000.dma-controller:       DBUFF-128x8bytes Num_Chans-8 Num_Peri-32 Num_Events-16
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: Add missing uart3 interrupt for RK3528
      commit: a37d21a9b45e47ed6bc1f94e738096c07db78a07
[2/3] arm64: dts: rockchip: Add DMA controller for RK3528
      commit: 762b1f6503340b4729bc8a5fa6a5780712012cd8
[3/3] arm64: dts: rockchip: Add UART DMA support for RK3528
      commit: ab6fcb58aedf7df1d146b47d5fedd844a7c346e2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
