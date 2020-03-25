From: Dafna Hirschfeld <dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH 0/2] media: staging: rkisp1: Fix formats for metadata pads
Date: Wed, 25 Mar 2020 22:27:02 +0100
Message-ID: <20200325212704.29862-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, dafna3-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, sakari.ailus-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

There are 4 pads between the entities
rkisp1_isp, rkisp1_params, rkisp1_stats that transmit
metadata. Since metadata has no dimensions, it makes
sense to set the width and height of these pads to 0.
The problem is that it makes the v4l-compliance tests fail.
Currently, in order to silent the tests, the width
and height are set to RKISP1_DEFAULT_*

This patchset sets the dimensions to 0 and solves the
compliance error by introducing a new flag
MEDIA_PAD_FL_METADATA in media.h and setting
this flag to those pads.
Then the v4l2-compliance tests can skip the
dimensions test if this flag is set.

This is just a suggested implementation from Laurent,
a better documentation is probably needed.
Another possible solution suggested by Verkuil
is to add a new media bus format: MEDIA_BUS_FMT_FIXED_METADATA.

- patch 1: introduces the the flag
- patch 2: set the flag to the pads and removes a related TODO item

A corresponding patch to v4l-utils will be sent.


Dafna Hirschfeld (2):
  media: media.h: Add a pad flag MEDIA_PAD_FL_METADATA
  media: staging: rkisp1: add the flag MEDIA_PAD_FL_METADATA to the
    metadata pads

 Documentation/media/uapi/mediactl/media-types.rst |  4 ++++
 drivers/staging/media/rkisp1/TODO                 |  1 -
 drivers/staging/media/rkisp1/rkisp1-isp.c         | 10 ++++++----
 drivers/staging/media/rkisp1/rkisp1-params.c      |  2 +-
 drivers/staging/media/rkisp1/rkisp1-stats.c       |  2 +-
 include/uapi/linux/media.h                        |  1 +
 6 files changed, 13 insertions(+), 7 deletions(-)

-- 
2.17.1
