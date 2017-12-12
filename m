From: Felipe Balbi <balbi@kernel.org>
Subject: Re: [PATCH v3 1/2] usb: dwc2: host: Don't retry NAKed transactions right away
Date: Tue, 12 Dec 2017 13:06:01 +0200
Message-ID: <87mv2onr3a.fsf@linux.intel.com>
References: <20171030170802.14489-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
        micalg=pgp-sha512; protocol="application/pgp-signature"
Return-path: <stable-owner@vger.kernel.org>
In-Reply-To: <20171030170802.14489-1-dianders@chromium.org>
Sender: stable-owner@vger.kernel.org
To: johnyoun@synopsys.com
Cc: stefan.wahren@i2se.com, amstan@chromium.org, linux-rockchip@lists.infradead.org, gregkh@linuxfoundation.org, johan@kernel.org, eric@anholt.net, mka@chromium.org, john.stultz@linaro.org, linux-rpi-kernel@lists.infradead.org, jwerner@chromium.org, Douglas Anderson <dianders@chromium.org>, stable@vger.kernel.org, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Douglas Anderson <dianders@chromium.org> writes:
> On rk3288-veyron devices on Chrome OS it was found that plugging in an
> Arduino-based USB device could cause the system to lockup, especially
> if the CPU Frequency was at one of the slower operating points (like
> 100 MHz / 200 MHz).
>
> Upon tracing, I found that the following was happening:
> * The USB device (full speed) was connected to a high speed hub and
>   then to the rk3288.  Thus, we were dealing with split transactions,
>   which is all handled in software on dwc2.
> * Userspace was initiating a BULK IN transfer
> * When we sent the SSPLIT (to start the split transaction), we got an
>   ACK.  Good.  Then we issued the CSPLIT.
> * When we sent the CSPLIT, we got back a NAK.  We immediately (from
>   the interrupt handler) started to retry and sent another SSPLIT.
> * The device kept NAKing our CSPLIT, so we kept ping-ponging between
>   sending a SSPLIT and a CSPLIT, each time sending from the interrupt
>   handler.
> * The handling of the interrupts was (because of the low CPU speed and
>   the inefficiency of the dwc2 interrupt handler) was actually taking
>   _longer_ than it took the other side to send the ACK/NAK.  Thus we
>   were _always_ in the USB interrupt routine.
> * The fact that USB interrupts were always going off was preventing
>   other things from happening in the system.  This included preventing
>   the system from being able to transition to a higher CPU frequency.
>
> As I understand it, there is no requirement to retry super quickly
> after a NAK, we just have to retry sometime in the future.  Thus one
> solution to the above is to just add a delay between getting a NAK and
> retrying the transmission.  If this delay is sufficiently long to get
> out of the interrupt routine then the rest of the system will be able
> to make forward progress.  Even a 25 us delay would probably be
> enough, but we'll be extra conservative and try to delay 1 ms (the
> exact amount depends on HZ and the accuracy of the jiffy and how close
> the current jiffy is to ticking, but could be as much as 20 ms or as
> little as 1 ms).
>
> Presumably adding a delay like this could impact the USB throughput,
> so we only add the delay with repeated NAKs.
>
> NOTE: Upon further testing of a pl2303 serial adapter, I found that
> this fix may help with problems there.  Specifically I found that the
> pl2303 serial adapters tend to respond with a NAK when they have
> nothing to say and thus we end with this same sequence.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Cc: stable@vger.kernel.org
> Reviewed-by: Julius Werner <jwerner@chromium.org>
> Tested-by: Stefan Wahren <stefan.wahren@i2se.com>

This seems too big for -rc or -stable inclusion. In any case, this
doesn't apply to my testing/next branch. Care to rebase and collect acks
you received while doing that?

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAlovuBkACgkQzL64meEa
mQYFGBAA2J/ZC5L1GMf3BKe6dkzqYzjdSA/CMRW8ngX9BsD6Ju+xcc5T9NB9Ysv8
viAm2e93jdAXrhsSGnjSTNL+v91GA/KR2eEWX0zWiE2YyPaYAg+GEaepED35mU7p
AaDL9RBgCbYiW1t9CMHQl2y3qJupaUjfI5M8KylzpHMLpgMSTLR0gMUl0swU06QN
9HP8oM2XY1+Cllrs/yk4MyRsbcWwBW4dmdzPQGP8yYJNKh4UnuQrwu3CcniD98AC
1e1biE/68kTjxoyT8X/11+2QQi8WSxCa6ua+acfXuZfweJOfTr9IegBruPvbBeju
6VmZYy9NSt0X9Z61vuxnHaZbMoa3qqtn88rjkxqonmUts112bkrqwCwuK8oSx5lN
RBLNBVgPxTj0YYpNy8OO7N+1i8pXY+MftLOr5+LaDT9ed3iO4db0nEI5e6YYwTnn
WwQooev9PY5/Ty1NmQEP7RIEk8VLsH5oR/RPIhoMZxNLRMLmhmxQSwADFHlEfXAH
D6tLhUCXn4cE3ttNtvMzJih0eMMlR0qtqTTKAfZ8XHeCB+d6cL1uzAhal349vdzq
+gwNzMtNRMRAOdox0ts0hkPr/fsioUOBfO/I9aMtcbSe3+BDoS5Mz2maHGnrCPLA
VV7v3cSu3rQSehxrFMSgYDa1SpS2InILHH1J2z0LuJ8Kuu01XT8=
=myDI
-----END PGP SIGNATURE-----
--=-=-=--
