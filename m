Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DBE1C4829A
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 18:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JO3wYAT3CKyRlPwrB+5elSic4Vm627XWe46aTp3g1U0=; b=MQw2FYO5BJky0p
	68eWOO7W5JD2Tbn0KdLfmgbdXCM6x6Kb8rgIG1TZQ7w1r11EtwE9pQSotSBgAZ1WNlTFzk62mYOi7
	g2Xrjfa7467dwN2uBUVSzCDbScwZkvwo1HV1vyPhytUD8TKhGv8wWyLougz3dSNbv6/AMAiaiZU1l
	J3u+srKjHCVnLIM6hR4JG2l+B0+H2QfqRAimIB2LK0fo20UTGA1dnWCjI0YzP4YCQX2TFQtXnlqs+
	ZRQ+QJUMmKy9RErcJdTt/dC6JsejG9s6a2gDUYvrCQggYWUUEuwJQTOktf80fj/8eQ8TH7YudXw+Q
	S2pZi4IPwez/n2jQOmfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZxwP-0000000AO4a-34Zp;
	Tue, 13 Feb 2024 18:55:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZxwN-0000000AO3x-1ohV
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Feb 2024 18:55:36 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rZxwC-00086B-1v; Tue, 13 Feb 2024 19:55:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	conor+dt@kernel.org,
	quic_jesszhan@quicinc.com,
	tzimmermann@suse.de,
	agx@sigxcpu.org,
	Chris Morgan <macromorgan@hotmail.com>,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	dri-devel@lists.freedesktop.org,
	robh+dt@kernel.org,
	airlied@gmail.com,
	daniel@ffwll.ch,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	devicetree@vger.kernel.org,
	sam@ravnborg.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: Re: (subset) [PATCH 0/7] Add Support for RK3566 Powkiddy RGB10MAX3
Date: Tue, 13 Feb 2024 19:55:20 +0100
Message-Id: <170785046231.3338864.13569806071230599737.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240212184950.52210-1-macroalpha82@gmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_105535_491260_F297DD4C 
X-CRM114-Status: UNSURE (   9.77  )
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

On Mon, 12 Feb 2024 12:49:43 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Powkiddy RGB10MAX3 handheld gaming console.
> 
> [1] https://powkiddy.com/products/pre-sale-powkiddy-rgb10max3-handheld-game-console
> 
> Chris Morgan (7):
>   dt-bindings: display: st7703: Add Powkiddy RGB10MAX3 panel
>   drm/panel: st7703: Add Powkiddy RGB10MAX3 Panel Support
>   dt-bindings: display: Document ST7703 panel rotation
>   drm/panel: st7703: Add Panel Rotation Support
>   arm64: dts: rockchip: Update powkiddy rk2023 dtsi for RGB10MAX3
>   dt-bindings: arm: rockchip: Add Powkiddy RGB10MAX3
>   arm64: dts: rockchip: Add Powkiddy RGB10MAX3
> 
> [...]

Applied, thanks!

[1/7] dt-bindings: display: st7703: Add Powkiddy RGB10MAX3 panel
      commit: 9913a60f318b6c88ea8385048952e3557464bb84
[2/7] drm/panel: st7703: Add Powkiddy RGB10MAX3 Panel Support
      commit: e0c732291250e205fb834881ad7ecf9ee3ffef45
[3/7] dt-bindings: display: Document ST7703 panel rotation
      commit: 20b18c2be4f3dcb5448ecc122484bef6c2852fdd
[4/7] drm/panel: st7703: Add Panel Rotation Support
      commit: 762195e5c26936b891fb54ba0183aa3ef366b41e

I've adapted the binding subjects to poin to the rocktech,jh057n00900
panel that gets changed and also dropped the one added newline as
requested by Guido.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
