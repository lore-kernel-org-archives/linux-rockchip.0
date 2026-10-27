Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05E4606A320
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 08:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ASWMw7Rb;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=OFFgICf0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=C4MWi/2VkzJ7qi4Z8M1O6LEwTHWiGSoYTCK+7ne7ug4=; b=ASWMw7Rb+y6mjJwyIL5V7+MfQC
	JwPkrsYVrWoHU3L1CS2Xt6kXFlJdvZYlzJtwj16oYEpc2OQs0y1S+7KEfEbL922/IeiKID8TFM2a1
	4vCJVYRY9Q4/MpCQahIjtvMoiY8VXm+v8r4O709Lk4g6dvN/5vv7An4Tv5RDP3Ei1bJ3C683hb1UB
	jjCI7Dz+aXA1sfa6H+qyVVb8yCD3cyV2C/vFkcW/8o4A/SjTqS4lBqcQLXS91By2oOBGMghfY7LPa
	szhP0DoBwFDzxLD1JVP8y6NwwFf73Pe/FnbgAL3GlcnlpEGpJSTmhyLCMYL8/8nKocP0mkn9ilRfm
	DC0K3Adg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLcoR-000000044v4-2WXa;
	Tue, 27 Oct 2026 08:45:43 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLcoO-000000044uE-0vgJ
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 08:45:41 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-cc502d509c0so1171716a12.2
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Oct 2026 01:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793090739; x=1793695539; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=9KfHUr/z6C47apYRpj+FRVh4ehA0ckcCIbYTSy/X8ZA=;
        b=OFFgICf04X9hL5pm6YVBfu17jWfmtcMjE0fMCaqEwbsSyWIG6TFTS0tZts26i5ZROG
         A4P5c/qWteeqfXqPRlSyd+atn6aXxOfFRIwHrf7NzXnEbxYqo1pBH1y7io+kDp+8oylq
         /4e0d+zcV6u+408An2j83bhdswCW+J1eqcniEtlU1w4vWYxozwk+efLbDM6CY7YPCCj2
         KWBM3LwU98y6XP/gXEbENiLdLdCocN/mb0vydDBHMRCMbrRWbB6rR2zXV3zGYTYp+Lzb
         NlaruDLIDWXcts5nUWmV/yXXXXJiGRzLwO3siS+sSty5GlidmWe5nefQoLc7/j27Va/6
         npFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793090739; x=1793695539;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9KfHUr/z6C47apYRpj+FRVh4ehA0ckcCIbYTSy/X8ZA=;
        b=FmUJkGWeP6kJufeSMCqV6J9LP0DtqZmSKgiHljumBVyWZpeQRP5T9kQryFroDCHg/y
         10+ZTYqfDpw7U7dmrjYR3eEzrpAT3id4nO9qGYfs1B3ilgbUONExhrobaza+3NESIVYB
         rKRBns4HT58fJvHtQWBGixzQeAMrp+f8GezbnJzSHFqkdIP5h+xCS2ncLzee3Ey2SF7R
         9i5oYsmc0bTBoF7TQaZeBLxCnGGRCTpIt43XHLi+GnqYA/HLglXbSE3CgNbR5Tj5bbT9
         LFEdvNep/lQtx37DdkiAVzd2FZHWZZP58rP37hzUTUDDm/qxPa8CxRv3aQYqVIhFmlFb
         qlwQ==
X-Forwarded-Encrypted: i=1; AKwUvBwsS7ccSfMnFt0pw09rxtdw6rgZWWHnrjtpycEWnhA3nr3T6LYDxip2JxtU7exMI57Mlr7dwtCgQ5R4V8iZ4A==@lists.infradead.org
X-Gm-Message-State: AFq9FYKr0fp5fvalaupBk+KBKCuBMGEvzKUKEsFx/hINgLKti5lDeuJ4
	D2m4pkVcrvKi23LNHyT0LdtAnwHz+SRLcN+wicryLj2q9IINlP+A+08o
