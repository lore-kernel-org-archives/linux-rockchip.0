From: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH v2 2/2] usb: dwc2: host: Clear interrupts before handling
 them
Date: Mon, 16 Nov 2015 10:28:25 -0600
Message-ID: <87wpthnc2e.fsf@saruman.tx.rr.com>
References: <1446582629-30091-1-git-send-email-dianders@chromium.org>
 <1446582629-30091-2-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============6506695318595091429=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1446582629-30091-2-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

--===============6506695318595091429==
Content-Type: multipart/signed; boundary="=-=-="; micalg=pgp-sha1;
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> writes:
> In general it is wise to clear interrupts before processing them.  If
> you don't do that, you can get:
>  1. Interrupt happens
>  2. You look at system state and process interrupt
>  3. A new interrupt happens
>  4. You clear interrupt without processing it.
>
> This patch was actually a first attempt to fix missing device insertions
> as described in (usb: dwc2: host: Fix missing device insertions) and it
> did solve some of the signal bouncing problems but not all of
> them (which is why I submitted the other patch).  Specifically, this
> patch itself would sometimes change:
>  1. hardware sees connect
>  2. hardware sees disconnect
>  3. hardware sees connect
>  4. dwc2_port_intr() - clears connect interrupt
>  5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()
>
> ...to:
>  1. hardware sees connect
>  2. hardware sees disconnect
>  3. dwc2_port_intr() - clears connect interrupt
>  4. hardware sees connect
>  5. dwc2_handle_common_intr() - calls dwc2_hcd_disconnect()
>
> ...but with different timing then sometimes we'd still miss cable
> insertions.
>
> In any case, though this patch doesn't fix any (known) problems, it
> still seems wise as a general policy to clear interrupt before handling
> them.
>
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
> Changes in v2: None
>
>  drivers/usb/dwc2/core_intr.c | 55 ++++++++++++++++++++++----------------=
------
>  drivers/usb/dwc2/hcd_intr.c  | 16 ++++++-------
>  2 files changed, 35 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/usb/dwc2/core_intr.c b/drivers/usb/dwc2/core_intr.c
> index 61601d16e233..2a166b7eec41 100644
> --- a/drivers/usb/dwc2/core_intr.c
> +++ b/drivers/usb/dwc2/core_intr.c
> @@ -80,15 +80,16 @@ static const char *dwc2_op_state_str(struct dwc2_hsot=
g *hsotg)
>   */
>  static void dwc2_handle_usb_port_intr(struct dwc2_hsotg *hsotg)
>  {
> -	u32 hprt0 =3D dwc2_readl(hsotg->regs + HPRT0);
> +	u32 hprt0;
>=20=20
> +	/* Clear interrupt */
> +	dwc2_writel(GINTSTS_PRTINT, hsotg->regs + GINTSTS);
> +
> +	hprt0 =3D dwc2_readl(hsotg->regs + HPRT0);
>  	if (hprt0 & HPRT0_ENACHG) {
>  		hprt0 &=3D ~HPRT0_ENA;
>  		dwc2_writel(hprt0, hsotg->regs + HPRT0);
>  	}
> -
> -	/* Clear interrupt */
> -	dwc2_writel(GINTSTS_PRTINT, hsotg->regs + GINTSTS);

isn't this a regression ? You're first clearing the interrupts and only
then reading to check what's pending, however, what's pending has just
been cleared. Seems like this should be:

hprt0 =3D dwc2_readl(HPRT0);
dwc2_writeal(PRTINT, GINTSTS);


Also, these two patches look very large for the -rc. I'll move them to
v4.5 merge window unless you can convince me that they are, indeed, the
smallest change possible to fix the problem you're facing and that they
are, indeed, regressions.

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWSgQpAAoJEIaOsuA1yqREzzIP/jtPNXJ/3kckdbKH8+qkFmQb
JUuDc0aSsT7sr4P5Hk6vDXZfKq8cr66ZbeAmXOiGc11Mc9ztDsruLSWeP9qsgU8O
IZyw0YKTxPAYqTgkSh9/yshL+cFPIxVG3yaRc603Elr190sxR7to0zYdQI5bPvkB
IlmIsCzOor3e2rDS4EBD9UkBcJXgA0qrvm496qUoO3ovovFPlAzXoYR8UsYX4p9+
tnb8yikAzgIMcmsPIZl8AbmohC6DWmMUyWlN/XGTA2mdCO4DxfoR/4AWI2dCuhDf
ie2Rds9c4mKGl+zpxXNdVgKX4TTdfCoalM+QVh52SLRAbCuwbQy9/GMV9qLuTihD
Nzd9R3XvpwE5vgRcNMQ+KGPDZcGaw+F9oMBYIFZLO9V5R4+xojkMYLgaMMy8mgSS
tY/i4+zLLI7IEGbqRJSpgEdTRJLeo2q9bEZA2wFU9e/O/rMF4pSKGa9ELYHfAGWz
8KmxKNe1/AT7t2RvBh+iS/9IXa4TbqfG9oHWVLFDr0G6N+Hb8dCr+8tUfibk3c8t
QgBmCMpkuD9ZljD5/e5grEaUemszMU7k9SJhXk8jhCQ2s4UmFy0BcL1XwRgK1xmd
L7dWqQvGh+FOx6oD1XlM07GhD7htPJ+QMpIbkO6cAFzfIEU08XlGqEjUyqkhHBT1
9jzUDyz+k/qEpB/LEV9v
=wj6N
-----END PGP SIGNATURE-----
--=-=-=--


--===============6506695318595091429==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6506695318595091429==--
