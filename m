From: Randy Li <ayaka@soulik.info>
Subject: [PATCH 0/2] Add support for a YUV 10bits pixel format
Date: Mon, 21 May 2018 01:17:03 +0800
Message-ID: <20180520171705.29690-1-ayaka@soulik.info>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: dri-devel@lists.freedesktop.org
Cc: heiko@sntech.de, airlied@linux.ie, gustavo@padovan.org, Randy Li <ayaka@soulik.info>, maarten.lankhorst@linux.intel.com, linux-kernel@vger.kernel.org, hjc@rock-chips.com, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, nicolas.dufresne@collabora.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This pixel format is current used in the rockchip platform. I think any model
higher than rk322x would support this pixel format. Xilinx may support
it but I am not sure.

More than a year ago, I post the patch Add pixel formats for 10/16 bits
YUV video to the mail list, it has been update to version 8, but they
are not merged yet. So I decide to submit these independent patches,
I hope that they would be reviewed and merged in a short time.

I have added a patch to Gstreamer and it is merged now.
Any future information can be found on the bugzilla of the Gstreamer:
https://bugzilla.gnome.org/show_bug.cgi?id=795462

I have verified this patch on the rk3288, with the following command:
gst-launch-1.0  filesrc location=conv_3840_2160.nv12_10le40 ! \
 rawvideoparse format=81 width=3840 height=2160 ! imagefreeze ! kmssink

Also you can find video sample video on above page, but you may need to
set the plane offset and stride when you are using the other files.

Randy Li (2):
  drm/fourcc: add a 10bits fully packed variant of NV12
  drm/rockchip: Support 10 bits yuv format in vop

 drivers/gpu/drm/drm_fourcc.c                |  1 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 27 +++++++++++++++++++++++++--
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  1 +
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c |  2 ++
 include/uapi/drm/drm_fourcc.h               |  3 +++
 5 files changed, 32 insertions(+), 2 deletions(-)

-- 
2.14.3
