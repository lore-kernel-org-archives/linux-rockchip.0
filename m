Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 450B2C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 09:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KgDLdVxKHsImJJMaR1Mz6xoWjzuQfWPGhtzhE5ppnno=; b=IfMwMxipr/mvq4
	lSOjhzh7y2hbNtVg7DFIGDeMS+fSc77XWW17avlQNtDXAhznLkqv8Xo+RH80c4rXVJ2P6RluN8oFd
	rfmW02BtYJCSfBCZHyRTe09SCKoT9MZJ35wqHqX8NJz4+/27Bi/NHh1nJhpOGr1+yESMT9r+eCOfV
	gDrkpvsTLsZktKHz05xRjpylZSq9AzPWv301h8O/NJckYClr9f2XnqIrAfpZSJPFlrFy2mRr8dzlU
	vfzd6VMpbf1ckIHWpXebLJitn9LxPHR6UWzYe+tJXpeg+OZqwIiJUfU/uJr2syvwJo9WnYi3R4hr2
	Sci9goCrf1m8djfCV22A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAS6O-006t7s-39;
	Tue, 05 Dec 2023 09:52:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAS6M-006t6D-2O
	for linux-rockchip@lists.infradead.org;
	Tue, 05 Dec 2023 09:52:27 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rAS6K-0006aC-6u; Tue, 05 Dec 2023 10:52:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	tzimmermann@suse.de,
	linux-clk@vger.kernel.org,
	conor+dt@kernel.org,
	quic_jesszhan@quicinc.com,
	maarten.lankhorst@linux.intel.com,
	neil.armstrong@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>,
	javierm@redhat.com,
	sboyd@kernel.org,
	sam@ravnborg.org,
	mripard@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	airlied@gmail.com,
	mturquette@baylibre.com
Subject: Re: (subset) [PATCH V2 00/10] rockchip: Add Powkiddy X55
Date: Tue,  5 Dec 2023 10:52:22 +0100
Message-Id: <170176993501.528247.5450175586364126094.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231204185719.569021-1-macroalpha82@gmail.com>
References: <20231204185719.569021-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_015226_775273_7BA36CCA 
X-CRM114-Status: GOOD (  10.50  )
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

On Mon, 4 Dec 2023 12:57:09 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Rockchip RK3566 based Powkiddy X55 handheld gaming
> console.
> 
> Changes since V1:
>  - Corrected a bug with the DRM mode flags for the video driver.
>  - Adjusted panel front and back porch and pixel clock to fix
>    issues with display that occurred after correcting DRM mode
>    flag bug.
>  - Add a new clk frequency for PLL_VPLL to get panel to run at ~60hz.
> 
> [...]

Applied, thanks!

[07/10] clk: rockchip: Mark pclk_usb as critical on rk3568
        commit: 721bf080f249ab2adcc4337abe164230bfb8594f
[08/10] clk: rockchip: rk3568: Add PLL rate for 126.4MHz
        commit: 685da6972647b486980c0cc8fd6bb5d3863fd6b7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
