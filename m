From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH RESEND] iio: adc: rockchip_saradc: add missing MODULE_* data
Date: Sat, 11 Jul 2015 20:59:31 +0200
Message-ID: <79826456.QduC5uXeBP@diego>
References: <8215730.uluDfnE1h7@diego> <55A1533A.2080507@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <55A1533A.2080507-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Sender: linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Jonathan Cameron <jic23-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Hartmut Knaack <knaack.h-Mmb7MZpHnFY@public.gmane.org>, Lars-Peter Clausen <lars-Qo5EllUWu/uELgA04lAiVw@public.gmane.org>, Peter Meerwald <pmeerw-jW+XmwGofnusTnJN9+BGXg@public.gmane.org>, linux-iio-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Jonathan,

Am Samstag, 11. Juli 2015, 18:32:42 schrieb Jonathan Cameron:
> On 08/07/15 15:17, Heiko Stuebner wrote:
> > The module-data is currently missing. This includes the
> > license-information
> > which makes the driver taint the kernel and miss symbols when compiled as
> > module.
> > 
> > Fixes: 44d6f2ef94f9 ("iio: adc: add driver for Rockchip saradc")
> > Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> 
> Sorry Heiko,
> 
> Not entirely sure why I haven't picked this up before.
> 
> Anyhow, now applied to the fixes-for-4.2 branch of iio.git
> and marked for stable.  I need to catch up with a bit of a
> backlog, but should get a pull request out to Greg sometime
> early next week.

really no problem. I track my patches and generally simply keep pestering 
people for as long as it takes ;-)

Heiko
