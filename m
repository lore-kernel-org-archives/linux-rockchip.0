From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: add video codec for rk3399
Date: Sun, 6 Jan 2019 14:21:37 -0300
Message-ID: <CAAEAJfCLxvJWrC1CNiSyLV9y=pOjzUBik5SUD0ZVUcnA-+HobQ@mail.gmail.com>
References: <20190105183150.20266-1-ayaka@soulik.info> <20190105183150.20266-5-ayaka@soulik.info>
 <50db3bc3faea97182b7fe18b4d9677f7e1563eaa.camel@collabora.com>
 <CAC7DE03-A74C-4154-9443-BC91E6CED02E@soulik.info> <f3dcd25bb1c3f0544cb7eedd0b27633d923c0d27.camel@collabora.com>
 <C53B5CFA-2F9C-41E1-BBA8-D63819D0AC3D@soulik.info>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <C53B5CFA-2F9C-41E1-BBA8-D63819D0AC3D@soulik.info>
Sender: linux-kernel-owner@vger.kernel.org
To: Ayaka <ayaka@soulik.info>
Cc: Ezequiel Garcia <ezequiel@collabora.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Tomasz Figa <tfiga@chromium.org>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, myy@miouyouyou.fr, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media <linux-media@vger.kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Sun, 6 Jan 2019 at 13:16, Ayaka <ayaka@soulik.info> wrote:
>
>
>
> Sent from my iPad
>
> > On Jan 7, 2019, at 12:04 AM, Ezequiel Garcia <ezequiel@collabora.com> w=
rote:
> >
> > On Sun, 2019-01-06 at 23:05 +0800, Ayaka wrote:
> >>> On Jan 6, 2019, at 10:22 PM, Ezequiel Garcia <ezequiel@collabora.com>=
 wrote:
> >>>
> >>> Hi Randy,
> >>>
> >>> Thanks a lot for this patches. They are really useful
> >>> to provide more insight into the VPU hardware.
> >>>
> >>> This change will make the vpu encoder and vpu decoder
> >>> completely independent, can they really work in parallel?
> >> As I said it depends on the platform, but with this patch, the user sp=
ace would think they can work at the same time.
> >
> >
> > I think there is some confusion.
> >
> > The devicetree is one thing: it is a hardware representation,
> > a way to describe the hardware, for the kernel/bootloader to
> > parse.
> >
> > The userspace view will depend on the driver implementation.
> >
> > The current devicetree and driver (without your patches),
> > model the VPU as a single piece of hardware, exposing a decoder
> > and an encoder.
> >
> > The V4L driver will then create two video devices, i.e. /dev/videoX
> > and /dev/videoY. So userspace sees an independent view of the
> > devices.
> >
> I knew that, the problem is that the driver should not always create a de=
coder and encoder pair, they may not exist at some platforms, even some pla=
tforms doesn=E2=80=99t have a encoder. You may have a look on the rk3328 I =
post on the first email as example.

That is correct. But that still doesn't tackle my question: is the
hardware able to run a decoding and an encoding job in parallel?

If not, then it's wrong to describe them as independent entities.

> > However, they are internally connected, and thus we can
> > easily avoid two jobs running in parallel.
> >
> That is what the mpp service did in my patches, handing the relationship =
between each devices. And it is not a easy work, maybe a 4k decoder would b=
e blocked by another high frame rate encoding work or another decoder sessi=
on. The vendor kernel have more worry about this,  but not in this version.

Right. That is one way to design it. Another way is having a single
devicetree node for the VPU encoder/decoder "complex".

Thanks for the input!
--=20
Ezequiel Garc=C3=ADa, VanguardiaSur
www.vanguardiasur.com.ar
