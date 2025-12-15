Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EA7AD5B16E
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Dec 2025 11:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8Kk1LYPEHSS9Z9IeFIA1cFL4hsXYR84cQb8LEZHO2Y=; b=fqFTM6QOeZTiPU
	izFGR5EcQRTuaG1dGFVEwN16T9gOiN88DlhavoYovCdXFN8oqNojvNMR8C3H4YuHktbBvCq2b2e8h
	JvTgFiSBgUTKAxjRluWfDMW6kAPk0ObxaAayRdUNpvZJHj8NUdk+Afn3JsoFDflQjV+klOfDPDnG7
	u71wJqpmxkCo2j+v2kHLD/K/OCQKuRwxWk8dwGPTeW3cOsejVNcq1ENdZHENGoc3H2ltLHB/iWOAG
	4e4Zzamo8S+rqNRhvl6xaA1l1Ze75yv5zrWri7rT57Ye7KVeSAAiH8Owhb+6oLjnpMfhhIC8Zl4Vn
	gIHYNQ2db6NZISVFVt7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV73F-00000003YYM-0HHt;
	Mon, 15 Dec 2025 11:47:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV73C-00000003YX9-2FX1;
	Mon, 15 Dec 2025 11:47:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=8VsYkPqVn11djoNpxIXUqfR5nF0llqUA37rnKhEinx4=; b=F/p1CudFDrVHOofWOv20shOQyS
	f0fpEFf5Fa6wJ4KVenEC6dVqcRKJ3rav/K9qlM5OGR02NhAqcPHKZSqkeZ1tw3PKYAbgP0clLvzKk
	wlgCUYQ4wh59jNqetJMkzXa/T7IiRHGrrMaczWlkcG6Cici4HRw8LtN0mOMSJEDc+1aH8mo4LnHit
	2FBKXUc7WsrnhvxpErJ8m3rhJyhehz8yuc6DVnsE30myirz8/CUQkZnJiEqbSPNltUuAAOnpHQyB9
	oNOOl9Y2qTe/wH4fzWXUDNcdMHsG5aFMaRnjhnBmgtyA50aCuOHN3hFigkk0sIsUZUmtDWuGSysEs
	+UbZ1pCQ==;
Received: from [192.76.154.237] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vV739-0000On-NN; Mon, 15 Dec 2025 12:47:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexey Charkov <alchark@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add overlay for the PCIe slot on RK3576 EVB1
Date: Mon, 15 Dec 2025 12:47:30 +0100
Message-ID: <176579924021.1404176.5086927047208846310.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251202-evb1-pcie1-v2-1-810693b1b72f@gmail.com>
References: <20251202-evb1-pcie1-v2-1-810693b1b72f@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_034738_570079_EF60E4EF 
X-CRM114-Status: GOOD (  11.08  )
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


On Tue, 02 Dec 2025 13:54:31 +0400, Alexey Charkov wrote:
> Rockchip RK3576 EVB1 has an onboard PCIe slot (PCIe 2.1, x4 mechanically,
> x1 electrically), but it shares pins and PHY with the only USB3 Type-A
> port.
> 
> There is a physical switch next to the slot to transfer respective pins
> connection from the USB3 port to the PCIe slot, but apart from flipping
> the switch one must also disable the USB3 host controller to prevent it
> from claiming the PHY before the PCIe slot can become usable.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add overlay for the PCIe slot on RK3576 EVB1
      commit: 47b5d3697f6b9f53a0db30a99656a2f8f919e246

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
