From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: add video codec for rk3399
Date: Tue, 8 Jan 2019 15:33:48 +0900
Message-ID: <CAAFQd5AaVonqn92F=Oa_s_5fkn566+xubO5ijqHmnjg7d4j-8A@mail.gmail.com>
References: <20190105183150.20266-1-ayaka@soulik.info> <20190105183150.20266-5-ayaka@soulik.info>
 <50db3bc3faea97182b7fe18b4d9677f7e1563eaa.camel@collabora.com>
 <CAC7DE03-A74C-4154-9443-BC91E6CED02E@soulik.info> <f3dcd25bb1c3f0544cb7eedd0b27633d923c0d27.camel@collabora.com>
 <C53B5CFA-2F9C-41E1-BBA8-D63819D0AC3D@soulik.info> <CAAEAJfCLxvJWrC1CNiSyLV9y=pOjzUBik5SUD0ZVUcnA-+HobQ@mail.gmail.com>
 <85C6CA4D-CC54-422B-BC2B-25EA10701696@soulik.info>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <85C6CA4D-CC54-422B-BC2B-25EA10701696@soulik.info>
Sender: linux-kernel-owner@vger.kernel.org
To: Ayaka <ayaka@soulik.info>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Ezequiel Garcia <ezequiel@collabora.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, myy@miouyouyou.fr, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media <linux-media@vger.kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Jan 7, 2019 at 2:30 AM Ayaka <ayaka@soulik.info> wrote:
>
> Hello Ezequiel
>
> Sent from my iPad
>
> > On Jan 7, 2019, at 1:21 AM, Ezequiel Garcia <ezequiel@vanguardiasur.com=
.ar> wrote:
> >
> >> On Sun, 6 Jan 2019 at 13:16, Ayaka <ayaka@soulik.info> wrote:
> >>
> >>
> >>
> >> Sent from my iPad
> >>
> >>> On Jan 7, 2019, at 12:04 AM, Ezequiel Garcia <ezequiel@collabora.com>=
 wrote:
> >>>
> >>> On Sun, 2019-01-06 at 23:05 +0800, Ayaka wrote:
> >>>>> On Jan 6, 2019, at 10:22 PM, Ezequiel Garcia <ezequiel@collabora.co=
m> wrote:
> >>>>>
> >>>>> Hi Randy,
> >>>>>
> >>>>> Thanks a lot for this patches. They are really useful
> >>>>> to provide more insight into the VPU hardware.
> >>>>>
> >>>>> This change will make the vpu encoder and vpu decoder
> >>>>> completely independent, can they really work in parallel?
> >>>> As I said it depends on the platform, but with this patch, the user =
space would think they can work at the same time.
> >>>
> >>>
> >>> I think there is some confusion.
> >>>
> >>> The devicetree is one thing: it is a hardware representation,
> >>> a way to describe the hardware, for the kernel/bootloader to
> >>> parse.
> >>>
> >>> The userspace view will depend on the driver implementation.
> >>>
> >>> The current devicetree and driver (without your patches),
> >>> model the VPU as a single piece of hardware, exposing a decoder
> >>> and an encoder.
> >>>
> >>> The V4L driver will then create two video devices, i.e. /dev/videoX
> >>> and /dev/videoY. So userspace sees an independent view of the
> >>> devices.
> >>>
> >> I knew that, the problem is that the driver should not always create a=
 decoder and encoder pair, they may not exist at some platforms, even some =
platforms doesn=E2=80=99t have a encoder. You may have a look on the rk3328=
 I post on the first email as example.
> >
> > That is correct. But that still doesn't tackle my question: is the
> > hardware able to run a decoding and an encoding job in parallel?
> >
> For rk3328, yes, you see I didn=E2=80=99t draw them in the same box.
> > If not, then it's wrong to describe them as independent entities.
> >
> >>> However, they are internally connected, and thus we can
> >>> easily avoid two jobs running in parallel.
> >>>
> >> That is what the mpp service did in my patches, handing the relationsh=
ip between each devices. And it is not a easy work, maybe a 4k decoder woul=
d be blocked by another high frame rate encoding work or another decoder se=
ssion. The vendor kernel have more worry about this,  but not in this versi=
on.
> >
> > Right. That is one way to design it. Another way is having a single
> > devicetree node for the VPU encoder/decoder "complex".
> No, you can=E2=80=99t assume which one is in the combo group, it can be v=
arious. you see, in the rk3328, the vdpu is paired with an avs+ decoder. Th=
at is why I use a virtual device standing for scheduler.

First of all, thanks for all the input. Having more understanding of
the hardware and shortcomings of the current V4L2 APIs is really
important to let us further evolve the API and make sure that it works
for further use cases.

As for the Device Tree itself, it doesn't always describe the hardware
in 100%. Most of the time it's just the necessary information to
choose and instantiate the right drivers and bind to the right
hardware resources. The information on which hardware instances on the
SoC can work independently can of course be described in DT (e.g. by
sub-nodes of a video-codec complex OR a set of phandles, e.g.
rockchip,shared-instances), but it's also perfectly fine to defer this
kind of knowledge to the drivers themselves.

Best regards,
Tomasz
