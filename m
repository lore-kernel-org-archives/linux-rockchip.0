From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v5 04/21] usb: dwc2: host: Set host_perio_tx_fifo_size
 to 304 for rk3066
Date: Thu, 28 Jan 2016 11:10:44 +0800
Message-ID: <56A986B4.2050002@rock-chips.com>
References: <1453486736-15358-1-git-send-email-dianders@chromium.org>
 <1453486736-15358-5-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1453486736-15358-5-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, balbi-l0cyMroinI0@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

We are using the minimum FIFO size mode for TX now, which only
equal to one max packet size.

The addition FIFO size may help shorten the inter-packet data
prepare latency when the bus/DRAM is busy.

For the actual usage in TX, we have very little change to use the
period TX FIFO with more than one max packet size in host mode.
So far as I know, usb audio use the isochronous tx FIFO, but this
king of device won't have much data payload and won't, I haven't
see a usb audio have more data than 1024byte/ms.

So I suggest we assign this 48 words to host_nperio_tx_fifi_size instead
if we have to do this. Because we are using device base on bulk transaction
like U-disk very frequently.

Thanks,
- Kever
On 01/23/2016 02:18 AM, Douglas Anderson wrote:
> Looking at rk3288, there are two dwc2 ports.  One has 960
> total_fifo_size and the other 972.
>
> We're currently assigning 528 + 128 + 256 = 912.  That means we're
> wasting 48 words on one port and 60 words on the other.  Since we have
> one settings block for both ports, let's just eat the 48 words that we
> know we have and assign them to what's probably the most
> latency-senstive part of the system: periodic transfers.
>
> Presumably other rk3288 parts using the rk3066 settings also have these
> extra 48 words as well.
>
> Note: ideally we'd adjust dwc2_calculate_dynamic_fifo() to handle this
> more dynamically, but until that's done hardcoding things here seems OK.
>
> NOTE: no known use cases are improved by this patch, but in my stressful
> USB tests I certainly see my periodic FIFO filling up both before and
> after this change.  Presumably there are some USB configurations where
> the periodic FIFO would have been filled before where it no longer is.
>
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
> Changes in v5: None
> Changes in v4:
> - Set host_perio_tx_fifo_size to 304 for rk3066 new for v4.
>
> Changes in v3: None
> Changes in v2: None
>
>   drivers/usb/dwc2/platform.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
> index b6d7666e715c..afdcdeee266d 100644
> --- a/drivers/usb/dwc2/platform.c
> +++ b/drivers/usb/dwc2/platform.c
> @@ -128,7 +128,7 @@ static const struct dwc2_core_params params_rk3066 = {
>   	.en_multiple_tx_fifo		= -1,
>   	.host_rx_fifo_size		= 528,	/* 528 DWORDs */
>   	.host_nperio_tx_fifo_size	= 128,	/* 128 DWORDs */
> -	.host_perio_tx_fifo_size	= 256,	/* 256 DWORDs */
> +	.host_perio_tx_fifo_size	= 304,	/* 304 DWORDs */
>   	.max_transfer_size		= -1,
>   	.max_packet_count		= -1,
>   	.host_channels			= -1,
