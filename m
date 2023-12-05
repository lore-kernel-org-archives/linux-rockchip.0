Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6F69C07E97
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 09:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/nG0eQgyP5voyjWW4LuP3CbXPONGHt4CuCZ6xqwS6Io=; b=ScqAjoRBmsDHLU
	9KYb6kcEOHUv91bejeYRgaBTAUWJ/40NJ8IdAveNhhbIfHLZDByYs1Jcr1af4Xyj+rpWvZ0/Ob6XF
	LIQ4Mq15wvx0YteVZAxbk1Ak78I4YTIdC6FS17i0homIc8oVeU4TjWFQLTJbYiRsMSO/aPfPKwVBV
	GWY6WE1I3vIG1+8qYHdxm9PrbGITpKjVYRAOzttyYQrSuTLqybdyJMIG0MNb411+WViOeZYXMpzWl
	B2Q58XDG40EOFQxtULclpGTbWQF2XkSyQDbk2qIrJxv/h+jThy0u5+NEOJpyzEQDTpBHqT9h1ITIh
	miFKptYPJx9B0+butf7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rASDD-006uOh-1R;
	Tue, 05 Dec 2023 09:59:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rASDB-006uOM-2M
	for linux-rockchip@lists.infradead.org;
	Tue, 05 Dec 2023 09:59:30 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rASD8-0006dW-Kj; Tue, 05 Dec 2023 10:59:26 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	sam@ravnborg.org,
	robh+dt@kernel.org,
	javierm@redhat.com,
	quic_jesszhan@quicinc.com,
	krzysztof.kozlowski+dt@linaro.org,
	daniel@ffwll.ch,
	devicetree@vger.kernel.org,
	mripard@kernel.org,
	sboyd@kernel.org,
	maarten.lankhorst@linux.intel.com,
	dri-devel@lists.freedesktop.org,
	Chris Morgan <macromorgan@hotmail.com>,
	tzimmermann@suse.de,
	neil.armstrong@linaro.org,
	linux-clk@vger.kernel.org,
	mturquette@baylibre.com,
	conor+dt@kernel.org,
	airlied@gmail.com
Subject: Re: (subset) [PATCH V2 00/10] rockchip: Add Powkiddy X55
Date: Tue,  5 Dec 2023 10:59:24 +0100
Message-Id: <170177035808.530583.4519890630832587143.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231204185719.569021-1-macroalpha82@gmail.com>
References: <20231204185719.569021-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_015929_787073_8DC6371D 
X-CRM114-Status: GOOD (  10.71  )
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

[09/10] dt-bindings: arm: rockchip: Add Powkiddy X55
        commit: b7d755653790b5f5497df8bfb146c38beeb33b74
[10/10] arm64: dts: rockchip: Add Powkiddy X55
        commit: 009e2d0c224913eb4f44e9c2efe7a15789fc0c18

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
