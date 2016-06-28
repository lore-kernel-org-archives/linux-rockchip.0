From: Caesar Wang <caesar.upstream@gmail.com>
Subject: Re: [PATCH] regulator: pwm: Fix regulator ramp delay for continuous
 mode
Date: Tue, 28 Jun 2016 18:32:24 +0800
Message-ID: <57725238.9010809@gmail.com>
References: <1467089591-7631-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1467089591-7631-1-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>, Mark Brown <broonie@kernel.org>
Cc: boris.brezillon@free-electrons.com, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, briannorris@chromium.org, lgirdwood@gmail.com, linux-rockchip@lists.infradead.org, lee.jones@linaro.org
List-Id: linux-rockchip.vger.kernel.org


On 2016=E5=B9=B406=E6=9C=8828=E6=97=A5 12:53, Douglas Anderson wrote:
> The original commit adding support for continuous voltage mode didn't
> handle the regulator ramp delay properly.  It treated the delay as a
> fixed delay in uS despite the property being defined as uV / uS.  Let=
's
> adjust it.  Luckily there appear to be no users of this ramp delay fo=
r
> PWM regulators (as per grepping through device trees in linuxnext).
>
> Note also that the upper bound of usleep_range probably shouldn't be =
a
> full 1 ms longer than the lower bound since I've seen plenty of hardw=
are
> with a ramp rate of ~5000 uS / uV and for small jumps the total delay=
s
> are in the tens of uS.  1000 is way too much.  We'll try to be dynami=
c
> and use 10%

I'm agree with the dynamic and use 10%.

>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Tested-by: Caesar Wang <wxt@rock-chips.com>

Tested for my rk3399 board. That's still happy work for my board.
=2E.
[ 2891.541958] pwm_regulator_set_voltage: delay=3D38, min-v=3D800000,=20
old-v=3D1024000
[ 2898.188785] pwm_regulator_set_voltage: delay=3D13, min-v=3D875000,=20
old-v=3D800000
[ 2898.211873] pwm_regulator_set_voltage: delay=3D8, min-v=3D925000,=20
old-v=3D877000
[ 2898.312026] pwm_regulator_set_voltage: delay=3D21, min-v=3D-800000,=20
old-v=3D926000
=2E.



> ---
> Note that this patch is atop Boris's recent PWM regulator fixes.  If
> desired it wouldn't be too hard to write it atop the old code, though
> quite honestly anyone using a PWM regulator should probably be using =
his
> new code.
>
>   drivers/regulator/pwm-regulator.c | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/regulator/pwm-regulator.c b/drivers/regulator/pw=
m-regulator.c
> index fa1c74c77bb0..de94d19f6e1f 100644
> --- a/drivers/regulator/pwm-regulator.c
> +++ b/drivers/regulator/pwm-regulator.c
> @@ -188,6 +188,7 @@ static int pwm_regulator_set_voltage(struct regul=
ator_dev *rdev,
>   	struct pwm_state pstate;
>   	unsigned int diff_duty;
>   	unsigned int dutycycle;
> +	int old_uV =3D pwm_regulator_get_voltage(rdev);
>   	int ret;
>  =20
>   	pwm_init_state(drvdata->pwm, &pstate);
> @@ -219,8 +220,12 @@ static int pwm_regulator_set_voltage(struct regu=
lator_dev *rdev,
>   		return ret;
>   	}
>  =20
> -	/* Delay required by PWM regulator to settle to the new voltage */
> -	usleep_range(ramp_delay, ramp_delay + 1000);
> +	if (ramp_delay =3D=3D 0)
> +		return 0;
> +
> +	/* Ramp delay is in uV/uS. Adjust to uS and delay */
> +	ramp_delay =3D DIV_ROUND_UP(abs(req_min_uV - old_uV), ramp_delay);
> +	usleep_range(ramp_delay, ramp_delay + DIV_ROUND_UP(ramp_delay, 10))=
;
>  =20
>   	return 0;
>   }
