From: Naresh Kamboju <naresh.kamboju@linaro.org>
Subject: Linux next-20190807: arm64: build failed - phy-rockchip-inno-hdmi.c:1046:26:
 error: anonymous bit-field has negative width (-1)
Date: Wed, 7 Aug 2019 16:48:15 +0530
Message-ID: <CA+G9fYvehn=5Rn0RHjFvCc1pCDFTUtxNeR11CQjD6rjM53D4ig@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: open list <linux-kernel@vger.kernel.org>, Linux-Next Mailing List <linux-next@vger.kernel.org>, kishon@ti.com, heiko@sntech.de, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Stephen Rothwell <sfr@canb.auug.org.au>
Cc: lkft-triage@lists.linaro.org
List-Id: linux-rockchip.vger.kernel.org

Linux next 20190807 arm64 default config build failed due to below error.

/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error:
anonymous bit-field has negative width (-1)
                inno_write(inno, 0xc6, RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(v));
                                       ^
../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:201:50: note:
expanded from macro 'RK3328_TERM_RESISTOR_CALIB_SPEED_7_0'
#define RK3328_TERM_RESISTOR_CALIB_SPEED_7_0(x)         UPDATE(x, 7, 9)
                                                        ^
../drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:24:42: note: expanded
from macro 'UPDATE'
#define UPDATE(x, h, l)         (((x) << (l)) & GENMASK((h), (l)))
                                                ^
../include/linux/bits.h:39:3: note: expanded from macro 'GENMASK'
        (GENMASK_INPUT_CHECK(high, low) + __GENMASK(high, low))
         ^
../include/linux/bits.h:24:18: note: expanded from macro 'GENMASK_INPUT_CHECK'
        ((unsigned long)BUILD_BUG_ON_ZERO(__builtin_choose_expr( \
                        ^
../include/linux/build_bug.h:16:47: note: expanded from macro
'BUILD_BUG_ON_ZERO'
#define BUILD_BUG_ON_ZERO(e) (sizeof(struct { int:(-!!(e)); }))

Config link,
https://storage.kernelci.org/next/master/next-20190807/arm64/defconfig/clang-8/kernel.config

Build link,
https://storage.kernelci.org/next/master/next-20190807/arm64/defconfig/clang-8/build.log

--
Naresh Kamoju
