From: Urja Rannikko <urjaman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: ASoC: rockchip_pcm/i2s sound card regression on rk3288 (asus c201)
 (4.19+)
Date: Sat, 10 Nov 2018 18:45:35 +0200
Message-ID: <CAPCnQJk_Gd0wNHBdQR9RQb+yzh94HJgEpYfUum2+k_A4m5wfLA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org, Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Jianqun Xu <jay.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

I'm here just to let you know that commit
75b31192fe6ad20b42276b20ee3bdf1493216d63
("ASoC: rockchip: add config for rockchip dmaengine pcm register")
broke the driver for the internal sound card on this laptop and i
would assume most rk3288 devices, and commit
24d6638302b48328a58c13439276d4531af4ca7d
("ASoC: rockchip: add missing INTERLEAVED PCM attribute")
didnt really fix it.

On 4.19.0 the second commit has not been applied yet, so the result is
EINVAL ("Invalid argument") whenever you try to open the PCM
device, and if I apply that, the result is an Oops in the PL330 DMA driver.

It's a bit difficult to get that log since the machine usually hangs soon after,
but i think i did see it say "Oops - undefined instruction" somewhere
in pl330_prep_slave_fifo.

If I revert the whole thing, sound works again.

I'm very suspicious of the limits set in the hw info added in that commit,
since without it and just playing some audio the parameters in hw_params exceed
those limits, but i wouldnt know what they're supposed to be, or if
the problem is actually elsewhere.

Thanks,
Urja Rannikko
