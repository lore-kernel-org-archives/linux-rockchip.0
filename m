From: Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH] PM / AVS: rockchip-io: add io selectors and supplies for rk3399
Date: Wed, 23 Mar 2016 13:35:55 -0700
Message-ID: <7h8u19q6dw.fsf@baylibre.com>
References: <1458067526-11319-1-git-send-email-david.wu@rock-chips.com>
	<4748955.K1DVHdsoLd@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-pm-owner@vger.kernel.org>
In-Reply-To: <4748955.K1DVHdsoLd@diego> ("Heiko =?utf-8?Q?St=C3=BCbner=22'?=
 =?utf-8?Q?s?= message of "Wed, 16
	Mar 2016 12:11:41 +0100")
Sender: linux-pm-owner@vger.kernel.org
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc: David Wu <david.wu@rock-chips.com>, nm@ti.com, huangtao@rock-chips.com, cf@rock-chips.com, zyw@rock-chips.com, xjq@rock-chips.com, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Heiko St=C3=BCbner <heiko@sntech.de> writes:

> Hi David,
>
> Am Mittwoch, 16. M=C3=A4rz 2016, 02:45:26 schrieb David Wu:
>> This adds the necessary data for handling io voltage domains on the =
rk3399.
>> As interesting tidbit, the rk3399 contains two separate iodomain are=
as.
>> One in the regular General Register Files (GRF) and one in PMUGRF in=
 the
>> pmu power domain.
>>=20
>> Signed-off-by: David Wu <david.wu@rock-chips.com>
>
> looks good, so
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Acked-by: Kevin Hilman <khilman@baylibre.com>

Rafael, can you queue this directly?  I don't currently have any other
AVS patches in the queue.

Kevin
