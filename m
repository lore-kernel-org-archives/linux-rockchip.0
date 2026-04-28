Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B62ECFF886D
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 20:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r/jiVEL/A+gL9skPJ+VDJepSPDai5UurTuHiTGpAJmg=; b=Oj2XwsTkYoGvgH
	iTgOgLSucbsFW7JNVKqit+JqTmPLiEFPAzsfTenisunb7Lqh86/BaWGe/Sina26JLSiXXYX6s2hOq
	FXPwgP8bpn9R8D1mu6Vg/ZMZkfpGkIiVK2uArNHgM5LWdh2OuIPkddSVijOOsFyQ18saITN8UE5Kv
	lUYmnOd29ZhBlAIDZZk0tpQieif5J3l3y+nzsFxd9CUeQYkhbIykmLTuDu6FqCC8nQUNpJju6C/Qq
	OPL55RHpRoZgqsZwRqsE35jA/6NwKCYq83FFdVsjYvY/l251fExndWPl6cTzCu6TJzrJKadp6pcB7
	hnBgn3qDI3fVjgL0NxuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHoiS-00000002CPs-1QL3;
	Tue, 28 Apr 2026 20:07:32 +0000
Received: from mail-dl1-x122a.google.com ([2607:f8b0:4864:20::122a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHoiP-00000002CLO-3MuS
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 20:07:31 +0000
Received: by mail-dl1-x122a.google.com with SMTP id a92af1059eb24-12ddbe104ccso2053647c88.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 13:07:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777406848; x=1778011648; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oKQRvM+woDu6KBLreGPcHmP1j9kbXpV/WZYBI8HqOII=;
        b=O9tYjILjux12o0ACRbUNDl17rG8nalo0mWRoIdkJzcQvnQZ8W0uJDJaoz5ZXtSgKOi
         KFJuFNOI0fOCU1iBEvBI6yrYqnw1zgUdxY8W5JSTdoXk5eoPTtJSWEhs4NWe0jukszEP
         ge+l34Kxf8Oh6wa/qxPFNCsgJsYuAxQdGllkk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777406848; x=1778011648;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oKQRvM+woDu6KBLreGPcHmP1j9kbXpV/WZYBI8HqOII=;
        b=TRzRyWkwCiD4jYuM8Kk4rAu1fm9sPWgwtdcvf1Jmxqcdj8dbJLFIPPoqI/faRXQKX2
         lcrvNvyAJfpujWdRTqtAb2BATBGtsEHR96Ml/i19vDHB6rHMgpeK0n39rYqH0Bh0/J3s
         oMeHGXTuBW+hqoPu9flCP9Maf/jDmn69R+QzvfJPltJS9kEFgjigjhxFTOJlmNJQaRh0
         fpiLwDF5cp60XXndDNnYLU4m58NTuP8e4vfofl8NahEpnWi8wctdTdOPJ46QhWPAODp6
         bLkqQXqIO3frbb60Atg9NmafztTQqCPqiTX1Wdx4cxZA8BAwtyrsVPj8uTqLxL61I2Vp
         UOOw==
X-Forwarded-Encrypted: i=1; AFNElJ+9WQB8YefoDYWePbaaQUQjHhS1othL2fHVXJGNQ+j/D5r+Kz6NOpDpFj2vP7HV9MuYXm0KRVp3zw4IYvBZHw==@lists.infradead.org
X-Gm-Message-State: AOJu0YymKP73mieC3+QgBPFqVwiOMxdVtCir4V6OP0s8BfGmpm9/X5GF
	gU8jkRswViB+uKDF385HulHADxsptmFsaQAkP/kLo9Ltw2mS5VgeYFvXU/5GIH3eJQ==
X-Gm-Gg: AeBDiesrUu6GbDAzDiD0nJ8z9i4NUmE2C2uzH1q4WDnvvp9WY2m8D5DODFocBviqaSB
	0dRP2SW23pcLdWTS7uXO2UYybZd+5fIIFdqc4FfxstAWo/l/jn9Uu8bwexsUDsw8BeDkfOfeJQm
	sQJlxt4s0w3K7Qtik4ufjnfPj65ubcaXmYR4zfZNZ4M5Eh4q+/V18j8nE6+Zjgz+2KWaHmu0sVC
	dk0xP/V0u9v56qJAAjGjwqnEx9zvQi4T1h1EIqyWkGGn8nZXb1v6Rrsh7J1Dnxp906Q2cQg+Z3W
	cmOtvC9lo9V5qnQxFiaBmAGyGmU3DMuRTnVqune9XxzIOQo8Ca9beOXZj4Oy/j350DZURKiKEsj
	661jRyI32I8wLuw2v5a8zdcKvvOa8Pa0c808BUX9PUiUpyK60TnhPcYG5icZrci6iuYVQgcf7lD
	WKazrDvPI94H1C7CGnwwjuZIYOpN/V0hnBGzI7IObTa38qt/TNj0wI2LKCf4qAgGKo48OJhatl
X-Received: by 2002:a05:7022:fe06:b0:12d:de3f:d84d with SMTP id a92af1059eb24-12dde3fdd97mr1431757c88.38.1777406848179;
        Tue, 28 Apr 2026 13:07:28 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e7c:8:4ff5:9607:c7e5:48f3])
        by smtp.gmail.com with UTF8SMTPSA id a92af1059eb24-12ddd93abadsm2784062c88.6.2026.04.28.13.07.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2026 13:07:27 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org,
	Doug Anderson <dianders@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	chrome-platform@lists.linux.dev,
	Brian Norris <briannorris@chromium.org>,
	linux-rockchip@lists.infradead.org,
	Julius Werner <jwerner@chromium.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/7] dts: Add /firmware/#{address,size}-cells to Chromium-based DTs
