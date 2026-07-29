Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFDC3C53219
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 15:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vvr5YU1IQ/kw4A5y3JuK+rX+iYGKnojFBgzXgDZ9gjo=; b=cOKB+ZOLRDYYf3
	GO5J8oK+/BskzebEgUCoyJtlRL0jN2YjKWnpqQ3CE6++wl8A/XVNx2owd8cjHNCtOFR+jppwYOOXO
	g7tnHc/CesDFKesovgn6ZOCU+bGWAwe7Kx34eBf+RA/UDH/kozwgcwUvoOFc7jhQFLSWWM8KCW2s/
	0JDfDc2hON62ZcwzjKX7lSC7XO20Y3Cogtlx7yeldAnVvgRckbXQw+FVNMwcWHpqGG+lFoH3ZVDf7
	K0Mf3GKAm7H3h55h2UCmVioeR5T9Ls7Iuv4pMJ2UIDPlcBD7GP8qDSViLU4nLeoNsWacPzZCGFF+Y
	BT5/BCWJfPAV7aYZ91ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp6gb-00000008TJg-3eHx;
	Wed, 29 Jul 2026 15:59:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp6ga-00000008TIY-0G9P;
	Wed, 29 Jul 2026 15:59:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=opJFIr+DqIwybOpicZ49d5YUTu7nDbtYSMfx7eDXb7s=; b=WI3buro23khtexlX1rIbPyKj23
	BlFulK++Qhs4WD/2r7GwIrg0HphTe2IrHXxRe2jme36nsrKmL1nVgBzV42X9snuKMSy6DazmU07ir
	6yqtrmHUIWpf6hxHQyDnXQu7a66fHrSJHSNbJXBoOyAtER8wdeV2NS3kFEDcjC4P0YUXOdXZu4fVi
	3dcjg3Fahw+GUSvjNDLXjIP0Cu2VfzTjYLAGsw3l+LLPKfzlmUO5qOTPsnAnbQL8uGTQyuWoSFKzg
	dwdMppgX5XOnlCOR/n1h/4AZydmJsTrwb2jUWpYOvdTUEYjIEn+4MVIvoDG7m1KVZzp4hu42/JJRF
	4bBn7uRg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>,
	stable@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Fix rk3399-roc-pc-plus analog audio
Date: Wed, 29 Jul 2026 17:59:01 +0200
Message-ID: <178534073342.533990.16123229159963490732.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260717010736.578419-1-festevam@gmail.com>
References: <20260717010736.578419-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_085912_143033_D904E843 
X-CRM114-Status: UNSURE (   8.29  )
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


On Thu, 16 Jul 2026 22:07:34 -0300, Fabio Estevam wrote:
> The ES8388 sound card on the rk3399-roc-pc-plus fails to probe because
> i2s1 cannot claim its MCLK pin:
> 
> pinctrl: pin gpio4-0 already requested by ff880000.i2s; cannot claim for ff890000.i2s
> pinctrl: error -EINVAL: pin-128 (ff890000.i2s)
> pinctrl: error -EINVAL: could not request pin 128 (gpio4-0) from group i2s-8ch-mclk-pin
> on device rockchip-pinctrl
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: Fix rk3399-roc-pc-plus analog audio
      commit: 4f7259ebe1eba4778768a4f5a0bbbe439d10f3f3
[2/3] arm64: dts: rockchip: Enable wireless on rk3399-roc-pc-plus
      commit: 2dfc88c13fb2db7f17c55f16b679cdfe4ded19c5
[3/3] arm64: dts: rockchip: Keep rk3399-roc-pc-plus work LED on
      commit: b2007873ddfff223bb680c7ff60eaf675670f07a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
