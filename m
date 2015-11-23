From: Thierry Reding <treding@nvidia.com>
Subject: Re: [PATCH v4 11/13] drm/panel: simple: Add support for BOE
 TV080WUM-NL0
Date: Mon, 23 Nov 2015 09:09:04 +0100
Message-ID: <20151123080903.GD14176@ulmo.nvidia.com>
References: <1448007339-10966-1-git-send-email-zyw@rock-chips.com>
 <1448007339-10966-12-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0144390982=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1448007339-10966-12-git-send-email-zyw@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Chris Zhong <zyw@rock-chips.com>
Cc: emil.l.velikov@gmail.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, rmk+kernel@arm.linux.org.uk, ajaykumar.rs@samsung.com
List-Id: linux-rockchip.vger.kernel.org

--===============0144390982==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="96YOpH+ONegL0A3E"
Content-Disposition: inline

--96YOpH+ONegL0A3E
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 20, 2015 at 04:15:37PM +0800, Chris Zhong wrote:
> This adds support for the BOE TV080WUM-NL0 1200x1920 mipi panel to the
> DRM simple panel driver.
>=20
> Signed-off-by: Chris Zhong <zyw@rock-chips.com>
>=20
> ---
>=20
> Changes in v4:
> Alphabetically arranged the name
>=20
> Changes in v3: None
> Changes in v2: None
>=20
>  drivers/gpu/drm/panel/panel-simple.c | 34 ++++++++++++++++++++++++++++++=
++++
>  1 file changed, 34 insertions(+)

Applied, with slightly modified commit message.

Thanks,
Thierry

--96YOpH+ONegL0A3E
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWUsmeAAoJEN0jrNd/PrOhMgoP/2QolOn1lA3r+ipw43xRlg9Y
BJMT/jql5ZEvPTASrFVIF9QBq+GnUSuZQIo163IfKdjV/XF5jG0J6/iseA8Y5l0M
shsng7qyjdEPykTrDB/6WsboHWrSxqlEI+8DuTf180h6qapzxQrnJMz9c9MREDk6
OYVlNofFgrhbBLibtDGLmE5TdjNCbjHSGsJN4WWBvibCHc/7docyQykT9YNkbF87
P/JQWSeHl73jbn2gXIQh+h9XlK9zxFYpp7JKUA7zWneiBT1r/RlfHiyLVgLRCIk4
8CFr1FrdTmtlOsrfD9DRPRfleWMRK8ciDyJhXo1cqazyeoK9783Eb2L5TfR7DLu6
cqKLo2GTBy+pDr7EAVmxxRLz1DZGQ4bYJ/SEB+xa5fRBRDOZ209jmK8u3hJzhNcZ
ZwY6u6SzidcGolX8ogHCVhJQNChiF/WpLdXJs4U8rM/LT/pDHD58LOhRjrM51Z1S
N1CE3D+TuFIuMDqA9MYMxIMI9xaG7Q2p94DXoBH6hlDtMIpbOlxjJJpQWYQLnYKH
x2Yc+1WH2ayvTbjlmIWruicwlkeLNYvv5uyjcfXG5YF1CB6qoyl54jGhcCbdNN+w
opkZ7iIAXUETHRTcO6gCagCtT8z02+ixehiyTDo8pTBSuTDzunUhezq3OGMz3Fpp
rYwM9BssNq/RPMZOez4X
=EVw7
-----END PGP SIGNATURE-----

--96YOpH+ONegL0A3E--

--===============0144390982==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

--===============0144390982==--
