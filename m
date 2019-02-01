From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 1/2] Rockchip arm32 devicetree fixes for 5.0
Date: Fri, 01 Feb 2019 12:13:51 +0100
Message-ID: <7484850.KS8GUYnfXV@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: arm@kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Arnd, Kevin, Olof,

please find below and in the following mail some fixes for Rockchip SoCs
on 5.0-rc. Nothing overly major thankfully.

So please pull

Thanks
Heiko

The following changes since commit bfeffd155283772bbe78c6a05dec7c0128ee500c:

  Linux 5.0-rc1 (2019-01-06 17:08:20 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.0-rockchip-dts32fixes-1

for you to fetch changes up to c9a8a92a9961dcd822015ee406e1a011b772112e:

  ARM: dts: rockchip: remove qos_cif1 from rk3188 power-domain (2019-01-07 09:14:42 +0100)

----------------------------------------------------------------
Drop one non-existent component from powerdomain list.

----------------------------------------------------------------
Johan Jonker (1):
      ARM: dts: rockchip: remove qos_cif1 from rk3188 power-domain

 arch/arm/boot/dts/rk3188.dtsi | 1 -
 1 file changed, 1 deletion(-)
