Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7637C83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 11:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dRg6VzdNCyGZqW8vhX50up1zHE5YiNTaOu1A+Q2mVGY=; b=FT87WAd61R7V7G
	fKLz9zEUYt8AXOd0wTzfyRNqswctYldt3MgfD7GVbo+OrD0wM7tam6jrBZ2BsMA77toqT2Fmr62AT
	6ppOFR3EjpfPTH0EfkdBIPc4Lr4vtOmUc9FrVXgW66b4lvhmyqUp1P+hXEdIJLEqtaZRIdwnlx8C8
	Eo7faIeXk6YeLqikxB5g6KuD85DkgUViQX+FSlSam+HsVvwKo7s9+YWGR+fhMgQqWm5bv1MmsnN4L
	VpAgg9FKIwtegh289xfxxWIYTAkLVlPjzygVOw5n2QaKTKdS7TLWIRK9PBkxq9qoDDSBQzoAsQetq
	CAs9olSwWeuUapAUPAnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZp8j-0000000BaOv-45jX;
	Thu, 10 Jul 2025 11:08:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZnYs-0000000BLAs-2OI6;
	Thu, 10 Jul 2025 09:27:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=5vSGc0XS20ndRTI136paKCdzFVWpVDVpMzjDJYUp3xw=; b=VCHMzfklKqVGO6A6kccHu7JSQ+
	RQkNJ1UP43TDfj82KC1v2hjnQ6E0zxf6DTunKCMLgAbENddhAtIl/hxeeKO4eLwPXqgyC7eA70BME
	IT/d/NH8jugKdUDPWYBcvXh0RY+cgwxBNcz9z2OCYrmN+EcEtUzOeTgWGVdH67jWsMimzrDnMP7tY
	sDFNoCNejJWDIemrKAWxQ22+5GtKHxCeom/WwmN+HO6erpoyNK0kBh5uSlzSuEcjJzLAMQp552w/5
	aIsGQIoUsQgzrY1T8IZKYWwoCDV4Tuc91BW6HvwrSiliD4jI+oKIdsHczBF5Gc6+XTl+UwLngyb0i
	8+PlI63w==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uZnYp-0003fo-33; Thu, 10 Jul 2025 11:27:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix PHY handling for ROCK 4D
Date: Thu, 10 Jul 2025 11:27:18 +0200
Message-ID: <175213962000.1887379.7289714383827183619.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250704-rk3576-rock4d-phy-handling-fixes-v1-1-1d64130c4139@kernel.org>
References: <20250704-rk3576-rock4d-phy-handling-fixes-v1-1-1d64130c4139@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_022726_626454_D85290F6 
X-CRM114-Status: GOOD (  15.64  )
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


On Fri, 04 Jul 2025 19:31:59 +0200, Sebastian Reichel wrote:
> Old revisions of the ROCK 4D board have a dedicated crystal to
> supply the RTL8211F PHY's 25MHz clock input. At least some newer
> revisions instead use REFCLKO25M_GMAC0_OUT. The DT already has
> this half-prepared, but there are some issues:
> 
> 1. The DT relies on auto-selecting the right PHY driver, which
>    requires that it works good enough to read the ID registers.
>    This does not work without the clock, which is handled by
>    the PHY driver. By updating the compatible to contain the
>    RTL8211F IDs, so that the operating system can choose the
>    right PHY driver without relying on a pre-powered PHY.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix PHY handling for ROCK 4D
      commit: cd803da7c033e376a66793a43ee98e136bc6cc25

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
