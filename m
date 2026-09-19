Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF735C982DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 12:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9JoWWKR8S5iwXCfShNT0TAtp2CbWuxWnrsFZvZ3vzVY=; b=00YbSoU/SEbbrG
	umxp2FtzrXkuSm7zw4FuL4Y5Pj9aweVf7MexhGFk0Mrwcy+MwZ+mMbvxchvEIGWQ4N78jSl3laL20
	ZgrFcKQcvhKgj/PpQp9ignltpzuNeVomhh+0vQmymJk5ZfIFUYBw4zB7UvbOzNOJXZ4BOBKR3Zuip
	i5t9ePavMDFSQrrbpnqcwN05CoDAfTE9FDKI5bFK3xFvMYdUW+hT+3OdJioTscGjt2MjMJDJM+vdv
	oZZXHcR2OST2s0IV8UU7Ogjvu580YhTW963X95XjM/yBN2h/YpGBaPvIim4ZlXYBVBAd+8OLU705T
	Fsgn6Bpz4PU+Zbhhqsuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uCT-0000000GEwv-3o46;
	Sat, 19 Sep 2026 12:29:49 +0000
Received: from mail-pj2-x11.google.com ([2607:f8b0:4864:39::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uCQ-0000000GEvl-309l
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 12:29:49 +0000
Received: by mail-pj2-x11.google.com with SMTP id d9443c01a7336-2dd58e1e2c7so14390475ad.0
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Sep 2026 05:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789820985; x=1790425785; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9Cz2gzGY048RFK6yaT1IK/Bb3cZA3GbpsU47/37Y+Pk=;
        b=Dv2oh4nCHk54RJsC3Xqh+zQxC1BN5ozG4Wvh7DP1e+0tfq2pPLqF+83h64P+vMv8St
         Zyx+S8ly4JdI/wAbTl0S7RPs78i7xadWL8Y2Pxmc9OsIwskjg/fbJFhcJH1pMJfg8IHE
         Lme/RlSyxZ0XeE3KL1BHY8Aaeo1YLO+GtpLSTPoxjqve+rNG84mhanwTaMrtdosJkPSv
         FNChLvb/sTFzx4WUCK+MW7D4HV/1VNQAToO9AzCB3Otqvf209kG+PDS1rRMZbipR5Cqr
         lCaMbtxSHX8PEOvob+0gKwe1fln+ApQB3OHr5Zcj4LlVVAMSEGnaNhzwCi1kGZtNngma
         YVVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789820985; x=1790425785;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=9Cz2gzGY048RFK6yaT1IK/Bb3cZA3GbpsU47/37Y+Pk=;
        b=DMEjLDFuYF/ZX+sVCfzllKsJBH0X4s+SNrfBraghPGEe2pVVdmDZR+FxdkyNpb0gPP
         HPgQ8O5SoAi4IVCi4avKFmtHhTubXgtn2uluWVVskTQfN2W8rK7OQFgrhXxj7lNbUWZg
         /+12BDylZJDVw4RTVm+WTLop477t6S8danOaGncycVyjH+VBUNNq06nDMN6pjrwWpFiI
         xoJo8G6ICX4f0rSc3F/jRJRRCaxtzeOoTlRzo0fBObFRWBrgo6NFjKv/UYR3jnurMz/d
         65MB//Yx67W/bZNI9vc5PxQBlGZgOYTWHk1ZdFYYRabgWZ/9y8zmXGjV+n6n2vp9r2uI
         9Xew==
X-Forwarded-Encrypted: i=1; AKwUvBz3Jt9YDcby6cS3qKqZwH/ACPUsPK+ObPJrnBVlbnG7SpZ0DTKUjevfVj3C4d5eFPt7LB8rxEYqpYGb3P6pfg==@lists.infradead.org
X-Gm-Message-State: AFuF++mdOM3THOn+N97O1M0X7ksm2t4H7xD3vh0qdKdfdplr8mEhizpB
	ivhIMGj7gTK7rxSQJW8DVZ1u8mvb4rmRwQ3Yal5DZoepAd02b1WtWUCM
X-Gm-Gg: AYBFou2ql3jQLA+pQRX/uc2qCiZ5gII4KLILuVjKzWPYZPHYLcLy2DnFOx9VbSfGqPr
	/Xkm9guYNNmIqk1czw+s4LzIdzCuLJUHX10N8/hQ0hboZo+Z8RLcRCj155WDpeFFQiIxuhOqr5c
	4U6U9SumhYNHJqWdpe2+Q8YrunlqqZsaq3bcqhAXKjLNYEidrHtQT0hcCsI612qRQSM8EB+zRPY
	iWNn4KY5bBcbGD3M6RCczY0NppMBxQXAufVl7jXH6BbdqMGatqNNDtM7uRdzg4gkJQ0K17Bwu5v
	QkuCxt7DKG4BNQNs773YMXlVdeT+tM9op2vS3/svK03w118jfcJI/XQPAwzAo8bgh8HpYvFrnnb
	LGo9vQly9+ESzivHMCfLXPoZyaR44kc2bOvrOV4bUMtM9i8SL/3HI/eDdID08RchzQV50eOfgKU
	XDx4iPH/92PJZEUyLDyWg20C01MFzXHy/lsyZwVQTL3VsjNPn+fks573FQaPIHP3gnNEZEIHn0n
	OHkTuQ65q4=
X-Received: by 2002:a17:903:1a88:b0:2d9:3850:2741 with SMTP id d9443c01a7336-2ddb16d6a6bmr103231325ad.0.1789820985169;
        Sat, 19 Sep 2026 05:29:45 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ddc17d7115sm9552155ad.66.2026.09.19.05.29.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 05:29:43 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>
Cc: mfd@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yaozhong Li <yaozhonguwl@gmail.com>
Subject: [RFC PATCH v2 0/3] Fix poweroff restarting the board on Firefly-RK3399
Date: Sat, 19 Sep 2026 20:29:27 +0800
Message-ID: <20260919122930.1418-1-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20260909092728.1859-1-yaozhonguwl@gmail.com>
References: <20260909092728.1859-1-yaozhonguwl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_052946_760565_8E130BD2 
X-CRM114-Status: GOOD (  23.70  )
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
Testing), and the open questions from v1 about placement and naming are
unanswered.

v1: https://lore.kernel.org/all/20260909092728.1859-1-yaozhonguwl@gmail.com/

Changes since v1, addressing the Sashiko review Lee Jones asked me to act on
--------------------------------------------------------------------------

* [Medium] "Acquiring 'power-hold' GPIOs after registering MFD child devices
  can cause probe deferral thrashing."

  Fixed, and the finding was correct. v1 claimed the array after
  devm_mfd_add_devices(), so a -EPROBE_DEFER from the GPIO provider would
  have unwound the regulators, RTC and clocks on every retry. v2 claims it
  before devm_regmap_add_irq_chip(), i.e. before anything is registered on
  the device: the property test is hoisted into a bool and reused for the
  sys-off registration further down, which is otherwise unchanged. A comment
  records why the acquisition has to stay there.

  Worth noting that this is exactly the part v1 disclosed as untested - the
  out-of-tree proxy used for the functional testing claims the GPIOs at
  module load, so it never exercises the probe path at all.

* [Low] "The commit message description violates the MFD subsystem formatting
  rules by using a lowercase letter."

  Fixed: "mfd: rk8xx: Release ...". The dt-bindings and arm64 dts subjects
  keep their own subsystems' lowercase convention.

* The binding now states that power-hold-gpios is only meaningful together
  with system-power-controller, which is what the driver implements. This is
  not expressed as a "dependencies" entry because the driver also accepts the
  deprecated rockchip,system-power-controller, and a dependency on one
  spelling would reject device trees using the other.

* checkpatch --strict alignment fix in the GPIO acquisition; no functional
  change.

The problem
-----------

On the Firefly-RK3399, "poweroff" drops the rails and immediately brings
them back up, so the board reboots instead of staying off. U-Boot reports
the result as a power-on reset.

Firefly's BSP drives two SoC pins low during shutdown, before writing the
RK808's shutdown bit: GPIO1_D0 and GPIO1_B5. Mainline does not describe
GPIO1_D0 at all, and describes GPIO1_B5 as the backlight enable GPIO,
although the vendor's own backlight node has no enable GPIO. Nothing
therefore releases either line at power-off.

What was established on the board is the sequence, not what happens inside
the PMIC: the shutdown sticks only when GPIO1_D0 goes from high to low
during power-off prepare, with GPIO1_B5 low, and the shutdown bit written
after a settle delay. Leaving GPIO1_B5 asserted makes the board come back
up even when GPIO1_D0 is released correctly, which is why the backlight
cannot keep that pin.

Why not gpio-poweroff
---------------------

gpio-poweroff drives the line active, back to inactive, then active again,
waits timeout-ms and then WARN()s on the assumption that it is itself
performing the power off, and it registers at SYS_OFF_MODE_POWER_OFF. Here
the RK808 performs the power off from its own POWER_OFF_PREPARE handler,
the lines only have to be released and left released, and there are two of
them.

rk3188-bqedison2qc.dts does drive a pwr_hold pin from gpio-poweroff, which
works there because pulling that line low is by itself enough to cut the
power. That is not the case here - driving a line low at runtime, with no
PMIC access at all, left this board running for the 10 s it was observed.

Open questions (unchanged from v1)
----------------------------------

1. Does this belong in the PMIC driver at all, rather than a small separate
   driver registering at POWER_OFF_PREPARE with a higher priority?
2. Should the property be rockchip,power-hold-gpios? The vendor DT calls
   these pins pmic,stby-gpio and pmic,hold-gpio.
3. Should the DT also carry a pinctrl group for the pins, as the vendor does?
4. Dropping the backlight enable-gpios is required for the sequence to work,
   but nobody here has the schematic to confirm that property was wrong to
   begin with.

Testing
-------

Tested on a Firefly-RK3399 (4 GB, RK808), shutdown captured on the debug
UART at 1500000 8N1. A run counts as "stayed off" only if the console
produced nothing for 150 s and there was no ICMP reply and no USB gadget
afterwards.

The patched kernel has NOT been booted: CONFIG_MFD_RK8XX is built in on the
test system and a full kernel build does not fit on it. The series compiles
(aarch64, W=1, no warnings), checkpatch --strict is clean, dt_binding_check
passes, and dtbs_check reports only the pre-existing usb2phy diagnostics for
this board, reproduced unchanged on the unpatched tree.

The functional evidence comes from an out-of-tree module using the same
gpiod array consumer name, the same GPIOD_OUT_HIGH, the same per-descriptor
gpiod_set_value_cansleep() loop and the same msleep() as this series,
against a device tree carrying exactly these properties, registered at
POWER_OFF_PREPARE with SYS_OFF_PRIO_HIGH + 1. It does not exercise the probe
path, so the v2 reordering above is not covered by it.

Every run started from a cold boot with both pins at their reset state
(inputs, low), verified by reading the GPIO registers beforehand:

  both lines, as in this series:            3 of 3 stayed off
  GPIO1_D0 only, GPIO1_B5 left low:        3 of 3 stayed off
  GPIO1_B5 only, GPIO1_D0 left low:        0 of 2 stayed off
  GPIO1_D0 released, GPIO1_B5 left high:   0 of 2 stayed off
  nothing driven (mainline today):         restarts after about 2 s

On this particular board pwm-backlight does not bind, so GPIO1_B5 stays an
input and describing GPIO1_D0 alone was enough here. That is not true in
general, which is why both lines are described and the backlight property is
dropped.

The 200 ms is the value the vendor uses; the threshold was not characterised.
The msleep() was measured at 200 to 201 ms on the console timestamps.


This series was prepared with AI assistance (Claude); the analysis and
the measurements on the board were reviewed by the author.

Yaozhong Li (3):
  dt-bindings: mfd: rk808: add board level power hold GPIOs
  mfd: rk8xx: Release the power hold GPIOs before powering off
  arm64: dts: rockchip: fix power-off on Firefly-RK3399

 .../bindings/mfd/rockchip,rk808.yaml          | 21 +++++++++
 .../boot/dts/rockchip/rk3399-firefly.dts      |  4 +-
 drivers/mfd/rk8xx-core.c                      | 47 ++++++++++++++++++-
 include/linux/mfd/rk808.h                     |  4 ++
 4 files changed, 73 insertions(+), 3 deletions(-)

-- 
2.55.0.windows.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
