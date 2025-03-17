Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9058C28B30
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Mar 2025 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:MIME-Version:Message-Id:Date:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LuQnM/NlnjhnEMh9Om5P6naVZMGNrelNnZxQQJC+00w=; b=sbnjbP1hO8iga3
	EHl1ujoPkwx5TH5L9XdnoNwiGuKEFEL5yGeJvfZGc/TwX99bltH+x3dPBngaqFSntCpym14aYhzNo
	7J/Od0j7wjgF0t/90nr9qEPCXyyiPgxVR1T4c4TNl5TojF0Es8qc0B9FriMMCN0TBSsE2SWZll4/p
	CpOXk44GdG4vnUodGPTXYbZR9gRQZgXko1YIYaxR+8p75L5kbVAUy7136q4q4om12vaRG4bB22hZL
	CKr/6cWgmDDOF6PbWTZCWoxPmVbeumubzQy7XlpbFFpfI6Mbf5N47APOvDqeOumD/nA6Df1rhQRJW
	gp4B07Q77NdSIIB/6iWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuB8j-00000002r21-12Xz;
	Mon, 17 Mar 2025 14:08:25 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuArT-00000002nyM-3HTD;
	Mon, 17 Mar 2025 13:50:37 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1742219421; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=EzW72ULl+qWDuCMsJTe7HHiCMVb1tnZbhOp5d6jQ0tMcuIB+okRA1B6MJ/RZtEYRqCoD6KYXyUMulM2fibYk7noRdgVG+JYhpeGE/VpssBuYl4WKXE/KWwl3YccLNGVj2/hDMqhombWIaRX7OnwygK4enYRb12Zsy7FehixIAJE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1742219421; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=hFOCizEr8N/f/zyzF34xXsk1q9rFbz4vtYpa+GCbMgA=; 
	b=YUMoI6F9bhGh/knaOJr6rQ/EzQ0mgon61hd3PdCi5WVaETuW7U1p/w8qnthg6HlJkYql0iSmUgzAhENmClM2hGTH2Sk0H5EDjllbbzasWmE1IJjwRzxBab7onn7vFIJ8+rWH9PQ8EurU2zXV63UzxnEzBSUul4VVXXlUpZ3CAKE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1742219421;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Subject:Subject:Date:Date:Message-Id:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding:To:To:Cc:Cc:Reply-To;
	bh=hFOCizEr8N/f/zyzF34xXsk1q9rFbz4vtYpa+GCbMgA=;
	b=PAmsjSVmaBA0IKCgveaJlt2DYbwEV7yrrEl1amzLoSRuXZ30UJYdEmLeXPIFhWhA
	wMXqRyesEipcdV5ZGiEB7krLdCNT4CdUdla2Hwht7Z8AidBZY0Rh64sF5QKQEYaAAXg
	YMJytYAjxFiqQ3kpwXmqbyv6erkREFjcOPZ3cCHE=
Received: by mx.zohomail.com with SMTPS id 1742219418102452.57343009704164;
	Mon, 17 Mar 2025 06:50:18 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: [PATCH v4 0/7] RK3576 thermal sensor support, including OTP trim
 adjustments
Date: Mon, 17 Mar 2025 14:49:25 +0100
Message-Id: <20250317-rk3576-tsadc-upstream-v4-0-c5029ce55d74@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGUo2GcC/3XPTW7DIBAF4KtYrEvEj41NVr1H1QWDxw1qbFIgK
 FXku5eQLKKoXj6k983jSiIGh5HsmysJmF10fimhfWuIPZjlC6kbSyaCiY4J3tHwLbte0RTNaOn
 5FFNAM9MemeVaTr0aDCndU8DJXar78XnPAX/OhU/3RwImIrV+nl3aNwteEq0nJG/JrXBwMfnwW
 3dlXhuPCWpjQuaUUYVWKy2FMLx9t/54NOCD2ZU7Vc3iSRJbn8miStADYyMO2v4nyWdp2JJkkVq
 YACQorUG/Suu6/gHO38GFgwEAAA==
X-Change-ID: 20250215-rk3576-tsadc-upstream-7e0c193f768a
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jonas Karlman <jonas@kwiboo.se>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_065035_878356_0C3663E0 
X-CRM114-Status: GOOD (  26.85  )
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
Cc: Ye Zhang <ye.zhang@rock-chips.com>, devicetree@vger.kernel.org, linux-pm@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This series adds support for the RK3576's thermal sensor.

The sensor has six channels, providing measurements for the package
temperature, the temperature of the big cores, the temperature of the
little cores, and the GPU, NPU and DDR controller.

In addition to adding support for the sensor itself, the series also
adds support for reading thermal trim values out of the device tree.
Most of this functionality is not specific to this SoC, but needed to be
implemented to make the sensors a little more accurate in order to
investigate whether the TRM swapped GPU and DDR or downstream swapped
GPU and DDR in terms of channel IDs, as downstream disagrees with what's
in the TRM, and the difference is so small and hard to pin down with
testing that the constant offset between the two sensors was a little
annoying for me to deal with.

