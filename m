From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v2 1/2] media: uapi: Add VP8 stateless decoder API
Date: Thu, 04 Jul 2019 09:39:10 -0300
Message-ID: <6b8d2c435335a81d362d18f23bc4229601b2f512.camel@collabora.com>
References: <20190702170016.5210-1-ezequiel@collabora.com>
         <20190702170016.5210-2-ezequiel@collabora.com>
         <1562164149.4604.9.camel@pengutronix.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1562164149.4604.9.camel@pengutronix.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org, Hans Verkuil <hans.verkuil@cisco.com>
Cc: kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Boris Brezillon <boris.brezillon@collabora.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Alexandre Courbot <acourbot@chromium.org>, fbuergisser@chromium.org, linux-kernel@vger.kernel.org, Pawel Osciak <posciak@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Philipp,

Thanks a lot for reviewing.

On Wed, 2019-07-03 at 16:29 +0200, Philipp Zabel wrote:
> On Tue, 2019-07-02 at 14:00 -0300, Ezequiel Garcia wrote:
> > From: Pawel Osciak <posciak@chromium.org>
> > 
> > Add the parsed VP8 frame pixel format and controls, to be used
> > with the new stateless decoder API for VP8 to provide parameters
> > for accelerator (aka stateless) codecs.
> > 
> > Signed-off-by: Pawel Osciak <posciak@chromium.org>
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > --
> > Changes from v1:
> > * Move 1-bit fields to flags in the respective structures.
> > * Add padding fields to make all structures 8-byte aligned.
> > * Reorder fields where needed to avoid padding as much as possible.
> > * Fix documentation as needed.
> > 
> > Changes from RFC:
> > * Make sure the uAPI has the same size on x86, x86_64, arm and arm64.
> > * Move entropy coder state fields to a struct.
> > * Move key_frame field to the flags.
> > * Remove unneeded first_part_offset field.
> > * Add documentation.
> > ---
> >  Documentation/media/uapi/v4l/biblio.rst       |  10 +
> >  .../media/uapi/v4l/ext-ctrls-codec.rst        | 323 ++++++++++++++++++
> >  .../media/uapi/v4l/pixfmt-compressed.rst      |  20 ++
> >  drivers/media/v4l2-core/v4l2-ctrls.c          |   8 +
> >  drivers/media/v4l2-core/v4l2-ioctl.c          |   1 +
> >  include/media/v4l2-ctrls.h                    |   3 +
> >  include/media/vp8-ctrls.h                     | 110 ++++++
> >  7 files changed, 475 insertions(+)
> >  create mode 100644 include/media/vp8-ctrls.h
> > 
[..]
> > +    * - __u8
> > +      - ``num_dct_parts``
> > +      - Number of DCT coefficients partitions.
> 
> I assume this must be no larger than 8. Is this mandated by the spec? If
> so, should it be documented here and checked by v4l2-core?
> 

Good catch.

Yes, it's mandated. The header [1] contains a two-bit field
called "log2_nbr_of_dct_partitions", so partition count must
be 1, 2, 4 or 8.
  
[1] https://www.rfc-editor.org/rfc/rfc6386.html#section-9.5

I'll add this to the documentation.

Also, I think this can be checked in std_validate().

Thanks,
Ezequiel
