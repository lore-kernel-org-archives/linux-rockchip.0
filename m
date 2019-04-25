From: Felipe Balbi <felipe.balbi@linux.intel.com>
Subject: Re: [PATCH v2 4/5] USB: dwc2: Don't turn off the usbphy in suspend if wakeup is enabled
Date: Thu, 25 Apr 2019 15:41:50 +0300
Message-ID: <87mukes1dd.fsf@linux.intel.com>
References: <20190418001356.124334-1-dianders@chromium.org> <20190418001356.124334-5-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
        micalg=pgp-sha256; protocol="application/pgp-signature"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190418001356.124334-5-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Minas Harutyunyan <hminas@synopsys.com>, heiko@sntech.de
Cc: Alan Stern <stern@rowland.harvard.edu>, Artur Petrosyan <Arthur.Petrosyan@synopsys.com>, amstan@chromium.org, linux-rockchip@lists.infradead.org, William Wu <william.wu@rock-chips.com>, linux-usb@vger.kernel.org, Stefan Wahren <stefan.wahren@i2se.com>, Randy Li <ayaka@soulik.info>, zyw@rock-chips.com, mka@chromium.org, ryandcase@chromium.org, Amelie Delaunay <amelie.delaunay@st.com>, jwerner@chromium.org, dinguyen@opensource.altera.com, Elaine Zhang <zhangqing@rock-chips.com>, Douglas Anderson <dianders@chromium.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Douglas Anderson <dianders@chromium.org> writes:

> If the 'snps,need-phy-for-wake' is set in the device tree then:
>
> - We know that we can wakeup, so call device_set_wakeup_capable().
>   The USB core will use this knowledge to enable wakeup by default.
> - We know that we should keep the PHY on during suspend if something
>   on our root hub needs remote wakeup.  This requires the patch (USB:
>   Export usb_wakeup_enabled_descendants()).  Note that we don't keep
>   the PHY on at suspend time if it's not needed because it would be a
>   power draw.
>
> If we later find some users of dwc2 that can support wakeup without
> keeping the PHY on we may want to add a way to call
> device_set_wakeup_capable() without keeping the PHY on at suspend
> time.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Signed-off-by: Chris Zhong <zyw@rock-chips.com>

checking file drivers/usb/dwc2/core.h
Hunk #1 FAILED at 861.
Hunk #2 FAILED at 1049.
2 out of 2 hunks FAILED
checking file drivers/usb/dwc2/platform.c
Hunk #3 FAILED at 487.
Hunk #4 succeeded at 513 (offset -9 lines).
Hunk #5 succeeded at 543 (offset -9 lines).
Hunk #6 succeeded at 556 (offset -9 lines).
1 out of 6 hunks FAILED


=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAlzBqw4ACgkQzL64meEa
mQbVCxAApSaX0S5csF9prSld7aWLI8sHAR7AKO7ORr1SGmtZrsW/68If6MgGPheM
GRpQpq+UhyxqXnwUm3jcn+DXWaYC4p1K0r/SCksJRiUiF1CaxW46IH7fuCtYLqcD
SQWTEg6Co8rpLXNe6YWAiGiT1Z1cFyL2CFZKiy6jn5yN3jd3nIpbGs4gFpc0GAzp
mm1RJL1iSkuuDKm8+SlAcLAxxn/l2ARFMthzVvDSvwcFUmhpZyK15KkH5NFBZuEX
m+aIz75H2Cd7hwhOvKiV+3UahD6VlOBV9Va8GaQv5MHsm3Cris7L2+PzUK6289BK
slOQyh/X5xSPyixnbQ7ytEgC9+h4mgSwHJAdbTfkU1GHSvse/DhkKF9lLM7AcaRh
EdF2MdIeeyqyHx0OrdMvoBGWHhy2m8C04dW2+YBKeIFEwhfZkPkw1SvIwpo7f8It
ffTghKVOjYaK/TbR5ohAesqo+/yKmG+GgmfQZlcQ6sFALVBxmj+aaFSMo6R125j8
CvH3zVfXYsgnz4iYcKkz1VXyddu0NDD0Ml6A1L7pq1dwxINaukkk68QyC9euMAF0
SdsGIGIWl20/2tDKjtkTzIdRujTnDPbNqiiOyMviQvo30KxZcfNMPzMtV96MJ13U
X5PjJyRNxe4yULEUuXrnGCvTwD/mIif/3OJfh6n0SW28cD2A/dA=
=+55D
-----END PGP SIGNATURE-----
--=-=-=--
