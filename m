From: Heiko Stuebner <heiko@sntech.de>
Subject: [GIT PULL 3/5] Rockchip driver updates for 5.2
Date: Wed, 24 Apr 2019 19:58:37 +0200
Message-ID: <1986142.cTRxNIxTfU@phil>
References: <3379363.gjmLGbHmEH@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <3379363.gjmLGbHmEH@phil>
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

The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:

  Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.2-rockchip-drivers-1

for you to fetch changes up to bbdc00a7de24cc90315b1775fb74841373fe12f7:

  soc: rockchip: Set the proper PWM for rk3288 (2019-04-11 13:40:32 +0200)

----------------------------------------------------------------
Select correct pwm solution by default.

----------------------------------------------------------------
Douglas Anderson (1):
      soc: rockchip: Set the proper PWM for rk3288

 drivers/soc/rockchip/grf.c | 2 ++
 1 file changed, 2 insertions(+)
