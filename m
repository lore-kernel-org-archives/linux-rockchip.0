From: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH] ARM: dts: rockchip: move rk3288 edp phy under the GRF
Date: Wed, 4 May 2016 18:11:12 -0700
Message-ID: <20160505011112.GA131923@google.com>
References: <1640976.sZtsTTlDpl@diego>
 <4275673.EbRsbqkhH8@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <4275673.EbRsbqkhH8@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, Apr 22, 2016 at 03:56:27PM +0200, Heiko Stuebner wrote:
> Am Samstag, 16. April 2016, 02:49:14 schrieb Heiko St=FCbner:
> > The edp-phy control is a part of the General Register Files and
> > with a recent patch in 4.6 the phy driver can now also handle this
> > correctly, so move the dts node under the GRF as well.
> > =

> > Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> =

> the change in the phy-driver has made it into Greg's usb tree as fix for =
4.6, =

> so I've picked this patch for 4.7 now.

Not sure if it's intentional, but the phy binding change (which is in
4.6) broke the DP support in 4.6/rk3288.dtsi, and this patch is
necessary to bring it back. Shouldn't this DTS change have gone to 4.7
too? Or (when convincing ourselves we're not breaking the DT ABI here),
could we just claim that eDP wasn't supported in 4.6, and 4.7 will just
be bug-fixing the rk3288 DTS?

Brian
