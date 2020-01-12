From: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH v2 0/5] mfd: RK8xx tidyup
Date: Sun, 12 Jan 2020 01:54:59 +0000
Message-ID: <cover.1578789410.git.robin.murphy@arm.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: lee.jones@linaro.org
Cc: linux-kernel@vger.kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, smoch@web.de
List-Id: linux-rockchip.vger.kernel.org

Hi all,

Here's a second crack at my RK805-inspired cleanup. There was a bit
of debate around v1[1], but it seems like we're now all happy that this
is a reasonable way to go. For clarity I decided to include Soeren's
patch as #1/5, but since I've rewritten most of my patches I've not
included the tested-by tags.

Robin.

[1] https://lore.kernel.org/lkml/cover.1575932654.git.robin.murphy@arm.com/

Robin Murphy (4):
  mfd: rk808: Ensure suspend/resume hooks always work
  mfd: rk808: Stop using syscore ops
  mfd: rk808: Reduce shutdown duplication
  mfd: rk808: Convert RK805 to shutdown/suspend hooks

Soeren Moch (1):
  mfd: rk808: Always use poweroff when requested

 drivers/mfd/rk808.c       | 139 +++++++++++++-------------------------
 include/linux/mfd/rk808.h |   2 -
 2 files changed, 48 insertions(+), 93 deletions(-)

-- 
2.17.1
