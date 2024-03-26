Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6823CD11DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 17:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oPdZvup1UuWb2Z5CoK806bbmskTMKewvw0aaOennLN8=; b=f7uKMI/0XfiZQG
	KlI+JX3zUQo9oMD19HcelZH966XURJSmEsGJqvj57O4u2S3MNjFXVHJxpYocP5nqJ94yK5JfYfTPK
	0HUiW9H6gbh78FHF+iqSXe2O5Me4fPBHSpxN/MMYDHYaf3A+MYVsEogu91UFk9q8B/PdIOsPTqFk6
	4rXNvdrKG9j3AG8azhroAu11rkcIbRZL6kcNxQml8HMr+ONtnEOcZixCtWPMLo/S6RvEQIC4GMTvU
	ZX02Mrhnanx0G1+GBA0IeMvk+cyLy57P02+v4VUt9NlSCVeVzE0Vf9kJSLHfFDTfkbmxt0vRQT9nn
	3wUk8NgMgE8wEzErliLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpAYx-00000005iZm-3BOg;
	Tue, 26 Mar 2024 17:26:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpAYj-00000005iTZ-26vK;
	Tue, 26 Mar 2024 17:26:03 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rpAYb-000658-2p; Tue, 26 Mar 2024 18:25:53 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Jaroslav Kysela <perex@perex.cz>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Takashi Iwai <tiwai@suse.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	alsa-devel@alsa-project.org,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: (subset) [PATCH v4 0/7] Add support for the internal RK3308 audio codec
Date: Tue, 26 Mar 2024 18:25:50 +0100
Message-Id: <171147393346.1162935.3469121716836265382.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240305-rk3308-audio-codec-v4-0-312acdbe628f@bootlin.com>
References: <20240305-rk3308-audio-codec-v4-0-312acdbe628f@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_102601_857078_0C84F4DF 
X-CRM114-Status: GOOD (  15.78  )
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

On Tue, 05 Mar 2024 15:36:27 +0100, Luca Ceresoli wrote:
> This series adds a driver for the internal audio codec of the Rockchip
> RK3308 SoC, along with some related patches. This codec is internally
> connected to the I2S peripherals on the same chip, and it has some
> peculiarities arising from that interconnection.
> 
> For proper bidirectional operation with the internal codec at any possible
> combination of sampling rates, the I2S peripheral needs two clock sources
> (tx and rx), while connection with an external codec commonly needs only
> one.
> 
> [...]

Applied, thanks!

[5/7] arm64: defconfig: enable Rockchip RK3308 internal audio codec driver
      commit: 9fdd7b45da18b84d5e7d5a6b8b4b0167910f2d13
[6/7] arm64: dts: rockchip: add i2s_8ch_2 and i2s_8ch_3
      commit: b5ffc424360eaced41f405f0e38bcabe61fecf39
[7/7] arm64: dts: rockchip: add the internal audio codec
      commit: 30d72458624bb1ba7bab1c7a1d5f4c42f512010c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
