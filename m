From: Alex Dewar <alex.dewar@gmx.co.uk>
Subject: Re: Asus C101P Chromeboot fails to boot with Linux 5.2
Date: Fri, 12 Jul 2019 23:07:36 +0100
Message-ID: <5fe66d5d-0624-323f-3bf8-56134ca85eca@gmx.co.uk>
References: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
 <CANBLGcyO5wAHgSVjYFB+hcp+SzaKY9d0QJm-hxqnSYbZ4Yv97g@mail.gmail.com>
 <862e98f3-8a89-a05e-1e85-e6f6004da32b@gmx.co.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <862e98f3-8a89-a05e-1e85-e6f6004da32b@gmx.co.uk>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Emil Renner Berthing <kernel@esmil.dk>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

I just built v5.1 and v5.2 from source, without the Arch patches, and
get the same result: 5.1 boots and 5.2 doesn't. I tried adding
ignore_loglevel, but still just get a blinking cursor. So it's
definitely a regression.

I can have a go at bisecting this if it would help? Or is there
something else we could try first?

Alex