Date: Tue, 28 Apr 2026 13:06:52 -0700
Message-ID: <20260428200712.2660635-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.54.0.545.g6539524ca2-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_130729_924356_178CF40C 
X-CRM114-Status: GOOD (  15.98  )
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

Chromium/Depthcharge bootloaders may dynamically add a few device nodes
to a system's DTB under a /firmware node. A typical DT looks something
like the following:

  ## From a RK3399 Gru/Kevin Chromebook:
  # find /sys/firmware/devicetree/base/firmware
  /sys/firmware/devicetree/base/firmware
  /sys/firmware/devicetree/base/firmware/coreboot
  /sys/firmware/devicetree/base/firmware/coreboot/ram-code
  /sys/firmware/devicetree/base/firmware/coreboot/compatible
  /sys/firmware/devicetree/base/firmware/coreboot/board-id
  /sys/firmware/devicetree/base/firmware/coreboot/reg
  /sys/firmware/devicetree/base/firmware/coreboot/name
  /sys/firmware/devicetree/base/firmware/chromeos
  /sys/firmware/devicetree/base/firmware/chromeos/readonly-firmware-version
  /sys/firmware/devicetree/base/firmware/chromeos/active-ec-firmware
  /sys/firmware/devicetree/base/firmware/chromeos/firmware-version
  /sys/firmware/devicetree/base/firmware/chromeos/nonvolatile-context-storage
  /sys/firmware/devicetree/base/firmware/chromeos/vboot-shared-data
  /sys/firmware/devicetree/base/firmware/chromeos/nonvolatile-context-size
  /sys/firmware/devicetree/base/firmware/chromeos/nonvolatile-context-offset
  /sys/firmware/devicetree/base/firmware/chromeos/hardware-id
  /sys/firmware/devicetree/base/firmware/chromeos/compatible
  /sys/firmware/devicetree/base/firmware/chromeos/firmware-type
  /sys/firmware/devicetree/base/firmware/chromeos/fmap-offset
  /sys/firmware/devicetree/base/firmware/chromeos/name
  /sys/firmware/devicetree/base/firmware/ranges
  /sys/firmware/devicetree/base/firmware/name

