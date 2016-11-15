From: Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH] drm/bridge: analogix_dp: return error if transfer none
 byte
Date: Tue, 15 Nov 2016 09:09:44 -0800
Message-ID: <CAOw6vb+4RDNBq6bizCK51cAN56j8EZyszL9j_XkjNKqZ4UG-Ug@mail.gmail.com>
References: <1478168250-30858-1-git-send-email-jay.xu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1478168250-30858-1-git-send-email-jay.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jianqun Xu <jay.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Archit <architt-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, =?UTF-8?B?546L5b6B5aKe?= <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Dave Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, dri-devel <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>, Masahiro Yamada <yamada.masahiro-uWyLwvC0a2jby3iVrkZq2A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Nov 3, 2016 at 3:17 AM, Jianqun Xu <jay.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
> Reference from drm_dp_aux description (about transfer):
> Upon success, the implementation should return the number of payload bytes
> that were transferred, or a negative error-code on failure. Helpers
> propagate errors from the .transfer() function, with the exception of
> the -EBUSY error, which causes a transaction to be retried. On a short,
> helpers will return -EPROTO to make it simpler to check for failure.
>
> The analogix_dp_transfer will return num_transferred, but if there is none
> byte been transferred, the return value will be 0, which means success, we
> should return error-code if transfer none byte.
>
> for (retry = 0; retry < 32; retry++) {
>         err = aux->transfer(aux, &msg);
>         if (err < 0) {
>                 if (err == -EBUSY)
>                         continue;
>
>                 goto unlock;
>         }
> }
>
> Cc: zain wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Cc: Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> Signed-off-by: Jianqun Xu <jay.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Reviewed-by: Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

> ---
>  drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
> index cd37ac0..303083a 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_reg.c
> @@ -1162,5 +1162,5 @@ ssize_t analogix_dp_transfer(struct analogix_dp_device *dp,
>                  (msg->request & ~DP_AUX_I2C_MOT) == DP_AUX_NATIVE_READ)
>                 msg->reply = DP_AUX_NATIVE_REPLY_ACK;
>
> -       return num_transferred;
> +       return num_transferred > 0 ? num_transferred : -EBUSY;
>  }
> --
> 1.9.1
>
>
