From: Liviu Dudau <Liviu.Dudau-5wv7dgnIgG8@public.gmane.org>
Subject: [RFC PATCH 0/4] drm: Cleanup probe function for component based
 masters.
Date: Thu, 15 Oct 2015 17:11:06 +0100
Message-ID: <1444925470-9963-1-git-send-email-Liviu.Dudau@arm.com>
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
To: David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Daniel Vetter <daniel.vetter-/w4YWyX8dFk@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Mark Yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Russell King <rmk+kernel-lFZ/pmaqli7XmaaqVzeoHQ@public.gmane.org>
Cc: linux-rockchip <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, LAKML <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, dri-devel <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

A few drivers in drivers/gpu/drm are component-enabled and use quite similar
code sequences to probe for their encoder slaves at the remote end of the ports.
Move the code into a "generic" function and remove it from the drivers.

The end results is that drivers get a reference count fix (imx), more thorough
error checking (imx again), setting the DMA coherent mask (armada) plus a decrease
in the overall count of LoC.

I'm looking for comments and testing of the patchset (only compile tested from my
end as I don't have access to all the devices touched by the changes). My main
interest is in finding out if -EINVAL is the correct code to return if
dev->of_node == NULL (handy now, as it is different from the other possible error
codes and used in armada to trigger old platform_data support. Also looking for
thoughts on the correctness of the patch and if it possible to co-opt more drivers
into using the function.

Best regards,
Liviu


Liviu Dudau (4):
  drm: Introduce generic probe function for component based masters.
  drm/imx: Convert the probe function to the generic drm_of_component_probe()
  drm/rockchip: Convert the probe function to the generic drm_of_component_probe()
  drm/armada: Convert the probe function to the generic drm_of_component_probe()

 drivers/gpu/drm/armada/armada_drv.c         | 83 +++++++++-----------------
 drivers/gpu/drm/drm_of.c                    | 92 +++++++++++++++++++++++++++++
 drivers/gpu/drm/imx/imx-drm-core.c          | 54 +----------------
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 84 ++------------------------
 include/drm/drm_of.h                        | 12 ++++
 5 files changed, 138 insertions(+), 187 deletions(-)

-- 
2.6.0
