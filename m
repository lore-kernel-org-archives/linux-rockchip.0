From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 2/4] rockchip arm64 changes for 4.6
Date: Thu, 11 Feb 2016 15:50:51 +0100
Message-ID: <2157996.gfpT01ltKJ@phil>
References: <1734524.3yNt5L3F1F@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1734524.3yNt5L3F1F@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Arnd, Olof, Kevin,

This one change enables the rockchip timer driver on 64bit socs as well,
after it got fixed to actually work on 64bit in 4.5-rc1.

This time I actually also updated the subject from my previous send-attempt, 
so here it is again.

Thanks
Heiko


The following changes since commit 92e963f50fc74041b5e9e744c330dca48e04f08d:

  Linux 4.5-rc1 (2016-01-24 13:06:47 -0800)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git 
tags/v4.6-rockchip-soc64-1

for you to fetch changes up to c840f28bbf643c361c463bcb8fb815d0b2dad4e8:

  arm64: Enable the timer on Rockchip architecture (2016-01-24 23:33:14 
+0100)

----------------------------------------------------------------
Enable the rockchip-specific timers on arm64 rockchip platforms.
The driver got reworked to not use arm32-specific dsb calls in
4.5-rc1, so now we can safely enable it.

----------------------------------------------------------------
Caesar Wang (1):
      arm64: Enable the timer on Rockchip architecture

 arch/arm64/Kconfig.platforms | 1 +
 1 file changed, 1 insertion(+)
