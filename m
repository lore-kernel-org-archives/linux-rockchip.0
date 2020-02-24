From: Leon Romanovsky <leon@kernel.org>
Subject: [PATCH net-next v1 00/18] Clean driver, module and FW versions
Date: Mon, 24 Feb 2020 10:52:53 +0200
Message-ID: <20200224085311.460338-1-leon@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <netdev-owner@vger.kernel.org>
Sender: netdev-owner@vger.kernel.org
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Cc: Leon Romanovsky <leonro@mellanox.com>, Tom Lendacky <thomas.lendacky@amd.com>, Keyur Chudgar <keyur@os.amperecomputing.com>, Don Fry <pcnet32@frontier.com>, Veaceslav Falico <vfalico@gmail.com>, Jay Vosburgh <j.vosburgh@gmail.com>, linux-acenic@sunsite.dk, Maxime Ripard <mripard@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Mark Einon <mark.einon@gmail.com>, Chris Snook <chris.snook@gmail.com>, linux-rockchip@lists.infradead.org, Iyappan Subramanian <iyappan@os.amperecomputing.com>, Igor Russkikh <irusskikh@marvell.com>, David Dillow <dave@thedillows.org>, Netanel Belgazal <netanel@amazon.com>, Quan Nguyen <quan@os.amperecomputing.com>, Jay Cliburn <jcliburn@gmail.com>, Lino Sanfilippo <LinoSanfilippo@gmx.de>, linux-arm-kernel@lists.infradea
List-Id: linux-rockchip.vger.kernel.org

From: Leon Romanovsky <leonro@mellanox.com>

Change log:
 v1:
  * Split all FW cleanups patches to separate patches
  * Fixed commit message
  * Deleted odd DRV_RELDATE
  * Added everyone from MAINTAINERS file
 v0: https://lore.kernel.org/netdev/20200220145855.255704-1-leon@kernel.org

----------------------------------------------------------------------------

Hi,

This is first patchset to netdev (already sent RDMA [1] and arch/um [2])
in attempt to unify the version management for in-tree kernel code.
The patches follow already accepted ethtool change [3] to set as
a default linux kernel version.

It allows us to remove driver version and present to the users unified
picture of driver version, which is similar to default MODULE_VERSION().

As part of this series, I deleted various creative attempts to mark
absence of FW. There is no need to set "N/A" in ethtool ->fw_version
field and it is enough to do not set it.

1.
The code is compile tested and passes 0-day kbuild.
2.
The proposed changes are based on commit:
  2bb07f4e1d86 ("tc-testing: updated tdc tests for basic filter")
3.
WIP branch is [4].

[1] https://lore.kernel.org/linux-rdma/20200220071239.231800-1-leon@kernel.org/
[2] http://lists.infradead.org/pipermail/linux-um/2020-February/002913.html
[3] https://lore.kernel.org/linux-rdma/20200127072028.19123-1-leon@kernel.org/
[4] https://git.kernel.org/pub/scm/linux/kernel/git/leon/linux-rdma.git/log/?h=ethtool

Thanks

