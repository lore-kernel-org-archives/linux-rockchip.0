Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CA3C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:21:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5835B60F9D
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:21:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5835B60F9D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y7gpRrBWQwigABmKIUK6+xPhIDJrl/tj3S4UWUy9IIY=; b=QW0D6pw2N4dUpd
	tDf8LUPlu0viA51z/s6sGyZtm7IBxW/7py9WXgoZZSKxC6/qEMfoehxrzcOngfju2Sxaoa4+Xc8QV
	+oyL17MYxPCkOTk64nYwcIsqi7AhgT20pWbeZ9GnDvmTZaL+cLCe79LdaK7zbPNxq651jWTvyFlcV
	RN5esC22khgc6ynqp3xze35BIxtsqiy/w17paLsEN41cxrdgnSXWjNCkeByjs6AOX0zjyEN8Weckr
	XU9zdvOg8kuW8fokZy9mIplRlvN+0qJ4roFYO88TLHFLpZ47bk1d4Hkl2iyzT/sU8tqDZai/1NT2U
	iC4hOfjgWuu5wg+RKvcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbgor-00AJjp-72; Sat, 16 Oct 2021 10:21:37 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbgnu-00AJ4t-KU; Sat, 16 Oct 2021 10:20:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aferraris) with ESMTPSA id 991501F44913
From: Arnaud Ferraris <arnaud.ferraris@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Martin Kepplinger <martink@posteo.de>,
 Heiko Stuebner <heiko@sntech.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Lucas Stach <dev@lynxeye.de>, Angus Ainslie <angus@akkea.ca>,
 Guido Gunther <agx@sigxcpu.org>, Tomasz Figa <tfiga@chromium.org>,
 Johan Jonker <jbx6244@gmail.com>, Eddie Cai <eddie.cai.linux@gmail.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Brian Norris <briannorris@chromium.org>, Dan Johansen <strit@manjaro.org>,
 Simon South <simon@simonsouth.net>, Matthias Brugger <mbrugger@suse.com>
Subject: [PATCH 0/4] arm64: dts: add 'chassis-type' property
Date: Sat, 16 Oct 2021 12:20:21 +0200
Message-Id: <20211016102025.23346-1-arnaud.ferraris@collabora.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_032038_971179_EE2866E6 
X-CRM114-Status: UNSURE (   8.35  )
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

Hello,

A new root node property named 'chassis-type' has recently been approved
added to the device tree specification[1]. This will allow userspace to
easily detect the device form factor on DT-based devices, and act
accordingly.

This patchset fills in this property for existing ARM64 consumer
devices (laptops, phones, tablets...).

[1] https://github.com/devicetree-org/devicetree-specification/blob/main/source/chapter3-devicenodes.rst#root-node

