From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v2 1/4] media: staging: rkisp1: cap: change RGB24 format
 to XBGR32
Date: Wed, 10 Jun 2020 18:15:48 +0200
Message-ID: <CAAFQd5D4N9_WkQmwA-BVkk6aHUpsNOY0i8fvgbqL3+OiiLQ+kw@mail.gmail.com>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
 <20200515142952.20163-2-dafna.hirschfeld@collabora.com> <CAHD77H=LhYV31Jw_-cTvXPh0K2ocr6o97ymJ2KkmCdkH_DE7gg@mail.gmail.com>
 <b70dfcd2-6623-d1c9-78eb-d22b38434c73@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <b70dfcd2-6623-d1c9-78eb-d22b38434c73@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: Linux Media Mailing List <linux-media@vger.kernel.org>, Helen Koike <helen.koike@collabora.com>, Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com, Dafna Hirschfeld <dafna3@gmail.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Jun 10, 2020 at 6:11 PM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
>
>
> On 27.05.20 01:04, Tomasz Figa wrote:
> > Hi Dafna,
> >
> > On Fri, May 15, 2020 at 4:30 PM Dafna Hirschfeld
> > <dafna.hirschfeld@collabora.com> wrote:
> >>
> >> According to the TRM, the YUV->RGB conversion outputs
> >> "24 bit word". What it means is that 4 bytes are used with
> >> 24bit for the RGB and the last byte is ignored.
> >
> > I don't see this mentioned in the datasheets I have. On the other
> > hand, XBGR32 indeed makes much more sense, as the 3-byte RGB isn't a
> > very popular format. Have you validated that the hardware behavior
> > indeed matches that?
>
> Hi, yes I validated it, I also found it mentioned here:
>
> http://rockchip.fr/RK3288%20TRM/rk3288-chapter-31-image-signal-processing-(isp).pdf
>
> under section "31.3.9 YCbCr to RGB Conversion"

Okay, great. Thanks!

Feel free to add my Reviewed-by after addressing Helen's comments.

Best regards,
Tomasz