X-Gm-Gg: AYBFou1sMxw19xCD8xDmU9cjq4Z5K7LXZC8DgOGTyLvIZg7IL4xu+oANHLAgYwiO1U9
	fZ6Z7nGsGjYOvvx/j1wQ5zXNpevN7jfD1qPs5qXkhltWACUmEcwKQzP0sfD0VaSSBSCy7ALTFHw
	bUvYjIINwYg/vLK0txL/FyZppajY9hqR4BCtSUZ6ZvP9eSQIWGalRtNMdME7yDbc0IXYrKonyIc
	QoeZKw1blA38FGhIps/u2n/GIgWBSLPVLgGsn/SOGDXcpibDfeYHD6v13K/MbXyEDKYpW9lhqbM
	lbaM0cfvauXKZ6EYfgnzYIOjGaDT0TBILaG3/wRkT09yGLJTNB/s9PiRZ7rWgJt7c8LwRQQ1TFR
	Ti0nvPLxVmp15GH/TlfgzFmlXuXF7jYUSGVXyttuG3MzEcOhVUxRLmW5A+0uZiWpfSSCrTb21Gr
	BP4URbeksr7otKUjxAQgUm/x7bOqZ/sfLytJyGJm8fHo47eTcUaNnCY/z7yGBmL1Wrz4UF/y1yw
	beluRdnGsUwlmNps5NjQjhI5tPcRzBdf+OZ4ceLKy3bq7+37So7UOp4Mdsoy//6tU25
X-Received: by 2002:a05:6a21:a91:b0:3e2:6daf:f802 with SMTP id adf61e73a8af0-3e7af7e9985mr7097029637.4.1793090738249;
        Tue, 27 Oct 2026 01:45:38 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cdad8f2c611sm267581a12.10.2026.10.27.01.45.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 01:45:37 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	Joseph Chen <chenjh@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	mfd@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yaozhong Li <yaozhonguwl@gmail.com>
