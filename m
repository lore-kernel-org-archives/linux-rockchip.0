Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2782ECA5FAE
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 14:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zr0YJDsohmhB/pU5ov+X+NyYwlHSoaaYJFXRSIfrDWg=; b=N8PcCrMVvj1Ltq
	mJWomi7Ux6ubfuMmRmlhOhydciXGJhdkmjTZSvrLnsX1XOXZkFZoi2svamw5JHOVYzme7o4wd4WNP
	RbVws97N/W8lXKmRs/Uz4J7HK+sXWEmUQaHDCk+2HIAwUBNoIJgwgn+Ab/SksM82LoxysfAdchyem
	GHaOBVC3Ivo4LptBElTXLW3RlTRHnk0kyU8iMHaPdg8wqOqm5SStpEDmluMw8qtaPjhl2LjYs+0bY
	RUqk/srce7RbEoag+IU8SO+Y10RQdXd4TFNfdauUr91JU65p2xE90yHTB/aQnZ/YzT7qCpyvGjktC
	uar69pZOYJwvxUkmQpqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBYU7-00000003kK2-2e5H;
	Tue, 29 Sep 2026 14:07:07 +0000
Received: from mail-pz2-x2b.google.com ([2607:f8b0:4864:3b::2b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBYU5-00000003kJQ-02Wp
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Sep 2026 14:07:06 +0000
Received: by mail-pz2-x2b.google.com with SMTP id 41be03b00d2f7-cc78dd412cfso1586588a12.0
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Sep 2026 07:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790690823; x=1791295623; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=SSV8oGTACxJ77/sOcrKC+cMYGnFLM5ZJhrfSXvvMA2c=;
        b=KMZLxfS++VFZ8h8xVSaIUMRnWTvEkkasrWJfLODdwy5Z/3bvQodSYpLzuR9B5b5VJS
         Qlec7XI4U8pGqCu3LNaznh+P2G+4xVMPOSwDwjAmVyeU8enopUvKU+3hu43zog2GBXjD
         x30vXXxw5ZKgdKhR2fPugO1fdCimHqQB5XXjGClF4DAjPNTRw6wN6T9OKKVEVncviCbm
         +rbUYc9eCP2VfRw1pKEl9VIOf+Kp5/Sthvvjs5gfGn8qMJCebMcOjFgItSfFUqyZhswJ
         lEueZjp1i31rK8qAI5+lgj+XUolvobAl6aJggFcw2/nV8pn9Hn9kHx7oumA3opnnY3Bt
         sIHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790690823; x=1791295623;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SSV8oGTACxJ77/sOcrKC+cMYGnFLM5ZJhrfSXvvMA2c=;
        b=fOfxyLzR8OydFtzLMFTpBWPITja1QZMP1rvO8JQcxVCdhc+O8LiebOik5Ap40hh15c
         Kk4+/6tJLHYMa0bT9budzPDLVOpf9X8+AkysglP1S3w8lQbO8xWFvhyK+yRA1HT+Yoob
         +vXOKvh5/7kcErSairh54Yy0iPr8PZlRgubUltJeYkXm9oE62iW+FFVF+8pf8e1369id
         /ooi75AhfGjXoB5BZ/RVGjvH+/Cokcs7VG+McivH3pMo0j4K09xvUJCne9B5gqn8l2So
         9c2ZzBOvAFx3LlzrNjZygZYBmw3e2V4DTCyNotuZf+RQSSJ9VfMwG3KMntLLh/apWalA
         9uSg==
X-Forwarded-Encrypted: i=1; AKwUvBzHXH4gtu8v7HOyddYT2Q8A8FXqb7BK+B/rzlH3Y5R9qrYkf1eIYUawIMSKd8HeufYivOf42PWmpJiK7Tz8ZA==@lists.infradead.org
X-Gm-Message-State: AFuF++n5LFsrpw3Git6T+zKElZgJpPijF9isH+QELQm2dxYBZWRXB/U0
	jEUM8nWj/u1IT9su0sGGtSqUgTSqy9HREWgJhaek9dS73cZeUXGLU1MR
X-Gm-Gg: AYBFou3xJEN3G3v8Ph0X9AmsjDDqCdjk6jtHqHdA7aUXVV2b2ci1XQdvEw/Wnb4Q1dw
	DgtVUILVMOon5ojN8Y5oPVd67rlvPnZjy7no1p3kWvEHUo6x+YnsucDqvV3FAAhhN4DQE19Ov8a
	CozwTOOilFalNkb2UD676003oBqR7tHcg2xFJDVYtuaR5uajeitNIZ4s+xeB69gpVYnTYMl645a
	gfilxbKBHE1gRubS97YamhSG/zFRtFKUWu2l5YIcLXENHqe7ITyKrBJ4iKcSYpeOyeLootia7Qs
	aRO/8ONTusEvBvzO09jT/lxQCwRmq18MSOPYA7ono0NS4wnbHkteCLU1MjYw8h4QGvy3AJLuDzr
	6whfF+yYqJr1SeG5+djfL2S/mpbhn95BsTHBM6LDEwaQ3Usfg+pufLaEv841KblXbWbSAa/MR17
	8bqpR1dXdh3Y9xr1zAGNDXDzvDrzC/6E6FkvpgD/W9zlICLVDqrafHHHvSF5euxYF/oZHG2xJ+J
	oNbE/0hDSQy
X-Received: by 2002:a05:6a21:9198:b0:3dd:a197:cf22 with SMTP id adf61e73a8af0-3de0e8f5e7emr15327959637.70.1790690823269;
        Tue, 29 Sep 2026 07:07:03 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc7b0f4ab05sm3526989a12.29.2026.09.29.07.06.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2026 07:07:02 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	mfd@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yaozhong Li <yaozhonguwl@gmail.com>
Subject: [RFC PATCH v3 0/3] Fix poweroff restarting the board on Firefly-RK3399
Date: Tue, 29 Sep 2026 22:06:45 +0800
Message-ID: <20260929140649.55-1-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_070705_066628_1D925F9E 
X-CRM114-Status: GOOD (  33.95  )
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

Still an RFC: the patched kernel has not been booted on hardware (see
Testing), and the placement and naming questions are still open.

v2: https://lore.kernel.org/all/20260919122930.1418-1-yaozhonguwl@gmail.com/
v1: https://lore.kernel.org/all/20260909092728.1859-1-yaozhonguwl@gmail.com/

Changes since v2
----------------

The main change is in 3/3, and it reverses what v2 did there.

* v2 described both GPIO1_D0 and GPIO1_B5 and dropped the backlight's
  enable-gpios, on the grounds that the backlight could otherwise keep
  GPIO1_B5 asserted. That reasoning was wrong. device_shutdown() runs
  before the power-off prepare handlers, and pwm-backlight's shutdown
  callback drives its enable GPIO low there when the backlight is on; when
  it is off, pwm-backlight has already driven the pin low. So with the
  backlight bound, GPIO1_B5 is low when the PMIC's handler runs. The v2
  failure case - GPIO1_B5 still high at that point - came from a test
  module holding the pin, which the real shutdown sequence does not do.

  v3 describes GPIO1_D0 only and leaves the backlight alone. It was tested
  with pwm-backlight bound and at full brightness, i.e. with the backlight
  driving GPIO1_B5 high while the system ran: 3 of 3 stayed off (see
  Testing).

  v2 also said pwm-backlight does not bind on this board. That was wrong
  too: my own workaround unbound it to take GPIO1_B5. Without that it binds
  normally.

Lee's review of 2/3:

* "What is i here? Can it have a better name?"
  Renamed to "line" and declared in the for statement.

* "Why wrap here? Some of the surrounding lines are clearly longer."
  The devm_gpiod_get_array_optional() call now starts on the assignment
  line; only the last argument is continued.

* "What if this doesn't return a value?" (power-hold-delay-ms)
  The property is optional and the binding documents a default of 0. rk808
  comes from devm_kzalloc(), so when the property is absent the delay stays
  0 and the shutdown request follows the release with no wait. A comment
  now says so at the call. I did not add an explicit assignment, as it
  would only repeat the zeroing. A malformed value is not reported either:
  the read fails and the delay likewise stays 0. If you would rather have
  probe fail in that case, I can do that.

* "Do we do this for all of the other structs? Why not add the include?"
  The forward declaration is gone; rk808.h includes
  <linux/gpio/consumer.h>.

Sashiko's [Low] on 1/3, not addressed in v2:

* It asked for power-hold-gpios to depend on system-power-controller. v2
  declined because the driver also accepts the deprecated
  rockchip,system-power-controller, and a plain dependency on one spelling
  would reject device trees using the other - including the binding's own
  example. v3 adds it as a dependentSchemas entry with an anyOf over both
  spellings. Checked with dtbs_check on rk3399-firefly in three variants:
  the current spelling and the deprecated one both pass, and with neither
  present the anyOf fails naming both properties.

Other:

* The binding description names both spellings, and no longer says that
  every line involved must be listed, which 3/3 no longer follows.
* The 1/3 commit message now says where the bound of two entries comes
  from (see Prior art below).
* Each patch now carries Assisted-by: LLM. v1 and v2 disclosed the
  assistance only in the cover letter.

The problem
-----------

On the Firefly-RK3399, "poweroff" drops the rails and immediately brings
them back up, so the board reboots instead of staying off. U-Boot reports
the result as a power-on reset.

Firefly's BSP drives two SoC pins low during shutdown, before writing the
RK808's shutdown bit: GPIO1_D0 and GPIO1_B5. Mainline does not describe
GPIO1_D0 at all, so nothing ever drives it.

What was established on the board is the sequence, not what happens inside
the PMIC. In the cases tested, the shutdown stuck when GPIO1_D0 went from
high to low during power-off prepare, with GPIO1_B5 low, and the shutdown
bit was written after a settle delay. It did not stick when GPIO1_D0 was
never driven, or when GPIO1_B5 was held high. With the backlight bound,
GPIO1_B5 is low at that point, as described above, so only GPIO1_D0 needs
to be described.

Prior art
---------

The vendor behaviour comes from Firefly's own change to the rk808 driver
in their BSP; it is not in Rockchip's develop-4.4 or develop-4.19 trees.
It reads two single GPIOs from the PMIC node, pmic,hold-gpio and
pmic,stby-gpio, drives both high at probe, and at power-off drives stby
low, then hold low, waits 200 ms and writes the shutdown bit. On this
board stby is GPIO1_D0 and hold is GPIO1_B5.

Its board files use one or both: both on the Firefly-RK3399 and
Firefly-RK3128 FirePrime, hold only on the ROC-RK3399-PC family, stby only
on a few others. That is where minItems 1 and maxItems 2 come from. None
of those boards other than this one uses the new property in mainline.

One of them is relevant to question 1 below. On the ROC-RK3399-PC, the
vendor describes GPIO2_A6 as pmic,hold-gpio, while mainline's
rk3399-roc-pc.dtsi describes the same pin as the enable GPIO of the vcc_sys
fixed regulator. I have not checked whether that board powers off
correctly on mainline.

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

rk3188-bqedison2qc.dts does drive a pwr_hold pin from gpio-poweroff, which
works there because pulling that line low is by itself enough to cut the
power. That is not the case here - driving a line low at runtime, with no
PMIC access at all, left this board running for the 10 s it was observed.

Open questions
--------------

1. Does this belong in the PMIC driver at all, rather than a small separate
   driver registering at POWER_OFF_PREPARE with a higher priority? Or, as
   mainline already does for the ROC-RK3399-PC, should such a line be
   described as a regulator enable instead? On this board the line was
   tested going low from power-off prepare, 200 ms before the PMIC write;
   I do not know whether a regulator description would achieve that.
2. Should the property be rockchip,power-hold-gpios? And since the vendor
   has two named roles, hold and standby, would two named properties be
   preferred over an array whose order sets the release order? This board
   only needs one line, but other boards in that family use both.
3. Should the DT also carry a pinctrl group for the pin, as the vendor does?
4. The vendor calls GPIO1_B5 pmic-hold and its backlight node has no enable
   GPIO, so mainline's backlight enable-gpios on that pin may be wrong.
   This series no longer depends on the answer. On this board the pin was
   low when the shutdown bit was written in both configurations tested:
   with pwm-backlight not bound, leaving the pin an input (the v2 runs),
   and with it bound and the backlight on (v3). Without a schematic I have
   left it alone.

Testing
-------

The patched kernel has NOT been booted: CONFIG_MFD_RK8XX is built in on the
test system and a full kernel build does not fit on it.

Build and schema, on the board against a clean mainline tree (28924df2a):
the unpatched tree was built first as a control, then the series applied
and drivers/mfd/rk8xx-core.o built with W=1 with no warnings. drivers/mfd,
drivers/regulator and drivers/rtc were rebuilt for the new include in
rk808.h with no errors or warnings. dt_binding_check is clean, and
dtbs_check reports only the pre-existing usb2phy diagnostics for this
board, which the unpatched tree reports unchanged. The built DTB carries
power-hold-gpios for GPIO1_D0 only, and the backlight's enable-gpios is
still present. checkpatch is clean apart from an unknown-commit-id warning
for the Fixes: tag, caused by the shallow clone; the commit exists
upstream.

Functional, v3 configuration: the board's own device tree with the
properties of 3/3 added - power-hold-gpios for GPIO1_D0 only and a
200 ms delay, with the backlight's enable-gpios unchanged - and an
out-of-tree module using the same gpiod array consumer name, the same
GPIOD_OUT_HIGH, the same per-descriptor gpiod_set_value_cansleep() loop
and the same msleep() as this series, registered at POWER_OFF_PREPARE
with SYS_OFF_PRIO_HIGH + 1.
pwm-backlight was bound at full brightness. Before each run, a script
checked that the backlight owned GPIO1_B5 and drove it high, that the
module owned GPIO1_D0 and drove it high, and that the GPIO1 input register
read both lines high:

  GPIO1_D0 not driven (control):            restarted after 39 s
  GPIO1_D0 only, backlight owning B5:      3 of 3 stayed off

The serial console was not available for these runs. "Stayed off" was
judged by the board not coming back on the network within 5 minutes and
the fan being seen to stop; this caught the control run's restart.
As a result the level of GPIO1_B5 at the prepare handler was not recorded
directly - the module samples it, but only to the console.

The module does not exercise the probe path, so the claim ordering in 2/3
is covered only by review and the build.

Earlier runs from v2, judged on the serial console (nothing for 150 s, no
ICMP reply, no USB gadget), each from a cold boot with both pins at their
reset state (inputs, low), still apply. The fourth line is the case v2
mistook for the backlight's behaviour: there the test module held
GPIO1_B5 high.

  both lines, as in v2:                     3 of 3 stayed off
  GPIO1_D0 only, GPIO1_B5 left low:        3 of 3 stayed off
  GPIO1_B5 only, GPIO1_D0 left low:        0 of 2 stayed off
  GPIO1_D0 released, GPIO1_B5 held high:   0 of 2 stayed off
  nothing driven (mainline today):         restarts after about 2 s

The 200 ms is the value the vendor uses; the threshold was not
characterised. The msleep() was measured at 200 to 201 ms on the console
timestamps.

This series was prepared with the help of LLM-based assistants (Claude
Code, cross-reviewed with OpenAI Codex): the analysis, the code and the
text were drafted with them. The measurements were taken on my board, and
I have reviewed the result.


Yaozhong Li (3):
  dt-bindings: mfd: rk808: add board level power hold GPIOs
  mfd: rk8xx: Release the power hold GPIOs before powering off
  arm64: dts: rockchip: fix power-off on Firefly-RK3399

 .../bindings/mfd/rockchip,rk808.yaml          | 27 ++++++++++
 .../boot/dts/rockchip/rk3399-firefly.dts      |  2 +
 drivers/mfd/rk8xx-core.c                      | 49 ++++++++++++++++++-
 include/linux/mfd/rk808.h                     |  3 ++
 4 files changed, 79 insertions(+), 2 deletions(-)


base-commit: 940de590b839f71d6dc846160534bf202401b8b7
-- 
2.55.0.windows.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
