Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 043BAC79FAD
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 09:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BxXk1/nTZTaTZdiaNxcTknY8LpwefsdpDWyoCFn6XEE=; b=mIFxbRzZejM6Sb
	KjD/1XBg/D6MnCRZiFN33n/eVFT+mwpWZvdz7P04d9fhOm8v+si4+zxGZtg4cxNy++QwDlxB1u+4N
	y+xyISisGSWmmAmvlenuux2Tzer723itItk/R/X7TaWUcGg9lCb8tAztz3/eo2FNpHFVJxPy8dxi1
	40s4K6gUW2IEI+6lF2xE2UTTGobLLsL1ozIIPJGH+SlEAdrPtU+RKgJ/lWSNjkO+zeffvQPUBNNu1
	UXFSH5c369RwOy5fnAfdYNWEU/FpKqr0jaSb2mGZHRgw20DlQxvaONdYzkh+1VCnjrP49he0wisns
	QKALekaaKjYbKAr2LyLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Eb3-0000000BHiy-3wJR;
	Wed, 09 Sep 2026 09:28:02 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Eaz-0000000BHi7-3SZx
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Sep 2026 09:27:59 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-8535a9be75eso4201234b3a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Sep 2026 02:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788946076; x=1789550876; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=sSBbj47812SaQ+jAqx/rEDA44UrUN84Iomtwdt6boBo=;
        b=MM9yD7/gdl6//0qRXQ5qLErHNMcA6iQU7iu8Mk9WIk17M+wImSUYEWzYBwYC+g6/+v
         XYC3gnB6fIs3mfU8jLfxt7niwW/zTVnIwuKqD/upb+vl4e2rAleOhD+i+JUYuj8w+IdQ
         DHYh0BTZn1Qmdr3jtIym17+8nCQHIWjirM3S2EAEXAEL8ZOfGGiTaM2Y8G2vrmYDffOs
         iTe+4nBbxn2Qz9ju1BmxN9zaIAc2olf2uGt6j+XprHJV3flEk1S2doZQglrLE4p+lMoo
         kwBLMI1iICsFKm223b64lC70BrhZtZOIhH+2iwo9yEsUBsK5YxJsYsP0eBlRDOW80KGt
         C2pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788946076; x=1789550876;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sSBbj47812SaQ+jAqx/rEDA44UrUN84Iomtwdt6boBo=;
        b=YqaO3SWVGZBWTBQtvtJ7vqcXKU4LfdNUIxY93HzBsJAftkGaBUZTfoB8Xd/ymy0Irn
         fwQohXYIFe6EJn0RDoyK3GswmXwp4Nn6VxasS3hIg87av3lMZT7moAteN8+8Ebvf76It
         5sBMTr6t29Zl+2eTj0J+4V3ddcpiaa8QqQMFcbeZJEW2Humlsv54kjMTao1ReVwXuYJR
         HOJRlNUaKDX1yW9O0sIGDRxxhbeb1suazqOESIsQ1MZ4qZBWalSONoHpmc3s//QpAY9W
         bF0DauofJXAn0ILxIiBFyLy9q8Q0LEcSyzIGcd5TT3roDgHu8SmxQvwS/Y+YPgBbij22
         91bQ==
X-Forwarded-Encrypted: i=1; AKwUvBzujAQ+Ol0lmFrtaE92RO+JEQBS4ruxl0kBO91JE5TqLX8cDi8v8VGipIrXiRow9Ez/65aXeaEamIEsimGAZQ==@lists.infradead.org
X-Gm-Message-State: AFuF++kdEtRmlfqrBDLhqUnOza3MBYfe+za0cLHUhEpboE7eGk0YSjiz
	ECpMCxX4BCKY2DqyQpXUwE6dliyMx/LBBHbX9pZZN8aRozqQhGrQNDi+
X-Gm-Gg: AYBFou2Id89k8KzsBAmL9J3mDaT+lBBhSQ8+Hrfc7iGhSNbcaVqxF1j6NNjYKgzaScQ
	RDYRA3/Xz6+fBjiiPhJYrTzAGtjvwTqTkYxtS3JNnr7/t4WiNF++du9W82+UZWjFPHg0wGsAJsd
	jsjkBophv3VcyFjO1AgnfYHwGKDtOtgT8ERSkvbzAC4wrnC2GAsbng0t2EBNFfg3VPj9DkVMsi+
	YXV0EtnhktyFn9ysibdh5aHNvV4Myo2Nbm9VS9KDrzPpAAA+Hg75n8Iqpj3whIRkwaoSMMrzW9u
	jxg8TROdOqCy4bbm0yPHXY7z6Sn2QqCy9QUabYZntFjW/Yc7n1U9vvHRcMh3ZbFOhPoE8nEV3qA
	NgweaRgmO98DTPYt7NFZkwEf7u4+c1aQlkwWtRYvvByNc/Dh+aN4LvOqQlSAnQH4Xr+LtL3TR82
	Cs6BesIdhx/LnePATfTVgd5h9DB6csSMWobkGZEZo74JJIQa1fJh9h2AMKyyS9JYJBzN83ClIFp
	soDR5uQR3WH
