From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH RESEND 1/2] dt-bindings: phy: drop #clock-cells from
 rockchip, px30-dsi-dphy
Date: Fri, 20 Dec 2019 12:37:26 +0100
Message-ID: <3795174.JdKOkfR0EK@diego>
References: <20191216122448.27867-1-heiko@sntech.de>
 <12525836.FhlgEYrHGb@diego> <45c59145-5705-90f9-ff0e-c84cf8d17e8b@ti.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <45c59145-5705-90f9-ff0e-c84cf8d17e8b-l0cyMroinI0@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Cc: mark.rutland-5wv7dgnIgG8@public.gmane.org, Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Kishon,

Am Freitag, 20. Dezember 2019, 12:21:28 CET schrieb Kishon Vijay Abraham I:
> =

> On 16/12/19 11:31 pm, Heiko St=FCbner wrote:
> > Hi Rob,
> > =

> > Am Montag, 16. Dezember 2019, 18:56:15 CET schrieb Rob Herring:
> >> On Mon, 16 Dec 2019 13:24:47 +0100, Heiko Stuebner wrote:
> >>> From: Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
> >>>
> >>> Further review of the dsi components for the px30 revealed that the
> >>> phy shouldn't expose the pll as clock but instead handle settings
> >>> via phy parameters.
> >>>
> >>> As the phy binding is new and not used anywhere yet, just drop them
> >>> so they don't get used.
> >>>
> >>> Fixes: 3817c7961179 ("dt-bindings: phy: add yaml binding for rockchip=
,px30-dsi-dphy")
> >>> Signed-off-by: Heiko Stuebner <heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
> >>> ---
> >>> Hi Kishon,
> >>>
> >>> maybe suitable as a fix for 5.5-rc?
> >>>
> >>> Thanks
> >>> Heiko
> >>>
> >>>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml      | 5 ---=
--
> >>>  1 file changed, 5 deletions(-)
> >>>
> >>
> >> Please add Acked-by/Reviewed-by tags when posting new versions. Howeve=
r,
> >> there's no need to repost patches *only* to add the tags. The upstream
> >> maintainer will do that for acks received on the version they apply.
> >>
> >> If a tag was not added on purpose, please state why and what changed.
> > =

> > sorry about that. The original response somehow did not thread correctly
> > in my mail client, probably some fault on my side, so I've only found y=
our
> > mail just now by digging hard.
> > =

> > @Kishon, the original mail already got an
> > =

> > Acked-by: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
> =

> merged now, Thanks!

thanks ... just to make sure, did you also see the driver changes in patch2?
As I don't see them in either of your branches :-)

Thanks
Heiko
