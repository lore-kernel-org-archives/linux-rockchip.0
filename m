From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/3] ARM: multi_v7_defconfig: enable Rockchip io-domain
 driver
Date: Wed, 23 Dec 2015 01:10:58 +0100
Message-ID: <5336978.7p06ZKmlEQ@diego>
References: <2111669.2aeXLpXsWE@diego> <20151222225614.GL30172@localhost>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20151222225614.GL30172@localhost>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 22. Dezember 2015, 14:56:14 schrieb Olof Johansson:
> On Mon, Dec 21, 2015 at 10:21:14PM +0100, Heiko St?bner wrote:
> > The io-domain driver is necessary to notify the soc about voltages changes
> > happening on supplying regulators. Probably the most important user right
> > now is the mmc tuning code, where the soc needs to get notified when the
> > voltage is dropped to the 1.8V point.
> > 
> > As this option is necessary to sucessfully tune UHS cards etc, it should
> > get built in.
> > 
> > Signed-off-by: Heiko Stuebner <heiko.stuebner-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > ---
> > When booting a Veyron-Jerry from an sd-card it got stuck, as the tuning
> > failed due to the missing voltage notification and the mmc completely
> > fails initialization of the card, if this happens.
> > With this option enabled, I could again boot from my sd-card.
> > 
> > This is based on the
> 
> Looks cut off :)

I only wanted to say that this is based on the latest multi_v7 from the 
armsoc/defconfig branch, but it looks I forgot to finish that sentence ;-)


> Anyway, applied 1-3.

Thanks
Heiko
