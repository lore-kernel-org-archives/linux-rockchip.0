From: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH] linux-firmware: rockchip: update dptx firmware to v2.9
Date: Mon, 15 Aug 2016 07:22:04 +0800
Message-ID: <57B0FD1C.9000006@rock-chips.com>
References: <1471215919-15697-1-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1471215919-15697-1-git-send-email-zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: kyle-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-firmware-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Kyle

Sorry to update this firmwre so frequently, and I don't think this one 
is the final version, I post it to upstream because someone probably 
require it.
If this patch can not land in linux-firmare, I will not feel sad.

Thanks
Chris Zhong

On 08/15/2016 07:05 AM, Chris Zhong wrote:
> This version firmware fixed the USB3 lanes config bug.
>
> Signed-off-by: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---
>   WHENCE            |   2 +-
>   rockchip/dptx.bin | Bin 98320 -> 98320 bytes
>   2 files changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/WHENCE b/WHENCE
> index 08b111b..4941f00 100644
> --- a/WHENCE
> +++ b/WHENCE
> @@ -3306,6 +3306,6 @@ OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>   Driver: rk3399-dptx - ROCKCHIP rk3399 dptx firmware
>   
>   File: rockchip/dptx.bin
> -Version: 2.6
> +Version: 2.9
>   
>   Licence: Redistributable. See LICENCE.rockchip for details.
> diff --git a/rockchip/dptx.bin b/rockchip/dptx.bin
> index 1f22d2c25d3fe1f5b242c73c363601f1ee0020f6..b466118d2365507eafe2ac98635c79185312ccb2 100644
> GIT binary patch
> delta 11800
> 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
> T;m6&{;X7rypUJc)5AFJ2I<3{%
>
> delta 11710
> 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%0DIQIrI*jx(mM)
> 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
>
