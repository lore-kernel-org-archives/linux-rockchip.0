From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH 0/2] rockchip/rga: A fix and a cleanup
Date: Fri,  1 Jun 2018 16:49:50 -0300
Message-ID: <20180601194952.17440-1-ezequiel@collabora.com>
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
To: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Jacob chen <jacob2.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Decided to test v4l2transform filters and found these two
issues.

Without the first commit, start_streaming fails. The second
commit is just a cleanup, removing a seemingly redundant
operation.

Tested on RK3288 Radxa Rock2 with these kind of pipelines:

gst-launch-1.0 videotestsrc ! video/x-raw,width=640,height=480,framerate=30/1,format=RGB ! v4l2video0convert ! video/x-raw,width=1920,height=1080,framerate=30/1,format=NV16 ! fakesink

gst-launch-1.0 v4l2src device=/dev/video1 ! video/x-raw,width=640,height=480,framerate=30/1,format=RGB ! v4l2video0convert ! video/x-raw,width=1920,height=1080,framerate=30/1,format=NV16 ! kmssink

Ezequiel Garcia (2):
  rockchip/rga: Fix broken .start_streaming
  rockchip/rga: Remove unrequired wait in .job_abort

 drivers/media/platform/rockchip/rga/rga-buf.c | 44 +++++++++----------
 drivers/media/platform/rockchip/rga/rga.c     | 13 +-----
 drivers/media/platform/rockchip/rga/rga.h     |  2 -
 3 files changed, 23 insertions(+), 36 deletions(-)

-- 
2.17.1
