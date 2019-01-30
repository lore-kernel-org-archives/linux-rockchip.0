From: Alexandre Courbot <acourbot@chromium.org>
Subject: Re: [linux-sunxi] [PATCH v2 1/2] media: v4l: Add definitions for the
 HEVC slice format and controls
Date: Wed, 30 Jan 2019 11:28:45 +0900
Message-ID: <CAPBb6MUsbdXvkomtkiq0ygTqj58h4yqVR0PotT=ft94Ai0nbhw@mail.gmail.com>
References: <20181123130209.11696-1-paul.kocialkowski@bootlin.com>
 <20181123130209.11696-2-paul.kocialkowski@bootlin.com> <5515174.7lFZcYkk85@jernej-laptop>
 <ffe9c81db34b599f675ca5bbf02de360bf0a1608.camel@bootlin.com>
 <776e63c9-d4a5-342a-e0f7-200ef144ffc4@rock-chips.com> <64c793e08d61181b78125b3956ec38623fa5d261.camel@bootlin.com>
 <D8005130-F7FD-4CBD-8396-1BB08BB08E81@soulik.info> <f982ef378a8ade075bc7077b93640e20ecebf9f4.camel@bootlin.com>
 <82FA0C3F-BC54-4D89-AECB-90D81B89B1CE@soulik.info> <c3619a00-17e7-fb92-a427-a7478b96f356@soulik.info>
 <bdf14f97e98f2fd06307545ab9038ac3c2086ae7.camel@bootlin.com>
 <42520087-4EAE-4F7F-BCA0-42E422170E91@soulik.info> <ab8ca098ad60f209fe97f79bb93b2d1e898da524.camel@bootlin.com>
 <CAPBb6MUJu3cX9A-E32bSSjxc1cvGP83ayzZzUxa5_QMf6niK4g@mail.gmail.com> <2442b23d3b0a00c1bd441298a712888e016acf92.camel@ndufresne.ca>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2442b23d3b0a00c1bd441298a712888e016acf92.camel@ndufresne.ca>
Sender: linux-kernel-owner@vger.kernel.org
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Ayaka <ayaka@soulik.info>, Randy Li <randy.li@rock-chips.com>, =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>, Hans Verkuil <hverkuil@xs4all.nl>, Ezequiel Garcia <ezequiel@collabora.com>, Tomasz Figa <tfiga@chromium.org>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, Jan 30, 2019 at 6:41 AM Nicolas Dufresne <nicolas@ndufresne.ca> wro=
te:
>
> Le mardi 29 janvier 2019 =C3=A0 16:44 +0900, Alexandre Courbot a =C3=A9cr=
it :
> > On Fri, Jan 25, 2019 at 10:04 PM Paul Kocialkowski
> > <paul.kocialkowski@bootlin.com> wrote:
> > > Hi,
> > >
> > > On Thu, 2019-01-24 at 20:23 +0800, Ayaka wrote:
> > > > Sent from my iPad
> > > >
> > > > > On Jan 24, 2019, at 6:27 PM, Paul Kocialkowski <paul.kocialkowski=
@bootlin.com> wrote:
> > > > >
> > > > > Hi,
> > > > >
> > > > > > On Thu, 2019-01-10 at 21:32 +0800, ayaka wrote:
> > > > > > I forget a important thing, for the rkvdec and rk hevc decoder,=
 it would
> > > > > > requests cabac table, scaling list, picture parameter set and r=
eference
> > > > > > picture storing in one or various of DMA buffers. I am not talk=
ing about
> > > > > > the data been parsed, the decoder would requests a raw data.
> > > > > >
> > > > > > For the pps and rps, it is possible to reuse the slice header, =
just let
> > > > > > the decoder know the offset from the bitstream bufer, I would s=
uggest to
> > > > > > add three properties(with sps) for them. But I think we need a =
method to
> > > > > > mark a OUTPUT side buffer for those aux data.
> > > > >
> > > > > I'm quite confused about the hardware implementation then. From w=
hat
> > > > > you're saying, it seems that it takes the raw bitstream elements =
rather
> > > > > than parsed elements. Is it really a stateless implementation?
> > > > >
> > > > > The stateless implementation was designed with the idea that only=
 the
> > > > > raw slice data should be passed in bitstream form to the decoder.=
 For
> > > > > H.264, it seems that some decoders also need the slice header in =
raw
> > > > > bitstream form (because they take the full slice NAL unit), see t=
he
> > > > > discussions in this thread:
> > > > > media: docs-rst: Document m2m stateless video decoder interface
> > > >
> > > > Stateless just mean it won=E2=80=99t track the previous result, but=
 I don=E2=80=99t
> > > > think you can define what a date the hardware would need. Even you
> > > > just build a dpb for the decoder, it is still stateless, but parsin=
g
> > > > less or more data from the bitstream doesn=E2=80=99t stop a decoder=
 become a
> > > > stateless decoder.
> > >
> > > Yes fair enough, the format in which the hardware decoder takes the
> > > bitstream parameters does not make it stateless or stateful per-se.
> > > It's just that stateless decoders should have no particular reason fo=
r
> > > parsing the bitstream on their own since the hardware can be designed
> > > with registers for each relevant bitstream element to configure the
> > > decoding pipeline. That's how GPU-based decoder implementations are
> > > implemented (VAAPI/VDPAU/NVDEC, etc).
> > >
> > > So the format we have agreed on so far for the stateless interface is
> > > to pass parsed elements via v4l2 control structures.
> > >
> > > If the hardware can only work by parsing the bitstream itself, I'm no=
t
> > > sure what the best solution would be. Reconstructing the bitstream in
> > > the kernel is a pretty bad option, but so is parsing in the kernel or
> > > having the data both in parsed and raw forms. Do you see another
> > > possibility?
> >
> > Is reconstructing the bitstream so bad? The v4l2 controls provide a
> > generic interface to an encoded format which the driver needs to
> > convert into a sequence that the hardware can understand. Typically
> > this is done by populating hardware-specific structures. Can't we
> > consider that in this specific instance, the hardware-specific
> > structure just happens to be identical to the original bitstream
> > format?
>
> At maximum allowed bitrate for let's say HEVC (940MB/s iirc), yes, it
> would be really really bad. In GStreamer project we have discussed for
> a while (but have never done anything about) adding the ability through
> a bitmask to select which part of the stream need to be parsed, as
> parsing itself was causing some overhead. Maybe similar thing applies,
> though as per our new design, it's the fourcc that dictate the driver
> behaviour, we'd need yet another fourcc for drivers that wants the full
> bitstream (which seems odd if you have already parsed everything, I
> think this need some clarification).

Note that I am not proposing to rebuild the *entire* bitstream
in-kernel. What I am saying is that if the hardware interprets some
structures (like SPS/PPS) in their raw format, this raw format could
be reconstructed from the structures passed by userspace at negligible
cost. Such manipulation would only happen on a small amount of data.

Exposing finer-grained driver requirements through a bitmask may
deserve more exploring. Maybe we could end with a spectrum of
capabilities that would allow us to cover the range from fully
stateless to fully stateful IPs more smoothly. Right now we have two
specifications that only consider the extremes of that range.
