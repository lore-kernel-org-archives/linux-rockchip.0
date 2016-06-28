From: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH] regulator: pwm: Fix regulator ramp delay for continuous
 mode
Date: Tue, 28 Jun 2016 09:07:23 -0700
Message-ID: <CA+ASDXMvahYEGfzdSAmvjkFK2ytxvaqN1fYdhKT8kTx2tA7MBA@mail.gmail.com>
References: <1467089591-7631-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1467089591-7631-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Boris Brezillon <boris.brezillon-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, Jun 27, 2016 at 9:53 PM, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
> The original commit adding support for continuous voltage mode didn't
> handle the regulator ramp delay properly.  It treated the delay as a
> fixed delay in uS despite the property being defined as uV / uS.  Let's
> adjust it.  Luckily there appear to be no users of this ramp delay for
> PWM regulators (as per grepping through device trees in linuxnext).

My grepping agrees, though I'm sure I didn't do a very thorough job.

> Note also that the upper bound of usleep_range probably shouldn't be a
> full 1 ms longer than the lower bound since I've seen plenty of hardware
> with a ramp rate of ~5000 uS / uV and for small jumps the total delays
> are in the tens of uS.  1000 is way too much.  We'll try to be dynamic
> and use 10%
>
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
> Note that this patch is atop Boris's recent PWM regulator fixes.  If
> desired it wouldn't be too hard to write it atop the old code, though
> quite honestly anyone using a PWM regulator should probably be using his
> new code.
>
>  drivers/regulator/pwm-regulator.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/regulator/pwm-regulator.c b/drivers/regulator/pwm-regulator.c
> index fa1c74c77bb0..de94d19f6e1f 100644
> --- a/drivers/regulator/pwm-regulator.c
> +++ b/drivers/regulator/pwm-regulator.c
> @@ -188,6 +188,7 @@ static int pwm_regulator_set_voltage(struct regulator_dev *rdev,
>         struct pwm_state pstate;
>         unsigned int diff_duty;
>         unsigned int dutycycle;
> +       int old_uV = pwm_regulator_get_voltage(rdev);
>         int ret;
>
>         pwm_init_state(drvdata->pwm, &pstate);
> @@ -219,8 +220,12 @@ static int pwm_regulator_set_voltage(struct regulator_dev *rdev,
>                 return ret;
>         }
>
> -       /* Delay required by PWM regulator to settle to the new voltage */
> -       usleep_range(ramp_delay, ramp_delay + 1000);

I was curious about the side effects of the unconditional
usleep_range(ramp_delay, ...), even when ramp_delay is 0 (e.g., would
we ever sleep here for up to 1ms?), but apparently the implementation
optimizes the '0' case to be an unconditional, immediate wake-up. So
refactoring this shouldn't have any accidental effects.

> +       if (ramp_delay == 0)
> +               return 0;
> +
> +       /* Ramp delay is in uV/uS. Adjust to uS and delay */
> +       ramp_delay = DIV_ROUND_UP(abs(req_min_uV - old_uV), ramp_delay);
> +       usleep_range(ramp_delay, ramp_delay + DIV_ROUND_UP(ramp_delay, 10));

Math checks out to me.

>
>         return 0;
>  }

Reviewed-by: Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
