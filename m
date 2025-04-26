Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FE18C369DE
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Apr 2025 23:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/cg0VUA8UdoybQBwgC3nLoxq/8LoJgLebT3STPK81+E=; b=RI1kzGRO8ZQCU2
	1r6+1wP0oqETvVXAsKTdttQUxWxGzlQ9kAdYqF5ZonTZUPXKg2OOmwlZn67ZS+UwSYyf6H4POQPz8
	ScEIkZibr7KScRJDvDZj0LytUpK2Wm+7mtDFcM1yznMCP1MPXBi8kG/VfXc/ueX1kZKcwjtPpSANF
	hJ+3q30194Ws5nYe7gKfGKJ1vnBOwLxq/Pqf2pA9YGOrQpKx0TLGWxTBDgL+X4aabzdB8KFp55fTH
	KpAg/wppXbVk3gRVUzHqN+R6J+yJl0h9u/HlbCSanddvDPT20O8fsCyk/pMt/q5G/QHM2+SPAlUFa
	UZ8kOuSobr29yDRbt2hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8ocZ-00000002btK-1Jvz;
	Sat, 26 Apr 2025 23:07:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8nQ4-00000002Xy9-3L7D
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Apr 2025 21:50:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=XA/wGLhhTW1BEfPqzujVBmnmfC2XvWGsoDDNqEoe3yE=; b=GY3VK8rBwdPybz6McDLui63KJd
	bVMULZMvV09jFS8waMEDGWBCd8y+fWVfdTBTiBmCxDFbn356fh3+P4FGuLq46OGiLelXeXRYF3qhS
	Dycl5cuTssVH0VqEXjeu3q2H5lk4TQfn+z37SWM7MkaCyF83qyj1GooRSxlDaj3qL6cO8J0gFPo1c
	DRpAMKTHP2YM3AN/y1H2RWdEIZqX0MRyfKSRT8D3ZekDnx5nIQnPvzSWod92MTrYbcEHr9mVFQAwD
	TK+jvZ/irw1jayWXAuVahWLUbdUtqWoINtwh9IsX7xpLufY1HTa1usK7t0yA544tqsjlXsgHb62ZU
	OoRCXzAw==;
Received: from i53875aba.versanet.de ([83.135.90.186] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u8nLw-0001OR-69; Sat, 26 Apr 2025 23:46:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add pcie1 slot for rk3576 evb1 board
Date: Sat, 26 Apr 2025 23:46:18 +0200
Message-ID: <174570370116.31943.13804229850326974495.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <1745371359-30443-1-git-send-email-shawn.lin@rock-chips.com>
References: <1745371359-30443-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250426_145044_832624_19558500 
X-CRM114-Status: GOOD (  10.89  )
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


On Wed, 23 Apr 2025 09:22:39 +0800, Shawn Lin wrote:
> PCIe1 and usb_drd1_dwc3 is sharing the same PHY on RK3576 platform.
> For pcie1 slot and USB interface, there is a swich IC labelled as
> Dial_Switch_1 on evb1 board. If we need to make pcie1 slot work for this
> board, we should first disable usb_drd1_dwc3 and then set Dial_Switch_1
> to low state.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add pcie1 slot for rk3576 evb1 board
      commit: be4ff56f7cd637dd5276444c42aebf295739ae27

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
