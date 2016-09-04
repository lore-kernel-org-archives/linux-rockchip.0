From: Randy Li <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>
Subject: [PATCH RFC 0/2] add the generic H.264 decoder settings controls
Date: Mon,  5 Sep 2016 04:18:34 +0800
Message-ID: <1473020316-7325-1-git-send-email-ayaka@soulik.info>
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
Cc: intel-gfx-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, Randy Li <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, posciak-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This is not done yet. The rockchip VA-API driver[1] still need a third part
library to pre-parse the nalu data. Maybe after the third part library
free version[2] had done, it would be clear that we else filed we may need.

Those structures comes from VA-API SPCE. But still not enough to driver
a stateless video processor. For the Rockchip VPU, it won't process
some part of data, like pic_order_cnt. Then you could configure a length
of that part in register in order to let the video processor skip it.
You may look at extra fields in struct v4l2_mpeg_video_h264_picture_param.

Also there is some problem with the mechiansm of VA-API. A VA-API Surface
looks like a wrapper of the buffer in output side(CAPTURE in V4L2), but for 
the V4L2, which buffer is dequeue from the CAPTURE is unknown. So it is
a little hard to link the surface to the vpu driver internal buffer. The
CREATE_BUFS ioctl may solve the allocation problem but not the dequeue.
But as most stateless video processor could only process one frame in
one time, I don't know the reference frame is need to keep for future
parse(not by video processor but by the upper layer software), allowing
only a buffer may solve this problem

Some patches also reqired to make the VA-API client(like Gstreamer) 
to support those extra data need by the video processor. It would be done
in a short time. Need someone is very familiar with the codec standard.

Currently, I am doing JPEG encoder for RK3288 now, I won't be avaiable
in short time and I am lack of the knowledge of codec standard. But I
am scheduling the plan of the new driver for both kernel[3] and VA-API,
I could do it on my free time.

[1] https://github.com/rockchip-linux/rockchip-va-driver v4l2-libvpu
[2] https://github.com/rockchip-linux/rockchip-va-driver rk_v4l2
[3] https://github.com/hizukiayaka/linux-kernel rk3288-media

Randy Li (2):
  [media] v4l2-ctrls: add H.264 decoder settings controls
  v4l2-ctrls: add generic H.264 decoder codec settings structure

 drivers/media/v4l2-core/v4l2-ctrls.c |   2 +
 include/uapi/linux/v4l2-controls.h   |   2 +
 include/uapi/linux/videodev2.h       | 103 +++++++++++++++++++++++++++++++++++
 3 files changed, 107 insertions(+)

-- 
2.7.4