Subject: [PATCH v5 0/3] Fix poweroff restarting the board on Firefly-RK3399
Date: Tue, 27 Oct 2026 16:45:06 +0800
Message-ID: <20261027084511.1992-1-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_014540_274220_91BA3B67 
X-CRM114-Status: GOOD (  29.67  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On the Firefly-RK3399, "poweroff" drops the rails and immediately brings
them back up, so the board reboots instead of staying off. This series
describes the SoC line that has to be released before the RK808 shutdown
write, and lets the rk8xx driver release it.

v4: https://lore.kernel.org/all/20261020140127.720-1-yaozhonguwl@gmail.com/
v3: https://lore.kernel.org/all/20260929140649.55-1-yaozhonguwl@gmail.com/
v2: https://lore.kernel.org/all/20260919122930.1418-1-yaozhonguwl@gmail.com/
v1: https://lore.kernel.org/all/20260909092728.1859-1-yaozhonguwl@gmail.com/

Changes since v4
----------------

* 1/3, following Rob's review: the description is a folded block with
  the two paragraphs separated by a blank line, the dependencies use
  dependentRequired, and power-hold-gpios now requires the generic
  system-power-controller property in all seven schemas. A board that
  adds the lines is expected to switch from the deprecated
  rockchip,system-power-controller at the same time; the Firefly-RK3399
  already uses the generic spelling, so 3/3 is unchanged.

2/3 and 3/3 are unchanged. The driver still honours either spelling,
as before this series.

Sashiko asked on v4 whether the lines should be described as separate
board-level nodes instead of on the PMIC node. That is open question 1
below; I have kept the PMIC-node description for now and would rework
it if the DT maintainers prefer that.

Changes since v3
----------------

* No longer an RFC (Lee). v3 was one because the patched kernel had never
  been booted; the driver had only been exercised through an out-of-tree
  module doing the same calls. It now has: the board's own kernel was
  rebuilt with 2/3 applied, with one unrelated RK3588-only patch left out
  as described below, and the power-off was tested with it, including the
  GPIO claim at probe that the module could not cover. See Testing.

* 1/3 adds the properties to all seven RK8xx schemas, not just rk808
  (Sashiko). rk8xx_probe() reads them for every variant that is the system
  power controller. Each schema gets the dependency on whichever spellings
  of system-power-controller it allows: rk805, rk808, rk817 and rk818 also
  accept the deprecated rockchip,system-power-controller, rk801, rk806 and
  rk816 do not. The subject prefix is now "rk8xx". (v5 accepts only the
  generic spelling, see above.)

* 1/3 also documents that the lines are released in the order listed,
  with one settle delay after the last of them.

* 3/3: the commit message now also says what happens when pwm-backlight
  is not bound (Sashiko): nothing claims GPIO1_B5 then, and on this board
  it reads low, which was tested, but that is not guaranteed in general.

The Sashiko replies are in the v3 thread. 2/3 is unchanged.

The problem
-----------

U-Boot reports the restart as a power-on reset.

Firefly's BSP drives two SoC pins low during shutdown, before writing the
RK808's shutdown bit: GPIO1_D0 and GPIO1_B5. Mainline does not describe
GPIO1_D0 at all, so nothing ever drives it.

What was established on the board is the sequence, not what happens inside
the PMIC. In the cases tested, the shutdown stuck when GPIO1_D0 went from
high to low during power-off prepare, with GPIO1_B5 low, and the shutdown
bit was written after a settle delay. It did not stick when GPIO1_D0 was
never driven, or when GPIO1_B5 was held high. With the backlight bound,
pwm-backlight's shutdown callback drives GPIO1_B5 low in device_shutdown(),
before the PMIC's handler runs, so only GPIO1_D0 needs to be described.

Prior art
---------

The vendor behaviour comes from Firefly's own change to the rk808 driver
in their BSP; it is not in Rockchip's develop-4.4 or develop-4.19 trees.
It reads two single GPIOs from the PMIC node, pmic,hold-gpio and
pmic,stby-gpio, drives both high at probe, and at power-off drives stby
low, then hold low, waits 200 ms and writes the shutdown bit. On this
board stby is GPIO1_D0 and hold is GPIO1_B5.

Its board files use one or both: both on the Firefly-RK3399 and the
RK818-based Firefly-RK3128 FirePrime, hold only on the ROC-RK3399-PC
family, stby only on a few others. That is where minItems 1 and maxItems 2
come from. None of those boards other than this one uses the new property
in mainline.

On the ROC-RK3399-PC, the vendor describes GPIO2_A6 as pmic,hold-gpio,
while mainline's rk3399-roc-pc.dtsi describes the same pin as the enable
GPIO of the vcc_sys fixed regulator. I have not checked whether that board
powers off correctly on mainline.

The vendor device tree marks stby as GPIO_ACTIVE_LOW, but the vendor driver
uses the legacy integer GPIO API, which ignores the flag, and drives the
line high at runtime. That matches the physical level measured here, so
this series describes the line as active high.

Why not gpio-poweroff
---------------------

gpio-poweroff drives the line active, back to inactive, then active again,
waits timeout-ms and then WARN()s on the assumption that it is itself
performing the power off, and it registers at SYS_OFF_MODE_POWER_OFF. Here
the RK808 performs the power off from its own POWER_OFF_PREPARE handler,
and the line only has to be released and left released before that.

Open questions
--------------

These are still open; I would change the series if a reviewer prefers
otherwise.

1. Should such a line be modelled in the PMIC driver at all, rather than
   as a separate driver at POWER_OFF_PREPARE, or as a regulator enable as
   mainline does for the ROC-RK3399-PC? On this board the line was tested
   going low from power-off prepare, 200 ms before the PMIC write; I do not
   know whether a regulator description would achieve that.
2. Would two named properties for the vendor's two roles, hold and
   standby, be preferred over an array whose order sets the release order?
3. The vendor calls GPIO1_B5 pmic-hold and its backlight node has no enable
   GPIO, so mainline's backlight enable-gpios on that pin may be wrong.
   Without a schematic I have left it alone; the series does not depend on
   the answer on this board.

Testing
-------

Hardware: Firefly-RK3399 (4 GB, RK808).

The hardware runs below were done with v4. v5 only changes the
binding schemas, so the driver and the device tree tested are the same.

Kernel: the board's Armbian 6.18.45 kernel, rebuilt from the same tag
and configuration and Armbian's current patch set, with 2/3 applied on
top. One Armbian patch that adds an RK3588-only IOMMU driver had to be
left out because its current version no longer builds on 6.18.45;
nothing on the RK3399 uses it. The resulting kernel package, modules
included, was installed in place of the original one. No out-of-tree
module was loaded during these runs, and the board's local power-off
workaround was disabled.

Device tree: the board's own device tree with the properties of 3/3 added,
power-hold-gpios for GPIO1_D0 and a 200 ms delay, and the backlight's
enable-gpios unchanged. pwm-backlight was bound and set to full
brightness, so it drove GPIO1_B5 high while the system ran.

Before each run a script checked, from /sys/kernel/debug/gpio, that
GPIO1_B5 was owned by the backlight and driven high, and that GPIO1_D0 was
claimed by the rk808 driver with the consumer name "power-hold" and driven
high when the property was present, and unclaimed when it was not:

  same kernel, power-hold-gpios absent:   restarted after 41 s
  same kernel, GPIO1_D0 described:        3 of 3 stayed off

"Stayed off" means the board did not come back on the network within
5 minutes and its fan and LEDs were seen off; this caught the control
run's restart. The serial console was not available. In addition, on
each following power-up the RK808 RTC had been reset (this board has no
RTC backup cell), which corroborates that the PMIC had lost power.

Build and schema, against a clean mainline tree (28924df2a):
drivers/mfd/rk8xx-core.o builds with W=1 and no warnings, and
dt_binding_check is clean for all seven schemas. dtbs_check for
rk3399-firefly reports no PMIC diagnostics. For each schema, a device
tree with power-hold-gpios but no system-power-controller is rejected:
using an in-tree board for rk805, rk806, rk808, rk817 and rk818, and the
schema's own example for rk801 and rk816, which have no in-tree users.
For rk805, rk808, rk817 and rk818, which still accept the deprecated
spelling, power-hold-gpios together with rockchip,system-power-controller
is rejected too, and the same board with system-power-controller passes.
checkpatch is clean apart from an unknown-commit-id warning for the
Fixes: tag, caused by the shallow clone; the commit exists upstream.

The 200 ms is the value the vendor uses; the threshold was not
characterised.

This series was prepared with the help of LLM-based assistants (Claude
Code, cross-reviewed with OpenAI Codex): the analysis, the code and the
text were drafted with them. The measurements were taken on my board, and
I have reviewed the result.

Yaozhong Li (3):
  dt-bindings: mfd: rk8xx: add board level power hold GPIOs
  mfd: rk8xx: Release the power hold GPIOs before powering off
  arm64: dts: rockchip: fix power-off on Firefly-RK3399

 .../bindings/mfd/rockchip,rk801.yaml          | 24 +++++++++
 .../bindings/mfd/rockchip,rk805.yaml          | 24 +++++++++
 .../bindings/mfd/rockchip,rk806.yaml          | 24 +++++++++
 .../bindings/mfd/rockchip,rk808.yaml          | 24 +++++++++
 .../bindings/mfd/rockchip,rk816.yaml          | 24 +++++++++
 .../bindings/mfd/rockchip,rk817.yaml          | 24 +++++++++
 .../bindings/mfd/rockchip,rk818.yaml          | 24 +++++++++
 .../boot/dts/rockchip/rk3399-firefly.dts      |  2 +
 drivers/mfd/rk8xx-core.c                      | 49 ++++++++++++++++++-
 include/linux/mfd/rk808.h                     |  3 ++
 10 files changed, 220 insertions(+), 2 deletions(-)


base-commit: 940de590b839f71d6dc846160534bf202401b8b7
-- 
2.55.0.windows.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
