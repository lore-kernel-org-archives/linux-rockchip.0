From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [RFC PATCH 0/5] Rockchip ISP1 Driver
Date: Wed, 15 Nov 2017 16:03:23 +0800
Message-ID: <CAAFQd5B9S7fZFEvTDuK8d1KyYmzH0szFDATsg1ZYeSViO2Kfrg@mail.gmail.com>
References: <20171115072927.29367-1-jacob-chen@iotwrt.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20171115072927.29367-1-jacob-chen@iotwrt.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Jacob Chen <jacob-chen@iotwrt.com>
Cc: Eddie Cai <eddie.cai.linux@gmail.com>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, linux@armlinux.org.uk, Jeffy <jeffy.chen@rock-chips.com>, =?UTF-8?B?6ZKf5Lul5bSH?= <zyc@rock-chips.com>, linux-kernel@vger.kernel.org, nicolas@ndufresne.ca, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Hans Verkuil <hans.verkuil@cisco.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Allon Huang <allon.huang@rock-chips.com>, slongerbeam@gmail.com, Philipp Zabel <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Shunqian Zheng <zhengsq@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Linux Media Mailing List <linux-media@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Jacob,

Thanks for sending the series!

On Wed, Nov 15, 2017 at 3:29 PM, Jacob Chen <jacob-chen@iotwrt.com> wrote:
> This patch series add a ISP(Camera) v4l2 driver for rockchip rk3288/rk3399 SoC.
>
> TODO:
>   - Thomas is rewriting the binding code between isp, phy, sensors, i hope we could get suggestions.
>         https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/768633/2
>     rules:
>       - There are many mipi interfaces("rx0", "dxrx0")(actually it also could be parallel interface) in SoC and isp can decide which one will be used.
>       - Sometimes there will be more than one senor in a mipi phy, the sofrware should decide which one is used(media link).
>       - rk3399 have two isp.

Also the two ISP subsystems have their own, completely different, CSI2
PHY blocks, so we need to make the ISP driver work with two different
PHY drivers.

>   - Add a dummy buffer(dma_alloc_coherent) so drvier won't hold buffer.
>   - Finish all TODO comments(mostly about hardware) in driver.
>
> To help do a quick review, i have push source code to my Github.
>   https://github.com/wzyy2/linux/tree/rkisp1/drivers/media/platform/rockchip/isp1
>
> Below are some infomations about driver/hardware:
>
> Rockchip ISP1 have many Hardware Blocks(simplied):
>
>   MIPI      --> ISP --> DCrop(Mainpath) --> RSZ(Mainpath) --> DMA(Mainpath)
>   DMA-Input -->     --> DCrop(Selfpath) --> RSZ(Selfpath) --> DMA(Selfpath);)
>
> (Acutally the TRM(rk3288, isp) could be found online...... which contains a more detailed block diagrams ;-P)
>
> The funcitons of each hardware block:
>
>   Mainpath : up to 4k resolution, support raw/yuv format
>   Selfpath : up tp 1080p, support rotate, support rgb/yuv format
>   RSZ: scaling
>   DCrop: crop
>   ISP: 3A, Color processing, Crop
>   MIPI: MIPI Camera interface
>
> Media pipelines:
>
>   Mainpath, Selfpath <-- ISP subdev <-- MIPI  <-- Sensor
>   3A stats           <--            <-- 3A parms
>
> Code struct:
>
>   capture.c : Mainpath, Selfpath, RSZ, DCROP : capture device.
>   rkisp1.c : ISP : v4l2 sub-device.
>   isp_params.c : 3A parms : output device.
>   isp_stats.c : 3A stats : capture device.
>   mipi_dphy_sy.c : MIPI : sperated v4l2 sub-device.
>
> Usage:
>   ChromiumOS:
>     use below v4l2-ctl command to capture frames.
>
>       v4l2-ctl --verbose -d /dev/video4 --stream-mmap=2
>       --stream-to=/tmp/stream.out --stream-count=60 --stream-poll
>
>     use below command to playback the video on your PC.
>
>       mplayer /tmp/stream.out -loop 0 --demuxer=rawvideo
>       --rawvideo=w=800:h=600:size=$((800*600*2)):format=yuy2
>     or
>       mplayer ./stream.out -loop 0 -demuxer rawvideo -rawvideo
>       w=800:h=600:size=$((800*600*2)):format=yuy2
>
>   Linux:
>     use rkcamsrc gstreamer plugin(just a modified v4l2src) to preview.
>
>       gst-launch-1.0 rkcamsrc device=/dev/video0 io-mode=4 disable-3A=true
>       videoconvert ! video/x-raw,format=NV12,width=640,height=480 ! kmssink

Is the rkcamsrc plugin source available somewhere to download?

Thanks,
Tomasz
