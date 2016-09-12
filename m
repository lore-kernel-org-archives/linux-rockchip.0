From: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v15.1 3/5] drm/rockchip: cdn-dp: add cdn DP support for
 rk3399
Date: Mon, 12 Sep 2016 10:13:39 +0100
Message-ID: <20160912091339.GY27946@sirena.org.uk>
References: <1473473748-22331-4-git-send-email-zyw@rock-chips.com>
 <1473480966-21572-1-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="GcSOTaE82DYSpZPK"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1473480966-21572-1-git-send-email-zyw@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chris Zhong <zyw@rock-chips.com>
Cc: dianders@chromium.org, tfiga@chromium.org, heiko@sntech.de, yzq@rock-chips.com, groeck@chromium.org, myungjoo.ham@samsung.com, cw00.choi@samsung.com, wulf@rock-chips.com, marcheu@chromium.org, briannorris@chromium.org, zhengxing@rock-chips.com, cychiang@chromium.org, hychao@chromium.org, linux-rockchip@lists.infradead.org, Sean Paul <seanpaul@chromium.org>, Mark Yao <mark.yao@rock-chips.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--GcSOTaE82DYSpZPK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 09, 2016 at 09:16:06PM -0700, Chris Zhong wrote:
> Add support for cdn DP controller which is embedded in the rk3399
> SoCs. The DP is compliant with DisplayPort Specification,

Please don't new patches in reply to old serieses, especially not
individual patches in the middle of the series - it just makes
everything more confusing.  It becomes difficult to tell what the
version of the series that's actually expected is.  Please send the
whole series.

--GcSOTaE82DYSpZPK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJX1nHCAAoJECTWi3JdVIfQ7PQH/3ELG7ZZyaQguuPD1r3uzuP2
cXTx3OBcaqB/oCJ5IiSppHOrkA3Kgo+CtXdgGiKfdksFXT3zHRISeN01EwxlrnlG
j7u0RfDtB0LRU0Rs5BDH2bLSMTV3yflMQP7CJqyC2xGUU5B8PJRM7KzUR7LjooTA
eBKi6hdKhYPvYVyt9wAbzBB4CY+ja1M3Kzz0MKBWHWej8wkZ6O9lvEV/oPDZOSRV
Xn0ypD8F+hOSviPW9ecuKEvLlNfUbIXGiS5OoRKfmX1ivxq3ZN4pYWC1w3I12cPY
foWxwdfBqKFC0PkujsXIhu4T4eWNVjaxEjw9nT3A9gXWPdwyKsEnGamKFGcjxQM=
=ZLUM
-----END PGP SIGNATURE-----

--GcSOTaE82DYSpZPK--
