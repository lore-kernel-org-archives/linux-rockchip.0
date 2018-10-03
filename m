From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 3/3] Rockchip defconfig64 updates for 4.20
Date: Wed, 03 Oct 2018 03:40:18 +0200
Message-ID: <2019835.IlPWu0PE1S@phil>
References: <2559110.ail6FZQ9dJ@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <2559110.ail6FZQ9dJ@phil>
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

The following changes since commit 5b394b2ddf0347bef56e50c69a58773c94343ff3:

  Linux 4.19-rc1 (2018-08-26 14:11:59 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.20-rockchip-defconfig64-1

for you to fetch changes up to 9485107ae880d756e8a607ff9e7927d5daba73a5:

  arm64: defconfig: enable Rockchip Innosilicon hdmiphy (2018-09-28 13:19:57 +0200)

----------------------------------------------------------------
Enablement of the newly added Innosilicon hdmiphy.

----------------------------------------------------------------
Heiko Stuebner (1):
      arm64: defconfig: enable Rockchip Innosilicon hdmiphy

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)
