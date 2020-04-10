From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: PROBLEM: [drm:analogix_dp_bridge_atomic_enable [analogix_dp]]
 *ERROR* Failed to disable psr -110
Date: Fri, 10 Apr 2020 08:28:56 -0700
Message-ID: <CAD=FV=WWx2KH+qKvGa5yQW7fZHQ_azd69Eza_Gvs18eQPvfHGg@mail.gmail.com>
References: <20200329203349.GA15121@arya.arvanta.net>
 <20200410095719.GA914@arya.arvanta.net>
 <CAFqH_53TsmtSFnUoWixsa4v6GvOi0Korv3p8BJfROhtW0Afw-Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAFqH_53TsmtSFnUoWixsa4v6GvOi0Korv3p8BJfROhtW0Afw-Q-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Enric Balletbo Serra <eballetbo-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, =?UTF-8?Q?Milan_P=2E_Stani=C4=87?= <mps-OV3VlZ6014XR7s880joybQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Fri, Apr 10, 2020 at 5:56 AM Enric Balletbo Serra
<eballetbo-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>
> Hi Milan,
>
> Right, this is an annoying issue but also known, unfortunately, I
> personally didn't have time to look at. but it is in my TODO.

Random shot in the dark, but any chance somehow your PHY clock and
PCLK for the eDP don't match?  If they don't then (IIRC) you'll get
random failures to access eDP registers.

Some history in <https://crrev.com/c/433393>.  It looks like the
changes in that patch are upstream but if something else happened to
make your PHY and PCLK mismatch it could cause similar symptoms.

...of course it's always possible (probable) that it's something
different, but since that was such a weird and hard-to-track-down
problem I figured I'd at least make sure it wasn't that.

-Doug
