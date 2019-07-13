From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [REGRESSION] Xorg segfaults on Asus Chromebook CP101 with Linux
 v5.2 (was Asus C101P Chromeboot fails to boot with Linux 5.2)
Date: Sat, 13 Jul 2019 16:47:00 +0200
Message-ID: <20190713144700.GF5982@kroah.com>
References: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
 <CANBLGcyO5wAHgSVjYFB+hcp+SzaKY9d0QJm-hxqnSYbZ4Yv97g@mail.gmail.com>
 <862e98f3-8a89-a05e-1e85-e6f6004da32b@gmx.co.uk>
 <5fe66d5d-0624-323f-3bf8-56134ca85eca@gmx.co.uk>
 <f47f8759-8113-812a-b17a-4be09665369e@gmx.co.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <driverdev-devel-bounces@linuxdriverproject.org>
Content-Disposition: inline
In-Reply-To: <f47f8759-8113-812a-b17a-4be09665369e@gmx.co.uk>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>,
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>,
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>
To: Alex Dewar <alex.dewar@gmx.co.uk>
Cc: devel@driverdev.osuosl.org, Heiko Stuebner <heiko@sntech.de>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Boris Brezillon <boris.brezillon@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Sat, Jul 13, 2019 at 12:38:45PM +0100, Alex Dewar wrote:
> Hi all,
> 
> I initially thought my machine was failing to boot entirely, but it
> turns out it was just failing to start the display manager. I managed to
> escape to a tty by hammering the keyboard a bit.
> 
> I suspect the culprit is the rockchip_vpu driver (in staging/media),
> which has been renamed to hantro in this merge window. When I run startx
> from a terminal, X fails to start and Xorg segfaults (log here:
> http://users.sussex.ac.uk/~ad374/xorg.log). X seems to work without any
> issues in v5.1.
> 
> I've also tried running trace on the Xorg process, but the output was
> pretty verbose. I can share if that would be helpful though.

Can you run 'git bisect' to find the offending commit?

thanks,

greg k-h
