Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4F9CCD6E5D
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 21:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LeFn6fhs+PQN3seDLRCU6uQxKBmSOyUlttCh+xK2NKY=; b=uslD8CPQvl84Q4
	X/aRLbB9zIhcHaQEwHX9QonHzN2Gwdmq1wULHyAlhqmXfhy5mGe5SKop7PobXSNu9MUwFVbqt3SWa
	iQP3ouJANMJUPZsNa8AMW7ZMCl5YsB12GUYK1GBt0/zAsgmR4aS8xk3jEjAcieMgwN2jXFQq16i/W
	HqVs1Ee9kE+KHEhWIR348oq4/YM8CpdQDv4F14g8uo2/Wl9MiEF5rOLM8dgqEVaLN5LxHIAWashuP
	qNMtUOpJ69HBn+vj8jy51yceF1zHuVCavjej3gE6pl0bIRP3iBXilmvDqjDXeUGZUQ6vrxIFE/h3H
	IVqk0DwZj0vtTnUmHyeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUWS9-0000000DoJK-2o4p;
	Tue, 02 Jun 2026 21:15:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUWS7-0000000DoHy-15zm
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jun 2026 21:15:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=/iJeZb9oNPWz3PyEi83V5EoFNXaEIzYjGsqFLKQ9BMM=; b=FBFaxcJRQmwkFbEq2g6TCrkt+E
	p3gRcoQCeZdbKItWHJdn/9zi7Zl2u+d+28iAqh99y2HqkfjIYp5icBfHADdq/F4RKMiiuvdC2KKeL
	FFRiH1eyDyc7ziDYO2hHwc/ISSwoxIYddMz8H0x6HhSta23TYaqNltGfi863P2/7kq5WmE5nXHyiI
	dPDTNt7jn4VXeihPcKhFKB1LSKi4ng/KZgdTk7WCknNAyaZPMw1iyGcPUeIFf6IAMSFn+cKFwF53b
	2P5zEmnEHRQBqnR2c2nBT34fbw2YSLhi4TUb2XrNFXeZ3qWydMq62Pm6FPToLhYPv8788wjjIywGH
	fYP38jog==;
From: Heiko Stuebner <heiko@sntech.de>
To: Hugo Osvaldo Barrera <hugo@whynothugo.nl>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Tobias Schramm <t.schramm@manjaro.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix vcc_sdio regulator max voltage on Pinebook Pro
Date: Tue,  2 Jun 2026 23:14:57 +0200
Message-ID: <178043489362.713702.703857469309199514.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260519094439.7918-1-hugo@whynothugo.nl>
References: <20260519094439.7918-1-hugo@whynothugo.nl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_141511_299982_0688CF9A 
X-CRM114-Status: UNSURE (   9.70  )
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


On Tue, 19 May 2026 11:44:39 +0200, Hugo Osvaldo Barrera wrote:
> The vcc_sdio regulator supports 1.8V to 3.4V output range according to
> its datasheet.
> 
> The current DT incorrectly limits the max voltage to 3.0V. This limit
> causes issues issues downstream with u-boot, which refuses to apply the
> out-of range value, and falls back to the minimum in that range: 1.8V.
> This is insufficient to power the SD card, so driver initialisation
> fails and booting from it does not work.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix vcc_sdio regulator max voltage on Pinebook Pro
      commit: 8545eda00fdf3d7e17933ce0f706d005b1bad42d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
