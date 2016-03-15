From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [GIT PULL 1/3] 2nd part of rockchip soc-driver changes for 4.6
Date: Tue, 15 Mar 2016 16:30:45 +0100
Message-ID: <4293420.gm3Wdi1Lsl@diego>
References: <2165258.7vUftGQ1I7@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2165258.7vUftGQ1I7@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

please scrap these 3 pull requests. I'm migrating the commits to v4.7 in my =

tree.


Thanks
Heiko

Am Freitag, 4. M=E4rz 2016, 02:39:50 schrieb Heiko Stuebner:
> Hi Arnd, Olof, Kevin,
> =

> this contains a fix for the error handling of the power-domain driver.
> =

> =

> Thanks
> Heiko
> =

> =

> The following changes since commit 1d961f11a108af9f7fbe89cc950a8d16ddbdbb=
28:
> =

>   soc: rockchip: power-domain: fix err handle while probing (2016-02-02
> 22:18:31 +0100)
> =

> are available in the git repository at:
> =

>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
> tags/v4.6-rockchip-drivers2
> =

> for you to fetch changes up to 1503cfbbc7c62509c9b1188508d312ab9c90cb24:
> =

>   soc: rockchip: power-domain: check the existing of regmap (2016-02-15
> 22:24:14 +0100)
> =

> ----------------------------------------------------------------
> Fix handling the case when syscon_node_to_regmap returns an error
> in the power-domain driver.
> =

> ----------------------------------------------------------------
> Shawn Lin (1):
>       soc: rockchip: power-domain: check the existing of regmap
> =

>  drivers/soc/rockchip/pm_domains.c | 4 ++++
>  1 file changed, 4 insertions(+)
