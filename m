From: Kyle McMartin <kyle-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [PATCH] Add dptx firmware for rockchip rk3399
Date: Tue, 12 Jul 2016 15:48:23 -0400
Message-ID: <20160712194823.GJ8680@merlin.infradead.org>
References: <1468335519-28245-1-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1468335519-28245-1-git-send-email-zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-firmware-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, smbarber-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, Jul 12, 2016 at 10:58:38PM +0800, Chris Zhong wrote:
> This dptx firmware is required by rk3399 Type-C DisplayPort controller.
> 
> Signed-off-by: Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> 

Applied, thanks Chris.

regards, --Kyle

> ---
> 
>  WHENCE            |  18 ++++++++++++++++++
>  rockchip/dptx.bin | Bin 0 -> 98320 bytes
>  2 files changed, 18 insertions(+)
>  create mode 100644 rockchip/dptx.bin
> 
> diff --git a/WHENCE b/WHENCE
> index d8b1eaa..f463e26 100644
> --- a/WHENCE
> +++ b/WHENCE
> @@ -3294,3 +3294,21 @@ General Public License.
>  These firmware files are distributed in the hope that they will be useful, but
>  are provided WITHOUT ANY WARRANTY, INCLUDING BUT NOT LIMITED TO IMPLIED WARRANTY
>  OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
> +
> +--------------------------------------------------------------------------
> +
> +Driver: rk3399-dptx - ROCKCHIP rk3399 dptx firmware
> +
> +File: rockchip/dptx.bin
> +
> +Licence: Redistributable.
> +
> +Rockchip Inc. grants permission to use and redistribute aforementioned firmware
> +files for the use with devices containing Rockchip chipsets, but not as part of
> +the Linux kernel or in any other form which would require these files themselves
> +to be covered by the terms of the GNU General Public License or the GNU Lesser
> +General Public License.
> +
> +These firmware files are distributed in the hope that they will be useful, but
> +are provided WITHOUT ANY WARRANTY, INCLUDING BUT NOT LIMITED TO IMPLIED WARRANTY
> +OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
> diff --git a/rockchip/dptx.bin b/rockchip/dptx.bin
> new file mode 100644
> index 0000000000000000000000000000000000000000..042ec48d748a4a1e9b8174fa0d3fcc64bf2c562f
