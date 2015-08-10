From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH 1/3] nvmem: fix the out-of-range leak in read/write()
Date: Mon, 10 Aug 2015 09:49:19 +0100
Message-ID: <55C8658F.4000201@linaro.org>
References: <1439176963-8969-1-git-send-email-zhengsq@rock-chips.com> <1439176963-8969-2-git-send-email-zhengsq@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1439176963-8969-2-git-send-email-zhengsq@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Shunqian Zheng <zhengsq@rock-chips.com>, maxime.ripard@free-electrons.com, heiko@sntech.de, linux-kernel@vger.kernel.org, caesar.wang@rock-chips.com
Cc: dianders@chromium.org, linux-rockchip@lists.infradead.org, xjq@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org



On 10/08/15 04:22, Shunqian Zheng wrote:
> From: ZhengShunQian <zhengsq@rock-chips.com>
>
> The position to read/write must be less than max
> register size.

>
> Signed-off-by: ZhengShunQian <zhengsq@rock-chips.com>
> ---
>   drivers/nvmem/core.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
> index d3c6676..f4af8e5 100644
> --- a/drivers/nvmem/core.c
> +++ b/drivers/nvmem/core.c
> @@ -67,7 +67,7 @@ static ssize_t bin_attr_nvmem_read(struct file *filp, struct kobject *kobj,
>   	int rc;
>
>   	/* Stop the user from reading */
> -	if (pos > nvmem->size)
> +	if (pos >= nvmem->size)
>   		return 0;
>
>   	if (pos + count > nvmem->size)
> @@ -92,7 +92,7 @@ static ssize_t bin_attr_nvmem_write(struct file *filp, struct kobject *kobj,
>   	int rc;
>
>   	/* Stop the user from writing */
> -	if (pos > nvmem->size)
> +	if (pos >= nvmem->size)
>   		return 0;
>
>   	if (pos + count > nvmem->size)
>

This looks good,

Acked-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
