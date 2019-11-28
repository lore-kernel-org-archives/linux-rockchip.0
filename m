From: Soeren Moch <smoch-S0/GAf8tV78@public.gmane.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: split rk3399-rockpro64, for v2
 and v2.1 boards
Date: Thu, 28 Nov 2019 23:59:37 +0100
Message-ID: <f6dc3daf-7cfb-0ac2-99ee-1c691eaf2ef0@web.de>
References: <3fa2e3df-221b-99a8-796a-2e21f75cf706@web.de>
 <9133677.cKcSbgiQdr@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <9133677.cKcSbgiQdr@phil>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Vasily Khoruzhick <anarsoul-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Hugh Cole-Baker <sigmaris-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, arm-linux <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 28.11.19 22:53, Heiko Stuebner wrote:
> Am Donnerstag, 28. November 2019, 20:55:54 CET schrieb Soeren Moch:
>>> On Thu, Nov 28, 2019 at 6:02 AM Katsuhiro Suzuki
>>> <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org> wrote:
>>>> This patch splits rk3399-rockpro64 dts file to 2 files for v2 and
>>>> v2.1 boards.
>>>>
>>>> Both v2 and v2.1 boards can use almost same settings but we find a
>>>> difference in I2C address of audio CODEC ES8136.
>>>>
>>>> Reported-by: Vasily Khoruzhick <anarsoul-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>>>> Signed-off-by: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
>>>>
>>>> ---
> [...]
>
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>>>> new file mode 100644
>>>> index 000000000000..183eda4ffb9c
>>>> --- /dev/null
>> If we add this as new file, should we sort handles and properties
>> alphabetically, where it is not done yet?
> I'm torn here ... on one side, doing missing sorting might be nice
> on the other hand, there is the moving without functional changes
> paradigm, which is generally nice to adhere to.
Agreed. Since we don't move a file, but most of it's content, it was not
clear to me what's more important.
>
> But I guess sorting would generally be ok.
>
>> I'm not sure about all the exceptions that usually apply for rockchip
>> devicetrees, status property at the end, also the pinctrl node?
> In general I don't "enforce" the sorting, so don't reject patches but instead
> just do sorting myself if necessary ;-).
>
> The general rule-of-thumb for nodes we came up with during the rk3288-veyron
> era is something like:
>
> compatible
> reg
> interrupts
> [alphabetical properties]
> status
>
> as this makes it somewhat easier to parse the core properties (compatible,
> reg, ints, status] when scrolling through a devicetree :-) .
Thanks for your explanation, perfectly makes sense.
>
> Pinctrl position is at the discretion of the dt author :-D .
> Position at the end has just the advantage that a long pin-group list does
> not get in the way so much.
>
>> What about unused references, e.g. "fan"?
> Don't change too much when moving stuff around :-)
Yes, good compromise to do some sorting, but no other changes.

Thanks,
Soeren
