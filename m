From: Romain Perier <romain.perier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Firefly wifi mainline patches
Date: Wed, 22 Jul 2015 08:45:37 +0200
Message-ID: <CABgxDoJ03fPobnz+0DBn0EH91y0A0F6Z95sa9aWx3vWXuXqngQ@mail.gmail.com>
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Michael,

You can ask and discuss about wifi here, but could you re-send you
patches as described in [1] please ?

Short version:
1. git format-patch HEAD~2  # extract your two commits
2. scripts/get_maintainer.pl -f  <changed_files> # list maintainers
3. git send-email --to --cc  <emails  listed by get_maintainer.pl>   *.patch

Thanks in advance,
Have a nice day,
Romain

1. https://www.kernel.org/doc/Documentation/SubmittingPatches


2015-07-22 7:58 GMT+02:00 Michael Trimarchi <michael-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>:
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
>
> Michael
>
>> Michael
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>
