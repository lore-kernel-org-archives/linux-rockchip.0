From: Peter Griffin <peter.griffin@linaro.org>
Subject: Re: [PATCH v2] ARM: rockchip: Fix use of plain integer as NULL
 pointer
Date: Thu, 17 Mar 2016 14:04:30 +0000
Message-ID: <20160317140430.GA26606@griffinp-ThinkPad-X1-Carbon-2nd>
References: <1458222191-26023-1-git-send-email-peter.griffin@linaro.org>
 <3852103.Khn1BuqerF@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3852103.Khn1BuqerF@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, patches@linaro.org, lee.jones@linaro.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On Thu, 17 Mar 2016, Heiko St=FCbner wrote:

> Hi Peter,
>=20
> no need to resend for that (will be lost when applying anyway), but f=
or future=20
> patches please consider the things below:
>=20
> Am Donnerstag, 17. M=E4rz 2016, 13:43:11 schrieb Peter Griffin:
> > This fixes the following sparse build warning:
> >=20
> >      mach-rockchip/platsmp.c:68:43: Using plain integer as NULL poi=
nter
> >=20
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
>=20
> please bring aling tags received in previous versions to future ones,=
 like the=20
> one from Lee:
>=20
> Acked-by: Lee Jones <lee.jones@linaro.org>

Will do, I didn't notice Lee had also Acked it. I should have been payi=
ng more
attention and not re-spinning whilst in a conf call.
>=20
> > ---
>=20
> changes in v2:
> - beautify commit message
>=20
>=20
> otherwise, patch looks nice and I'll pick it up shortly
>=20
>=20
> Thanks for catching this

No problem, thanks for the feedback and taking the patch.

regards,

Peter.
