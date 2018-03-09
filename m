From: Felipe Balbi <balbi@kernel.org>
Subject: Re: [PATCH] usb: dwc3: core: power on PHYs before initializing core
Date: Fri, 09 Mar 2018 11:01:17 +0200
Message-ID: <871sgtbp2a.fsf@linux.intel.com>
References: <1515729616-8639-1-git-send-email-william.wu@rock-chips.com> <87ina6vodf.fsf@linux.intel.com> <20180308164916.GA65031@rodete-desktop-imager.corp.google.com> <abca45d6-2304-a607-5185-f26327a653f5@ti.com>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
        micalg=pgp-sha512; protocol="application/pgp-signature"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <abca45d6-2304-a607-5185-f26327a653f5@ti.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Roger Quadros <rogerq@ti.com>, Brian Norris <briannorris@chromium.org>
Cc: William Wu <william.wu@rock-chips.com>, gregkh@linuxfoundation.org, heiko@sntech.de, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org, frank.wang@rock-chips.com, huangtao@rock-chips.com, dianders@google.com, briannorris@google.com, groeck@google.com, daniel.meng@rock-chips.com, John.Youn@synopsys.com, lin.huang@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Roger Quadros <rogerq@ti.com> writes:
> Hi,
>
> On 08/03/18 18:49, Brian Norris wrote:
>> Hi,
>>=20
>> On Thu, Mar 08, 2018 at 12:43:40PM +0200, Felipe Balbi wrote:
>>> William Wu <william.wu@rock-chips.com> writes:
>>>> The dwc3_core_init() gets the PHYs and initializes the PHYs with
>>>> the usb_phy_init() and phy_init() functions before initializing
>>>> core, and power on the PHYs after core initialization is done.
>>>>
>>>> However, some platforms (e.g. Rockchip RK3399 DWC3 with Type-C
>>>> USB3 PHY), it needs to do some special operation while power on
>>>> the Type-C PHY before initializing DWC3 core. It's because that
>>>> the RK3399 Type-C PHY requires to hold the DWC3 controller in
>>>> reset state to keep the PIPE power state in P2 while configuring
>>>> the Type-C PHY, otherwise, it may cause waiting for the PIPE ready
>>>> timeout. In this case, if we power on the PHYs after the DWC3 core
>>>> initialization is done, the core will be reset to uninitialized
>>>> state after power on the PHYs.
>>>>
>>>> Fix this by powering on the PHYs before initializing core. And
>>>> because the GUID register may also be reset in this case, so we
>>>> need to configure the GUID register after powering on the PHYs.
>>>>
>>>> Signed-off-by: William Wu <william.wu@rock-chips.com>
>>>
>>> does this cause any regressions for your boards?
>>=20
>> I'm not Roger, but I believe it was determined we don't need this for
>> the Rockchip systems for which William was originally sending this. At
>> least not right now. I believe our PHY init problems were mostly
>> resolved in other ways.
>>=20
>> (Although I hear USB is currently pretty broken around suspend/resume
>> for us on -next. Likely unrelated.)
>>=20
>> I guess we never clearly replied stating the above. I hope this isn't
>> merged anywhere? Or I guess it's no problem to me at the moment, but it
>> might be needless churn.
>>=20
>
> I did some quick tests on TI platforms and didn't see any issues with thi=
s patch.
> Since this patch isn't really fixing your problem and we didn't have any
> problems to start with I'd suggest to avoid this churn for now.

fair enough, I won't apply it :-)

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAlqiTV0ACgkQzL64meEa
mQYAbBAAq6DNTsVhFehYtxLSararzyR1Bl7Jmm7fW7a5WRQL6oymcPBUIxqkNZeW
HKzeSPXSKptZamTwbTsy6f0O5KgZ+InB+/BpffoBMz4+H2m+od4n/QJJy1NRLF7v
9kvcX6vmfl+2qnEUTXZA3iuq5Ke7IXUsOiZbr54GnLdRLDP+Pc0G6figfpW/d8cA
XkJAxajTnxYhhm/TBF+v/tihfMTyJtNYRp1Z/YZcyGNAAy12mB/XA5bP8YDdn9Rz
Jse5StIviEGb/hKNd6S+myzv69tixXqFbyqSd2mG4ZgBOKxNg6IUHvU9sfc2xw/9
/K+pmceXwDUNOBJsICp6Akwq4jRqYNEVCfdRaMMvFTEHDm70LwkVCnC8XwFZpQ1k
KHL0/YnOBJH8L/hrinG6GoraURUstt8B/1EgVdnry7kYr952F1gDN+OgccI8PyiZ
8Jqy6ec4IS+wHmpVVsninE634t9iuYKqUt/OpdsXHIhGfMRqPRy+F0M3qbAkY6/J
M0TZGgIWMtxG4AsBdGK+MJUk31s4jwIO7mHRIMoXFBXTEoy57V5Ir5vAZVZKWwHW
2izw8+thTpw6UWJ79aFMd8GmeRIuzbCpWujK1aFj3x/fBxPE/aiTGfOzbmgZvUBy
r7lke7ehQz3y8b0dRMuRudfm6qCg+Ew1EX6uUDvF/y7Vw1bfo9w=
=VnTN
-----END PGP SIGNATURE-----
--=-=-=--
