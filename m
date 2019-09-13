From: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v5 0/5] Add HDMI jack support on RK3288
Date: Fri, 13 Sep 2019 11:32:57 +0200
Message-ID: <3fc94731-f66a-223d-995e-97ac67f9e882@baylibre.com>
References: <20190717083327.47646-1-cychiang@chromium.org>
 <CA+Px+wX4gbntkd6y8NN8xwXpZLD4MH9rTeHcW9+Ndtw=3_mWBw@mail.gmail.com>
 <CAFv8NwLiY+ro0L4c5vjSOGN8jA-Qr4zm2OWvVHkiuoa7_4e2Fg@mail.gmail.com>
 <CAFv8NwJjG4mwfnYO=M3O9nZN48D6aY72nQuqEFpZL68dh5727w@mail.gmail.com>
 <7019a223-cc97-e1c6-907b-e6b3d626164f@baylibre.com>
 <20190909135346.GG2036@sirena.org.uk>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="UBRWlaGOHY0XEFVZVHxIrla091rV5aEyl"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190909135346.GG2036@sirena.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Brown <broonie@kernel.org>
Cc: Cheng-yi Chiang <cychiang@chromium.org>, Tzung-Bi Shih <tzungbi@google.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>, Russell King <rmk+kernel@armlinux.org.uk>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Heiko Stuebner <heiko@sntech.de>, Douglas Anderson <dianders@chromium.org>, Dylan Reid <dgreid@chromium.org>, tzungbi@chromium.org, ALSA development <alsa-devel@alsa-project.org>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradea
List-Id: linux-rockchip.vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--UBRWlaGOHY0XEFVZVHxIrla091rV5aEyl
Content-Type: multipart/mixed; boundary="rm5OjYgCDNiLh12bKFbv4tVbo1MJJOHLY";
 protected-headers="v1"
From: Neil Armstrong <narmstrong@baylibre.com>
To: Mark Brown <broonie@kernel.org>
Cc: Cheng-yi Chiang <cychiang@chromium.org>,
 Tzung-Bi Shih <tzungbi@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Liam Girdwood <lgirdwood@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Heiko Stuebner <heiko@sntech.de>, Douglas Anderson <dianders@chromium.org>,
 Dylan Reid <dgreid@chromium.org>, tzungbi@chromium.org,
 ALSA development <alsa-devel@alsa-project.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jernej Skrabec
 <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>
Message-ID: <3fc94731-f66a-223d-995e-97ac67f9e882@baylibre.com>
Subject: Re: [PATCH v5 0/5] Add HDMI jack support on RK3288
References: <20190717083327.47646-1-cychiang@chromium.org>
 <CA+Px+wX4gbntkd6y8NN8xwXpZLD4MH9rTeHcW9+Ndtw=3_mWBw@mail.gmail.com>
 <CAFv8NwLiY+ro0L4c5vjSOGN8jA-Qr4zm2OWvVHkiuoa7_4e2Fg@mail.gmail.com>
 <CAFv8NwJjG4mwfnYO=M3O9nZN48D6aY72nQuqEFpZL68dh5727w@mail.gmail.com>
 <7019a223-cc97-e1c6-907b-e6b3d626164f@baylibre.com>
 <20190909135346.GG2036@sirena.org.uk>
In-Reply-To: <20190909135346.GG2036@sirena.org.uk>

--rm5OjYgCDNiLh12bKFbv4tVbo1MJJOHLY
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

On 09/09/2019 15:53, Mark Brown wrote:
> On Mon, Sep 09, 2019 at 09:37:14AM +0200, Neil Armstrong wrote:
>=20
>> I'd like some review from ASoC people and other drm bridge reviewers,
>> Jernej, Jonas & Andrzej.
>=20
>> Jonas could have some comments on the overall patchset.
>=20
> The ASoC bits look basically fine, I've gone ahead and applied
> patch 1 as is since we're just before the merge window and that
> way we reduce potential cross tree issues.  I know there's a lot
> of discussion on the DRM side about how they want to handle
> things with jacks, I'm not 100% sure what the latest thinking is
> there.
>=20

Thanks Mark.


Cheng-Yi can you resent this serie without the already applied
first patch with Jernej, Jonas, and Jerome Brunet <jbrunet@baylibre.com> =
CCed ?

Thanks,
Neil


--rm5OjYgCDNiLh12bKFbv4tVbo1MJJOHLY--

--UBRWlaGOHY0XEFVZVHxIrla091rV5aEyl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEPVPGJshWBf4d9CyLd9zb2sjISdEFAl17YkkACgkQd9zb2sjI
SdFL8xAAm/uVVOJY0VK0uVX/gv2nNJ+t90WPrW3BfoWCLRaSr1czldafQkylTwQl
EOHl8NcYz5pttql0d1ZKh6uZSCTsMtWRb6Qwm14c3ptFaD9y1TI8X+R+zryTIgA5
fuaLScVQ+kDpMwWYvZvVdWnu7/7Wdtj+uDNEooXlxeIvylxQzPYGQLcrdyZz54DZ
vPl/scouuoKobHYXHw5AUs/ipsHUxcfD9wm+s4lrcIcE8FSjoVqbwZsonqDlHfOY
lCykwi/sj2A567r0fL0Qipj4cqa5Zzvy955v0K5E1bHbTFs3I9kKsMsrLmYrpVB8
pG+Tz31EKziArzadGNlxjjI6ViRQxwXAOPUfDZW7JFmWPD+aF2ZquQttp3GGlbwf
9ndAcqd0yPqBaWwaPWAZJ/CbZiKPeDtAVcBtiR/pHYDUgMiDq88O3deynxUer4qw
06IrtU9X8yn02vEh2L+6fLCG3NfMCUdyl4lRCmxSJ8K83pCOx1iMpcawEJq+xktX
qvQVxXHrp1D5drRUA+87MDZmI5aQ/9HoYY+tIMTC21D7JFB/x2U6n0nFRyLi/muG
gD0oD4cBhYhH+xJhKQeBmx+cA6xb90J4mfzFvpWvwDeGNsJJ+QaLGmdz9b50Aqd9
XKP4tzxUvHbepIhN1NPCh1Xe2cU06KRt2S/ID9usnk2cnXoigUg=
=JmCa
-----END PGP SIGNATURE-----

--UBRWlaGOHY0XEFVZVHxIrla091rV5aEyl--
