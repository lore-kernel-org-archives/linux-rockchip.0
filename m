From: Emil Renner Berthing <kernel@esmil.dk>
Subject: Re: Asus C101P Chromeboot fails to boot with Linux 5.2
Date: Fri, 12 Jul 2019 17:44:40 +0200
Message-ID: <CANBLGcyO5wAHgSVjYFB+hcp+SzaKY9d0QJm-hxqnSYbZ4Yv97g@mail.gmail.com>
References: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Alex Dewar <alex.dewar@gmx.co.uk>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Alex,

On Fri, 12 Jul 2019 at 17:02, Alex Dewar <alex.dewar@gmx.co.uk> wrote:
> When I try to boot the screen just gets flooded with messages like this:
> http://users.sussex.ac.uk/~ad374/boot_fail.jpg

Those seem to be only audit messages. You can try booting with audit=0
on the kernel command line to get rid of those messages, so you have a
better chance of catching the real issue. (Or conclude that audit is
what is broken.)

/Emil
