From: =?UTF-8?Q?Pawe=c5=82_Jarosz?= <paweljarosz3691-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Reserve unusable memory region on
 rk3066
Date: Tue, 4 Oct 2016 13:56:07 +0200
Message-ID: <81d1fb8b-ee0e-35a7-77db-5e15c3f46449@gmail.com>
References: <20161001140939.GA31220@vaio-ubuntu> <6962779.A926KxJite@phil>
 <20161003102054.GB7632@leverpostej> <2391111.dvDuarNnp9@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2391111.dvDuarNnp9@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


>>>> I don't think this is a sane workaround, but it is at best difficult to
>>>> tell, given there's no reason given for why this memory is unusable.
>>>>
>>>> For instance, if bus accesses to this address hang, then this patch only
>>>> makes the hand less likely, since the kernel will still map the region
>>>> (and
>>>> therefore the CPU can perform speculative accesses).
>>>>
>>>> Are issues with this memory consistently seen in practice?
>>>>
>>>> Can you enable CONFIG_MEMTEST and pass 'memtest' to the kernel, to
>>>> determine if the memory is returning erroneous values?
>>> just for the sake of completeness, on the rk3288 the issue was the dma not
>>> being able to access the specific memory region (interestingly also the
>>> last 16MB but of the 4GB area supported on the rk3288). So memory itself
>>> was ok, just dma access to it failed.
>> How odd.
>>
>>> We didn't find any other sane solution to limit the dma access in a
>>> general way at the time, so opted for just blocking the memory region (as
>>> it was similarly only
>> I was under the impression that dma-ranges could describe this kind of
>> DMA addressing limitation. Was there some problem with that? Perhaps the
>> driver is not acquiring/configuring its mask correctly?
> I remember looking at (and trying) different options back then.
>
> dma-mask wanted power-of-2 values (so it's either 4GB or 2GB (or lower)),
> zone-dma was a 32bit (and non-dt) thing and dma-ranges seem to simply also
> calculate a dma-mask from the value, so you're down to 2GB again.
>
> So just blocking of those 16MB at the end for 4GB devices somehow sounded
> nicer than limiting dma access to only half the memory.
>
> I may be overlooking something but that was what I came up with last year.
>
>
> Heiko
Is there a chance to accept this patch?

I know it's not the best solution to this problem, but i don't know
a better one.
