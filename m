From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [REGRESSION] Xorg segfaults on Asus Chromebook CP101 with Linux
 v5.2 (was Asus C101P Chromeboot fails to boot with Linux 5.2)
Date: Sat, 13 Jul 2019 19:58:38 -0300
Message-ID: <CAAEAJfAeZaT5wd4k8Lkf6T3G7LpK5LmOOG2ZbVJAQ6Xb7Wtdcw@mail.gmail.com>
References: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
 <5fe66d5d-0624-323f-3bf8-56134ca85eca@gmx.co.uk>
 <f47f8759-8113-812a-b17a-4be09665369e@gmx.co.uk>
 <2648434.ut0pN6mfR1@phil> <2d52b787-187c-5638-660c-33d51a07770c@gmx.co.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <2d52b787-187c-5638-660c-33d51a07770c@gmx.co.uk>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Alex Dewar <alex.dewar@gmx.co.uk>
Cc: devel@driverdev.osuosl.org, Heiko Stuebner <heiko@sntech.de>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Boris Brezillon <boris.brezillon@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, linux-media <linux-media@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Sat, 13 Jul 2019 at 13:43, Alex Dewar <alex.dewar@gmx.co.uk> wrote:
>
> On 13/07/2019 16:17, Heiko Stuebner wrote:
> > Hi,
> >
> > Am Samstag, 13. Juli 2019, 13:38:45 CEST schrieb Alex Dewar:
> >> I initially thought my machine was failing to boot entirely, but it
> >> turns out it was just failing to start the display manager. I managed to
> >> escape to a tty by hammering the keyboard a bit.
> >>
> >> I suspect the culprit is the rockchip_vpu driver (in staging/media),
> >> which has been renamed to hantro in this merge window. When I run startx
> >> from a terminal, X fails to start and Xorg segfaults (log here:
> >> http://users.sussex.ac.uk/~ad374/xorg.log). X seems to work without any
> >> issues in v5.1.
> >
> > 5.2 also has support for Panfrost (Mali-Midgard GPUs) but I'm not
> > sure if it already can support X11 yet and your X11 log mentions
> > libglamoregl in the segfault stack trace.
> >
> > Apart from it bisect that Greg suggested you could also just try
> > blacklisting either panfrost or vpu kernel modules
> > /etc/udev/somewhere . This would prevent them from loading
> >
> > Hope that helps
> > Heiko
> >
> >
>
> Hi Heiko,
>
> Thanks for this. I blacklisted the panfrost driver and X magically
> started working again.
>
> I'll try to do a bisect later to find the offending commit though.
>
> In related news, it also seems that the sound and wifi drivers aren't
> working either in 5.2 (although I need to do a bit more testing to
> confirm the latter).
>

Adding myself and Tomeu.

Perhaps we need to disable Panfrost from defconfig from now?

Regards,
Eze
