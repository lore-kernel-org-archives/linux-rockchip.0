Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F3A1CF6497
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 12:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZks57Bj4vnuqj6Mo0MIkRoMy3Jun0eZfn9a7rcRqlM=; b=lhy0AKmEYyVJaL
	XT2NMOwZerVZ6j6wWHVJmoPo6dwv2nefWL2nEHI0d3RgLwRWEPCOAsSxDCqs5CwS58/fOeB5W7Sks
	ngynA+E6mn/aOR0IVeXYyhwDYJUVmKa3Ww9IJ05cp0zavNPTK3u1Ii5n5wygPXRu0n2427l+F2xfk
	5qvI4wdnZr4PVFphQz2J00aUOQwCEvLOwvi4MqiSOOZ4befy9lIPl7RjpaQP0SDy8KPt+6MdQLg2x
	qXEZZhPrwZuUbNUSuIpbUNrZrLkjfa3Vi5bXx+8KLvK1SkmhxhdEIdtjCRjZ8K9l9lrWzTH1Cchxq
	fXvuO6rqzjeKki5C8/UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svFJE-0000000GzGc-292f;
	Mon, 30 Sep 2024 12:15:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svE4V-0000000GlST-23k5;
	Mon, 30 Sep 2024 10:56:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=INDTdnrCf1u784zafFghMqBMITRgyNFRnhbK4dqaT1E=; b=SpquXQY015daZBfHeG9ZJ8QhNm
	CIg3BdKnhvJ8YGF3MbXK0c6M+t1tIDXLSrkj9SNMgb/ZIDsvSFZerOQ9ZTP9byCBxGkuuQQxaq9rz
	EVF0I1KHzf0p90R8IMexqRo4k8FkiF+RCIc4LxnBQDJMuAi7p4aA7ak7TTfWsOFSrQCKBb9DEamto
	FApq5RubKIjvRetgGLxFSgfLr5Ws0ljYNvndJ5ManuPVNLUBnDv5MfUNHoQ50wDb2eCMa+RVAI9EH
	FWC2BihFWFOCd6Ruuw6/ll4WggGswPO5dCN7lDI0eZ1c4AQ6l7senK3cJhRrWIWWlNxGV2uQAmLkP
	g7R6jqSQ==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svE4G-0004Xd-MM; Mon, 30 Sep 2024 12:55:52 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Sven Peter <sven@svenpeter.dev>,
	Jacobe Zang <jacobe.zang@wesion.com>,
	Hector Martin <marcan@marcan.st>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	linux-rockchip@lists.infradead.org,
	asahi@lists.linux.dev,
	Arend van Spriel <arend.vanspriel@broadcom.com>,
	nick@khadas.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v14] arm64: dts: rockchip: Add AP6275P wireless support to Khadas Edge 2
Date: Mon, 30 Sep 2024 12:55:40 +0200
Message-ID: <172769365137.1880381.6159894918709660365.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240910-dts-v14-1-82b39bd91257@wesion.com>
References: <20240910-dts-v14-1-82b39bd91257@wesion.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_035607_559323_5A09E558 
X-CRM114-Status: GOOD (  11.11  )
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

On Tue, 10 Sep 2024 11:07:47 +0800, Jacobe Zang wrote:
> Khadas Edge2 uses the PCI-e Ampak AP6275P 2T2R Wi-Fi 6 module. The
> pcie@0 node can be used as Bridge1, so the wifi@0 node is used as a
> device under the Bridge1.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Add AP6275P wireless support to Khadas Edge 2
      commit: 44b149fe1cfb18d1b7391c4115a3385f255f9a91

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
