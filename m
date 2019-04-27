From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v6 0/3] arm64: rockchip: dts: Add rk3399 -u-boot.dtsi files
Date: Sat, 27 Apr 2019 17:11:59 +0530
Message-ID: <20190427114202.7358-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Cc: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This series is a rework of v5 patch that send it in separate series[1]

All these changes are creating an initial rk3399-u-boot.dtsi and rk3399
board -u-boot.dtsi files and u-boot specific dts changes like
- sdram dtsi
- sdmmc, u-boot,dm-pre-reloc
- spi1, u-boot,dm-pre-reloc

Changes for v6:
- spilt the existing patch[1] into multiple patches
  and send as a separate series.

[1] https://patchwork.ozlabs.org/patch/1091720/

Any inputs?
Jagan.

Jagan Teki (3):
  arm64: rockchip: dts: rk3399: Add board -u-boot.dtsi files
  arm64: rockchip: dts: Add initial rk3399-u-boot.dtsi file
  arm64: rockchip: dts: rk3399: Use rk3399-u-boot.dtsi

 arch/arm/dts/rk3399-evb-u-boot.dtsi     |  7 +++++++
 arch/arm/dts/rk3399-evb.dts             |  2 --
 arch/arm/dts/rk3399-ficus-u-boot.dtsi   |  6 ++++++
 arch/arm/dts/rk3399-ficus.dts           |  1 -
 arch/arm/dts/rk3399-firefly-u-boot.dtsi |  7 +++++++
 arch/arm/dts/rk3399-firefly.dts         |  2 --
 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi |  7 +++++++
 arch/arm/dts/rk3399-gru-bob.dts         |  1 -
 arch/arm/dts/rk3399-gru-u-boot.dtsi     |  6 ++++++
 arch/arm/dts/rk3399-gru.dtsi            |  1 -
 arch/arm/dts/rk3399-puma-ddr1600.dts    |  1 +
 arch/arm/dts/rk3399-puma.dtsi           |  3 ---
 arch/arm/dts/rk3399-rock960-u-boot.dtsi |  6 ++++++
 arch/arm/dts/rk3399-rock960.dts         |  1 -
 arch/arm/dts/rk3399-u-boot.dtsi         | 12 ++++++++++++
 15 files changed, 52 insertions(+), 11 deletions(-)
 create mode 100644 arch/arm/dts/rk3399-evb-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-ficus-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-firefly-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-gru-bob-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-gru-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-rock960-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3399-u-boot.dtsi

-- 
2.18.0.321.gffc6fa0e3
