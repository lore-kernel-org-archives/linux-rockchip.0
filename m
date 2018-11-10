From: Urja Rannikko <urjaman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: ASoC: rockchip_pcm/i2s sound card regression on rk3288 (asus
 c201) (4.19+)
Date: Sat, 10 Nov 2018 18:23:13 +0000
Message-ID: <CAPCnQJmkup4R4uJXzkhZHpF7_Pe4h9hbJo0+Uf+os1S5Msadvg@mail.gmail.com>
References: <CAPCnQJk_Gd0wNHBdQR9RQb+yzh94HJgEpYfUum2+k_A4m5wfLA@mail.gmail.com>
 <6bf2c789-b9ef-7649-0bd1-f0383b37134a@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <6bf2c789-b9ef-7649-0bd1-f0383b37134a-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Jianqun Xu <jay.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Sat, Nov 10, 2018 at 5:07 PM Katsuhiro Suzuki
<katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org> wrote:
>
> Hello,
>
> Thank you for your comment and sorry for breaking your environment.
To be honest, afaik you didnt really break it, more just showed how
broken it already was.

> Would you try to change the arguments as following
>    devm_snd_dmaengine_pcm_register(dev, NULL, 0);
> in rockchip_pcm.c?
That is actually what i did to "revert" it since my kernel build tree
isnt a git tree and doing that was faster,
so I already did that.

> Is it work on your environment or not? If it works, I think it's
> better to remove whole snd_pcm_hardware and snd_dmaengine_pcm_config
> settings from rockchip_pcm.c instead of my previous and current patches.
Yes it works, whether that is the best course of action is up to you all.

Thanks,
Urja Rannikko
