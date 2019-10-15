From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v2 for 5.4 2/4] media: hantro: Fix H264 max frmsize
 supported on RK3288
Date: Tue, 15 Oct 2019 12:27:32 +0900
Message-ID: <CAAFQd5Aj1fh5MbT1B8HZQmwYOSRr6C68uHmAPJ+5dec1K-szEA@mail.gmail.com>
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-3-ezequiel@collabora.com> <CAAFQd5BNu2ea3ei_imHmEwmdna0+iiSbQSv_SBsdHfP4Uh1h4Q@mail.gmail.com>
 <HE1PR06MB4011EC9E93ECBB6773252247AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <CAAFQd5CWoAP1psrEW6bVMkRmhFeTvFKtDSLjT7nefc2YiFovqQ@mail.gmail.com>
 <CAAFQd5AYCiKcA9pGc44L3gGHLPx6iMSb7KywkO8OqVv4gS8KvQ@mail.gmail.com>
 <CAAFQd5AQXGX_2gmKLfymH5mLG-uVh-v+XXtGXzbfzYzVVV42mA@mail.gmail.com>
 <HE1PR06MB4011B897EA5497659A19BCC6AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <CAAFQd5DEhHF+_oO_0ZKS1mi26hJ-JueFxXfdpyQ3ATzMW5Czaw@mail.gmail.com> <0d40f89059cd5aba96adcdd24340636df3315592.camel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <0d40f89059cd5aba96adcdd24340636df3315592.camel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "kernel@collabora.com" <kernel@collabora.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>, Alexandre Courbot <acourbot@chromium.org>, "fbuergisser@chromium.org" <fbuergisser@chromium.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Douglas Anderson <dianders@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Oct 14, 2019 at 7:10 AM Nicolas Dufresne
