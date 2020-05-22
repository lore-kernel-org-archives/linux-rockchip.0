From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v2 2/4] media: staging: rkisp1: rsz: use hdiv, vdiv of
 yuv422 instead of macros
Date: Fri, 22 May 2020 10:31:56 -0300
Message-ID: <9a0a91d50bdaa19378ef21de5c81abeef476429a.camel@collabora.com>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
         <20200515142952.20163-3-dafna.hirschfeld@collabora.com>
         <2606d729-7418-109b-f514-3b9eb834187c@collabora.com>
         <4bd94509-79af-16db-3721-2553508a6c42@collabora.com>
         <d0c93454-8a51-a28c-639d-948041fc602a@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <d0c93454-8a51-a28c-639d-948041fc602a@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, laurent.pinchart@ideasonboard.com, Tomasz Figa <tfiga@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna, Helen,

On Fri, 2020-05-22 at 14:11 +0200, Dafna Hirschfeld wrote:
> 
> On 21.05.20 00:08, Helen Koike wrote:
> > 
> > On 5/20/20 6:54 PM, Helen Koike wrote:
> > > Hi Dafna,
> > > 
> > > On 5/15/20 11:29 AM, Dafna Hirschfeld wrote:
> > > > The resize block of rkisp1 always get the input as yuv422.
> > > > Instead of defining the default hdiv, vdiv as macros, the
> > > > code is more clear if it takes the (hv)div from the YUV422P
> > > > info. This makes it clear where those values come from.
> > > > The patch also adds documentation to explain that.
> > > > 
> > > > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > > 
> > > Acked-by: Helen Koike <helen.koike@collabora.com>
> > > 
> > > Thanks!
> > > Helen
> > > 
> > > > ---
> > > >   drivers/staging/media/rkisp1/rkisp1-resizer.c | 25 +++++++++----------
> > > >   1 file changed, 12 insertions(+), 13 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > > index d049374413dc..04a29af8cc92 100644
> > > > --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > > +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> > > > @@ -16,9 +16,6 @@
> > > >   #define RKISP1_DEF_FMT MEDIA_BUS_FMT_YUYV8_2X8
> > > >   #define RKISP1_DEF_PIXEL_ENC V4L2_PIXEL_ENC_YUV
> > > >   
> > > > -#define RKISP1_MBUS_FMT_HDIV 2
> > > > -#define RKISP1_MBUS_FMT_VDIV 1
> > > > -
> > > >   enum rkisp1_shadow_regs_when {
> > > >   	RKISP1_SHADOW_REGS_SYNC,
> > > >   	RKISP1_SHADOW_REGS_ASYNC,
> > > > @@ -361,11 +358,12 @@ static void rkisp1_rsz_config_regs(struct rkisp1_resizer *rsz,
> > > >   static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
> > > >   			      enum rkisp1_shadow_regs_when when)
> > > >   {
> > > > -	u8 hdiv = RKISP1_MBUS_FMT_HDIV, vdiv = RKISP1_MBUS_FMT_VDIV;
> > > >   	struct v4l2_rect sink_y, sink_c, src_y, src_c;
> > > >   	struct v4l2_mbus_framefmt *src_fmt;
> > > >   	struct v4l2_rect *sink_crop;
> > > >   	struct rkisp1_capture *cap = &rsz->rkisp1->capture_devs[rsz->id];
> > > > +	const struct v4l2_format_info *yuv422_info =
> > > > +		v4l2_format_info(V4L2_PIX_FMT_YUV422P);
> > > >   

Instead of hardcoding this fourcc, is there any way we can
retrieve it from a configured format?

Thanks,
Ezequiel
