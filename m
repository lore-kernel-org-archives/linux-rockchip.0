From: Alex Dewar <alex.dewar@gmx.co.uk>
Subject: Re: Asus C101P Chromeboot fails to boot with Linux 5.2
Date: Fri, 12 Jul 2019 17:27:22 +0100
Message-ID: <862e98f3-8a89-a05e-1e85-e6f6004da32b@gmx.co.uk>
References: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
 <CANBLGcyO5wAHgSVjYFB+hcp+SzaKY9d0QJm-hxqnSYbZ4Yv97g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CANBLGcyO5wAHgSVjYFB+hcp+SzaKY9d0QJm-hxqnSYbZ4Yv97g@mail.gmail.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Emil Renner Berthing <kernel@esmil.dk>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Emil,

I've tried booting with: audit=3D0 console=3Dtty0 console=3DttyS2,115200n8
earlyprintk=3DttyS2,115200n8 init=3D/sbin/init root=3DPARTUUID=3D%U/PARTNR=
OFF=3D1
rootwait rw noinitrd

Now I don't get the audit messages, but no other message is displayed
either. It just alternates between a flashing cursor and a multicoloured
square in the middle of the screen. The system isn't totally
unresponsive though. If I press the power button it still shuts down
properly.

I've just tested it again and confirmed that it does boot with the
v5.1.11 kernel.

Best,
Alex
