From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/1] mfd: rk808: Prepare rk805 for poweroff
Date: Wed, 09 Jan 2019 14:11:39 +0100
Message-ID: <3397477.pQfoUNday9@diego>
References: <1538465910-27233-1-git-send-email-stefan@olimex.com>
 <1917869.4NZ4yPfKWV@diego> <489e70a8-dbe7-e248-972e-c7de4e0f2c1a@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <489e70a8-dbe7-e248-972e-c7de4e0f2c1a-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Stefan Mavrodiev <stefan.mavrodiev-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Lee Jones <lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, open list <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Stefan Mavrodiev <stefan-kyXcfZUBQGPQT0dZR+AlfA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 9. Januar 2019, 14:10:34 CET schrieb Stefan Mavrodiev:
> On 1/9/19 3:07 PM, Heiko St=FCbner wrote:
> > Hi Stefan, Lee,
> > =

> > Am Dienstag, 2. Oktober 2018, 09:38:29 CET schrieb Stefan Mavrodiev:
> >> RK805 has SLEEP signal, which can put the device into SLEEP or OFF
> >> mode. The default is SLEEP mode.
> >> =

> >> However, when the kernel performs power-off (actually the ATF) the
> >> device will not go fully off and this will result in higher power
> >> consumption and inability to wake the device with RTC alarm.
> >> =

> >> The solution is to enable pm_power_off_prepare function, which will
> >> configure SLEEP pin for OFF function.
> >> =

> >> Signed-off-by: Stefan Mavrodiev <stefan-kyXcfZUBQGPQT0dZR+AlfA@public.gmane.org>
> > =

> > just found this while cleaning my inbox and this change looks
> > significant and it seems hasn't been applied yet.
> > =

> > I guess this is still relevant, right?
> =

> Yes, but I guess it's out-of-sync with the latest kernel.

you could rebase and resend it :-)


> >> ---
> >> =

> >>   drivers/mfd/rk808.c | 24 ++++++++++++++++++++++++
> >>   1 file changed, 24 insertions(+)
> >> =

> >> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> >> index 216fbf6..50f3f78 100644
> >> --- a/drivers/mfd/rk808.c
> >> +++ b/drivers/mfd/rk808.c
> >> @@ -387,6 +387,25 @@ static void rk805_device_shutdown(void)
> >> =

> >>   		dev_err(&rk808_i2c_client->dev, "power off error!\n");
> >>   =

> >>   }
> >> =

> >> +static void rk805_device_shutdown_prepare(void)
> >> +{
> >> +	int ret;
> >> +	struct rk808 *rk808 =3D i2c_get_clientdata(rk808_i2c_client);
> >> +
> >> +	if (!rk808) {
> >> +		dev_warn(&rk808_i2c_client->dev,
> >> +			 "have no rk805, so do nothing here\n");
> >> +
> >> +		return;
> >> +	}
> >> +
> >> +	ret =3D regmap_update_bits(rk808->regmap,
> >> +				 RK805_GPIO_IO_POL_REG,
> >> +				 SLP_SD_MSK, SHUTDOWN_FUN);
> >> +	if (ret)
> >> +		dev_err(&rk808_i2c_client->dev, "power off error!\n");
> >> +}
> >> +
> >> =

> >>   static void rk808_device_shutdown(void)
> >>   {
> >>   =

> >>   	int ret;
> >> =

> >> @@ -549,6 +568,10 @@ static int rk808_probe(struct i2c_client *client,
> >> =

> >>   	if (pm_off && !pm_power_off) {
> >>   	=

> >>   		rk808_i2c_client =3D client;
> >>   		pm_power_off =3D pm_pwroff_fn;
> >> =

> >> +	} else if (pm_off && !pm_power_off_prepare &&
> >> +		   rk808->variant =3D=3D RK805_ID) {
> >> +		rk808_i2c_client =3D client;
> >> +		pm_power_off_prepare =3D rk805_device_shutdown_prepare;
> >> =

> >>   	}
> >>   	=

> >>   	return 0;
> >> =

> >> @@ -564,6 +587,7 @@ static int rk808_remove(struct i2c_client *client)
> >> =

> >>   	regmap_del_irq_chip(client->irq, rk808->irq_data);
> >>   	pm_power_off =3D NULL;
> >> =

> >> +	pm_power_off_prepare =3D NULL;
> >> =

> >>   	return 0;
> >>   =

> >>   }
