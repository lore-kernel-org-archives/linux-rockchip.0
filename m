From: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 0/4] mfd: RK8xx tidyup
Date: Tue, 10 Dec 2019 13:24:29 +0000
Message-ID: <cover.1575932654.git.robin.murphy@arm.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: lee.jones@linaro.org
Cc: linux-kernel@vger.kernel.org, heiko@sntech.de, smoch@web.de, linux.amoon@gmail.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi all,

In trying to debug suspend issues on my RK3328 box, I was looking at
how the RK8xx driver handles the RK805 sleep pin, and frankly the whole
driver seemed untidy enough to warrant some cleanup and minor fixes
before going any further. I've based the series on top of Soeren's
"mfd: rk808: Always use poweroff when requested" patch[1].

Note that I've only had time to build-test these patches so far, but I
wanted to share them early for the sake of discussion in response to
the other thread[2].

Robin.

[1] https://patchwork.kernel.org/patch/11279249/
[2] https://patchwork.kernel.org/cover/11276945/

Robin Murphy (4):
  mfd: rk808: Set global instance unconditionally
  mfd: rk808: Always register syscore ops
  mfd: rk808: Reduce shutdown duplication
  mfd: rk808: Convert RK805 to syscore/PM ops

 drivers/mfd/rk808.c       | 122 ++++++++++++++++----------------------
 include/linux/mfd/rk808.h |   2 -
 2 files changed, 50 insertions(+), 74 deletions(-)

-- 
2.17.1
