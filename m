Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45804C54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 16:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V113+gTeW4gus0aeXVvxK7ZPPleT5Al1bbIMqqRXKM0=; b=MnUvvKF4Un3f/K
	OqJ4diSBzWl4VWkhsd+XQSmasmbO97OGQN5xlI78K4FTrFP44GdhsClRIcnOmYp+vOBTdZTJDol2N
	7EDhTdplOn/1WjRf1dnGCNF+G9JGZop3wS7UtcwaygT5Zlfc0tFPglWCM8PCpngcjfL3Xf0KCf4qz
	MNGXMdy/LFCdpJ/R2MhaRnUq20/7fzzYLNv62uECtSzx2VWNaJel7Tb+GvGBi8yL/v6LI2MtFzz+6
	oQOsTIqakDRvBhSquyKvQXSy81C64X9+KRk+J4Un07sG3NAmBB2z2vY2u4yVK6I7wVzrKEqwQklOZ
	UMBdou1gFqlP25xnjIFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFHJl-007kkW-Dh; Tue, 10 Jan 2023 16:17:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFHJa-007kgR-Fu; Tue, 10 Jan 2023 16:17:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4F35E617C3;
	Tue, 10 Jan 2023 16:17:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A474DC43396;
	Tue, 10 Jan 2023 16:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673367449;
	bh=B1wBKo3cDbweRD7XMkug8uJodBE8kcjQKvZBxTx7Ok8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hJN56HNsaSeSc4ovjlSJA6QcqyPrLqV5l1jDxV2jatRDTB6Kj6RSRJ+pLDWC3kVnu
	 Bdh82Xfutc3h6yzmv+da8gn0BEHZWwvePdWHvWz8Xmy+MZA5KDr1m6+O83HO5ZLv1Z
	 JcW8wWvrAU8yq8MECxEOqtVf3AHfXxnQ7vKsd/LGAG13z86kP7djxbDXyHbqXr3IQR
	 YBxOFk0V1/HKcvSKK9ksmrcM+pH6bVM+Z2OdQxAlvXIeW/4E0vJOMvtxhRJ8Z/LuyV
	 FdiYehaFml2GcrPHFF0A9GF0AJxIaJlcYFDt5QyhTNmtEHIpZGqPf7imkuPJ2AFtZQ
	 PtJVUOtNK889w==
From: Bjorn Andersson <andersson@kernel.org>
To: samuel@sholland.org,
	agx@sigxcpu.org,
	megous@megous.com,
	heiko@sntech.de,
	hdegoede@redhat.com,
	robh+dt@kernel.org,
	wens@csie.org,
	michael.riesch@wolfvision.net,
	lukma@denx.de,
	icenowy@aosc.io,
	kernel@pengutronix.de,
	david@protonic.nl,
	shawnguo@kernel.org,
	foss+kernel@0leil.net,
	linux-imx@nxp.com,
	festevam@gmail.com,
	pgwipeout@gmail.com,
	jagan@amarulasolutions.com,
	agross@kernel.org,
	hadess@hadess.net,
	dmitry.torokhov@gmail.com,
	jernej.skrabec@gmail.com,
	angelogioacchino.delregno@somainline.org,
	mamlinav@gmail.com,
	frieder.schrempf@kontron.de,
	angus@akkea.ca,
	Sascha Hauer <s.hauer@pengutronix.de>,
	konrad.dybcio@somainline.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	quentin.schulz@theobroma-systems.com,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v3 0/9] fix reset line polarity for Goodix touchscreen controllers
Date: Tue, 10 Jan 2023 10:17:20 -0600
Message-Id: <167336743963.2134489.16668389773212954467.b4-ty@kernel.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221103-upstream-goodix-reset-v3-0-0975809eb183@theobroma-systems.com>
References: <20221103-upstream-goodix-reset-v3-0-0975809eb183@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_081730_607208_F19AC4A5 
X-CRM114-Status: GOOD (  11.67  )
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

On Mon, 5 Dec 2022 14:40:29 +0100, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> The Goodix touchscreen controller has a reset line active low. It happens to
> also be used to configure its i2c address at runtime. If the reset line is
> incorrectly asserted, the address will be wrongly configured. This cost me a few
> hours, trying to figure out why the touchscreen wouldn't work.
> 
> [...]

Applied, thanks!

[8/9] arm64: dts: qcom: msm8998-fxtec: fix touchscreen reset GPIO polarity
      commit: 8a0721dae68fdb4534e220fc9faae7a0ef2f3785

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
