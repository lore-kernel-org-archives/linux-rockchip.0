From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 0/3] environment: distro: Add SF distro support
Date: Fri, 10 Apr 2020 23:56:28 +0530
Message-ID: <20200410182631.11951-1-jagan@amarulasolutions.com>
Return-path: <u-boot-bounces@lists.denx.de>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Tom Rini <trini@konsulko.com>, Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: sunil@amarulasolutions.com, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

This patch is based on Tom comments from previous 
version[1] for adding new distro support separately
as in include/environment/distro/sf.h 

This new sf distro command not touch the existing
include/config_distro_bootcmd.h.

Used this new SF distro command in rk3399 platform.

[1] https://patchwork.ozlabs.org/patch/1232666/

Any inputs?
Jagan.

Jagan Teki (3):
  environment: distro: Add SF distro command
  rk3399: Add boot flash script offset, size
  rockchip: Enable SF distro bootcmd

 include/configs/rk3399_common.h   |  3 +++
 include/configs/rockchip-common.h |  9 ++++++-
 include/environment/distro/sf.h   | 41 +++++++++++++++++++++++++++++++
 3 files changed, 52 insertions(+), 1 deletion(-)
 create mode 100644 include/environment/distro/sf.h

-- 
2.17.1
