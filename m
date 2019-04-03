From: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v3] platform/chrome: cros_ec_spi: Transfer messages at
 high priority
Date: Wed, 3 Apr 2019 14:04:36 -0700
Message-ID: <20190403210436.GS112750@google.com>
References: <20190403203137.203582-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20190403203137.203582-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Douglas Anderson <dianders@chromium.org>
Cc: Benson Leung <bleung@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, amstan@chromium.org, linux-rockchip@lists.infradead.org, sjg@chromium.org, briannorris@chromium.org, groeck@chromium.org, broonie@kernel.org, ryandcase@chromium.org, rspangler@chromium.org, heiko@sntech.de, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, Apr 03, 2019 at 01:31:37PM -0700, Douglas Anderson wrote:
> The software running on the Chrome OS Embedded Controller (cros_ec)
> handles SPI transfers in a bit of a wonky way.  Specifically if the EC
> sees too long of a delay in a SPI transfer it will give up and the
> transfer will be counted as failed.  Unfortunately the timeout is
> fairly short, though the actual number may be different for different
> EC codebases.
> 
> We can end up tripping the timeout pretty easily if we happen to
> preempt the task running the SPI transfer and don't get back to it for
> a little while.
> 
> Historically this hasn't been a _huge_ deal because:
> 1. On old devices Chrome OS used to run PREEMPT_VOLUNTARY.  That meant
>    we were pretty unlikely to take a big break from the transfer.
> 2. On recent devices we had faster / more processors.
> 3. Recent devices didn't use "cros-ec-spi-pre-delay".  Using that
>    delay makes us more likely to trip this use case.
> 4. For whatever reasons (I didn't dig) old kernels seem to be less
>    likely to trip this.
> 5. For the most part it's kinda OK if a few transfers to the EC fail.
>    Mostly we're just polling the battery or doing some other task
>    where we'll try again.
> 
> Even with the above things, this issue has reared its ugly head
> periodically.  We could solve this in a nice way by adding reliable
> retries to the EC protocol [1] or by re-designing the code in the EC
> codebase to allow it to wait longer, but that code doesn't ever seem
> to get changed.  ...and even if it did, it wouldn't help old devices.
> 
> It's now time to finally take a crack at making this a little better.
> This patch isn't guaranteed to make every cros_ec SPI transfer
> perfect, but it should improve things by a few orders of magnitude.
> Specifically you can try this on a rk3288-veyron Chromebook (which is
> slower and also _does_ need "cros-ec-spi-pre-delay"):
>   md5sum /dev/zero &
>   md5sum /dev/zero &
>   md5sum /dev/zero &
>   md5sum /dev/zero &
>   while true; do
>     cat /sys/class/power_supply/sbs-20-000b/charge_now > /dev/null;
>   done
> ...before this patch you'll see boatloads of errors.  After this patch I
> don't see any in the testing I did.
> 
> The way this patch works is by effectively boosting the priority of
> the cros_ec transfers.  As far as I know there is no simple way to
> just boost the priority of the current process temporarily so the way
> we accomplish this is by queuing the work on the system_highpri_wq.
> 
> NOTE: this patch relies on the fact that the SPI framework attempts to
> push the messages out on the calling context (which is the one that is
> boosted to high priority).  As I understand from earlier (long ago)
> discussions with Mark Brown this should be a fine assumption.  Even if
> it isn't true sometimes this patch will still not make things worse.
> 
> [1] https://crbug.com/678675
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
> Changes in v3:
> - Use flush_work(), not a completion (Brian)
> 
> Changes in v2:
> - Use system_highpri_wq + completion (Matthias)
> - Avoid duplication by using a function pointer (Matthias)
> 
>  drivers/platform/chrome/cros_ec_spi.c | 79 +++++++++++++++++++++++++--
>  1 file changed, 73 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/platform/chrome/cros_ec_spi.c b/drivers/platform/chrome/cros_ec_spi.c
> index ffc38f9d4829..29d2f7d24929 100644
> --- a/drivers/platform/chrome/cros_ec_spi.c
> +++ b/drivers/platform/chrome/cros_ec_spi.c
> @@ -75,6 +75,27 @@ struct cros_ec_spi {
>  	unsigned int end_of_msg_delay;
>  };
>  
> +typedef int (*cros_ec_xfer_fn_t) (struct cros_ec_device *ec_dev,
> +				  struct cros_ec_command *ec_msg);
> +
> +/**
> + * struct cros_ec_xfer_work_params - params for our high priority workers
> + *
> + * @work: The work_struct needed to queue work
> + * @fn: The function to use to transfer
> + * @ec_dev: ChromeOS EC device
> + * @ec_msg: Message to transfer
> + * @ret: The return value of the function
> + */
> +
> +struct cros_ec_xfer_work_params {
> +	struct work_struct work;
> +	cros_ec_xfer_fn_t fn;
> +	struct cros_ec_device *ec_dev;
> +	struct cros_ec_command *ec_msg;
> +	int ret;
> +};
> +
>  static void debug_packet(struct device *dev, const char *name, u8 *ptr,
>  			 int len)
>  {
> @@ -350,13 +371,13 @@ static int cros_ec_spi_receive_response(struct cros_ec_device *ec_dev,
>  }
>  
>  /**
> - * cros_ec_pkt_xfer_spi - Transfer a packet over SPI and receive the reply
> + * do_cros_ec_pkt_xfer_spi - Transfer a packet over SPI and receive the reply
>   *
>   * @ec_dev: ChromeOS EC device
>   * @ec_msg: Message to transfer
>   */
> -static int cros_ec_pkt_xfer_spi(struct cros_ec_device *ec_dev,
> -				struct cros_ec_command *ec_msg)
> +static int do_cros_ec_pkt_xfer_spi(struct cros_ec_device *ec_dev,
> +				   struct cros_ec_command *ec_msg)
>  {
>  	struct ec_host_response *response;
>  	struct cros_ec_spi *ec_spi = ec_dev->priv;
> @@ -493,13 +514,13 @@ static int cros_ec_pkt_xfer_spi(struct cros_ec_device *ec_dev,
>  }
>  
>  /**
> - * cros_ec_cmd_xfer_spi - Transfer a message over SPI and receive the reply
> + * do_cros_ec_cmd_xfer_spi - Transfer a message over SPI and receive the reply
>   *
>   * @ec_dev: ChromeOS EC device
>   * @ec_msg: Message to transfer
>   */
> -static int cros_ec_cmd_xfer_spi(struct cros_ec_device *ec_dev,
> -				struct cros_ec_command *ec_msg)
> +static int do_cros_ec_cmd_xfer_spi(struct cros_ec_device *ec_dev,
> +				   struct cros_ec_command *ec_msg)
>  {
>  	struct cros_ec_spi *ec_spi = ec_dev->priv;
>  	struct spi_transfer trans;
> @@ -611,6 +632,52 @@ static int cros_ec_cmd_xfer_spi(struct cros_ec_device *ec_dev,
>  	return ret;
>  }
>  
> +static void cros_ec_xfer_high_pri_work(struct work_struct *work)
> +{
> +	struct cros_ec_xfer_work_params *params;
> +
> +	params = container_of(work, struct cros_ec_xfer_work_params, work);
> +	params->ret = params->fn(params->ec_dev, params->ec_msg);
> +}
> +
> +static int cros_ec_xfer_high_pri(struct cros_ec_device *ec_dev,

nit: the fact that a high priority workqueue is used is an
implementation detail, since the driver has no function to perform a
transfer with 'normal'/low priority there is no need to distinguish
between the two cases. In this sense I'd be inclined to remove the
'high_pri' from the function names.

Sorry for not mentioning this earlier, I focussed on other
details, anyway it's just a nit.

> +				 struct cros_ec_command *ec_msg,
> +				 cros_ec_xfer_fn_t fn)
> +{
> +	struct cros_ec_xfer_work_params params;
> +
> +	INIT_WORK(&params.work, cros_ec_xfer_high_pri_work);
> +	params.ec_dev = ec_dev;
> +	params.ec_msg = ec_msg;
> +	params.fn = fn;
> +
> +	/*
> +	 * This looks a bit ridiculous.  Why do the work on a
> +	 * different thread if we're just going to block waiting for
> +	 * the thread to finish?  The key here is that the thread is
> +	 * running at high priority but the calling context might not
> +	 * be.  We need to be at high priority to avoid getting
> +	 * context switched out for too long and the EC giving up on
> +	 * the transfer.
> +	 */
> +	queue_work(system_highpri_wq, &params.work);
> +	flush_work(&params.work);
> +
> +	return params.ret;
> +}
> +
> +static int cros_ec_pkt_xfer_spi(struct cros_ec_device *ec_dev,
> +				struct cros_ec_command *ec_msg)
> +{
> +	return cros_ec_xfer_high_pri(ec_dev, ec_msg, do_cros_ec_pkt_xfer_spi);
> +}
> +
> +static int cros_ec_cmd_xfer_spi(struct cros_ec_device *ec_dev,
> +				struct cros_ec_command *ec_msg)
> +{
> +	return cros_ec_xfer_high_pri(ec_dev, ec_msg, do_cros_ec_cmd_xfer_spi);
> +}
> +
>  static void cros_ec_spi_dt_probe(struct cros_ec_spi *ec_spi, struct device *dev)
>  {
>  	struct device_node *np = dev->of_node;

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
