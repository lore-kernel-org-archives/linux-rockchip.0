From: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 2/3] media: uapi: Add VP9 stateless decoder controls
Date: Mon, 4 May 2020 21:13:54 +0200
Message-ID: <20200504211354.5b8cafd4@collabora.com>
References: <20200410115113.31728-1-ezequiel@collabora.com>
        <20200410115113.31728-3-ezequiel@collabora.com>
        <9126475c-275d-71ab-0308-6ae85e22446b@xs4all.nl>
        <bf475e70cca6f9ebf645aed51276e57668eaf43b.camel@collabora.com>
        <20200502203707.402ea3cd@collabora.com>
        <db9fa91be8084fe9c87f263a4a97dc38d46f9bd1.camel@collabora.com>
        <e53824aed3eeb27419e5399576cce028f0ba8203.camel@collabora.com>
        <98946a03023451d44c2ebb2da719fa7dd3e530f6.camel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <98946a03023451d44c2ebb2da719fa7dd3e530f6.camel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>, kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>, Jeffrey Kardatzke <jkardatzke@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, 04 May 2020 14:38:23 -0400
Nicolas Dufresne <nicolas.dufresne@collabora.com> wrote:

> Le lundi 04 mai 2020 à 14:01 -0400, Nicolas Dufresne a écrit :
> > Le samedi 02 mai 2020 à 19:55 -0300, Ezequiel Garcia a écrit :  
> > > +Nicolas
> > > 
> > > On Sat, 2020-05-02 at 20:37 +0200, Boris Brezillon wrote:  
> > > > On Fri, 01 May 2020 13:57:49 -0300
> > > > Ezequiel Garcia <ezequiel@collabora.com> wrote:
> > > >   
> > > > > > > +
> > > > > > > +.. tabularcolumns:: |p{1.5cm}|p{6.3cm}|p{9.4cm}|
> > > > > > > +
> > > > > > > +.. flat-table:: enum v4l2_vp9_reset_frame_context
> > > > > > > +    :header-rows:  0
> > > > > > > +    :stub-columns: 0
> > > > > > > +    :widths:       1 2
> > > > > > > +
> > > > > > > +    * - ``V4L2_VP9_RESET_FRAME_CTX_NONE``
> > > > > > > +      - Do not reset any frame context.
> > > > > > > +    * - ``V4L2_VP9_RESET_FRAME_CTX_NONE_ALT``
> > > > > > > +      - Do not reset any frame context. This is an alternative value for
> > > > > > > +        V4L2_VP9_RESET_FRAME_CTX_NONE.    
> > > > > > 
> > > > > > Add `` around V4L2_VP9_RESET_FRAME_CTX_NONE.
> > > > > >     
> > > > > 
> > > > > Hm, now that I look closer, what's the point
> > > > > of having the NONE_ALT in our uAPI if it
> > > > > has same meaning as NONE?
> > > > > 
> > > > > I think it can be removed.  
> > > > 
> > > > The intent was to match the spec so that one can pass the value
> > > > extracted from the bitstream directly.  
> > 
> > reset_frame_contextspecifies whether the frame context should be reset
> > to default values:
> >   − 0 or 1 means do not reset any frame context
> >   − 2 resets just the context specified in the frame header
> >   − 3 resets all cont
> > 
> > But aren't we going too far by making this an emum ? In Microsfot DXVA,
> > we pass that value without interpreting it in userspace. For the
> > following RKVDEC, it is (suspiciously ?) ignored. Maybe just passing
> > over the value would make more sense, less work ?  
> 
> I have looked deeper. So basically when 2 and 3, that needs to be done
> by userspace is set back the associated probs arrays to their default
> values (see section 10.5 or the spec).
> 
> https://github.com/rockchip-linux/mpp/blob/develop/mpp/codec/dec/vp9/vp9d_parser.c#L1021
> 
> It seems that for both VAAPI And DXVA, the drivers takes care of that
> reset. So I'd like to ask, shall we code these defaults inside the
> driver ? I think we do similar things in JPEG side. But if we keep it
> the way it is, this should be strictly documented, otherwise anyone
> porting from DXVA or VAAPI will be tricked by this.

IIRC, some book keeping had to be done in userspace anyway, so I didn't
feel the need for resetting probe context in kernel space (tt's always
hard to draw a clear line of what should be done in userspace and what
should be automated by kernel drivers for those stateless decoders).
I suspect some engines have hardware probs contexts, and in that case,
you'd have to reset those when this field is set to 2 or 3, but that's
not the case here.
