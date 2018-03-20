From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: assign clock rate for some
 cpll child clock
Date: Tue, 20 Mar 2018 08:00:40 +0100
Message-ID: <22053902.qFbnfPJqGC@diego>
References: <1521511589-17844-1-git-send-email-hl@rock-chips.com>
 <13843114-3db5-b98c-a71d-c61911a8a42c@rock-chips.com>
 <d92aa74d-7a49-8fbd-5efc-b931210ef0b7@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <d92aa74d-7a49-8fbd-5efc-b931210ef0b7-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: hl <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: dbasehore-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 20. M=E4rz 2018, 03:23:41 CET schrieb hl:
> On Tuesday, March 20, 2018 10:12 AM, Shawn Lin wrote:
> > On 2018/3/20 10:06, Lin Huang wrote:
> >> These clocks do not assign default clock frequency, and use the
> >> default cru register value to get frequency, so if cpll increase
> >> frequency, these clocks also increase their frequency, that may
> >> exceed their signed off frequency. So assign default clock for
> >> them to avoid it.
> >> =

> >> NOTE: on none of the boards currently in mainline do we expect
> >> CPLL to be anything other than 800 MHz, but some future boards
> >> might have it. It's still good to be explicit about the clock
> >> rates to make diffing against future boards easier and also to
> >> rely less on BIOS muxing.
> >> =

> >> Change-Id: If79368aeda5c51dbf2a3b6659f17052a2ae4a401
> > =

> > Should remove Change-Id for future patch(es), thought Heiko may help
> > do it when applied.
> =

> Opp, sorry for that.

Yep, I can drop the changeId when applying
