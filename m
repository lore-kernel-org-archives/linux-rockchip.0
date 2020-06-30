From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [RFC v3 1/2] v4l2: add support for colorspace conversion for
 video capture
Date: Tue, 30 Jun 2020 20:02:08 +0200
Message-ID: <CAAFQd5AD5iUN1hU_yHXNnfuE9nShSdLwkEK2EzM2PqduAo7ycg@mail.gmail.com>
References: <20200416145605.12399-1-dafna.hirschfeld@collabora.com>
 <20200604173901.GA76282@chromium.org> <dba58521-a619-91fe-2b60-ea5ce85a9fa2@collabora.com>
 <20200610133411.GA192932@chromium.org> <a4754496-2074-046a-1532-f9d697e200c1@collabora.com>
 <CAAFQd5CjfeOkUAKeG+0nAdoViLLPxFL0GT=XpzwL-7preJ_9iw@mail.gmail.com> <20200630174347.GN5850@pendragon.ideasonboard.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200630174347.GN5850@pendragon.ideasonboard.com>
Sender: linux-media-owner@vger.kernel.org
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, Hans Verkuil <HansVerkuil@cisco.com>, Hans Verkuil <hverkuil@xs4all.nl>, Linux Media Mailing List <linux-media@vger.kernel.org>, Helen Koike <helen.koike@collabora.com>, Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com, Dafna Hirschfeld <dafna3@gmail.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Philipp Zabel <p.zabel@pengutronix.de>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Jun 30, 2020 at 7:43 PM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Tomasz,
>
> On Tue, Jun 30, 2020 at 06:31:19PM +0200, Tomasz Figa wrote:
> > On Tue, Jun 30, 2020 at 6:11 PM Dafna Hirschfeld wrote:
> > > On 10.06.20 15:34, Tomasz Figa wrote:
> > >> On Fri, Jun 05, 2020 at 12:11:33PM +0200, Dafna Hirschfeld wrote:
> > >>> On 04.06.20 19:39, Tomasz Figa wrote:
> > >>>> On Thu, Apr 16, 2020 at 04:56:04PM +0200, Dafna Hirschfeld wrote:
> > >>>>> From: Philipp Zabel <p.zabel@pengutronix.de>
> > >>>>>
> > >>>>> For video capture it is the driver that reports the colorspace,
> > >>>>> Y'CbCr/HSV encoding, quantization range and transfer function
> > >>>>> used by the video, and there is no way to request something
> > >>>>> different, even though many HDTV receivers have some sort of
> > >>>>> colorspace conversion capabilities.
> > >>>>
> > >>>> Thanks for working on this! Please see my comments inline.
> > >>>>
> > >>>>> For output video this feature already exists since the application
> > >>>>> specifies this information for the video format it will send out, and
> > >>>>> the transmitter will enable any available CSC if a format conversion has
> > >>>>> to be performed in order to match the capabilities of the sink.
> > >>>>>
> > >>>>> For video capture we propose adding new pix_format flag:
> > >>>>> V4L2_PIX_FMT_FLAG_HAS_CSC. The flag is set by the application,
> > >>>>> the driver will interpret the ycbcr_enc/hsv_enc, and quantization fields
> > >>>>> as the requested colorspace information and will attempt to
> > >>>>> do the conversion it supports.
> > >>>>>
> > >>>>> Drivers set the flags
> > >>>>> V4L2_FMT_FLAG_CSC_YCBCR_ENC,
> > >>>>> V4L2_FMT_FLAG_CSC_HSV_ENC,
> > >>>>> V4L2_FMT_FLAG_CSC_HSV_QUANTIZATION,
> > >>>>
> > >>>> Do we need this level of granularity? The drivers would ignore
> > >>>> unsupported encoding/quantization settings and reset them to supported
> > >>>> ones anyway, so if one doesn't support changing given parameter, it
> > >>>> would just return back the original stream parameter.
> > >>>
> > >>> I think this granularity allows userspace to know ahead what is supported
> > >>> and what is not so it doesn't have to guess.
> > >>>
> > >>
> > >> The userspace needs to guess anyway, because there is no way to
> > >> enumerate the supported target parameters. For example, even if the
> > >> CSC_YCBCR_ENC bit is set, only only DEFAULT, 601 and BT2020 could be
> > >> supported. If the userspace wants to get the 709 encoding, it needs to
> > >> explicitly try setting it and see if the TRY_FMT/S_FMT operation accepts
> > >> the setting.
> > >
> > > yes, indeed, Hans Verkuil suggested those flags. Maybe it is indeed enough
> > > to have one flag.
> > >
> >
> > Hans, what's your thought on this?
> >
> > >>
> > >> [snip]
> > >>>>> diff --git a/drivers/media/v4l2-core/v4l2-subdev.c b/drivers/media/v4l2-core/v4l2-subdev.c
> > >>>>> index a376b351135f..51e009936aad 100644
> > >>>>> --- a/drivers/media/v4l2-core/v4l2-subdev.c
> > >>>>> +++ b/drivers/media/v4l2-core/v4l2-subdev.c
> > >>>>> @@ -477,6 +477,13 @@ static long subdev_do_ioctl(struct file *file, unsigned int cmd, void *arg)
> > >>>>>            case VIDIOC_SUBDEV_S_FMT: {
> > >>>>>                    struct v4l2_subdev_format *format = arg;
> > >>>>> +          if (!(format->format.flags & V4L2_MBUS_FRAMEFMT_HAS_CSC)) {
> > >>>>> +                  format->format.colorspace = V4L2_COLORSPACE_DEFAULT;
> > >>>>> +                  format->format.xfer_func = V4L2_XFER_FUNC_DEFAULT;
> > >>>>> +                  format->format.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> > >>>>> +                  format->format.quantization = V4L2_QUANTIZATION_DEFAULT;
> > >>>>> +          }
> > >>>>
> > >>>> Wouldn't this break setting the colorspaces on the sink pads, for which
> > >>>> the flag isn't required? Actually there is some unfortunate statement in
> > >>>> the documentation related to this:
> > >>>>
> > >>>> "This information supplements the colorspace and must be set by the
> > >>>> driver for capture streams and by the application for output streams,
> > >>>> see Colorspaces."
> > >>>>
> > >>>> However, I don't think there is any notion of "capture" and "output" for
> > >>>> subdevices, right? Instead, the pad direction would have to be checked,
> > >>>> but AFAICT there is no access to this kind of information from this
> > >>>> wrapper.
> > >>>
> > >>> Actually in coming v4 there is no new code added accept of the new fields and
> > >>> macros of the API. I think there is no need to change any code.
> > >>
> > >> Agreed.
> > >>
> > >>>>> +
> > >>>>>                    memset(format->reserved, 0, sizeof(format->reserved));
> > >>>>>                    memset(format->format.reserved, 0, sizeof(format->format.reserved));
> > >>>>>                    return v4l2_subdev_call(sd, pad, set_fmt, subdev_fh->pad, format);
> > >>>>> diff --git a/include/uapi/linux/v4l2-mediabus.h b/include/uapi/linux/v4l2-mediabus.h
> > >>>>> index 123a231001a8..89ff0ad6a631 100644
> > >>>>> --- a/include/uapi/linux/v4l2-mediabus.h
> > >>>>> +++ b/include/uapi/linux/v4l2-mediabus.h
> > >>>>> @@ -16,6 +16,8 @@
> > >>>>>    #include <linux/types.h>
> > >>>>>    #include <linux/videodev2.h>
> > >>>>> +#define V4L2_MBUS_FRAMEFMT_HAS_CSC        0x0001
> > >>>>> +
> > >>>>>    /**
> > >>>>>     * struct v4l2_mbus_framefmt - frame format on the media bus
> > >>>>>     * @width:      image width
> > >>>>> @@ -36,7 +38,8 @@ struct v4l2_mbus_framefmt {
> > >>>>>            __u16                   ycbcr_enc;
> > >>>>>            __u16                   quantization;
> > >>>>>            __u16                   xfer_func;
> > >>>>> -  __u16                   reserved[11];
> > >>>>> +  __u16                   flags;
> > >>>>
> > >>>> Are we okay with a u16 for flags?
> > >>>
> > >>> I am fine with it, though don't mind changing it if there are objections.
> > >>>
> > >>
> > >> I'd suggest making it a u32 to be a bit more future-proof.
> > >
> > > ok, I see that just changing the type to __u32 and the reserved array
> > > to 'reserved[9]' increases the struct size from 48 to 52 because of padding.
> > > There are two ways to solve it,
> > > - move the flags field to be just above 'ycbcr_enc'
> > > - change reserve to 'reserve[8]'
> > >
> > > Is moving fields order in a struct ok? If so it save us 2 bytes.
> >
> > Since the structure is a part of the stable UAPI, we can't reorder the
> > fields. Similarly, we can't change the struct size, because it's
> > embedded in the ioctl code. (Although there are ways around it, not
> > currently implemented by V4L2.) That leaves us only the second option
> > - changing reserved to [8].
>
> You can also possibly do
>
>         __u16                   ycbcr_enc;
>         __u16                   quantization;
>         __u16                   xfer_func;
>         __u16                   reserved2;
>         __u32                   flags;
>         __u16                   reserved[8];
>
> to explicitly show there's a hole.

Good point. I didn't realize that there actually was a hole. Thought
that xfer_func ended at a 32-bit boundary.

Perhaps when changing this, we could make it __u32 reserved[4]? Or
would that have some compatibility concerns?

Best regards,
Tomasz
