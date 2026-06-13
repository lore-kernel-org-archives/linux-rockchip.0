Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA006CD98DC
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jun 2026 06:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SxE1QWSGZydMvScG6PAaE7Eyec8vKluyu5mFLJPzoY8=; b=La6dmLvsbzbMo3
	U4oCXgnH+A6B8WwC34vFQitAH6Hr443MpZBIyAmEVWkY1diHLz/lVdmTnH3bj2r5/Kj1sTXPEjHg6
	ku0DuEDIeiIPD1q/fLNHjSWsSW3wWVjvVwzCGSPHA0j2ONwI6iTOTHwa01HCdVF809K1CuhbQqQz7
	e4HDQD7jY+Wc3MuC8dZzdo4OCWkAK+o0Xiux0fED1opRGsgz5HvwjQxFiy2PL2IJ22vwSG2hUlyKP
	+NfD/bAjdY4Xm+R34xYVZc67KZzQt/DhsBycOlzHw4ANPHKGYapYFjdUQuesNQjI7Wu6dRFvducx8
	EBExkDc0vM+2k49SFMiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYIK2-0000000C0kF-0lTo;
	Sat, 13 Jun 2026 06:58:26 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYIJz-0000000C0jO-036t
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Jun 2026 06:58:24 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4921e4dd62dso5888875e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Jun 2026 23:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781333900; x=1781938700; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4QsU3lUuOvN1fkkJCd/R0PVYRNNXIyBXyGs7tF0ADRs=;
        b=J/zlCmStw6p2xrhIJRWJlN+Vcuff4oxJ+8yvk61j9J5lN+86hAj5th96kpAoV7JZMx
         4VvLd2ue/BthQEXy/JpSv5iIloHRNVw1NbNPYBwZEfnC4vqbQ0diXsmbrnj4lxqbcH6Z
         h3sEGStCFF+R7vNf1vdTv/Gt9PU40w7j0N1XlDpZdqfXDejAzDUUBgWEeQdMykUKqtmz
         rK6s6up3NF4k/98LSyw1L1NEgByhIReMagykcng0zQ2wtqKSd43PNMnC43a4I2RhzPpN
         5cJf58HjDseh2Xh/2Dr+bj4tuSweC8CPjphtt3n2FhTKRE5QxjxAhkxYcjX3OZGSwz4E
         yXcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781333900; x=1781938700;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4QsU3lUuOvN1fkkJCd/R0PVYRNNXIyBXyGs7tF0ADRs=;
        b=QCy1boUySTUhrkeP25ha3HJuPGWH30J/JKCBoofgggDwEdLGt3rJSgax+yc2PCKEQi
         1A7jqw/Y++ncQNZ2JzDOtFZw4ic3GKaUvF4ezFP8vQDKz45Cj5z7YVMJ0XqiZo2Dgmjd
         gfr66KlF/Ln/7mw2hQw/TJJ0Xi9VDT8FEHiN39IPbS9HMLPPt7rAVL9SLTKib7GXlM/0
         i4Q6hsrXq5HaWb3Icy/WAn1XpNTForCe2RyYrLRQyEitFPFKCunnnxfLRJptHhJ2Mibp
         fNKkQ4xg8e4biiTDuiFr7QBSaawjm5oxzfghpPjbZM8DpTNvSoHpuL5Z20wwmnPJ3QWt
         hGGA==
X-Forwarded-Encrypted: i=1; AFNElJ+uXnclVBCfPk1bJDbB514qCp90vd0oz6cMPBWbeDt63RLN+vES4RLhryu7zol4c3WBMggMRLAR0h6PrnlndA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxCGuiU0GEqdCGaAuoCb141x89QI5t61wXOI6se2TI3raYEicjw
	RId6sqkOLiPC2RT2MB5+/NK3IoYQrhn+OU+uSy4/4L96wqsvpMhGAEVc
X-Gm-Gg: Acq92OFz2DCcDQkxb69oKPe1xxfoWg+SJXFr60dMThL9Yh1RixtDnw2iZD7+kKnYQir
	aecwXPGhLTR8D1c2kdWkxXrVYsGdLW44FOXwH0wLYYE1CNRHvZj1Vpc0gaXEbSqOlTVbzNAqEUc
	X9uNOSECUUoZAb3CTgDahkKAgtst1s7KeNgUHseTEOKyk5n0ogZ38z0GF5+MfXEgkI6lmYpCoJv
	hyappp9jg/b9N5O34fnEqQ/lGOUitwNGf9BbsXlvJARalosA+Cud9VXFiBPooJm6plQs/2W4qWn
	pNG2vei92Ul4HiI+B+KjdlJso3mIZprXSPU/x7EKd8sS74OFj5OjFrEe2uFCf9LTBxZ89ISzoai
	p8UULozHtRF9ZNP57dJeGRTI/9v6YsICwHDkqvBid3cOXoas5mNj9fzK/Nfmqlextp2xbYf02VF
	lzWiAd0V6Jsm05fvPYxoP7hzdPXCS0mMM+y0Lr6sq77g==
