Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32206F54ADA
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 17:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=td8OpX1RsGJap51H5bRc5fGWGgrGNMTsNBcdaJvY1zs=; b=Bmb4wBvv9TyPgi
	08pUQBxHihoLff3NOkb9BCeiRNoPrqEiNnuJZleR6UnF2d3NfwU/gJQ5G68qvnLF8Ra53zEJqvVND
	yO+Xm1Ra2xFipYVxpSj8KXpWZCM89HghmDCwNq2eV1XC3SRwvrhHw4l/5AhF/gL0IySt+h6Sxo5qp
	Ap5TVQv7byeE8NgpuAInAmBSl850wRpyF/8Ca9YNoi416rJcai2LDc35DWxBl9kAzw+lSoJftwwoZ
	V3Xgu02gNIIxfib1cvDl9ooeYK8LW61/kJhOwy+nCkYDsbj83gjAAtnzKZf3SU5Zxib9La+ojRvYN
	raqVohlGClFA2SS26JOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w55Bg-00000001xyu-1C8f;
	Tue, 24 Mar 2026 17:05:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w55Bd-00000001xyD-16ZE;
	Tue, 24 Mar 2026 17:05:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=pthCqzcNV07zQFAYZ2QgjDyhOkbaR/Ra0oZwRM7xAAw=; b=a/aNQTwezhKlWZD4weZalk1vX0
	Q4pmjertPTAXfiaM5E2huZ3OSJHo0Zl7zSXBmvjvPJl10XsjBL5a66qi8e22sg+8aanLEJIyBCNK+
	tYAUn/9I8mlHI0IrYfd8b0rvseZlsz0c9k12rpqaf80qqlxTS/HjXppkZ+5A6JLWnKrGoDF3mNnHv
	A6i3tgofkYFKl+SaMyoM/tAvZOcaG/x+y5asuG0VXRy9/dAznoXD1Ltwas1+AE33aPGaZQGg7hRem
	vNP2nnCQLBwx5xRAhZYHLOpm06JufznjjYNntKNELNJ+eTF66FeBwQLc5rc7FQgXimJYt+rb4UkP6
	rgP/qrrw==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	MidG971 <midgy971@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	shawn.lin@rock-chips.com,
	jonas@kwiboo.se,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v5] arm64: dts: rockchip: rock-3b: Model PI6C20100 as gated-fixed-clock
Date: Tue, 24 Mar 2026 18:04:52 +0100
Message-ID: <177437177535.786081.7519498810130807269.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260320094441.128263-1-midgy971@gmail.com>
References: <20260320094441.128263-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_100501_323993_C11D789A 
X-CRM114-Status: GOOD (  11.69  )
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


On Fri, 20 Mar 2026 10:44:41 +0100, MidG971 wrote:
> The Radxa ROCK 3B uses a PI6C20100 PCIe reference clock buffer to
> provide a 100MHz reference clock to the PCIe 3.0 PHY and controllers.
> This chip is currently modeled only as a fixed regulator
> (vcc3v3_pi6c_03), with no clock output representation.
> 
> The PI6C20100 is a clock generator, not a power supply. Model it
> properly as a gated-fixed-clock, following the pattern established
> for the Rock 5 ITX and other boards with similar PCIe clock buffer
> chips.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rock-3b: Model PI6C20100 as gated-fixed-clock
      commit: b61f3c69c87b5f061194f413d810723698534b02

As I somehow expected, that AI messed up ;-) .

In the 2nd part of the patch the reported number of lines
in the header (the 15 there) does not match the number of lines
in the diff itself (14). I've fixed that up to not have another
round.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
