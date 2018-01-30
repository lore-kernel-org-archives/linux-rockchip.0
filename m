From: "Gustavo A. R. Silva" <gustavo-L1vi/lXTdts+Va1GwOuvDg@public.gmane.org>
Subject: [PATCH 0/8] fix potential integer overflows
Date: Mon, 29 Jan 2018 18:30:03 -0600
Message-ID: <cover.1517268667.git.gustavo@embeddedor.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, lnux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, inux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jacob chen <jacob2.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, Antti Palosaari <crope-X3B1VOXEql0@public.gmane.org>, "Gustavo A. R. Silva" <garsilva-L1vi/lXTdts+Va1GwOuvDg@public.gmane.org>, Ramesh Shanmugasundaram <ramesh.shanmugasundaram-kTT6dE0pTRh9uiUsa/gSgQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

This patchset aims to fix potential integer overflows reported
by Coverity.

In all cases the potential overflowing expressions are evaluated
using 32-bit arithmetic before being used in contexts that expect
a 64-bit arithmetic. So a cast to the proper type was added to each
of those expressions in order to avoid any potential integer overflow.

This also gives the compiler complete information about the proper
arithmetic for each expression and improves code quality.

Addresses the following Coverity IDs reported as
"Unintentional integer overflow" issues:

200604, 1056807, 1056808, 1271223,
1324146, 1392628, 1392630, 1446589,
1454996, 1458347.

Thank you

Gustavo A. R. Silva (8):
  rtl2832: fix potential integer overflow
  dvb-frontends: ves1820: fix potential integer overflow
  i2c: max2175: fix potential integer overflow in max2175_set_nco_freq
  i2c: ov9650: fix potential integer overflow in
    __ov965x_set_frame_interval
  pci: cx88-input: fix potential integer overflow
  rockchip/rga: fix potential integer overflow in rga_buf_map
  platform: sh_veu: fix potential integer overflow in
    sh_veu_colour_offset
  platform: vivid-cec: fix potential integer overflow in
    vivid_cec_pin_adap_events

 drivers/media/dvb-frontends/rtl2832.c         | 4 ++--
 drivers/media/dvb-frontends/ves1820.c         | 2 +-
 drivers/media/i2c/max2175.c                   | 2 +-
 drivers/media/i2c/ov9650.c                    | 2 +-
 drivers/media/pci/cx88/cx88-input.c           | 4 ++--
 drivers/media/platform/rockchip/rga/rga-buf.c | 2 +-
 drivers/media/platform/sh_veu.c               | 4 ++--
 drivers/media/platform/vivid/vivid-cec.c      | 2 +-
 8 files changed, 11 insertions(+), 11 deletions(-)

-- 
2.7.4
