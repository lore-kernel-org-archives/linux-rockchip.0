From: Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Subject: Re: [U-Boot,1/8] adc: Add driver for Rockchip Saradc
Date: Wed, 13 Sep 2017 22:07:40 +0200
Message-ID: <E1dsDwi-0004RU-Ku@mail.theobroma-systems.com>
References: <1505297379-12638-2-git-send-email-david.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1505297379-12638-2-git-send-email-david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, p.marczak-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, David Wu <david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org, philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org, chenjh-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

> The ADC can support some channels signal-ended some bits Successive Approximation
> Register (SAR) A/D Converter, like 6-channel and 10-bit. It converts the analog
> input signal into some bits binary digital codes.
> 
> Signed-off-by: David Wu <david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---
>  drivers/adc/Kconfig           |   9 ++
>  drivers/adc/Makefile          |   1 +
>  drivers/adc/rockchip-saradc.c | 188 ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 198 insertions(+)
>  create mode 100644 drivers/adc/rockchip-saradc.c
> 

Acked-by: Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
