From: Felipe Balbi <balbi@kernel.org>
Subject: Re: [PATCH v2] usb: dwc2: host: Don't retry NAKed transactions right away
Date: Mon, 30 Oct 2017 10:32:17 +0200
Message-ID: <87h8uhdoj2.fsf@linux.intel.com>
References: <20171026202200.6417-1-dianders@chromium.org> <60370001.40630.1509205907119@email.1und1.de> <CAD=FV=WK_9AsutYhOTh9HMXwac1PJEXtHvXUYnztGmp6H3gbWg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
        micalg=pgp-sha512; protocol="application/pgp-signature"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=WK_9AsutYhOTh9HMXwac1PJEXtHvXUYnztGmp6H3gbWg@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>, Stefan Wahren <stefan.wahren@i2se.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, John Youn <johnyoun@synopsys.com>, Matthias Kaehlcke <mka@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, Eric Anholt <eric@anholt.net>, linux-kernel@vger.kernel.org, John Stultz <john.stultz@linaro.org>, linux-usb@vger.kernel.org, Johan Hovold <johan@kernel.org>, Alexandru M Stan <amstan@chromium.org>, linux-rpi-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Doug Anderson <dianders@chromium.org> writes:
> Hi,
>
> On Sat, Oct 28, 2017 at 8:51 AM, Stefan Wahren <stefan.wahren@i2se.com> w=
rote:
>> Hi Doug,
>>
>> [add Felipe since this should go through his tree]
>
> Ah.  Sorry Felipe!  I know you've landed some dwc2 stuff in the past

No problems :-)

> but for some reason get_maintainer didn't ID you so I thought maybe
> you weren't doing it anymore.  Please let me know if you'd like me to
> send this to you again with collected Reviewed-by and Tested-by tags.

Yeah, please resend with all tags collected, however let's wait for a
week or so and give other people time to catch up. I already sent my
pull request to Greg, this would, anyway, go into the -rc cycle.

Please add a Cc stable tag too, if necessary.

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAln245MACgkQzL64meEa
mQagWRAAwXFngTTRMyVAtMMJa8fh2V5At+BMEoUBzoMZfruFWa2l3qO5G3Y8vejA
YAngvlDNaIHG8FsWA8F2D0yTHwG8cmUV5+yufFRiogGk8i8AfqMzVksFktIA3Pm9
TLV+9+GJs4L4IVEy7x5t17eo0cDZgQCUhnlquRAk80i1jnr+aIdsOrdI30yxKDvD
0wTuaYjXr2frFCHiUB69BCujd858LXYwmzBEFD6mL5K3ClDmxYPkR3fRdYNoKc6+
wktARjwpPTCDeEXsFom/dUXlU05vQPRfe1QdPoZMbBiizU6W6xmG0SLGiTdB9z1H
+69EegszZqCHoa82yhogX0GiqkXMEv0BWpVC1wbvo+xtmmQkd+aEgLExfbJabC/B
nsf6ta+vJAH0p0TKn43OEpZ/e26X3JTXTYUbiXJdsESsq+rKre4DFTU0kjTzLPiR
mQTvHQ6FbCqlFOjSgym8CXiGi6K0Pc9I7d71undXOf342lSCummK4gzoPVBNX1JX
R115R/OiaTZIuu/GvE09fK36eyGSkTOeFqeYqsCGQdasiajprdsB2QpKmkmrrXCA
EnAfP1cxhJi6MRPDaUDeGrvbu+VMZQDM7ekF7qlTaBzDenGkXhPeiQC+/tIwy1sK
zKdnMDgPWv/rsWjhHxaYZFetmNTNUlIRResRZRIK5htfQa179bk=
=dNBh
-----END PGP SIGNATURE-----
--=-=-=--