--
Arnaud Ferraris (4):
      arm64: dts: allwinner: add 'chassis-type' property
      arm64: dts: freescale: add 'chassis-type' property
      arm64: dts: qcom: add 'chassis-type' property
      arm64: dts: rockchip: add 'chassis-type' property

 arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts                 | 1 +
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi               | 2 ++
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts                  | 1 +
 arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts                  | 1 +
 arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi                     | 1 +
 arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts                  | 1 +
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts                 | 1 +
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi               | 2 ++
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts                  | 1 +
 arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts                  | 1 +
 arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi                     | 1 +
 arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts                  | 1 +
 arch/arm64/boot/dts/qcom/apq8094-sony-xperia-kitakami-karin_windy.dts | 1 +
 arch/arm64/boot/dts/qcom/msm8916-alcatel-idol347.dts                  | 1 +
 arch/arm64/boot/dts/qcom/msm8916-asus-z00l.dts                        | 1 +
 arch/arm64/boot/dts/qcom/msm8916-huawei-g7.dts                        | 1 +
 arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts                  | 1 +
 arch/arm64/boot/dts/qcom/msm8916-longcheer-l8910.dts                  | 1 +
 arch/arm64/boot/dts/qcom/msm8916-samsung-a3u-eur.dts                  | 1 +
 arch/arm64/boot/dts/qcom/msm8916-samsung-a5u-eur.dts                  | 1 +
 arch/arm64/boot/dts/qcom/msm8916-wingtech-wt88047.dts                 | 1 +
 arch/arm64/boot/dts/qcom/msm8992-bullhead-rev-101.dts                 | 2 ++
 arch/arm64/boot/dts/qcom/msm8992-msft-lumia-octagon-talkman.dts       | 1 +
 arch/arm64/boot/dts/qcom/msm8992-xiaomi-libra.dts                     | 2 ++
 arch/arm64/boot/dts/qcom/msm8994-angler-rev-101.dts                   | 1 +
 arch/arm64/boot/dts/qcom/msm8994-msft-lumia-octagon-cityman.dts       | 1 +
 arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami-ivy.dts         | 1 +
 arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami-karin.dts       | 1 +
 arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami-satsuki.dts     | 1 +
 arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami-sumire.dts      | 1 +
 arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami-suzuran.dts     | 1 +
 arch/arm64/boot/dts/qcom/msm8996-sony-xperia-tone-dora.dts            | 1 +
 arch/arm64/boot/dts/qcom/msm8996-sony-xperia-tone-kagura.dts          | 1 +
 arch/arm64/boot/dts/qcom/msm8996-sony-xperia-tone-keyaki.dts          | 1 +
 arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts                    | 1 +
 arch/arm64/boot/dts/qcom/msm8996-xiaomi-scorpio.dts                   | 1 +
 arch/arm64/boot/dts/qcom/msm8998-asus-novago-tp370ql.dts              | 1 +
 arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts                       | 1 +
 arch/arm64/boot/dts/qcom/msm8998-hp-envy-x2.dts                       | 1 +
 arch/arm64/boot/dts/qcom/msm8998-lenovo-miix-630.dts                  | 1 +
 arch/arm64/boot/dts/qcom/msm8998-oneplus-cheeseburger.dts             | 1 +
 arch/arm64/boot/dts/qcom/msm8998-oneplus-dumpling.dts                 | 1 +
 arch/arm64/boot/dts/qcom/msm8998-sony-xperia-yoshino-lilac.dts        | 1 +
 arch/arm64/boot/dts/qcom/msm8998-sony-xperia-yoshino-maple.dts        | 1 +
 arch/arm64/boot/dts/qcom/msm8998-sony-xperia-yoshino-poplar.dts       | 1 +
 arch/arm64/boot/dts/qcom/sdm630-sony-xperia-ganges-kirin.dts          | 1 +
 arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile-discovery.dts        | 1 +
 arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile-pioneer.dts          | 1 +
 arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile-voyager.dts          | 1 +
 arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts                   | 1 +
 arch/arm64/boot/dts/qcom/sdm845-oneplus-enchilada.dts                 | 1 +
 arch/arm64/boot/dts/qcom/sdm845-oneplus-fajita.dts                    | 1 +
 arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts                  | 1 +
 arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts                  | 1 +
 arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts          | 1 +
 arch/arm64/boot/dts/qcom/sm6350-sony-xperia-lena-pdx213.dts           | 1 +
 arch/arm64/boot/dts/qcom/sm8150-microsoft-surface-duo.dts             | 1 +
 arch/arm64/boot/dts/qcom/sm8150-sony-xperia-kumano-bahamut.dts        | 1 +
 arch/arm64/boot/dts/qcom/sm8150-sony-xperia-kumano-griffin.dts        | 1 +
 arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo-pdx203.dts            | 1 +
 arch/arm64/boot/dts/qcom/sm8250-sony-xperia-edo-pdx206.dts            | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts                       | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts                     | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi                  | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts                  | 1 +
 59 files changed, 62 insertions(+)



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
