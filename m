From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v4 0/5] media: add v4l2_pipeline_stream_{enable,disable}
Date: Tue, 26 May 2020 21:57:54 +0300
Message-ID: <20200526185754.GA25880@pendragon.ideasonboard.com>
References: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
 <1c8bd467-5a9c-7285-ec23-d0d864a5f938@collabora.com>
 <CAAFQd5BW9TF0iMRPCUwk3oZn-WrisMW794EuwfqZRTkmNqeKoA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <CAAFQd5BW9TF0iMRPCUwk3oZn-WrisMW794EuwfqZRTkmNqeKoA@mail.gmail.com>
Sender: linux-media-owner@vger.kernel.org
To: Tomasz Figa <tfiga@chromium.org>
Cc: Helen Koike <helen.koike@collabora.com>, Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com, Dafna Hirschfeld <dafna3@gmail.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>, niklas.soderlund@ragnatech.se--annotate
List-Id: linux-rockchip.vger.kernel.org

Hi Tomasz,

On Tue, May 26, 2020 at 06:11:00PM +0200, Tomasz Figa wrote:
> On Fri, May 22, 2020 at 11:06 AM Helen Koike <helen.koike@collabora.com> wrote:
> > On 5/22/20 4:55 AM, Dafna Hirschfeld wrote:
> > > Hi,
> > > This is v4 of the patchset that was sent by Helen Koike.
> > >
> > > Media drivers need to iterate through the pipeline and call .s_stream()
> > > callbacks in the subdevices.
> > >
> > > Instead of repeating code, add helpers for this.
> > >
> > > These helpers will go walk through the pipeline only visiting entities
> > > that participates in the stream, i.e. it follows links from sink to source
> > > (and not the opposite).
> > > For example, in a topology like this https://bit.ly/3b2MxjI
> > > calling v4l2_pipeline_stream_enable() from rkisp1_mainpath won't call
> > > .s_stream(true) for rkisp1_resizer_selfpath.
> > >
> > > stream_count variable was added in v4l2_subdevice to handle nested calls
> > > to the helpers.
> > > This is useful when the driver allows streaming from more then one
> > > capture device sharing subdevices.
> >
> > If I understand correctly, this isn't  true anymore right? Nested calls aren't
> > possible anymore since this version doesn't contain stream_count in struct v4l2_subdevice.
> >
> > Documentation of v4l2_pipeline_stream_*() should also be updated.
> >
> > Just to be clear, without the nested call, vimc will require to add its own
> > counters, patch https://patchwork.kernel.org/patch/10948833/ will be
> > required again to allow multi streaming.
> >
> > Also, patch "media: staging: rkisp1: cap: use v4l2_pipeline_stream_{enable,disable}"
> > is cleaner in the previous version (with stream_count in struct v4l2_subdevice).
> >
> > All drivers that allows multi streaming will need to implement some special handling.
> >
> > Adding stream_count in struct v4l2_subdevice still seems cleaner to me. I'd like to hear
> > what others think.
> 
> I certainly would see this reference counting done in generic code,
> because requiring every driver to do it simply adds to the endless
> amount of boiler plate that V4L2 currently requires from the drivers.
> :(
> 
> I wonder if it wouldn't be possible to redesign the framework so that
> .s_stream() at the subdev level is only called when it's expected to
> either start or stop this particular subdev and driver's
> implementation can simply execute the requested action.

I'd very much like that. Note that I think a few drivers abuse the on
parameter to the function to pass other values than 0 or 1. We'd have to
fix those first (or maybe it has been done already, it's been a long
time since I last checked).

-- 
Regards,

Laurent Pinchart
