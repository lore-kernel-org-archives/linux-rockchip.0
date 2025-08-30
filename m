Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43553CA0FFD
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Aug 2025 13:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J6mp4JTe1zSaRhhYn5cd1UolXgaocSEtUbijvuD/yxY=; b=Mt1ezh5ya6ZEZP
	PF3XqPYvU1kwj0OzdpKnpnL67k4DBG+zFzEKI0jY5YkPeKoAVj6mj5RS9ZJIcV1DOKUsibJdRAWLy
	oA/65JO6T/VNROnlv9+Yense0AW2nSvwNYU2zg19JNOEFh1B3rSO/09z2cdfDraVBRx/Qh9Oq6MuT
	K1wqA3a0Ngh+VftgtTWRnYJcdJssy6Ygp+5Ib+oKms0D+Cm3/yNUoYLF3emYnTOGmK5rwBV+TW5Rg
	VNmyvNjpTv509rmZJ7sRBCd2VAriEGsx6ZW96xbZ1PU3sJJJpKqqyj7xqajI9pqDbYMxBhpM7u6l7
	DIQzoolidyiGNwukscLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usLQh-00000007v1Y-3rxQ;
	Sat, 30 Aug 2025 13:15:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usL9i-00000007t2J-12bA;
	Sat, 30 Aug 2025 12:58:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=6Yab2QYSQioLjW07dBEfvQXsxs75hrGlncclPnBVlOE=; b=MCO/SKuHraOTO9oshIGbh7VLKj
	ekirWjqz5oFNJcK6b1yN+mquhjWrrqyMYLok9rZec7kkj++iLct6oWY72lFBjCmW1gxDoMxdA3Skd
	PA1U17u7sg6ywKizboTT+8AggXwitfB7OvU9p7HW7eiTxaHHy3dsI6/rXf76TEoMC3AKhjTCXMFgL
	+bYJbIyxg6HL3DBfAQGXwNs017mW5MMS1BYuj8drwP0/L3ABWTyT2ue9Ll9TNi4/EVdTyJaioVgPf
	l90RoY+yDf+eWZH9xGxNLXpH05DFxczwf+6VTfc01Se0kBv5GHAENkbGhETsFTLrQIGLFQMziLE0s
	/lI45k+A==;
Received: from [77.241.232.9] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1usL9f-0007bC-Ok; Sat, 30 Aug 2025 14:58:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Christian Hewitt <christianshewitt@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Alex Bee <knaerzche@gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: add HDMI audio to rk3288-miqi
Date: Sat, 30 Aug 2025 14:57:55 +0200
Message-ID: <175655867260.3578496.11571731070517001514.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250828163501.3829226-1-christianshewitt@gmail.com>
References: <20250828163501.3829226-1-christianshewitt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_055806_284538_DA756AF7 
X-CRM114-Status: GOOD (  10.32  )
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


On Thu, 28 Aug 2025 16:35:01 +0000, Christian Hewitt wrote:
> Add the sound and i2s nodes to enable HDMI audio output on
> the MiQi board.
> 
> 

Applied, thanks!

[1/1] ARM: dts: rockchip: add HDMI audio to rk3288-miqi
      commit: 2a91dcd5be9dde3239c87e4309f5878d3e4fb9d2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
