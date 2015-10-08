From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH 0/5] usb: dwc2: fix dwc2_get_hwparams() + optimize probe time
 a bit
Date: Wed,  7 Oct 2015 17:48:36 -0700
Message-ID: <1444265321-16768-1-git-send-email-dianders@chromium.org>
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
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

This is a collection of patches, some by Yunzhi Li at Rockchip and some
by me, that fix dwc2_get_hwparams() on some boards (depending on how the
bootloader left things) and then attempt to optimize DWC2's probe
time (since fixing dwc2_get_hwparams() made probe even slower than it
was).  Note that even after these changes probe time is still not super
fast (we still call dwc2_core_reset() twice per probe and each call
still takes a minimum of 160ms right now), but this at least picks the
low hanging fruit.

Note that this picks patch "v2" of "usb: dwc2: reset dwc2 core before
dwc2_get_hwparams()" from Yunzhi Li rather than v3 because I think it's
a better way to go.

These patches are all rebased atop linuxnext.  Since linuxnext wasn't
booting on my board, they were tested against Heiko Stuebner's "somewhat
stable" github tree (based on v4.3-rc1) with a few linuxnext dwc2
patches pulled in to avoid conflicts.

These patches have either landed or are planned to land on the
chromeos-3.14 branch for use in several Chromebooks that use rk3288.


Douglas Anderson (3):
  usb: dwc2: Restore GUSBCFG in dwc2_get_hwparams()
  CHROMIUM: usb: dwc2: Avoid double-reset at boot time
  usb: dwc2: Speed dwc2_get_hwparams() on some host-only ports

Yunzhi Li (2):
  usb: dwc2: reset dwc2 core before dwc2_get_hwparams()
  usb: dwc2: reduce dwc2 driver probe time

 drivers/usb/dwc2/core.c     | 57 ++++++++++++++++++++++++++-------------------
 drivers/usb/dwc2/core.h     |  3 ++-
 drivers/usb/dwc2/hcd.c      |  6 ++---
 drivers/usb/dwc2/platform.c |  6 +++++
 4 files changed, 44 insertions(+), 28 deletions(-)

-- 
2.6.0.rc2.230.g3dd15c0
