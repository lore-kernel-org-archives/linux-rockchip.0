From: Felipe Balbi <balbi@kernel.org>
Subject: Re: [PATCH v2] usb: dwc2: host: Don't retry NAKed transactions right away
Date: Tue, 31 Oct 2017 12:22:36 +0200
Message-ID: <87lgjrd3bn.fsf@linux.intel.com>
References: <20171026202200.6417-1-dianders@chromium.org> <60370001.40630.1509205907119@email.1und1.de> <CAD=FV=WK_9AsutYhOTh9HMXwac1PJEXtHvXUYnztGmp6H3gbWg@mail.gmail.com> <87h8uhdoj2.fsf@linux.intel.com> <CAD=FV=UsYccsvicnce8wDpt3LaLQE23wdc7a4-m7OOhNS2JKgA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
        micalg=pgp-sha512; protocol="application/pgp-signature"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=UsYccsvicnce8wDpt3LaLQE23wdc7a4-m7OOhNS2JKgA@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, John Youn <johnyoun@synopsys.com>, Matthias Kaehlcke <mka@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, Eric Anholt <eric@anholt.net>, linux-kernel@vger.kernel.org, John Stultz <john.stultz@linaro.org>, linux-usb@vger.kernel.org, Johan Hovold <johan@kernel.org>, Alexandru M Stan <amstan@chromium.org>, linux-rpi-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Doug Anderson <dianders@chromium.org> writes:

> Hi,
>
> On Mon, Oct 30, 2017 at 1:32 AM, Felipe Balbi <balbi@kernel.org> wrote:
>>
>> Hi,
>>
>> Doug Anderson <dianders@chromium.org> writes:
>>> Hi,
>>>
>>> On Sat, Oct 28, 2017 at 8:51 AM, Stefan Wahren <stefan.wahren@i2se.com>=
 wrote:
>>>> Hi Doug,
>>>>
>>>> [add Felipe since this should go through his tree]
>>>
>>> Ah.  Sorry Felipe!  I know you've landed some dwc2 stuff in the past
>>
>> No problems :-)
>>
>>> but for some reason get_maintainer didn't ID you so I thought maybe
>>> you weren't doing it anymore.  Please let me know if you'd like me to
>>> send this to you again with collected Reviewed-by and Tested-by tags.
>>
>> Yeah, please resend with all tags collected, however let's wait for a
>> week or so and give other people time to catch up. I already sent my
>> pull request to Greg, this would, anyway, go into the -rc cycle.
>
> Doh!  I just re-read this one more time (after sending v3) and
> realized I had read it incorrectly.  I read it as "please send the

that's okay :-) s**t happens

> patch with the tags and I'll wait a week before landing", but you
> actually said "please wait a week before re-sending".  Sorry for the
> noise.  In the very least, you should be on the "To" line now so if
> anyone else has any extra tags it should be very easy for you to see
> them.
>
> Right that there's no massive urgency.  It's been broken forever.

alright then :-)

>> Please add a Cc stable tag too, if necessary.
>
> Good point.  It's a little weird since it doesn't "fix" any specific
> commit, so I guess it will be up to stable folks to decide how far to
> go back.  The dwc2 devices I work with are actually on 3.14, but we
> have some pretty massive backports related to dwc2 there...

fair enough

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAln4TuwACgkQzL64meEa
mQbzWhAAr6JWjkC6NVKoP0r3VCT3p2FQ/poyvEN2VuAzFDNWTmoiv/GKyUZqR/iT
VXOAq5+BMnWpIs20kAZ58Z9/qL6wp8mCxJOEKeq9cM1eXqoVJPMB3lNv2R20lihC
aldgVlOI31UnRyfs2a225uDFuRuMgr+EbEctpaJFMB8t4VKeBpLjFhspoJnSu65N
rkgdvVeufq0JvPY120a9M3dlHLyPKDDv9x9ml6D/Icym6/6bYrRm0SOHh13pF9NF
Phr1bIeMAPD72o2XKcRQZdJ7fcSQSHSGqcioPnvK+DEKIBuzLt0r6djoBXyMza95
zDf9AqCWidWGBP3RMqVLw0wnlfR8m06fW/ZIY7e+I9L9LLHT2x1MAT4QQ2xOfn9r
qMY5zge5GbeUh5hAJ8xHof5pc7O9o7wUmrMoXpc0yWPiX/Eai66rldpmz11skrS3
VJLtjVqGDzpasBfRsmJz0r5yyFKTN/TvOnL7LnWoQ4CrwBm0ZOG3oduvO+d4b+id
YiaJEbwktnXsHpF4qahTmjmj4QqosxUPG6LhE5DqcKS/4dMT2ojfvZMmIPEHWBIC
QndhmjBTgbGxRNKOl1HRZYpM28G35MkaNv8NubVhWRRvRPKQBlNy51Gsktkq/lva
xM0iokvdzyCQslujUh4YjzjWaqYjZM7+1t/zaYc4JbUIxBre8vk=
=gP/K
-----END PGP SIGNATURE-----
--=-=-=--
