From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH] media: v4l2-common: Add BGR666 to v4l2_format_info
Date: Mon, 16 Mar 2020 10:15:16 +0200
Message-ID: <20200316081516.GK4732@pendragon.ideasonboard.com>
References: <20200316070123.2434-1-dafna.hirschfeld@collabora.com>
 <20200316072214.GA16123@pendragon.ideasonboard.com>
 <31efd58f-1ab1-d3d0-e4b9-ea9072e608fa@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <31efd58f-1ab1-d3d0-e4b9-ea9072e608fa@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: linux-media@vger.kernel.org, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

On Mon, Mar 16, 2020 at 09:07:16AM +0100, Dafna Hirschfeld wrote:
> On 16.03.20 08:22, Laurent Pinchart wrote:
> > On Mon, Mar 16, 2020 at 08:01:23AM +0100, Dafna Hirschfeld wrote:
> >> Add V4L2_PIX_FMT_BGR666 to the format table.
> >>
> >> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> >> ---
> >> Hi,
> >> BGR66 is needed for the rkisp1 driver.
> >> Currently it crashes since the call to
> >> v4l2_format_info returns NULL.
> >>
> >>   drivers/media/v4l2-core/v4l2-common.c | 1 +
> >>   1 file changed, 1 insertion(+)
> >>
> >> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
> >> index d0e5ebc736f9..d7f82b2aa22f 100644
> >> --- a/drivers/media/v4l2-core/v4l2-common.c
> >> +++ b/drivers/media/v4l2-core/v4l2-common.c
> >> @@ -253,6 +253,7 @@ const struct v4l2_format_info *v4l2_format_info(u32 format)
> >>   		{ .format = V4L2_PIX_FMT_GREY,    .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 1, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
> >>   		{ .format = V4L2_PIX_FMT_RGB565,  .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 2, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
> >>   		{ .format = V4L2_PIX_FMT_RGB555,  .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 2, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
> >> +		{ .format = V4L2_PIX_FMT_BGR666,  .pixel_enc = V4L2_PIXEL_ENC_RGB, .mem_planes = 1, .comp_planes = 1, .bpp = { 4, 0, 0, 0 }, .hdiv = 1, .vdiv = 1 },
> > 
> > Isn't BGR666 stored in 3 bytes per pixel ?
>
> Hi, I also discussed it with Helen. From the documentation we
> understood that it uses 4 bytes and the last one is empty.
> https://linuxtv.org/downloads/v4l-dvb-apis/uapi/v4l/pixfmt-rgb.html

Would you then also understand V4L2_PIX_FMT_RGB565 to use 4 bytes with
the last 2 bytes empty ? :-)

I agree that the documentation is somehow ambiguous and should be fixed.
Patches are welcome ;-)

> >>   
> >>   		/* YUV packed formats */
> >>   		{ .format = V4L2_PIX_FMT_YUYV,    .pixel_enc = V4L2_PIXEL_ENC_YUV, .mem_planes = 1, .comp_planes = 1, .bpp = { 2, 0, 0, 0 }, .hdiv = 2, .vdiv = 1 },

-- 
Regards,

Laurent Pinchart
