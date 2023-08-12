Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E146C0015E
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Aug 2023 13:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=62jVok5/RYY7QaJUq9PfX+I4XY33U7tv9uSOU+RlQso=; b=KmtbjsuoWsEvqn
	3jC9sXxPtPNcW3++lGQz2P4cFMDxMoU+M0J67ZD/Ly22c1ElyMWGyrXhlIUoz95BQNheHqM5JVjLx
	O/3lwfqmaO3qZgAs8mBlScXqIRVa9jwp4voXYXoU036Gb1kf9QSXZX3jFFW98oNX5ELX5R5RKNSfz
	0LRHXOvA5B8/87PKdmiC45lRb1h5l/huiDbJzs3Wr4D901xm63v5xIUQ/teEVXkYMaB7O/r5Xaaej
	MNaw5anHJyocIZkL0H7o8TMX9nRSzmUe7DaVvMBySjwWNd+qzxeo7/DY0NysFJfexMBQLiYy4kt+A
	0loSroZ0hDTYitD67R7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUoRc-00DSjX-1j;
	Sat, 12 Aug 2023 13:14:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUoRZ-00DSiy-2q;
	Sat, 12 Aug 2023 13:14:15 +0000
Received: from i53875bbf.versanet.de ([83.135.91.191] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qUoRP-0000b3-8a; Sat, 12 Aug 2023 15:14:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	John Clark <inindev@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Thomas McKahan <tmckahan@singleboardsolutions.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add NanoPC T6 PCIe Ethernet support
Date: Sat, 12 Aug 2023 15:14:01 +0200
Message-Id: <169184603348.3627333.6842996434798614328.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230810003156.22123-1-inindev@gmail.com>
References: <20230810003156.22123-1-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230812_061413_944574_1E2A1B6B 
X-CRM114-Status: UNSURE (   8.85  )
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

On Thu, 10 Aug 2023 00:31:56 +0000, John Clark wrote:
> Device tree entries for PCIe 2.5G Ethernet NICs
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Add NanoPC T6 PCIe Ethernet support
      commit: a721e28dfad2dec895a5aada85fb0fac0223e2d2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
