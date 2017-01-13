From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add aspm-no-l0s for rk3399
Date: Fri, 13 Jan 2017 09:43:08 +0800
Message-ID: <29b966a1-96d2-7d21-beb9-429d1cac1e02@rock-chips.com>
References: <1481881357-1793-1-git-send-email-shawn.lin@rock-chips.com>
 <1481881357-1793-2-git-send-email-shawn.lin@rock-chips.com>
 <5912933.DPf2U8pco7@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <5912933.DPf2U8pco7@phil>
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 2017/1/6 17:13, Heiko Stuebner wrote:
> Hi Shawn,
>
> Am Freitag, 16. Dezember 2016, 17:42:37 CET schrieb Shawn Lin:
>> Per the discussion of bug fix[1], we now actually
>> leaves the default clock choice for pcie phy is
>> derived from 24MHz OSC to guarantee the least BER.
>> So let's add aspm-no-l0s here and folks could delete
>> this property from their dts.
>>
>> [1] https://patchwork.kernel.org/patch/9470519/
>> Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>
> looks ok, but the underlying property addition hasn't been included yet, so
> we'll have to wait for a bit longer.
>
> If you notice the pci-host change going in, could you ping this patch please.
>
>

yes, it was merged into Bjorn's pci-host yesterday , so could you
kindly pull this one? :)

> Thanks
> Heiko
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>


-- 
Best Regards
Shawn Lin