X-Received: by 2002:a05:6a00:398a:b0:857:72f8:dc94 with SMTP id d2e1a72fcca58-8616947c104mr46288815b3a.21.1788946076251;
        Wed, 09 Sep 2026 02:27:56 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-868e3aaab85sm484904b3a.22.2026.09.09.02.27.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 02:27:55 -0700 (PDT)
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
Subject: [RFC PATCH 0/3] Fix poweroff restarting the board on Firefly-RK3399
Date: Wed,  9 Sep 2026 17:27:25 +0800
Message-ID: <20260909092728.1859-1-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_022757_887336_521F2E23 
X-CRM114-Status: GOOD (  22.69  )
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

Sent as an RFC: the open questions below are about where this belongs and
what the property should be called, and the patched kernel itself has not
been booted on hardware yet (see Testing).

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
cannot keep that pin. Why the board powers back up in the failing cases is
not explained here.

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
power: the board is gone during the first active-delay-ms and the rest of
the sequence never runs. That is not the case here - driving a line low at
runtime, with no PMIC access at all, left this board running for the 10 s
it was observed.

Open questions
--------------

1. Does this belong in the PMIC driver? Releasing the lines inside
   rk808_power_off() keeps the ordering against the I2C write explicit and
   needs no second handler, but it does put board level wiring into the
   PMIC MFD driver. A separate driver registering at POWER_OFF_PREPARE
   with a higher priority would work too.

2. Property naming. power-hold-gpios follows the <function>-gpios
   convention, like the existing dvs-gpios in this binding. If the binding
   should describe Rockchip specific board wiring rather than an RK8xx
   feature, rockchip,power-hold-gpios would be more appropriate. The
   vendor DT calls these pins pmic,stby-gpio and pmic,hold-gpio.

3. Should the DT also carry a pinctrl group for the pins, as the vendor DT
   does? It works here without one, so nothing untested was added.

4. Dropping the backlight enable-gpios is required for the sequence to
   work, but it also means the backlight loses an enable GPIO it may
   genuinely have wanted. The vendor's backlight node has none and is
   disabled entirely, which suggests the mainline property was a mistake,
   but nobody here has the schematic to confirm it.

Testing
-------

Tested on a Firefly-RK3399 (4 GB, RK808) with the shutdown captured on the
debug UART at 1500000 8N1. A run counts as "stayed off" only if the
console produced nothing for 150 s and there was no ICMP reply and no USB
gadget afterwards; a restart is unambiguous because "DDR Version" and
"Reset cause: POR" appear on the console within seconds.

The patched kernel has NOT been booted: CONFIG_MFD_RK8XX is built in on
the test system and a full kernel build did not fit on it. The series
compiles (aarch64, W=1, no warnings). dt_binding_check passes; dtbs_check
reports only the pre-existing usb2phy diagnostics for this board,
reproduced unchanged on the unpatched tree. The functional evidence comes
from an out-of-tree module using the same gpiod array consumer name, the
same GPIOD_OUT_HIGH, the same per-descriptor gpiod_set_value_cansleep()
loop and the same msleep() as this series, against a device tree carrying
exactly these properties. It registers at POWER_OFF_PREPARE with
SYS_OFF_PRIO_HIGH + 1, immediately ahead of the RK808 handler. It does not
reproduce the RK808 acquiring the array at probe time.

Every run started from a cold boot with both pins at their reset state
(inputs, low), verified by reading the GPIO registers beforehand:

  both lines, as in this series:            3 of 3 stayed off
  GPIO1_D0 only, GPIO1_B5 left low:        3 of 3 stayed off
  GPIO1_B5 only, GPIO1_D0 left low:        0 of 2 stayed off
  GPIO1_D0 released, GPIO1_B5 left high:   0 of 2 stayed off
  nothing driven (mainline today):         restarts after about 2 s

Note the second and third rows: on this particular board pwm-backlight
does not bind, so GPIO1_B5 stays an input and describing GPIO1_D0 alone
was enough here. That is not true in general, which is why both lines are
described and the backlight property is dropped.

The 200 ms is the value the vendor uses; the threshold was not
characterised. The gpiod calls and msleep() run in POWER_OFF_PREPARE,
which is allowed to sleep - the msleep() was measured at 200 to 201 ms on
the console timestamps.

One early run appeared to show GPIO1_B5 alone was sufficient. It had
reached that state through a warm reboot rather than a cold boot, so the
pin states were not what they were assumed to be; it is excluded, and it
is not fully explained by the description above either.


This series was prepared with AI assistance (Claude); the analysis and
the measurements on the board were reviewed by the author.

Yaozhong Li (3):
  dt-bindings: mfd: rk808: add board level power hold GPIOs
  mfd: rk8xx: release the power hold GPIOs before powering off
  arm64: dts: rockchip: fix power-off on Firefly-RK3399

 .../bindings/mfd/rockchip,rk808.yaml          | 20 +++++++++++++
 .../boot/dts/rockchip/rk3399-firefly.dts      |  4 ++-
 drivers/mfd/rk8xx-core.c                      | 29 +++++++++++++++++++
 include/linux/mfd/rk808.h                     |  4 +++
 4 files changed, 56 insertions(+), 1 deletion(-)

-- 
2.55.0.windows.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
