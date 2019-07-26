From: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 7/9] media: hantro: Add core bits to support H264
 decoding
Date: Fri, 26 Jul 2019 12:06:58 +0200
Message-ID: <20190726120658.53022c21@collabora.com>
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
        <20190619121540.29320-8-boris.brezillon@collabora.com>
        <25cc2826-fc8f-570a-07fa-8cbdb11830a7@rasmusvillemoes.dk>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <25cc2826-fc8f-570a-07fa-8cbdb11830a7@rasmusvillemoes.dk>
Sender: linux-kernel-owner@vger.kernel.org
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, kernel@collabora.com, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Ezequiel Garcia <ezequiel@collabora.com>, Jonas Karlman <jonas@kwiboo.se>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Andrew Morton <akpm@linux-foundation.org>, Philipp Zabel <p.zabel@pengutronix.de>, Hertz Wong <hertz.wong@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

On Thu, 25 Jul 2019 15:31:41 +0200
Rasmus Villemoes <linux@rasmusvillemoes.dk> wrote:

> On 19/06/2019 14.15, Boris Brezillon wrote:
> > From: Hertz Wong <hertz.wong@rock-chips.com>
> > 
> > Add helpers and patch hantro_{drv,v4l2}.c to prepare addition of H264
> > decoding support.
> > 
> > Signed-off-by: Hertz Wong <hertz.wong@rock-chips.com>
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > ---
> > +
> > +	/*
> > +	 * Short term pics in descending pic num order, long term ones in
> > +	 * ascending order.
> > +	 */
> > +	if (!(a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM))
> > +		return b->frame_num - a->frame_num;
> > +
> > +	return a->pic_num - b->pic_num;
> > +}  
> 
> Pet peeve: This works because ->frame_num and ->pic_num are u16, so
> their difference is guaranteed to fit in an int.
> 
> > +static int b0_ref_list_cmp(const void *ptra, const void *ptrb, const void *data)
> > +{
> > +	const struct hantro_h264_reflist_builder *builder = data;
> > +	const struct v4l2_h264_dpb_entry *a, *b;
> > +	s32 poca, pocb;
> > +	u8 idxa, idxb;
> > +
> > +	idxa = *((u8 *)ptra);
> > +	idxb = *((u8 *)ptrb);
> > +	a = &builder->dpb[idxa];
> > +	b = &builder->dpb[idxb];
> > +
> > +	if ((a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM) !=
> > +	    (b->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)) {
> > +		/* Short term pics firt. */
> > +		if (!(a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM))
> > +			return -1;
> > +		else
> > +			return 1;
> > +	}
> > +
> > +	/* Long term pics in ascending pic num order. */
> > +	if (a->flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
> > +		return a->pic_num - b->pic_num;
> > +
> > +	poca = builder->pocs[idxa];
> > +	pocb = builder->pocs[idxb];
> > +
> > +	/*
> > +	 * Short term pics with POC < cur POC first in POC descending order
> > +	 * followed by short term pics with POC > cur POC in POC ascending
> > +	 * order.
> > +	 */
> > +	if ((poca < builder->curpoc) != (pocb < builder->curpoc))
> > +		return poca - pocb;
> > +	else if (poca < builder->curpoc)
> > +		return pocb - poca;
> > +
> > +	return poca - pocb;
> > +}  
> 
> Here, however, poca and pocb are ints. What guarantees that their values
> are not more than 2^31 apart?

Good question. Both should normally be >= 0, which I guess prevents the
s32 overflow. This being said, it's something passed by userspace, and
I don't think we check the value (yet).

> I know absolutely nothing about this code
> or what these numbers represent, so it may be obvious that they are
> smallish.

Well, a safe approach would be to replace those subtraction by a
ternary operator.
