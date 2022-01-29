Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57A7AC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jan 2022 17:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ccZnMFCTLBLNU58MR5ItgnsOsD4cbZoot+xp1/QF6Cw=; b=wDX/9akDfI3HR9
	8x89ir0OevoBEnOVLtt9jpAhTyL7MIe9lDjxZ4x0Pha9o6lFmy/Mrh67Aawqb7kzm9v75mRajkJz2
	xLF1RH1b0uW2LwWeWke50Sx7TFy4ahF2CaFZUim/9Uf442e/EILUb2/H2upqcOfgIFylH7bxfj/E3
	KDbU7802neiduc9WduBSaPX/MSCu6C6QZH61l6CxjsLoUp44bvC8/W90f/yG5nupS/tpghlDH9M5i
	8TpFlWGsfIs4Ri7XDFRstCZZmXoz+vq5p6nHAEHVhnffqQijOVW6uOwjgWWeTR+aglPtsOTgAoPJc
	My916Yq8iQX3NgtqY27Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDryo-005CKx-LC; Sat, 29 Jan 2022 17:57:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDryk-005CHe-6L; Sat, 29 Jan 2022 17:57:39 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nDryi-0005eg-Pg; Sat, 29 Jan 2022 18:57:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Liang Chen <cl@rock-chips.com>, sha@pengutronix.de
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: fix vcc3v3_lcd{0,
 1}_n regulators in rk3568-evb1-10
Date: Sat, 29 Jan 2022 18:57:38 +0100
Message-Id: <164347899463.1472860.17650444631712126787.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220129162440.5415-1-michael.riesch@wolfvision.net>
References: <20220129162440.5415-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220129_095738_272562_1FBF1E9D 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Sat, 29 Jan 2022 17:24:39 +0100, Michael Riesch wrote:
> The voltages VCC3V3_LCD{0,1} can be enabled with the pins GPIO0_C7 and
> GPIO0_C5, respectively. This patch modifies the device tree in order to
> reflect this.

Applied, thanks!

[1/2] arm64: dts: rockchip: fix vcc3v3_lcd{0,1}_n regulators in rk3568-evb1-10
      commit: 9ade1ab4d85f5fc31a5d6cf5147702ed5c1b5b10
[2/2] arm64: dts: rockchip: add the touchscreen controller to rk3568-evb1-v10
      commit: 922237a6c211d9fe46b5dfb56307872cdced386d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
