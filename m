From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: rk3399: Graphical artifacts when running for-next
Date: Mon, 25 Feb 2019 10:00:51 -0800
Message-ID: <CAD=FV=VOam12uFaFOc87JH=ynYWfOaCQ2QxG8bBTaszixW5qYQ@mail.gmail.com>
References: <69ddf17a-232d-fc1f-f6a7-59dbde220395@collabora.com>
 <1654246.IP1FNPqO5J@phil> <ec6768e8-c6ce-b4e6-10b6-2880dbbdff4d@collabora.com>
 <5313650.gBT5ZN9C5b@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <5313650.gBT5ZN9C5b@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Robert Foss <robert.foss-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Tom Cubie <tom-ZvE2cuBqvIQAvxtiuMwx3w@public.gmane.org>, Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Thu, Feb 21, 2019 at 1:49 PM Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
> non-standard resolutions are still a bit of a problem I think.
> The vendor kernel (and also the CrOS kernel) does contain quite a number
> of hacks to make that work. (hacking up plls and the clock-tree, making
> it quite non-generic).

BTW: I did spend quite a bit of time getting a whole lot of HDMI clock
rates working on rk3288 in the Chrome OS kernel.  The main reason
these can't go upstream is that it depends on knowing that we'll be
able to fully control a PLL for HDMI and that's not guaranteed on
upstream.  I've tried to get folks interested in trying to solve that
problem in the past but never made any real progress.  :(

In any case, if I can ever answer any questions about the HDMI configs
I figured out to work on rk3288, please let me know.

-Doug
