From: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v3 0/4] media: add v4l2_pipeline_stream_{enable,
 disable} helpers
Date: Tue, 14 Apr 2020 22:30:40 -0300
Message-ID: <20200415013044.1778572-1-helen.koike@collabora.com>
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
To: linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org, skhan-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, niklas.soderlund-1zkq55x86MTxsAP9Fp7wbw@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

Media drivers need to iterate through the pipeline and call .s_stream()
callbacks in the subdevices.

Instead of repeating code, add helpers for this.

These helpers will go walk through the pipeline only visiting entities
that participates in the stream, i.e. it follows links from sink to source
(and not the opposite).

Which means that in a topology like this https://bit.ly/3b2MxjI
calling v4l2_pipeline_stream_enable() from rkisp1_mainpath won't call
.s_stream(true) for rkisp1_resizer_selfpath.

stream_count variable was added in v4l2_subdevice to handle nested calls
to the helpers.
This is useful when the driver allows streaming from more then one
capture device sharing subdevices.

This patch came from the error I was facing when multistreaming from
rkisp1 driver, where stoping one capture would call s_stream(false) in
the pipeline, causing a stall in the second capture device.

Also, the vimc patch https://patchwork.kernel.org/patch/10948833/ won't
be required with this patchset.

This patchset was tested on rkisp1 and vimc drivers.

Other cleanup might be possible (but I won't add in this patchset as I
don't have the hw to test):
	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/qcom/camss/camss-video.c#n430
	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/omap3isp/isp.c#n697
	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/stm32/stm32-dcmi.c#n680
	https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/xilinx/xilinx-dma.c#n97

Changes in V3:
====================
Following up Niklas' comments in V2 https://patchwork.kernel.org/patch/11473681/#23270823

* I removed the limitation in topologies with entities with multiple enabled
links to its sink pads in the topology.
Now it enables all subdevs in the pipeline that have an enabled link going
from sink to source while walking from the video device, so it can be
also useful for rcar-vin driver.

To implement this, I added back in the series the patch from v1:
    "media: mc-entity.c: add media_graph_walk_next_stream()"

* "size" was renamed to "max_size" in function v4l2_pipeline_subdevs_get()
to reflect the maximum number of elements that can fit in the subdevs array,
with proper documentation.

* v4l2_pipeline_subdevs_get() returns a negative number for error, instead
of returning 0 and printing a warning.

* I also add if defined(CONFIG_MEDIA_CONTROLLER) around helpers to avoid
compiling errors.

Overview of patches in V3:
--------------------------

Patch 1/4 adds a new iterator function to follow links from sink to
source only.

Path 2/4 adds the helpers in v4l2-common.c, allowing nested calls by
adding stream_count in the subdevice struct.

Patch 3/4 cleanup rkisp1 driver to use the helpers.

Patch 4/4 cleanup vimc driver to use the helpers.

Changes in V2:
====================
The first version was calling the s_stream() callbacks from sensor to
capture.

This was generating errors in the Scarlet Chromebook, when the sensor
was being enabled before the ISP.

It make sense to enable subdevices from capture to sensor instead (which
is what most drivers do already).

This v2 drops the changes from mc-entity.c, and re-implement helpers in
v4l2-common.c

Overview of patches in V2:
--------------------------

Path 1/3 adds the helpers in v4l2-common.c, allowing nested calls by
adding stream_count in the subdevice struct.

Patch 2/3 cleanup rkisp1 driver to use the helpers.

Patch 3/3 cleanup vimc driver to use the helpers.

Helen Koike (4):
  media: mc-entity.c: add media_graph_walk_next_stream()
  media: v4l2-common: add helper functions to call s_stream() callbacks
  media: staging: rkisp1: use v4l2_pipeline_stream_{enable,disable}
    helpers
  media: vimc: use v4l2_pipeline_stream_{enable,disable} helpers

 drivers/media/mc/mc-entity.c                  |  34 ++++-
 .../media/test_drivers/vimc/vimc-capture.c    |  28 ++--
 .../media/test_drivers/vimc/vimc-streamer.c   |  49 +------
 drivers/media/v4l2-core/v4l2-common.c         | 125 ++++++++++++++++++
 drivers/staging/media/rkisp1/rkisp1-capture.c |  76 +----------
 include/media/media-entity.h                  |  15 +++
 include/media/v4l2-common.h                   |  43 ++++++
 include/media/v4l2-subdev.h                   |   2 +
 8 files changed, 242 insertions(+), 130 deletions(-)

-- 
2.26.0
