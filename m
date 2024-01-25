Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEE96C48260
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 21:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ke4pj2U4Dn/1aP2G6eeaR/gK/M7+IWz8Spdt3I5tFqQ=; b=YCKFY28tcg9XKS
	r/KQAn1V7wooeZV2Sc7yYHGTJG9M1oq1acT8fQ4TwBPS8Terkxp5Kz+mSWinwjRV2zQ3EMAEvlff7
	qlPdPkex48osjZCLf98RgpiiUJnlQE/d6N6cyoiccT7wNmAQTx/WnU857MK8H5wRXk/MzY8MEkK+X
	jlge7RSFnIdcxXsFQ+K37Bdfurpu6JAGiEYFxhNug9LpUjYJ4LoP+Pw7Ej/cgLRAnlt2KNM25serQ
	HEaJ01hXB2W8U2rc2e50ocSXfv1xt1C7rahb63xFnfL5ZaRpIOnvo3iZb/iM5rPvIZkE1AFfjuQqa
	fOGSTAh9Vlj4Yq7BAwmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT72W-00000001vsk-0fKt;
	Thu, 25 Jan 2024 21:13:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT71Y-00000001vKF-1A8Z;
	Thu, 25 Jan 2024 21:12:37 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rT71L-0002EX-AC; Thu, 25 Jan 2024 22:12:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Alex Bee <knaerzche@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	David Airlie <airlied@gmail.com>
Subject: Re: (subset) [PATCH v4 00/29] Add HDMI support for RK3128
Date: Thu, 25 Jan 2024 22:12:12 +0100
Message-Id: <170621707729.1872080.13318760381519094242.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_131236_377508_71AB620F 
X-CRM114-Status: GOOD (  15.57  )
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

On Fri, 22 Dec 2023 18:41:51 +0100, Alex Bee wrote:
> This is version 4 of my series that aims to add support for the display
> controller (VOP) and the HDMI controller block of RK3128 (which is very
> similar to the one found in RK3036). The original intention of this series
> was to add support for this slightly different integration but is by now,
> driven by maintainer's feedback, exploded to be a rework of inno-hdmi
> driver in large parts. It is, however, a change for the better.
> 
> [...]

Applied, thanks!

[27/29] ARM: dts: rockchip: Add display subsystem for RK3128
        commit: 695b9b57443d88a1c8e0567c88a79d1a4532c75e
[28/29] ARM: dts: rockchip: Add HDMI node for RK3128
        commit: 3fd6e33f8fde16869d4cd9cef71ca964b2b0789b
[29/29] ARM: dts: rockchip: Enable HDMI output for XPI-3128
        commit: 5aab66e319df2a6fc4ab06bcb4bd974c1ac4927e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
