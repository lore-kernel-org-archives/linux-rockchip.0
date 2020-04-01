From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH 0/3] Rockchip ISP1 minor fixes
Date: Wed,  1 Apr 2020 18:37:18 -0300
Message-ID: <20200401213721.24173-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: kernel@collabora.com, Hans Verkuil <hverkuil@xs4all.nl>, Ezequiel Garcia <ezequiel@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

A small series of minor fixes I stumbled upon while
doing compile testing.

Patch 1 gets rid of an 'unused variable' warning, triggered
by building without CONFIG_OF.

Patches 2 and 3 cleanup the dependency of phy-rockchip-dphy-rx0
and rkisp1 drivers.

Ezequiel Garcia (3):
  rkisp1: Get rid of unused variable warning
  phy-rockchip-dphy-rx0: Drop unneeded CONFIG_OF dependency
  rkisp1: Fix wrong PHY config dependency

 drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig | 2 +-
 drivers/staging/media/rkisp1/Kconfig                | 2 +-
 drivers/staging/media/rkisp1/rkisp1-dev.c           | 3 +--
 3 files changed, 3 insertions(+), 4 deletions(-)

-- 
2.26.0.rc2
