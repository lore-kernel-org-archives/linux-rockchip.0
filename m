From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: [GIT PULL 1/3] Rockchip driver updates for v4.7 - part2
Date: Fri, 29 Apr 2016 00:24:10 +0200
Message-ID: <2744609.Je9E5Knv0x@diego>
References: <5544434.9tA8JHBIkp@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <5544434.9tA8JHBIkp@diego>
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

The following changes since commit 4506697d9f8537a8d33e9e002f8efceb32d10757:

  soc: rockchip: power-domain: check the existing of regmap (2016-04-12 03:28:08 +0200)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.7-rockchip-drivers-2

for you to fetch changes up to 074c6a422d86fff76e05cf31be25e0eb752e1bd4:

  soc: rockchip: power-domain: support qos save and restore (2016-04-21 23:02:16 +0200)

----------------------------------------------------------------
Ability to save and restore the power-domain quality of service
settings that get lost and reset on power-domain power cycles.

----------------------------------------------------------------
Elaine Zhang (2):
      dt-bindings: modify document of Rockchip power domains
      soc: rockchip: power-domain: support qos save and restore

 .../bindings/soc/rockchip/power_domain.txt         |  10 ++
 drivers/soc/rockchip/pm_domains.c                  | 105 ++++++++++++++++++++-
 2 files changed, 112 insertions(+), 3 deletions(-)
