From: Joe Perches <joe@perches.com>
Subject: Re: [PATCH v2 2/6] staging: video: rockchip: add v4l2 decoder
Date: Thu, 07 Mar 2019 18:33:37 -0800
Message-ID: <58d834c0b0aeeb7e551e101a696ab8faf9d41b61.camel@perches.com>
References: <20190307100316.925-1-randy.li@rock-chips.com>
         <20190307100316.925-3-randy.li@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190307100316.925-3-randy.li@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Randy Li <randy.li@rock-chips.com>, linux-media@vger.kernel.org
Cc: Randy Li <ayaka@soulik.info>, hverkuil@xs4all.nl, maxime.ripard@bootlin.com, joro@8bytes.org, linux-kernel@vger.kernel.org, jernej.skrabec@gmail.com, nicolas@ndufresne.ca, paul.kocialkowski@bootlin.com, linux-rockchip@lists.infradead.org, thomas.petazzoni@bootlin.com, mchehab@kernel.org, ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org, posciak@chromium.org, groeck@chromium.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, 2019-03-07 at 18:03 +0800, Randy Li wrote:
> It is based on the vendor driver sent to mail list before.

trivial notes:

> diff --git a/drivers/staging/rockchip-mpp/mpp_debug.h b/drivers/staging/rockchip-mpp/mpp_debug.h
[]
> +#define mpp_debug_func(type, fmt, args...)			\
> +	do {							\
> +		if (unlikely(debug & type)) {			\
> +			pr_info("%s:%d: " fmt,			\
> +				 __func__, __LINE__, ##args);	\
> +		}						\
> +	} while (0)
> +#define mpp_debug(type, fmt, args...)				\
> +	do {							\
> +		if (unlikely(debug & type)) {			\
> +			pr_info(fmt, ##args);			\
> +		}						\
> +	} while (0)
> +

It's generally better to emit debug messages at KERN_DEBUG

> +#define mpp_debug_enter()					\
> +	do {							\
> +		if (unlikely(debug & DEBUG_FUNCTION)) {		\
> +			pr_info("%s:%d: enter\n",		\
> +				 __func__, __LINE__);		\
> +		}						\
> +	} while (0)
> +
> +#define mpp_debug_leave()					\
> +	do {							\
> +		if (unlikely(debug & DEBUG_FUNCTION)) {		\
> +			pr_info("%s:%d: leave\n",		\
> +				 __func__, __LINE__);		\
> +		}						\
> +	} while (0)

I suggest removal of these macros and uses.

There's not much value in enter/leave markings as
the generic ftrace facility does this already.

> +
> +#define mpp_err(fmt, args...)					\
> +		pr_err("%s:%d: " fmt, __func__, __LINE__, ##args)

__func__, __LINE__ markings generally have little value.
