From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH 3/4] ARM: dts: rockchip: add veyron-jerry board
Date: Wed, 15 Jul 2015 14:28:29 -0700
Message-ID: <CAD=FV=WwFgjzbk9xF5TU_ie6UnHQMyrZ176D4+jJTWWOoaKC2Q@mail.gmail.com>
References: <1436574562-16308-1-git-send-email-heiko@sntech.de>
 <1436574562-16308-4-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1436574562-16308-4-git-send-email-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Alexandru Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Kevin Hilman <khilman-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Heiko,

On Fri, Jul 10, 2015 at 5:29 PM, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
> +&rk808 {
> +       dvs-gpios = <&gpio7 12 GPIO_ACTIVE_HIGH>,
> +                   <&gpio7 15 GPIO_ACTIVE_HIGH>;

dvs-gpios never made it upstream.  ...which actually means that
upstream is probably ramping its CPU/GPU lines a bit too fast and
overshooting.  Eventually we should figure out how to fix that, but
for now we should remove dvs-gpios since it's not in the bindings.


> +&i2c4 {
> +       status = "okay";
> +
> +       /*
> +        * Trackpad pin control is shared between Elan and Synaptics devices
> +        * so we have to pull it up to the bus level.
> +        */
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&i2c4_xfer &trackpad_int>;
> +
> +       trackpad@15 {
> +               /*
> +                * Remove the inherited pinctrl settings to avoid clashing
> +                * with bus-wide ones.
> +                */
> +               /delete-property/pinctrl-names;
> +               /delete-property/pinctrl-0;

Eventually this would be nice to solve, but doesn't seem like it
should block this patch.


After removing dvs-gpios, you can add my Reviewed-by tag.


-Doug
