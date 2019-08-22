From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v7 02/11] media: uapi: h264: Rename pixel format
Date: Thu, 22 Aug 2019 11:38:42 -0300
Message-ID: <5ad0899e81ef8f22545bcb6b01833c493ce2bdc9.camel@collabora.com>
References: <20190816160132.7352-1-ezequiel@collabora.com>
         <20190816160132.7352-3-ezequiel@collabora.com>
         <20190819124110.GB32182@aptenodytes>
         <e618bf01-3f82-ff06-1842-9d21a379d7ee@xs4all.nl>
         <20190822115453.GA1627@aptenodytes>
         <5a6432ce-6d90-9efa-9ae8-400b5ca1d653@xs4all.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <5a6432ce-6d90-9efa-9ae8-400b5ca1d653@xs4all.nl>
Sender: linux-kernel-owner@vger.kernel.org
To: Hans Verkuil <hverkuil@xs4all.nl>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: linux-media@vger.kernel.org, kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>, Alexandre Courbot <acourbot@chromium.org>, fbuergisser@chromium.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, 2019-08-22 at 15:47 +0200, Hans Verkuil wrote:
> On 8/22/19 1:54 PM, Paul Kocialkowski wrote:
> > Hi,
> > 
> > On Mon 19 Aug 19, 17:53, Hans Verkuil wrote:
> > > On 8/19/19 2:41 PM, Paul Kocialkowski wrote:
> > > > Hi,
> > > > 
> > > > On Fri 16 Aug 19, 13:01, Ezequiel Garcia wrote:
> > > > > The V4L2_PIX_FMT_H264_SLICE_RAW name was originally suggested
> > > > > because the pixel format would represent H264 slices without any
> > > > > start code.
> > > > > 
> > > > > However, as we will now introduce a start code menu control,
> > > > > give the pixel format a more meaningful name, while it's
> > > > > still early enough to do so.
> > > > 
> > > > I definitely agree that SLICE_RAW is not the suffix we are looking for, but I'm
> > > > not sure that _SLICE is self-describing given that we can operate either
> > > > per-frame or per-slice, and _SLICE sort of implies the latter. Also, VP8 uses
> > > > _FRAME to clearly indicate that it operates per-frame.
> > > 
> > > Well, VP8 doesn't support slices at all.
> > > 
> > > > In addition, the _SLICE suffix is used by MPEG-2 in the stable API. Since we
> > > 
> > > Regarding MPEG-2: while it has a concept of slices, it is my understanding
> > > that you never process slices separately, but only full pictures. I may be
> > > wrong here.
> > 
> > I don't think that is the case since ffmpeg clearly implements decoding on a
> > per-slice basis (mpeg_decode_slice).
> > 
> > Information is also passed on a per-slice basis to VAAPI 
> > (vaapi_mpeg2_decode_slice) with a distinct data buffer and slice parameter
> > buffer for each slice. Among other things, it contains the vertical and
> > horizontal positions for the slice, which we can set in the hardware.
> > 
> > > > certainly want MPEG-2 to allow per-slice and per-frame decoding as well as
> > > > H.264 and that the _SLICE format is specified to be the broken "concatenated
> > > > slices" that cedrus expects, we probably want to use another suffix. This way,
> > > > we could deprecated MPEG2_SLICE and introduce a new format for MPEG-2 that would
> > > > have consistent naming with the other mpeg formats.
> > > 
> > > I actually think that H264_SLICE is a decent name.
> > > 
> > > I'm less sure about MPEG2_SLICE since I am not sure if it means the same as
> > > a H264 slice.
> > 
> > The main problem I see is that we have already specified MPEG2_SLICE in a way
> > that is incompatible with the future improvments we want to bring to the API:
> > " The output buffer must contain the appropriate number of macroblocks to
> > decode a full corresponding frame to the matching capture buffer."
> > 
> > So I only see two possibilities: either we decide to change the specification
> > of the pixel format and we can keep using the _SLICE suffix, either we need to
> > introduce a new pixel format with another suffix, which should also be reflected
> > on other MPEG formats for consistency. Then we can deprecate MPEG2_SLICE and
> > have drivers stop using it.
> > 
> > What do you think?
> 
> I'd change the specification of the pixel format. So MPEG2_SLICE now supports
> multiple slices if the hardware supports it as well.
> 
> We would need an MPEG2_DECODING_MODE control as well, that currently would
> read FRAME based only.
> 

That's exactly what I was about to suggest.

Regards,
Ezequiel
