From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 2/2] Rockchip defconfig64 updates for 4.19
Date: Tue, 31 Jul 2018 00:37:01 +0200
Message-ID: <6710740.gS0PWvgRmW@phil>
References: <2000491.bLgWuj0xar@phil> <1809430.FkQi5Ue9ae@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1809430.FkQi5Ue9ae@phil>
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

This time with less granularity, as requested by Olof during the last pull.


The following changes since commit 021c91791a5e7e85c567452f1be3e4c2c6cb6063:

  Linux 4.18-rc3 (2018-07-01 16:04:53 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.19-rockchip-defconfig64-1

for you to fetch changes up to 365e660fc88d6b8bbff13e61114cfb7b57e8a23d:

  arm64: defconfig: Enable more peripherals for Samsung Chromebook Plus. (2018-07-23 12:36:03 +0200)

----------------------------------------------------------------
Enablement of some more features relevant to rk3399-kevin
(Chromebook Plus)

----------------------------------------------------------------
Enric Balletbo i Serra (1):
      arm64: defconfig: Enable more peripherals for Samsung Chromebook Plus.

 arch/arm64/configs/defconfig | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
