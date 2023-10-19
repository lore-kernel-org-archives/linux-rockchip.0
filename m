Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A841FCDB465
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 08:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1ny0GzwpeHvCc/fi1qnKBGTM1q/wEDcZ8B4l4mWeDE=; b=cuTvb8M6hjYibx
	IfhdBV/0Vxa6IHhaw8Qpd4WYAqn/QFcTeNe8LqdTb61tVCDH1Bq7IBhNRSXFx+3tDuXuDs1naz+dO
	D6s1wMKBFxzWkihNyn+RgfrvHUXPdTPOmZjsafz+O0o73cXPivUm5VFi2EkRmWZ2DL3IwU5A07YCU
	wtpx3DiENisbS6Zs5L0tz3xzWNj/8re07dj2rsA/aBxt9tJ68SQHkl/9tYvHdHxp2nnn3P30ttwL6
	KWRT79E4jGzJnA3pvDSq9gcAdIxhZQA3fgTgKlTZsbolhRpQItYUZw3z1CC9cz7IqOvFeTCD1Q6qF
	XZqN6Ac1Cm87QM63sPkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtOnb-00GmCE-2T;
	Thu, 19 Oct 2023 08:54:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtOnY-00GmB4-19
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Oct 2023 08:54:33 +0000
Received: from i5e861907.versanet.de ([94.134.25.7] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qtOnQ-0001vg-JV; Thu, 19 Oct 2023 10:54:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	mturquette@baylibre.com,
	Chris Morgan <macromorgan@hotmail.com>,
	sboyd@kernel.org,
	linux-clk@vger.kernel.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: Re: [PATCH 0/3] Fixes for RGB30
Date: Thu, 19 Oct 2023 10:54:20 +0200
Message-Id: <169770556937.1297560.1024214364752104181.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231018153357.343142-1-macroalpha82@gmail.com>
References: <20231018153357.343142-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_015432_396782_5E779693 
X-CRM114-Status: GOOD (  11.32  )
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

On Wed, 18 Oct 2023 10:33:54 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> After preliminary testing, a few users requested that I see if I can
> make the panel run at precisely 60hz. As the device is typically used
> for retro gaming, getting the panel to refresh as close to 60hz as
> possible is important.
> 
> [...]

Applied, thanks!

[1/3] clk: rockchip: rk3568: Add PLL rate for 292.5MHz
      commit: bb8ab7335bd2f55706fd09f5ce431207a746d99a
[2/3] arm64: dts: rockchip: Update VPLL Frequency for RGB30
      commit: 793e0d8988bc0e6bf2ff5c6df7fc81ec8c53a93e
[3/3] arm64: dts: rockchip: Remove UART2 from RGB30
      commit: efa1d1c6c8e4f89eedef9035d1f74fe98861eb30

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
