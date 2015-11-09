From: kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH v4 1/2] ASoC: codec: Inno codec driver for RK3036 SoC
Date: Mon, 9 Nov 2015 11:13:54 +0800
Message-ID: <201511091100.MPMFFAtK%fengguang.wu@intel.com>
References: <1447035020-10332-2-git-send-email-zhengsq@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1447035020-10332-2-git-send-email-zhengsq@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
Cc: kbuild-all@01.org, robh+dt@kernel.org, pawel.moll@arm.com, mark.rutland@arm.com, ijc+devicetree@hellion.org.uk, galak@codeaurora.org, heiko@sntech.de, lgirdwood@gmail.com, broonie@kernel.org, perex@perex.cz, tiwai@suse.com, benzh@chromium.org, benchan@google.com, kmixter@google.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, ZhengShunQian <zhengsq@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Hi ZhengShunQian,

[auto build test WARNING on: asoc/for-next]
[also build test WARNING on: v4.3 next-20151106]

url:    https://github.com/0day-ci/linux/commits/Shunqian-Zheng/Audio-Codec-Driver-of-RK3036-SoC/20151109-101538
base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next


coccinelle warnings: (new ones prefixed by >>)

>> sound/soc/codecs/inno_rk3036.c:480:3-8: No need to set .owner here. The core will do it.

Please review and possibly fold the followup patch.

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
