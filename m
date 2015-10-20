From: Eric Anholt <eric@anholt.net>
Subject: Re: [RFC PATCH v3 1/4] drm: Introduce generic probe function for
 component based masters.
Date: Tue, 20 Oct 2015 10:45:24 +0100
Message-ID: <87zizdj2kr.fsf@eliezer.anholt.net>
References: <1445267270-23126-1-git-send-email-Liviu.Dudau@arm.com>
 <1445267270-23126-2-git-send-email-Liviu.Dudau@arm.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1051967667=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1445267270-23126-2-git-send-email-Liviu.Dudau@arm.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Liviu Dudau <Liviu.Dudau@arm.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>, Mark Yao <mark.yao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Russell King <rmk+kernel@arm.linux.org.uk>
Cc: linux-rockchip <linux-rockchip@lists.infradead.org>, dri-devel <dri-devel@lists.freedesktop.org>, LAKML <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

--===============1051967667==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Liviu Dudau <Liviu.Dudau@arm.com> writes:

> A lot of component based DRM drivers use a variant of the same code
> as the probe function. They bind the crtc ports in the first iteration
> and then scan through the child nodes and bind the encoders attached
> to the remote endpoints. Factor the common code into a separate
> function called drm_of_component_probe() in order to increase code
> reuse.
>
> Cc: David Airlie <airlied@linux.ie>
> Signed-off-by: Liviu Dudau <Liviu.Dudau@arm.com>

Acked-by: Eric Anholt <eric@anholt.net>

I'm unimpressed with of-graph, but this will really help me in trying it
out for vc4.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJWJg01AAoJELXWKTbR/J7ocnoP/24fSj0z/2B5y44x5eMyFwG2
61FVHM+jW2pOn7/+PkCczSqdk3u6bhhyJOyWNIou5bZqlHrlXE+FCsOM5Ic8HG64
cZRabMiN/NdQB1CB8abr2mnhcGLZkmP7HtFM3CfcEawUgwmgeCPhHcW/KjAplQrh
M2c2RBN8NhUb4iZ3o5PQCZkNyZQH0/Fh06FdlLdanFUHQ0X84BsqcBL+r4cJ5uXy
IbXfEgY55pEtJflW/ZizlXEJnNhdac+iqAxr9icTxJqTrhLwQ59sHVJ0KXD242ld
OKPc7oHHgOv6WkOZGYVv6TDfc1DI8+sKRszTx9cescIFAeqr7n89coYz4ROZ4JGR
hz23SQu3rjABKLpzPNzbRCHvIJzt2r/pIsIQ18iM3VyEgIPpwhEWhp7iBpjc7KCZ
oBFuE94M6iXKytrQfTSTOsCm8fiG5zUiFiTXX3pXyRoCa5WwDva1gX7A9rbtF6uE
w4k6lqYnKUhfqrxzDDM66pff7oqDAMLYAmlG1ZGI+hMdNBa5C+6c9fJrjsQw/n+O
UjeA6SwGWCgZMrVuibqh1tQHR7oXtTipkgdJHbldae99shVwvis854X1qU2HVqkb
vXsqekaEeLli2Ldcw05ufdN1UfxYC4mX24KHU9oc78St2EezpHtIHDJ8+hx+zXz4
1fl9G2Fv8M24CLRBRKb2
=7zMl
-----END PGP SIGNATURE-----
--=-=-=--

--===============1051967667==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

--===============1051967667==--
