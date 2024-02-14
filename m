Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C838C48BC3
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Feb 2024 17:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+HtFqOBaXiEe9K+Va4TG9spLEA98ZDGeCvpupvt8KeU=; b=XnkYyJP2wGscwx
	egekyxzzhzf0B6Nv8/aWEtCcKvI346sNVZow7Lxqq32Lv4zw2TS6/NUfSz8ayubXozOJgeNA22tWa
	dCYG17QnezUcka0Xq0rUnIiu2kbAWPB5qA0eo8o5THcx96R4OaWUXFaQg50vVaYSZX+rbC780fYVs
	J4L19yEv2d0dJCzKSLnJaWwOhDHQ9WtAJY1bYTjmUy7FpQe3WRZuOvVgG0nqgPoChiCo3xPZDNYt9
	LXFsnlo4xHObLDWajXDq0c54dzoVkQM9dMTwn+5ONcoWwIIiRVCLIG5dK2kz2+5yFNufjN2DDSlEE
	VSoKj/t7jQwK0LeUFQpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raJWM-0000000DpSh-1sNK;
	Wed, 14 Feb 2024 17:58:10 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raJWH-0000000DpPn-3IzQ;
	Wed, 14 Feb 2024 17:58:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E009B61A10;
	Wed, 14 Feb 2024 17:58:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68C87C43601;
	Wed, 14 Feb 2024 17:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707933482;
	bh=UzWKN3xNNoSjZtcnrQwFz+RNpOUVMrgQrSSh0UctjTU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qj8MQTm6al+ezCEmOoQ5ZnVHbMiels7Hg+6eUCS4WoGaOEESCwXd7Jrpg5fEa1mOI
	 9Qor+g+afLZXmIvRMZYb6PmuVELyjVpiVbUphkNqYjkN1zAhgLzxnpBLcBsacsTMkt
	 deQAaAdnx96nkma7t/N0udb3TT+SLzuED1nazrdrzo+jELWWxLma7ieESwdQltXlNg
	 0lSSg05z0js4HC7LEBMRdC/DrFq5F0RPSC2AVFjurph2V1Kx4zm+icrzVAe57FNTX0
	 5o36S5ix/Q1I0TuBSjFGTnJu4l6Er6bhQ0AQhFCgCqOjbZ1CCH86BzK9YUFCeyBQwD
	 K/2V+VNem3rlQ==
From: Bjorn Andersson <andersson@kernel.org>
To: LKML <linux-kernel@vger.kernel.org>,
	Mark Hasemeyer <markhas@chromium.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Raul Rangel <rrangel@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	AKASHI Takahiro <takahiro.akashi@linaro.org>,
	Alexandre TORGUE <alexandre.torgue@st.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Andre Przywara <andre.przywara@arm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Baoquan He <bhe@redhat.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Benson Leung <bleung@chromium.org>,
	Bhanu Prakash Maiya <bhanumaiya@chromium.org>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Scally <djrscally@gmail.com>,
	David Gow <davidgow@google.com>,
	Enric Balletbo i Serra <eballetbo@gmail.com>,
	Frank Rowand <frowand.list@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Guenter Roeck <groeck@chromium.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Len Brown <lenb@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Michal Simek <michal.simek@amd.com>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Nick Hawkins <nick.hawkins@hpe.com>,
	Prashant Malani <pmalani@chromium.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Barnes <robbarnes@google.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Stephen Boyd <swboyd@chromium.org>,
	Takashi Iwai <tiwai@suse.de>,
	Thierry Reding <thierry.reding@gmail.com>,
	Tony Lindgren <tony@atomide.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Wolfram Sang <wsa@kernel.org>,
	chrome-platform@lists.linux.dev,
	cros-qcom-dts-watchers@chromium.org,
	devicetree@vger.kernel.org,
	linux-acpi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: Re: (subset) [PATCH v3 00/24] Improve IRQ wake capability reporting and update the cros_ec driver to use it
Date: Wed, 14 Feb 2024 11:57:33 -0600
Message-ID: <170793345816.27225.17596863593307803250.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231226192149.1830592-1-markhas@chromium.org>
References: <20231226192149.1830592-1-markhas@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_095805_940252_020D9423 
X-CRM114-Status: GOOD (  15.50  )
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


On Tue, 26 Dec 2023 12:21:04 -0700, Mark Hasemeyer wrote:
> Currently the cros_ec driver assumes that its associated interrupt is
> wake capable. This is an incorrect assumption as some Chromebooks use a
> separate wake pin, while others overload the interrupt for wake and IO.
> This patch train updates the driver to query the underlying ACPI/DT data
> to determine whether or not the IRQ should be enabled for wake.
> 
> Both the device tree and ACPI systems have methods for reporting IRQ
> wake capability. In device tree based systems, a node can advertise
> itself as a 'wakeup-source'. In ACPI based systems, GpioInt and
> Interrupt resource descriptors can use the 'SharedAndWake' or
> 'ExclusiveAndWake' share types.
> 
> [...]

Applied, thanks!

[14/24] arm64: dts: qcom: sc7180: Enable cros-ec-spi as wake source
        commit: f172a341ec1f66bac2866720931594e81f02ad4d
[15/24] arm64: dts: qcom: sc7280: Enable cros-ec-spi as wake source
        commit: a4b28b9ecc99673da875e214b1a06f1e0f0a24fa
[16/24] arm64: dts: qcom: sdm845: Enable cros-ec-spi as wake source
        commit: a7baa25bfbfdcd4e76414f29ab43317ded8d3e6e

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
