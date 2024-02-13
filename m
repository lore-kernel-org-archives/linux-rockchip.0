Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28264C4829A
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 19:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LUMtnt916CzCv3Or+gITmqxzamGPVw2N73Ty1qLcYh0=; b=KZWWAaocUC+xoA
	TLZqJhqTcKqK6WjN1KKByVYmOiewkcdVz+OojOcRSQKZa5/cGKoYsyNHz+UklnXJVeEsdehOUfHnN
	mzRZsYK85fq2uAa5NERlSBE2GTqI1eFRx8JpXXa1rthCaJJn78/9bzbHp6WPWI8Awn2hVKe51Cm5a
	ViLp4QSGuMQ/EC4OleIjM0UEmI3NVND7Og0lF9BPTzG7kbkOPS7qdwoFwvjcs8GYaaoYLxnNW7Mpu
	jcLNyBFt1cnEadZRHFVhWwjT3wSXgKjatCbullOW0mvHg+OP4ySzHYyMSVacL/X3Kl/LXZtvIJw6y
	sX2e2rhJqWszVZgAgbHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyGf-0000000AQYP-3htA;
	Tue, 13 Feb 2024 19:16:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyGa-0000000AQTe-0R7Q
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Feb 2024 19:16:30 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rZyGW-0008FY-Mi; Tue, 13 Feb 2024 20:16:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	sam@ravnborg.org,
	tzimmermann@suse.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	kernel@puri.sm,
	quic_jesszhan@quicinc.com,
	conor+dt@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>,
	megi@xff.cz,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	neil.armstrong@linaro.org,
	mripard@kernel.org,
	agx@sigxcpu.org
Subject: Re: (subset) [PATCH 0/7] Add Support for RK3566 Powkiddy RGB10MAX3
Date: Tue, 13 Feb 2024 20:16:20 +0100
Message-Id: <170785172856.3347621.11895258422824672515.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240212184950.52210-1-macroalpha82@gmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_111628_162076_69922159 
X-CRM114-Status: UNSURE (   9.24  )
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

[5/7] arm64: dts: rockchip: Update powkiddy rk2023 dtsi for RGB10MAX3
      commit: 039a03c377d64ec832a8fb1b8f8b5badd404989f
[6/7] dt-bindings: arm: rockchip: Add Powkiddy RGB10MAX3
      commit: fbe7823623a8c02759afdfb521709f4fa216849a
[7/7] arm64: dts: rockchip: Add Powkiddy RGB10MAX3
      commit: 4b325c0d4f539b553a4529f16476f08757779293

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
