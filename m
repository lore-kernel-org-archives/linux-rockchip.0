Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57693C53200
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 15:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90JLxvAtHZic8FPXgE0t+9f2FOEL6/11N/kRnI7DzRY=; b=Nhorq/Z5IHJAnz
	EOApw/zDYPPo2vD27ffd3bCTbfYpbg82mTwwkGnx0QyQlo/tEng6BbXwzW+EbRFMKGDkHUN2NLSJe
	zk+wY8HUGP5FtuHLbm7xGmbTCpkEFAK/CPEt4Y1hOwhV65AkoVgMGVK2aT4dySbx3cHNRX1OpgmwF
	YyrgJF/U4jcyrNpMGcylsEGjsah6wGsjdSmrM0NHBuuj8ixfrPMivj5PTha3VEcvXE0UkVKerPTXz
	nI/pG5jxJWDqqqZrwqNDNwSSt+uBild4SyuxyMM3fa8T6bXQydI+GKvIqGF6HNGzy8aLmpeCzf9gN
	V+Gs6SzXIPoUtsackNKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp6gq-00000008TOG-03lr;
	Wed, 29 Jul 2026 15:59:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp6gc-00000008TJX-3Hel;
	Wed, 29 Jul 2026 15:59:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=WAOkuKHh4i27fZlcKLTUTuoCivUIxiHgWWdSP/PcVS8=; b=vjjU9MFnB2GtzB3AMnY8AvVLUa
	RYLVe0Qp667C05LqdiimUIdH+rFI+UaLksm9aonb6Qgu5fzeMnKgoMPEXU4Sk4QG96ZVbO9zJf6lG
	66Jgv3cqdrevzCLE4f7gC5eNyFWyjGZLat1sNWnXwhH2PLg5CoaoC+nHXXvd25BVD4kT64smm21W7
	l5+rYPbRLiom4IkPZrZC2BXtBASBTmJ50lcYJs1aXbaoBYnqn/bxKrzqx6UeX/LCinQGorDsKn/Qg
	yjVwJW1PYyRylYgcISICcViBQMGhxhe7yZI9ObxGcU4+FGhsNd34qRKpdCqcCrUsJdObL8wGkxeSH
	D2P96hHw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add CSI-2 bus type to ROCK 5B+ camera overlays
Date: Wed, 29 Jul 2026 17:59:02 +0200
Message-ID: <178534073340.533990.8162754549907499267.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260727174007.2581714-1-festevam@gmail.com>
References: <20260727174007.2581714-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_085914_832382_6C165602 
X-CRM114-Status: GOOD (  11.42  )
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


On Mon, 27 Jul 2026 14:40:07 -0300, Fabio Estevam wrote:
> The Rockchip RK3568 MIPI CSI-2 receiver binding requires the bus-type
> property in its input endpoint.
> 
> Specify that the Radxa CAM4K modules connected to CSI2 and CSI4 use a
> MIPI CSI-2 D-PHY bus. This fixes the following dtbs_check warning:
> 
> endpoint: 'bus-type' is a required property
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add CSI-2 bus type to ROCK 5B+ camera overlays
      commit: fe67191030089b2653837489328ee2d18acaa149

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