The /firmware node has an empty 'ranges', but does not have
address/size-cells.

Commit 6e5773d52f4a ("of/address: Fix WARN when attempting translating
non-translatable addresses") started requiring #address-cells for a
device's parent if we want to use the reg resource in a device node.
This leads to errors like the following:

[    7.763870] coreboot_table firmware:coreboot: probe with driver coreboot_table failed with error -22

This series adds appropriate #{address,size}-cells to the device trees
used on Arm Chromebooks to work around the problem.

Note that Google provides bootloader updates for some devices that add
{address,size}-cells [1], but these are only delivered via Google OS
updates. Not all users receive Google software updates, and even if they
do, not all devices still receive bootloader updates from Google.

This problem was first noticed in OpenWrt, where some Chromium-based
routers ran into the same issue:

https://github.com/openwrt/openwrt/issues/21243

Relevant OpenWrt fixes: https://github.com/openwrt/openwrt/pull/22951

There is also discussion at [2].

I've currently only tested:
1) the aforementioned OpenWrt routers (with non-upstream DTS/DTB)
2) RK3399 Gru/Kevin Chromebook (patch 1)
3) Qualcomm SC7280 Herobrine (patch 7)

I assume the others should follow the same pattern. I don't know if I've
covered every relevant Depthcharge-using device, but I've made a good
attempt to identify them all.

I reviewed Depthcharge code history and found that this problematic
bootloader behavior dates back to at least 2014, with the Tegra/Nyan
device. Older devices may have similar DTB structures, but I'm not sure
if they have the same address-cells problems. In any case, these changes
shouldn't hurt even if a device was not affected.

Brian

[1] https://lore.kernel.org/all/20241209092809.GA3246424@google.com/
    https://crrev.com/c/6051580 ("coreboot: Insert #address-cells and
    #size-cells for firmware node")

[2] [regression] of: mis-parsing Depthcharge's /firmware
    https://lore.kernel.org/all/aeKlYzTiL0OB1y3g@google.com/


Brian Norris (7):
  arm64: dts: rockchip: Add #{address,size}-cells to Chromium-based
    /firmware
  ARM: dts: rockchip: Add #{address,size}-cells to Chromium-based
    /firmware
  ARM: dts: nvidia: Add #{address,size}-cells to Chromium-based
    /firmware
  ARM: dts: samsung: Add #{address,size}-cells to Chromium-based
    /firmware
  arm64: dts: mediatek: Add #{address,size}-cells to Chromium-based
    /firmware
  arm64: dts: nvidia: Add #{address,size}-cells to Chromium-based
    /firmware
  arm64: dts: qcom: Add #{address,size}-cells to Chromium-based
    /firmware

 arch/arm/boot/dts/nvidia/tegra124-nyan.dtsi           | 5 +++++
 arch/arm/boot/dts/nvidia/tegra124-venice2.dts         | 5 +++++
 arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi         | 5 +++++
 arch/arm/boot/dts/samsung/exynos5250-snow-common.dtsi | 5 +++++
 arch/arm/boot/dts/samsung/exynos5250-spring.dts       | 5 +++++
 arch/arm/boot/dts/samsung/exynos5420-peach-pit.dts    | 5 +++++
 arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts     | 5 +++++
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi          | 5 +++++
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi        | 5 +++++
 arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi      | 5 +++++
 arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi       | 5 +++++
 arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi      | 5 +++++
 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi       | 5 +++++
 arch/arm64/boot/dts/nvidia/tegra132-norrin.dts        | 5 +++++
 arch/arm64/boot/dts/nvidia/tegra210-smaug.dts         | 5 +++++
 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi          | 5 +++++
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi        | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi          | 5 +++++
 18 files changed, 90 insertions(+)

-- 
2.54.0.545.g6539524ca2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
