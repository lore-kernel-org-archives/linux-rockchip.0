From: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH v4 2/2] usb: dwc2: host: Clear interrupts before handling
 them
Date: Fri, 20 Nov 2015 09:40:16 -0600
Message-ID: <87y4dsd6hr.fsf@saruman.tx.rr.com>
References: <1447968195-32097-1-git-send-email-dianders@chromium.org>
 <1447968195-32097-2-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0701070742945522114=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1447968195-32097-2-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
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

--===============0701070742945522114==
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
> Note that for dwc2_handle_usb_port_intr(), instead of moving the clear
> of PRTINT to the beginning of the function we remove it completely.  The
> only way to clear PRTINT is to clear the sources that set it in the
> first place.
>
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> Acked-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
> Tested-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>

$ patch -p1 --dry-run < patch.diff
checking file drivers/usb/dwc2/core_intr.c
checking file drivers/usb/dwc2/hcd_intr.c
Hunk #4 FAILED at 365.
Hunk #5 succeeded at 388 (offset 11 lines).
1 out of 5 hunks FAILED

Care to rebase on top of my testing/next ?

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWTz7hAAoJEIaOsuA1yqRE1HMQAI3GmhuXQijQBgILREWy93AJ
qcEhsa47L30NkfiSCkW3yo4isKhb3TIJd/i8dXEP/khmn+FoLx2nncZOIz9BdhwP
GrM1ypUw7oV6ErF3ARt9Swz0t38LhO1N6T9tdqLshGOI8pAmFBFZouCSofCGPZxW
xe1mnBi2SBbfp2cOtcURYlrMGdKuh5MR5yWJqsxWdF4vGjc1Bfeuk8sh+Sn/a7ur
3mTUe5y1FIJ10EyTNnITGq8uC7WuRxV4ZIr3DbVR05JZmKOKmcWivf5ukczg9CKw
DxDDZeVIS9oIJ0wG0+jL92fzUtfRWOfGXpwGc6+DH5lLsDpDkKlLXEa1zAdBbdXG
pXleL7OmsB9d02Q9NkSfEd8pkcpRmOn1+5LzfBrdRmNbMv2NrpzMQ3rpwS0z0iEb
RQSZGjzCw/E0s5d6dUPZuaRpasPAXLgH5YquxHcNn8r/Qvbk8x/Bv38ub/NUAh7c
dEBBSFQVWJaDiTVqchDeMOLQbA3yrfRlHnFSz88qu9drDgJf2mXgcAolTP9ZI5Vd
Iera9tOhMPDYiVJzx/MvNBgv78NDMmazEeCYJEUqzZMWvzdYyWTKaq8afumyl2J/
F1UfzRyMMql6fF75Vdj4vrPQqh7jpnFZKmZ9muE5ZnqT/PSnVaW2Q/tjCcnqqxiI
+mMt7rkWeOD7hKzRgAAV
=8O+W
-----END PGP SIGNATURE-----
--=-=-=--


--===============0701070742945522114==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0701070742945522114==--
