From: Urja Rannikko <urjaman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: ASoC: rockchip_pcm/i2s sound card regression on rk3288 (asus
 c201) (4.19+)
Date: Tue, 13 Nov 2018 17:25:18 +0000
Message-ID: <CAPCnQJnZZT5kzd5fmajnban53gJwdqufdBFcgT-Z=WZ0Ab5Kvw@mail.gmail.com>
References: <CAPCnQJk_Gd0wNHBdQR9RQb+yzh94HJgEpYfUum2+k_A4m5wfLA@mail.gmail.com>
 <6bf2c789-b9ef-7649-0bd1-f0383b37134a@katsuster.net>
 <CAPCnQJmkup4R4uJXzkhZHpF7_Pe4h9hbJo0+Uf+os1S5Msadvg@mail.gmail.com>
 <2bd4c7d0-c62d-97db-86a2-d9bb67678a86@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2bd4c7d0-c62d-97db-86a2-d9bb67678a86-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
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

On Tue, Nov 13, 2018 at 4:35 PM Katsuhiro Suzuki
<katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org> wrote:
>
> Hello,
>
> Sorry to distrub you. I can't reproduce the problem on my device, so
> I want to confirm the current situation.
>
> Q1.
> Which device-tree are you using?
>
> This one?
>
> https://chromium.googlesource.com/chromiumos/third_party/kernel/+/stabilize-7202.B-chromeos-3.14/arch/arm/boot/dts/rk3288-speedy.dts
>
> It seems i2s node does not have dma properties. I guess this is the
> reason of Oops.
No, the one that comes with the mainline kernel slightly modified for
things like HDMI, but have not touched the sound parts:
https://github.com/torvalds/linux/blob/v4.19/arch/arm/boot/dts/rk3288-veyron-speedy.dts
for the sound:
https://github.com/torvalds/linux/blob/v4.19/arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi

Just for reference if you need to know the kernel config or something,
i follow archlinux-arm's linux-armv7
with my own patches added on top of them at:
https://github.com/urjaman/arch-c201/tree/master/linux-c201

The commit that it is at currently ("update to linux-4.19.0") is the
one that has EINVAL.
I'll push one with a patch doing the (3) below soon-ish.

> Q2.
> Which combination is working on your device? My understanding as
> following:
>
> 4.19 : Working
> 4.19 + (1) : Unknown
> 4.19 + (2) : EINVAL
> 4.19 + (1) + (2) : Oops and crush
> 4.19 + (3) : Working??
>
> (1): 75b31192fe6ad20b42276b20ee3bdf1493216d63
>       "ASoC: rockchip: add config for rockchip dmaengine pcm register"
> (2): 24d6638302b48328a58c13439276d4531af4ca7d
>       "ASoC: rockchip: add missing INTERLEAVED PCM attribute"
> (3): Change arguments of devm_snd_dmaengine_pcm_register
>       to (dev, NULL, 0)

4.19 + (1) is 4.19, that is (1) is included in 4.19.0.

So:
4.19 : EINVAL
4.19 + (2): Oops and eventually hang or crash
4.19 + (3): Working (this tree included (2) but that is irrelevant
since that info isnt used...)

My last tested working before 4.19.0 was 4.18.8 (i update kinda rarely
it seems), this doesnt include (1) and was working.

Thanks,
Urja Rannikko
