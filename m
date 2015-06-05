From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v3 1/3] ARM: rockchip: fix the CPU soft reset
Date: Fri, 05 Jun 2015 18:17:09 +0200
Message-ID: <2303499.bZIqGxfG9l@diego>
References: <1433517104-7595-1-git-send-email-wxt@rock-chips.com> <1433517104-7595-2-git-send-email-wxt@rock-chips.com> <1744325.yNd0r8SV4R@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1744325.yNd0r8SV4R@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: dianders@chromium.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-rockchip@lists.infradead.org, Russell King <linux@arm.linux.org.uk>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Caesar,

Am Freitag, 5. Juni 2015, 17:52:48 schrieb Heiko St=FCbner:
> could we do this something like the shown below instead?
> Here the deassertion of the reset really happens after we are sure th=
e
> power-domain is on
=20
As you mention in the gerrit cl that the hang does happen when you
deassert the reset before the power-domain wait, ignore my last message=
 please=20
:-)

But please make sure to also provide a changelog to the list submission=
s in=20
the future.


Thanks
Heiko
