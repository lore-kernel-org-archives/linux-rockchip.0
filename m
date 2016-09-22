From: Jaehoon Chung <jh80.chung@samsung.com>
Subject: Re: [PATCH] mmc: dw_mmc: minor cleanup for dw_mci_adjust_fifoth
Date: Thu, 22 Sep 2016 13:27:30 +0900
Message-ID: <d5b788a0-a5f2-d772-0097-9efabeedbeed@samsung.com>
References: <CGME20160921024005epcas1p37f9a6a779906c283bb42e26f38c8d512@epcas1p3.samsung.com>
 <1474425625-24178-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Return-path: <linux-mmc-owner@vger.kernel.org>
In-reply-to: <1474425625-24178-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-mmc-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>, Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 09/21/2016 11:40 AM, Shawn Lin wrote:
> msize and rx_wmark are properly initialized, we dont't
> need to assign them again.

Applied on my tree. Thanks!

Best Regards,
Jaehoon Chung

> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  drivers/mmc/host/dw_mmc.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/mmc/host/dw_mmc.c b/drivers/mmc/host/dw_mmc.c
> index 22dacae..d838428 100644
> --- a/drivers/mmc/host/dw_mmc.c
> +++ b/drivers/mmc/host/dw_mmc.c
> @@ -876,11 +876,8 @@ static void dw_mci_adjust_fifoth(struct dw_mci *host, struct mmc_data *data)
>  	 * MSIZE is '1',
>  	 * if blksz is not a multiple of the FIFO width
>  	 */
> -	if (blksz % fifo_width) {
> -		msize = 0;
> -		rx_wmark = 1;
> +	if (blksz % fifo_width)
>  		goto done;
> -	}
>  
>  	do {
>  		if (!((blksz_depth % mszs[idx]) ||
> 

