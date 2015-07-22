From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: Firefly wifi mainline patches
Date: Wed, 22 Jul 2015 06:36:39 -0700
Message-ID: <CAD=FV=U6DmLr_VC3XKs+ALKKhwsg+JXmo+52aEoWOkvkXr3UGw@mail.gmail.com>
References: <20150721125133.GA4102@panicking>
 <CAOf5uw=cvu9ST+QexgMQP06xQVAz6th_EepfxQOAXNDrWopf6Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAOf5uw=cvu9ST+QexgMQP06xQVAz6th_EepfxQOAXNDrWopf6Q-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Michael Trimarchi <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Alexandru Stan <amstan-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Tue, Jul 21, 2015 at 10:58 PM, Michael Trimarchi
<michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org> wrote:
> Hi
>
>
> On Tue, Jul 21, 2015 at 2:51 PM, Michael Trimarchi
> <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org> wrote:
>> Hi
>>
>> I have managed to let my wifi working using mainline but I have
>> problem on clocking. Right now I can not rise the clock more the 5Mhz
>> even it's suppose to work up to 50Mhz. Anyone is working on it right
>> now?
>>
>
> I put in attach two patches that I need on my version. Another problem
> is that execute_tuning is not defined in the dw_mmc-rockchip so
> ENOSYS is returned. I think that we have two way:
>
> 1) put a stub
> 2) define 0 as default error

I don't think you should be trying to tune until the tuning patches
are landed.  Alexandru sent them up a while ago but they need to be
respun.  I seem to remember Alexandru saying that it decided your
controller was UHS capable if you didn't specify any capabilities, so
maybe that's it.

Try adding this to your SDIO port in the dts:

cap-sd-highspeed;
