From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: Re: [PATCH v2 08/14] rockchip: dts: rk3399: nanopi4: Use CD pin as
 RK_FUNC_1
Date: Wed, 17 Apr 2019 16:39:04 +0530
Message-ID: <CAMty3ZDF+kj+zk-sn3+p4f38GNH2M-cUtvwSUG13umGkKUuRDg@mail.gmail.com>
References: <20190416105647.18437-1-jagan@amarulasolutions.com>
 <20190416105647.18437-9-jagan@amarulasolutions.com>
 <148886f2-b1f2-8e90-c6cc-00fd49d98c86@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <148886f2-b1f2-8e90-c6cc-00fd49d98c86-5wv7dgnIgG8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, Apr 16, 2019 at 4:40 PM Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org> wrote:
>
> On 16/04/2019 11:56, Jagan Teki wrote:
> > sdmmc cd pin is configured as RK_FUNC_GPIO which is wrong and
> > indeed failed to detect the sdcard on the board with below error
> >
> >    Card did not respond to voltage select!
> >
> > So, fix it by replacing RK_FUNC_GPIO with RK_FUNC_1 which
> > is already defined in rk3399.dts so make use of same like
> > other boards.
>
> I guess the U-Boot dwmmc driver doesn't support using a GPIO? The reason
> we do this for Linux is that the dedicated function is not compatible
> with runtime power management - once we see that no card is present and
> suspend the idle controller, the CD logic is also powered off and thus
> no longer capable of generating the interrupt necessary to wake
> everything up again. The GPIO function of the same pin, however, is in
> an always-on power domain so is able to do the right thing.

I can see these gpio pins were managed via
drivers/pinctrl/rockchip/pinctrl-rk3399.c and drivers/gpio/rk_gpio.c .
On the other hand other boards do use RKFUNC_1 for CD pin(even in
Linux) but what is different in nanopi4? do other boards are yet to
change?
