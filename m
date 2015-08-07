From: Kevin Hilman <khilman@kernel.org>
Subject: Re: [PATCH 2/2] PM / AVS: rockchip-io: add io selectors and supplies for rk3368
Date: Fri, 07 Aug 2015 16:04:53 -0700
Message-ID: <7hlhdmwvhm.fsf@deeprootsystems.com>
References: <3371948.nX6iqYbHnA@diego> <1481228.KhoIt654ID@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-pm-owner@vger.kernel.org>
In-Reply-To: <1481228.KhoIt654ID@diego> ("Heiko =?utf-8?Q?St=C3=BCbner=22'?=
 =?utf-8?Q?s?= message of "Tue, 04
	Aug 2015 21:37:01 +0200")
Sender: linux-pm-owner@vger.kernel.org
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Heiko St=C3=BCbner <heiko@sntech.de> writes:

> This adds the necessary data for handling io voltage domains on the r=
k3368.
> As interesting tidbit, the rk3368 contains two separate iodomain area=
s.
> One in the regular General Register Files (GRF) and one in PMUGRF in =
the
> pmu power domain.
>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Acked-by: Kevin Hilman <khilman@linaro.org>

Rafael, feel free to take this series directly, or let me know if you
want a pull request.  I don't have anything other AVS stuff queued up
for v4.3.

Kevin
