From: Bert Schiettecatte <bert-SPTOQ0XKFtOY49tRHJ+t6mXnswh1EIUO@public.gmane.org>
Subject: Re: changes to scheduler from mainline 4.8 to 4.10?
Date: Wed, 29 Mar 2017 08:27:58 -0700
Message-ID: <CALd3UbQwKzAAAZAT6iBGSNo3_AE5=r5qmYe03h9X6LMU-ADA9g@mail.gmail.com>
References: <CALd3UbSKV_Qzun=9Hhwe=omP5f4A3gyOi_nGNM6JA4d5ziFZ_g@mail.gmail.com>
 <20170329115211.3edaca98.john@metanate.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20170329115211.3edaca98.john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Keeping <john-HooS5bfzL4hWk0Htik3J/w@public.gmane.org>
Cc: linux-rockchip <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi John

Thanks for your reply.

> Are you using the RT patchset [1] and CONFIG_PREEMPT_RT_FULL?  I'm able
> to run at 44100Hz with 128 sample buffers on RK3288 with appropriate
> thread priorities (although that is on a 4.4 series kernel, I haven't
> tested audio performance on more recent versions).

I can't find that setting in my kernel config. I saw those patch sets,
but did not apply them yet since I am not sure how relevant they still
are for a 4.10 kernel? Has anyone applied these patches to more recent
kernels than 4.4 and is it possible to do so?

When I grep for PREEMPT, I get this

CONFIG_PREEMPT_RCU=y
# CONFIG_PREEMPT_NONE is not set
# CONFIG_PREEMPT_VOLUNTARY is not set
CONFIG_PREEMPT=y
CONFIG_PREEMPT_COUNT=y
CONFIG_DEBUG_PREEMPT=y
# CONFIG_PREEMPT_TRACER is not set

> You may also want the pinctrl patchset I posted recently [2] to avoid
> locking issues when using full RT preemption.
>
> [1] https://rt.wiki.kernel.org/index.php/Main_Page
> [2] https://lkml.org/lkml/2017/3/23/208

Thanks, I'll check out your patch.

Bert