X-Received: by 2002:a05:600c:c171:b0:48a:53cb:8604 with SMTP id 5b1f17b1804b1-490ec4dfb03mr56249045e9.14.1781333900211;
        Fri, 12 Jun 2026 23:58:20 -0700 (PDT)
Received: from debian.tailb81abf.ts.net ([2a01:e0a:104a:4d80:14c0:9448:1c38:77df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-492202e5cbasm42917705e9.2.2026.06.12.23.58.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 23:58:19 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: tomeu@tomeuvizoso.net,
	ogabbay@kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ulf.hansson@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	xxm@rock-chips.com,
	chaoyi.chen@rock-chips.com,
	finley.xiao@rock-chips.com,
	diederik@cknow-tech.com,
	jonas@kwiboo.se,
	Midgy BALON <midgy971@gmail.com>
Subject: [RFC PATCH v4 0/9] accel: rocket: Add RK3568 NPU support
Date: Sat, 13 Jun 2026 09:01:07 +0200
Message-Id: <20260613070116.438906-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_235823_096325_52DA4F05 
X-CRM114-Status: GOOD (  19.74  )
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

From: Midgy BALON <midgy971@gmail.com>

RFC, not for merge. End-to-end inference does not produce correct output
yet (see Status), so per the v2 discussion this is a request for design
feedback. It probes, attaches, and submits cleanly on a stock v7.1-rc6
tree; what remains is one hardware-internal issue.

The RK3568 has a single NVDLA-derived NPU core, the same IP family as the
RK3588 NPU the driver already supports; the register layout matches. The
RK3568 differences are a 32-bit NPU AXI/IOMMU (vs 40-bit) and explicit
PVTPLL/PMU bring-up to power and de-idle the NPU before it is reachable.

Patches:
  1-2  rocket: per-SoC data struct, then derive DMA width and core count
       from match data (refactors, no functional change); patch 2 also
       bounds-checks the per-SoC cores array.
  3    rocket: RK3568 SoC data; start the PVTPLL compute clock via SCMI.
       Powering on and de-idling the NPU NoC are left to the power domain.
  4    rocket: reset the NPU before detaching the IOMMU on a job timeout
       (the detach otherwise stalls a wedged AXI master and WARNs).
  5    rocket: keep the IOMMU domain attached across jobs instead of
       re-attaching per job (the per-job rk_iommu handshake on the idle
       NPU MMU is slow and noisy); also drop the domain on reset and stop
       the scheduler before IOMMU teardown.
  6    dt-bindings: add the RK3568 NPU compatible; require rockchip,pmu
       for RK3568.
  7-8  arm64 dts: add the NPU and its IOMMU, and enable them on ROCK 3B.
  9    pmdomain: give the RK3568 NPU power domain a regulator so genpd
       owns vdd_npu via domain-supply (Suggested-by Chaoyi Chen).

Dependencies. This series no longer touches the IOMMU driver; two
in-flight Rockchip IOMMU changes are relevant but not part of it:
  - Simon Xue's "iommu/rockchip: Drop global rk_ops in favor of
    per-device ops" [1]. On boards with more than 4 GiB of RAM the NPU
    MMU's DTE must stay below 4 GiB (its DTE address is 32-bit), so the
    NPU IOMMU is described with the "rockchip,iommu" compatible, whose ops
    allocate the page tables with GFP_DMA32; the SoC's other IOMMUs use
    the "rockchip,rk3568-iommu" (40-bit) ops. The driver keeps a single
    global ops pointer, so two ops on one SoC trip its coexistence check;
    this series therefore sits on top of Simon's per-device-ops change,
    which Rockchip (Chaoyi Chen) confirmed is the intended way to give the
    NPU MMU its 32-bit DTE.
  - "iommu/rockchip: disable fetch dte time limit" [2] (Simon Xue / Sven
    Pueschel, in the iommu tree), which sets AUTO_GATING bit 31. v3 carried
    a local AUTO_GATING patch; that unconditional fix has since been merged,
    so this series drops its IOMMU patch. The bit is a no-op on this
    hardware in any case (the page walk completes on its reset value).

Power bring-up. The NPU is brought up through the power-domain layer (no
driver hack): the NPU power-domain keeps its clocks but drops the pm_qos
phandle (qos_npu sits behind the gated NPU NoC, so genpd's power-off QoS
save faults reading it), and vdd_npu is wired as the domain's
domain-supply with the domain marked need_regulator (patch 9), so genpd
brings the rail up before it de-idles the NoC at power-on. The PMU de-idle
then ACKs without PVTPLL running; PVTPLL is only needed for compute.

Status. On v7.1-rc6 the driver probes, creates /dev/accel/accel0,
attaches an IOMMU domain, and submits jobs; the program controller
fetches and broadcasts the command list. Inference output is still
wrong. The kernel side (this series) appears complete; what remains is
mesa/Teflon userspace, which still emits RK3588-tuned config (to be
filed on mesa-dev), and the hardware: with corrected config the NPU
reads the full input and weight tensors (per its DMA counters) but the
MAC/output stage never completes and the job times out, leaving the
output at the buffer's zero-point. It is not in the command list (a
byte-exact replay of the vendor's command list behaves the same).
Pointers from anyone with RK3568 NPU experience welcome.

Known residual. On the first IOMMU attach the NPU MMU is idle with paging
already enabled; the rk_iommu stall/reset handshake does not complete in
that state and logs one burst of timeouts before the (kept) domain
settles. It is harmless here because the job times out regardless, but it
points at an idle-MMU reconfiguration corner the rk_iommu code does not
handle on this block.

[1] https://lore.kernel.org/linux-rockchip/20260310105303.128859-1-xxm@rock-chips.com/
[2] https://lore.kernel.org/all/20260428-spu-iommudtefix-v2-1-f592f579e508@pengutronix.de/

Changes since v3:
  - Dropped the local AUTO_GATING patch: the correct fix (set AUTO_GATING
    bit 31, "disable fetch dte time limit") has since been merged upstream
    [2], so the series no longer touches the IOMMU driver.
  - vdd_npu: new pmdomain patch (9) gives the RK3568 NPU domain a regulator
    (need_regulator) and the board wires domain-supply, dropping the
    regulator-always-on workaround (Suggested-by Chaoyi Chen). It relies on
    the in-tree pmdomain default-off-if-need_regulator handling. The
    "Failed to create device link ... <pmic>" line at pmdomain probe is a
    pre-existing fw_devlink cyclic-dependency warning (the single
    power-controller provides every domain, including the one the I2C PMIC
    needs), seen the same way on RK3588; it is harmless here beyond a few
    wasted EPROBE_DEFER retries, and a proper fix belongs in the
    power-controller driver, not this series.
  - rk356x dts: also assign the CRU CLK_NPU so the NPU AXI bus clock comes
    up at 200 MHz instead of the 12 MHz boot default; order the NPU/IOMMU
    nodes by unit address.
  - rocket RK3568: fetch the SCMI/PVTPLL clock by name (the v3 bulk index
    resolved to the wrong clock); drop the redundant driver PMU de-idle
    writes (handled by the power domain).
  - rocket: clear the attached IOMMU domain on reset; unwind through
    rocket_core_fini() on noc_init failure; stop the scheduler before the
    IOMMU teardown.
  - rocket: bounds-check the cores array against the per-SoC core count.
  - Binding: require rockchip,pmu on RK3568.
  - Dependency framing: confirmed by Rockchip as v2 + 32-bit DTE via
    Simon's per-device-ops series (was framed as v1 in v3).

Midgy BALON (9):
  accel: rocket: Introduce per-SoC rocket_soc_data
  accel: rocket: Derive DMA width and core count from match data
  accel: rocket: Add RK3568 SoC support
  accel: rocket: Reset the NPU before detaching the IOMMU on timeout
  accel: rocket: Keep the IOMMU domain attached across jobs
  dt-bindings: npu: rockchip,rk3588-rknn-core: Add RK3568
  arm64: dts: rockchip: rk356x: Add the NPU and its IOMMU
  arm64: dts: rockchip: rk3568-rock-3b: Enable the NPU
  pmdomain: rockchip: Add a regulator to the RK3568 NPU power domain

 .../npu/rockchip,rk3588-rknn-core.yaml        | 27 +++++++++-
 .../boot/dts/rockchip/rk3568-rock-3b.dts      | 18 ++++++-
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 38 ++++++++++++++
 drivers/accel/rocket/rocket_core.c            | 30 ++++++++++-
 drivers/accel/rocket/rocket_core.h            | 19 +++++++
 drivers/accel/rocket/rocket_device.c          | 15 ++----
 drivers/accel/rocket/rocket_device.h          |  3 +-
 drivers/accel/rocket/rocket_drv.c             | 50 ++++++++++++++++++-
 drivers/accel/rocket/rocket_job.c             | 45 ++++++++++++++---
 drivers/pmdomain/rockchip/pm-domains.c        | 36 +++++++++----
 10 files changed, 245 insertions(+), 36 deletions(-)


base-commit: e43ffb69e0438cddd72aaa30898b4dc446f664f8
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