I ended up going with the channel assignment the TRM lists, as I see the
DDR sensor get a larger deviation from baseline temperatures during memory
stress tests (stress-ng --memrate 8 --memrate-flush) than what the TRM
claims is the GPU sensor but downstream claims is the DDR sensor. Input
from Rockchip engineers on whether the TRM is right or wrong welcome.

The trim functionality is only used by RK3576 at the moment. Code to
handle other SoCs can rely on the shared otp reading and perhaps even
the IP revision specific function, but may need its own IP revision
specific functions added as well. Absent trim functionality in other
SoCs should not interfere with the modified common code paths.

Patch 1 is a cleanup patch for the rockchip thermal driver, where a
function was confusingly named.

Patch 2 adds the RK3576 compatible to the bindings.

Patch 3 adds the basic thermal nodes required to get temperature
readings and device throttling to the rk3576.dtsi device tree.

Patch 4 adds support for this SoC's thermal chip to the driver. It is a
port of the downstream commit adding support for this.

Patch 5 adds some documentation for imminent additional functionality to
the binding, namely the trim value stuff.

Patch 6 adds the requisite OTP cells and tsadc nodes to the SoC's device
tree, conforming with the bindings modified in Patch 5.

Patch 7 adds support for reading these OTP values in the
rockchip_thermal driver, and makes use of them. The code is mostly new
upstream code written by me, using downstream code as reference.

For the record, here's a listing of SoCs that implement the OTP trim
functionality in some variation, with a legend that is as follows:
- A = chip-wide trim value
- B = trim_base value
- C = trim_base_frac value
- D = per-channel trim value
- E = compatible is either in mainline or in this series

The list is as follows:
- RK3502 (A____)
- RK3528 (A____)
- RK3562 (ABC__)
- RK3566 (_BCDE)
- RK3568 (_BCDE)
- RK3576 (___DE) <- the only one we're adding OTP trim for here atm
- RV1126 (AB___)

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
Changes in v4:
- driver: added a patch to rename tsadcv3_tshut_mode to
  tsadcv4_tshut_mode, as per Jonas' suggestion, and drop the duplicated
  function from the RK3576 support patch.
- Link to v3: https://lore.kernel.org/r/20250228-rk3576-tsadc-upstream-v3-0-4bfbb3b699b9@collabora.com

Changes in v3:
- Changed bindings back to using patternProperties, as per Rob's
  suggestions
- Adjusted dts changes to comply with the new schema
- Link to v2: https://lore.kernel.org/r/20250225-rk3576-tsadc-upstream-v2-0-6eb7b00de89c@collabora.com

Changes in v2:
- As per Rob's request, the bindings now only feature the new properties
  depending on the compatible. Since the combination is slightly
  different for each SoC anyway, this makes future work easier too.
- The different channels are now explicitly named, instead of giving
  them patternProperties names. This is once again per-compatible.
- As per Sebastian's suggestion, unified trim_l and trim_h into just one
  nvmem cell in the bindings, device tree and driver. I did this after
  verifying that downstream has no SoC where trim_l and trim_h are ever
  non-contiguous, including for SoCs upstream does not (yet) support.
- Rebased on top of next-20250225 and dropped Heiko's OTP patchset as a
  dependency as it was merged.
- Added a handy overview of which SoCs use which part of the OTP trim
  functionality in the cover letter
- Reintroduced an accidentally removed dev_dbg in the function 
  rockchip_thermal_set_trips
- Link to v1: https://lore.kernel.org/r/20250216-rk3576-tsadc-upstream-v1-0-6ec969322a14@collabora.com

---
Nicolas Frattaroli (6):
      thermal: rockchip: rename rk_tsadcv3_tshut_mode
      dt-bindings: rockchip-thermal: Add RK3576 compatible
      arm64: dts: rockchip: Add thermal nodes to RK3576
      dt-bindings: thermal: rockchip: document otp thermal trim
      arm64: dts: rockchip: Add thermal trim OTP and tsadc nodes
      thermal: rockchip: support reading trim values from OTP

Ye Zhang (1):
      thermal: rockchip: Support RK3576 SoC in the thermal driver

 .../bindings/thermal/rockchip-thermal.yaml         |  62 +++++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi           | 221 +++++++++++++++++-
 drivers/thermal/rockchip_thermal.c                 | 251 +++++++++++++++++++--
 3 files changed, 511 insertions(+), 23 deletions(-)
---
base-commit: 40a111d0a777f60b71369d835cfe46308a212235
change-id: 20250215-rk3576-tsadc-upstream-7e0c193f768a

Best regards,
-- 
Nicolas Frattaroli <nicolas.frattaroli@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
