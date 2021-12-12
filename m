Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CC17C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Dec 2021 12:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EO0aUt5wqxqK6g0k032m2AOC4c/06ktiAeeoxJY7LjY=; b=IcKyv3KAkCl7XG
	TfI4L/iw2QQa+XkwNFw+3bfdJv20a4oIBaqdPMXtarZeSsKG0tVUEsKEdVWVXn3QCPbtvN/Jxourv
	q7V9aYHT/p8HVKkRjjIl33gUWNdnIHRyx9lWUG7DFKSn2bacaGeJ77S2uugjGrqSPmE+3DF1Ras6L
	6DNvvRwHq2WBuFlrXNn/LJNe5oZfcqNZWQqNp+yXntJRkCwSbipitgKCdf/hIkkSOTumovFXjFMCO
	I6JrJFBmyfg9f/gXDhLd7fX8ga9Ht8InWeQZ1Iu4pzWtisLop1cvyTzmGJi70wtJbdl79LGYcIWpr
	RAS2zfgAg5xPIOxWKynQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwOAU-006Uvt-FV; Sun, 12 Dec 2021 12:41:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwOA0-006Ula-NB; Sun, 12 Dec 2021 12:41:01 +0000
Received: from ip4d17a2ab.dynamic.kabel-deutschland.de ([77.23.162.171]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mwO9w-0004Fw-1K; Sun, 12 Dec 2021 13:40:56 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/3] RK356x/Quartz64 Model A SPI
Date: Sun, 12 Dec 2021 13:40:53 +0100
Message-Id: <163931280631.2862987.5299564340042039820.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211127141910.12649-1-frattaroli.nicolas@gmail.com>
References: <20211127141910.12649-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211212_044100_796117_AC95D237 
X-CRM114-Status: UNSURE (   9.32  )
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

On Sat, 27 Nov 2021 15:19:06 +0100, Nicolas Frattaroli wrote:
> Changes in v2:
>  - sort properties in rk356x.dtsi correctly
>  - remove pinctrl-1 line from rk356x.dtsi as it refers to
>    non-mainline stuff
> 
> Original cover letter:
> 
> [...]

Applied, thanks!

[2/3] arm64: dts: rockchip: Add spi nodes on rk356x
      commit: aaa552d84580e9213d0e2bf0f9243477d1227bdd
[3/3] arm64: dts: rockchip: Add spi1 pins on Quartz64 A
      commit: ea1847c09c34234c2980b99b6bb732a55447c33f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
