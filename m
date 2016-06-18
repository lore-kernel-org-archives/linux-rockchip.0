From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH V3] clocksource/drivers/rockchip_timer: Convert init function to return error
Date: Sat, 18 Jun 2016 15:47:13 +0200
Message-ID: <5185607.7BCdEvMvLD@diego>
References: <2572341.0UcvQ6PvRt@diego> <1466254447-2420-1-git-send-email-daniel.lezcano@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1466254447-2420-1-git-send-email-daniel.lezcano@linaro.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: tglx@linutronix.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Samstag, 18. Juni 2016, 14:54:07 schrieb Daniel Lezcano:
> The init functions do not return any error. They behave as the following:
> 
>  - panic, thus leading to a kernel crash while another timer may work and
>    make the system boot up correctly
> 
>  or
> 
>  - print an error and let the caller unaware if the state of the system
> 
> Change that by converting the init functions to return an error conforming
> to the CLOCKSOURCE_OF_RET prototype.
> 
> Proper error handling (rollback, errno value) will be changed later case
> by case, thus this change just return back an error or success in the init
> function.
> 
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>

looks good now :-)
Reviewed-by: Heiko Stuebner <heiko@sntech.de>

on a rk3399-evb
Tested-by: Heiko Stuebner <heiko@sntech.de>


Heiko
