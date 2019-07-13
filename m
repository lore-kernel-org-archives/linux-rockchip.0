From: Alex Dewar <alex.dewar@gmx.co.uk>
Subject: Re: [REGRESSION] Xorg segfaults on Asus Chromebook CP101 with Linux
 v5.2 (was Asus C101P Chromeboot fails to boot with Linux 5.2)
Date: Sat, 13 Jul 2019 17:43:05 +0100
Message-ID: <2d52b787-187c-5638-660c-33d51a07770c@gmx.co.uk>
References: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
 <5fe66d5d-0624-323f-3bf8-56134ca85eca@gmx.co.uk>
 <f47f8759-8113-812a-b17a-4be09665369e@gmx.co.uk> <2648434.ut0pN6mfR1@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2648434.ut0pN6mfR1@phil>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-media@vger.kernel.org, devel@driverdev.osuosl.org
List-Id: linux-rockchip.vger.kernel.org

On 13/07/2019 16:17, Heiko Stuebner wrote:
> Hi,
>
> Am Samstag, 13. Juli 2019, 13:38:45 CEST schrieb Alex Dewar:
>> I initially thought my machine was failing to boot entirely, but it
>> turns out it was just failing to start the display manager. I managed t=
o
>> escape to a tty by hammering the keyboard a bit.
>>
>> I suspect the culprit is the rockchip_vpu driver (in staging/media),
>> which has been renamed to hantro in this merge window. When I run start=
x
>> from a terminal, X fails to start and Xorg segfaults (log here:
>> http://users.sussex.ac.uk/~ad374/xorg.log). X seems to work without any
>> issues in v5.1.
>
> 5.2 also has support for Panfrost (Mali-Midgard GPUs) but I'm not
> sure if it already can support X11 yet and your X11 log mentions
> libglamoregl in the segfault stack trace.
>
> Apart from it bisect that Greg suggested you could also just try
> blacklisting either panfrost or vpu kernel modules
> /etc/udev/somewhere . This would prevent them from loading
>
> Hope that helps
> Heiko
>
>

Hi Heiko,

Thanks for this. I blacklisted the panfrost driver and X magically
started working again.

I'll try to do a bisect later to find the offending commit though.

In related news, it also seems that the sound and wifi drivers aren't
working either in 5.2 (although I need to do a bit more testing to
confirm the latter).

Best,
Alex