<nicolas.dufresne@collabora.com> wrote:
>
> Le jeudi 10 octobre 2019 =C3=A0 16:23 +0900, Tomasz Figa a =C3=A9crit :
> > On Tue, Oct 8, 2019 at 11:12 PM Jonas Karlman <jonas@kwiboo.se> wrote:
> > > On 2019-10-08 15:53, Tomasz Figa wrote:
> > > > On Tue, Oct 8, 2019 at 10:35 PM Tomasz Figa <tfiga@chromium.org> wr=
ote:
> > > > > On Tue, Oct 8, 2019 at 7:42 PM Tomasz Figa <tfiga@chromium.org> w=
rote:
> > > > > > On Tue, Oct 8, 2019 at 3:31 PM Jonas Karlman <jonas@kwiboo.se> =
wrote:
> > > > > > > On 2019-10-08 07:27, Tomasz Figa wrote:
> > > > > > > > Hi Ezequiel, Jonas,
> > > > > > > >
> > > > > > > > On Tue, Oct 8, 2019 at 2:46 AM Ezequiel Garcia <ezequiel@co=
llabora.com> wrote:
> > > > > > > > > From: Jonas Karlman <jonas@kwiboo.se>
> > > > > > > > >
> > > > > > > > > TRM specify supported image size 48x48 to 4096x2304 at st=
ep size 16 pixels,
> > > > > > > > > change frmsize max_width/max_height to match TRM.
> > > > > > > > >
> > > > > > > > > Fixes: 760327930e10 ("media: hantro: Enable H264 decoding=
 on rk3288")
> > > > > > > > > Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> > > > > > > > > ---
> > > > > > > > > v2:
> > > > > > > > > * No changes.
> > > > > > > > >
> > > > > > > > >  drivers/staging/media/hantro/rk3288_vpu_hw.c | 4 ++--
> > > > > > > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > > > > > > >
> > > > > > > > > diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c=
 b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> > > > > > > > > index 6bfcc47d1e58..ebb017b8a334 100644
> > > > > > > > > --- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
> > > > > > > > > +++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> > > > > > > > > @@ -67,10 +67,10 @@ static const struct hantro_fmt rk3288=
_vpu_dec_fmts[] =3D {
> > > > > > > > >                 .max_depth =3D 2,
> > > > > > > > >                 .frmsize =3D {
> > > > > > > > >                         .min_width =3D 48,
> > > > > > > > > -                       .max_width =3D 3840,
> > > > > > > > > +                       .max_width =3D 4096,
> > > > > > > > >                         .step_width =3D H264_MB_DIM,
> > > > > > > > >                         .min_height =3D 48,
> > > > > > > > > -                       .max_height =3D 2160,
> > > > > > > > > +                       .max_height =3D 2304,
> > > > > > > > This doesn't match the datasheet I have, which is RK3288 Da=
tasheet Rev
> > > > > > > > 1.4 and which has the values as in current code. What's the=
 one you
> > > > > > > > got the values from?
> > > > > > > The RK3288 TRM vcodec chapter from [1], unknown revision and =
date, lists 48x48 to 4096x2304 step size 16 pixels under 25.5.1 H.264 decod=
er.
> > > > > > >
> > > > > > > I can also confirm that one of my test samples (PUPPIES BATH =
IN 4K) is 4096x2304 and can be decoded after this patch.
> > > > > > > However the decoding speed is not optimal at 400Mhz, if I rec=
all correctly you need to set the VPU1 clock to 600Mhz for 4K decoding on R=
K3288.
> > > > > > >
> > > > > > > I am not sure if I should include a v2 of this patch in my v2=
 series, as-is this patch do not apply on master (H264_MB_DIM has changed t=
o MB_DIM in master).
> > > > > > >
> > > > > > > [1] http://www.t-firefly.com/download/firefly-rk3288/docs/TRM=
/rk3288-chapter-25-video-encoder-decoder-unit-(vcodec).pdf
> > > > > > I checked the RK3288 TRM V1.1 too and it refers to 3840x2160@24=
fps as
> > > > > > the maximum.
> > > > > >
> > > > > > As for performance, we've actually been getting around 33 fps a=
t 400
> > > > > > MHz with 3840x2160 on our devices (the old RK3288 Asus Chromebo=
ok
> > > > > > Flip).
> > > > > >
> > > > > > I guess we might want to check that with Hantro.
> > > > > Could you check the value of bits 10:0 in register at 0x0c8? That
> > > > > should be the maximum supported stream width in the units of 16
> > > > > pixels.
> > > > Correction: The unit is 1 pixel and there are additional 2 most
> > > > significant bits at 0x0d8, 15:14.
> > >
> > > I will check this later tonight when I have access to my devices.
> > > The PUPPIES BATH IN 4K (4096x2304) sample decoded without issue using=
 rockchip 4.4 BSP kernel and mpp last time I tested.
> > >
> > > The vcodec driver in 4.4 BSP kernel use 300/400 Mhz as default clock =
rate and will change to 600 Mhz when width is over 2560, see [1]:
> > >   raise frequency for resolution larger than 1440p avc
> > >
> > > [1] https://github.com/rockchip-linux/kernel/blob/develop-4.4/drivers=
/video/rockchip/vcodec/vcodec_service.c#L2551-L2570
> >
> > How comes it works for us well at 400 MHz? Better DRAM? Differences in
> > how Vcodec BSP handles the hardware that somehow make the decoding
> > slower?
>
> FWIW, here on the mainline driver, on RK3288, playing a 4K30 sample
> (probably the max for this one) get stuck at 20fps with 400MHz. So
> 600MHz would in theory be perfect to reach 30fps. That being said,
> different stream yield different performance with H264 and other
> CODECs, so doing a completely objective evaluation is hard.

For a fair comparison, we're using the following stream in our 4K
performance test:
http://storage.googleapis.com/chromiumos-test-assets-public/tast/cros/video=
/perf/h264/2160p_30fps_300frames_20190801.h264

Best regards,
Tomasz
