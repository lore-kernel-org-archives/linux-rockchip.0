From: Alexander Kochetkov <al.kochet@gmail.com>
Subject: Re: [PATCH 0/2] Free running cyclic transfer implementation for pl330
Date: Wed, 26 Apr 2017 20:01:55 +0300
Message-ID: <FFF03FEC-4C86-4E2E-BC45-1C8694243203@gmail.com>
References: <1492180531-1780-1-git-send-email-al.kochet@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1492180531-1780-1-git-send-email-al.kochet@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Dan Williams <dan.j.williams@intel.com>, Vinod Koul <vinod.koul@intel.com>, dmaengine@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, linux-rockchip@lists.infradead.org, hhb <hhb@rock-chips.com>, Shawn Lin <shawn.lin@rock-chips.com>, =?utf-8?B?546L5pmT6IW+?= <caesar.wang@rock-chips.com>, =?utf-8?B?5byg5a2m5bm/?= <sugar.zhang@rock-chips.com>, =?utf-8?B?6buE5rab?= <ulysses.huang@rock-chips.com>, Stephen Barber <smbarber@chromium.org>, Krzysztof Kozlowski <krzk@kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hello!

Just to let you know, that I got following test report from Stephen =
(thanks a lot!).

The patch won=E2=80=99t work due to full cyclic transfer doesn=E2=80=99t =
fit into mcbufsz (256 bytes long).
His application requested driver to do cyclic transfer with large number =
of cycles.
pl330 microcode has restriction on how far PC can change and this limit =
is 256 bytes,
so increasing mcbufsz will not solve problem. Don=E2=80=99t want to make =
jump bridges or
something like on the fly CPU modified microcode.

> 14 =D0=B0=D0=BF=D1=80. 2017 =D0=B3., =D0=B2 23:24, Stephen Barber =
<smbarber@chromium.org> =D0=BD=D0=B0=D0=BF=D0=B8=D1=81=D0=B0=D0=BB(=D0=B0)=
:
>=20
> Hi Alexander,
>=20
> Thanks for your patches!
>=20
> I gave them a try on kevin (Samsung Chromebook Plus) with our
> chromeos-4.4 kernel branch, plus some cherry-picks on top to get
> things to apply cleanly. Here's what my tree looks like:
>=20
> 344daf13fa4e (HEAD -> apply-pl330) dmaengine: pl330: don't emit code
> for one iteration loop
> 062596b83fec dmaengine: pl330: make cyclic transfer free runnable
> 0e75f2647b8e dmaengine: pl330: fix double lock
> 7d22b54b79f2 dmaengine: pl330: remove unused =E2=80=98regs=E2=80=99
> 8769d7115cec dmaengine: pl330: do not generate unaligned access
> 65ad077f685b dmaengine: pl330: convert callback to helper function
> 368e7aa6dffd dmaengine: add support to provide error result from a DMA
> transation
> 8f8afe84472f dmaengine: Add helper function to prep for error =
reporting
> 2acc1e704232 dmaengine: pl330: explicitly freeup irq
> ed36cde14cf0 (m/master, cros/chromeos-4.4) UPSTREAM: audit: add tty
> field to LOGIN event
>=20
> Unfortunately when I start playing audio, things don't seem to work :(
> Rolling back HEAD to "dmaengine: pl330: fix double lock" works though.
>=20
> The only thing I get from dmesg relevant to pl330 is this:
> [   59.203375] dma-pl330 ff6d0000.dma-controller:
> pl330_submit_req:1498 Try increasing mcbufsz (12810/256)
> [   59.203395] dma-pl330 ff6d0000.dma-controller: fill_queue:2023 Bad =
Desc(2)
> [   63.837390] dma-pl330 ff6d0000.dma-controller:
> pl330_submit_req:1498 Try increasing mcbufsz (12810/256)
> [   63.837410] dma-pl330 ff6d0000.dma-controller: fill_queue:2023 Bad =
Desc(2)
>=20
> Thanks,
> Steve
>=20


> 14 =D0=B0=D0=BF=D1=80. 2017 =D0=B3., =D0=B2 21:04, Krzysztof Kozlowski =
<krzk@kernel.org> =D0=BD=D0=B0=D0=BF=D0=B8=D1=81=D0=B0=D0=BB(=D0=B0):
>=20
> Let me know if you need more data. I wonder why you haven't experience
> this?

I don=E2=80=99t have idea why this might happen on Odroid and due to the =
fact the patch don=E2=80=99t
work for Stephen and I don=E2=80=99t have another idea how to implement =
that, it is better to
leave the problem along.

Krzysztof, thanks a lot for help. Really.

Regards,
Alexander.
