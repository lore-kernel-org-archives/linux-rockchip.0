From: Alex Dewar <alex.dewar@gmx.co.uk>
Subject: [REGRESSION] Xorg segfaults on Asus Chromebook CP101 with Linux v5.2
 (was Asus C101P Chromeboot fails to boot with Linux 5.2)
Date: Sat, 13 Jul 2019 12:38:45 +0100
Message-ID: <f47f8759-8113-812a-b17a-4be09665369e@gmx.co.uk>
References: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
 <CANBLGcyO5wAHgSVjYFB+hcp+SzaKY9d0QJm-hxqnSYbZ4Yv97g@mail.gmail.com>
 <862e98f3-8a89-a05e-1e85-e6f6004da32b@gmx.co.uk>
 <5fe66d5d-0624-323f-3bf8-56134ca85eca@gmx.co.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <5fe66d5d-0624-323f-3bf8-56134ca85eca@gmx.co.uk>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-media@vger.kernel.org, devel@driverdev.osuosl.org
List-Id: linux-rockchip.vger.kernel.org

Hi all,

I initially thought my machine was failing to boot entirely, but it
turns out it was just failing to start the display manager. I managed to
escape to a tty by hammering the keyboard a bit.

I suspect the culprit is the rockchip_vpu driver (in staging/media),
which has been renamed to hantro in this merge window. When I run startx
from a terminal, X fails to start and Xorg segfaults (log here:
http://users.sussex.ac.uk/~ad374/xorg.log). X seems to work without any
issues in v5.1.

I've also tried running trace on the Xorg process, but the output was
pretty verbose. I can share if that would be helpful though.

Best,
Alex
