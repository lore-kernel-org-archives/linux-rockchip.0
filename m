Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D15E4CA5FC4
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2026 22:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ag1mwGtPeQGrjSmLCuYknkhSlXcRZ4tt6o2zyj0FFkE=; b=rlR+xsgOouKygz
	kKxYNcqZ02hiOYvAyYRKY/LJf5OCY7abubKxVOwY2MNpHs91Cb3fqh7qD0czqh+xlqf331V0LKd8X
	Yuy6smTdLeIE3nPBzquU6T2P6DGGZEz6EIOC8gpKxFFo0eRZjz/GjBWuG8yZBaKxdLTWbAYzmPONc
	IEW/DLO6zas20ie5ZxB89vIdUXKws5MWEFw5dBbfxXbNUiTggrOsE7bvuAwtOlHUt38k8qgXw651q
	yr12S0KjX83zff9iz8eyUQY9FF4pPGlvm+mc5ho4fBCvoCQ4IaLRbABBmef3AzZmpVQkvezOio7EV
	lH63oaZq8k4PCwBvbXAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xC2pB-00000007N1j-21HI;
	Wed, 30 Sep 2026 22:30:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xC2p7-00000007N0p-0e3O;
	Wed, 30 Sep 2026 22:30:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=uagXdD5ciqWTaFMPdi5UdXHkMYzb1UdXrcKzNq3ujLI=; b=E3W6CVWmY+yb8nnlbSnwl2yKMK
	tLYbkZFBZeMNpQe9dh8OHn/4X5XN0oKY82AJ8Ee7CXfEj+jqI/lgc1Mcw09nhUSYatq6lzHVzFrsS
	kcgeGXg3DF/N2pd4UNAF8lXTPgR952v9CH/kUhzo1HX2DP8MZHN528WnLl8e1kTpUCuaXYYE0fjw3
	OPHkkwyiMJZLFNLa84ulcOSCGfDExKZ0D6PHcdT2PI+BbHU/lefiIJh0mgd6ylZ6haDTyFlS//fQT
	eYpKaPmJ92myblzvAU656TF/+67u0oueq0h18RKGgl0azpzsk0yd9Ffe/94IUl288r8VETclSjh8A
	M/1/+WwQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: Add MangoPi M28K
Date: Thu,  1 Oct 2026 00:30:34 +0200
Message-ID: <179080743116.2419406.13197098568454460130.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260801080018.3220034-1-amadeus@jmu.edu.cn>
References: <20260801080018.3220034-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_153049_199200_C97F036E 
X-CRM114-Status: GOOD (  12.33  )
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


On Sat, 01 Aug 2026 16:00:16 +0800, Chukun Pan wrote:
> Information about the MangoPi M28K is here: https://widora.cn/m28k
> 
> MangoPi also has a version called "M28K Pro", which replaces the
> RTL8111H with the RTL8125B.
> 
> Changes in v2:
> - Add USB 2.0 support
> - Remove merged patch
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add MangoPi M28K
      commit: 4de49bae600f265a8b214cdd33f7d018a171c007
[2/2] arm64: dts: rockchip: Add MangoPi M28K
      commit: fa932a9b632ff0d80390b940e6aabe38ac305fe1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