Leon Romanovsky (18):
  net/bond: Delete driver and module versions
  net/dummy: Ditch driver and module versions
  net/3com: Delete driver and module versions from 3com drivers
  net/adaptec: Clean driver versions
  net/aeroflex: Clean ethtool_info struct assignments
  net/aeroflex: Don't assign FW if it is not available
  net/agere: Delete unneeded driver version
  net/alacritech: Delete driver version
  net/allwinner: Remove driver version
  net/alteon: Properly report FW version
  net/althera: Delete hardcoded driver version
  net/amazon: Ensure that driver version is aligned to the linux kernel
  net/amd: Remove useless driver version
  net/apm: Remove useless driver version
  net/apm: Properly mark absence of FW
  net/aquantia: Delete module version
  net/arc: Delete driver version
  net/atheros: Clean atheros code from driver version

 drivers/net/bonding/bond_main.c               |  6 +-----
 drivers/net/bonding/bonding_priv.h            |  5 ++---
 drivers/net/dummy.c                           |  3 ---
 drivers/net/ethernet/3com/3c509.c             |  8 +-------
 drivers/net/ethernet/3com/3c515.c             | 16 +---------------
 drivers/net/ethernet/3com/3c589_cs.c          |  2 --
 drivers/net/ethernet/3com/typhoon.c           |  1 -
 drivers/net/ethernet/adaptec/starfire.c       | 19 +------------------
 drivers/net/ethernet/aeroflex/greth.c         |  2 --
 drivers/net/ethernet/agere/et131x.c           |  1 -
 drivers/net/ethernet/agere/et131x.h           |  1 -
 drivers/net/ethernet/alacritech/slicoss.c     |  3 ---
 drivers/net/ethernet/allwinner/sun4i-emac.c   |  2 --
 drivers/net/ethernet/alteon/acenic.c          |  5 ++---
 .../net/ethernet/altera/altera_tse_ethtool.c  |  1 -
 drivers/net/ethernet/amazon/ena/ena_ethtool.c |  1 -
 drivers/net/ethernet/amazon/ena/ena_netdev.c  | 17 ++---------------
 drivers/net/ethernet/amazon/ena/ena_netdev.h  | 11 -----------
 drivers/net/ethernet/amd/amd8111e.c           |  5 +----
 drivers/net/ethernet/amd/au1000_eth.c         |  5 -----
 drivers/net/ethernet/amd/nmclan_cs.c          |  9 +++------
 drivers/net/ethernet/amd/pcnet32.c            |  7 -------
 drivers/net/ethernet/amd/sunlance.c           | 10 ----------
 drivers/net/ethernet/amd/xgbe/xgbe-ethtool.c  |  1 -
 drivers/net/ethernet/amd/xgbe/xgbe-main.c     |  1 -
 drivers/net/ethernet/amd/xgbe/xgbe.h          |  1 -
 drivers/net/ethernet/apm/xgene-v2/ethtool.c   |  2 --
 drivers/net/ethernet/apm/xgene-v2/main.c      |  1 -
 drivers/net/ethernet/apm/xgene-v2/main.h      |  1 -
 .../ethernet/apm/xgene/xgene_enet_ethtool.c   |  2 --
 .../net/ethernet/apm/xgene/xgene_enet_main.c  |  1 -
 .../net/ethernet/apm/xgene/xgene_enet_main.h  |  1 -
 .../net/ethernet/aquantia/atlantic/aq_cfg.h   |  4 ----
 .../ethernet/aquantia/atlantic/aq_common.h    |  1 -
 .../ethernet/aquantia/atlantic/aq_ethtool.c   |  1 -
 .../net/ethernet/aquantia/atlantic/aq_main.c  |  1 -
 drivers/net/ethernet/aquantia/atlantic/ver.h  | 12 ------------
 drivers/net/ethernet/arc/emac.h               |  1 -
 drivers/net/ethernet/arc/emac_arc.c           |  2 --
 drivers/net/ethernet/arc/emac_main.c          |  1 -
 drivers/net/ethernet/arc/emac_rockchip.c      |  2 --
 drivers/net/ethernet/atheros/atl1c/atl1c.h    |  1 -
 .../ethernet/atheros/atl1c/atl1c_ethtool.c    |  2 --
 .../net/ethernet/atheros/atl1c/atl1c_main.c   |  5 -----
 drivers/net/ethernet/atheros/atl1e/atl1e.h    |  1 -
 .../ethernet/atheros/atl1e/atl1e_ethtool.c    |  2 --
 .../net/ethernet/atheros/atl1e/atl1e_main.c   |  4 ----
 drivers/net/ethernet/atheros/atlx/atl1.c      |  6 ------
 drivers/net/ethernet/atheros/atlx/atl2.c      | 10 ----------
 49 files changed, 14 insertions(+), 193 deletions(-)
 delete mode 100644 drivers/net/ethernet/aquantia/atlantic/ver.h
