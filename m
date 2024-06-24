Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93C54C2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 16:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5R4wmwrv/RSYjS/qXt+JA6/xzPeRTHjtC9009Qn1wJE=; b=q0FnkEomc4bwlU
	XdUAtuqYEXn7AHqix5erK6q+RatGCejHf5YW1QactGooHB6fuXyez1ZUshncfQ8mGKWU3bWyy4RBE
	ndgsVj76WKOC/QYfBOeEOGUd0UCTgrFK5UvkhIGRloIPFF7DJTdF6JU6YyhnoCzoh3RPSq4ZBe3Bb
	w30WINaiKSp4SbjT3vuKlHenvuQzoDXUixh5HW2C7vjTeJEfIzHxQQftm/oPy+eFX8BUpPSIS/Rvs
	vVbycX5q9SOQaFKbEBc5vtWUjAxFBRHeOvCDDBqnMUHdfZFq4yNxDfY7purqfjVS5nf9QvVQ4kAKn
	IkIpqUXFJsbrdEDzMg8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmQr-0000000HShr-20WE;
	Mon, 24 Jun 2024 16:20:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmQg-0000000HSae-15gX;
	Mon, 24 Jun 2024 16:20:31 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLmQb-0001wn-PZ; Mon, 24 Jun 2024 18:20:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Peter Robinson <pbrobinson@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Add Pinephone Pro support for GPIO LEDs
Date: Mon, 24 Jun 2024 18:20:19 +0200
Message-Id: <171924573794.612064.864594906378094874.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240623165326.1273944-1-pbrobinson@gmail.com>
References: <20240623165326.1273944-1-pbrobinson@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_092030_334752_E4A9479A 
X-CRM114-Status: GOOD (  11.26  )
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

On Sun, 23 Jun 2024 17:53:20 +0100, Peter Robinson wrote:
> The PinePhone Pro has a cluster of 3 single RGB GPIO LEDs.
> Add the GPIO entries for the 3 red/green/blue LEDs and an
> entry for the multi-color group to allow them to be used
> as a combined RGB LED.
> 
> 

Applied, thanks!

[1/3] arm64: dts: rockchip: Add Pinephone Pro support for GPIO LEDs
      commit: ee9b6b6414790223e8315ef0e25df69b3b5e6e50
[2/3] arm64: dts: rockchip: Enable PinePhone Pro IMU sensor
      commit: c1d9ced35621bdc894321ad284a29922dd3e7251
[3/3] arm64: dts: rockchip: Enable PinePhone Pro vibrator
      commit: 3f9cfd4f5e453aa33ca4dc40959a1cc524501160

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
