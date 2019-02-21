From: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
Subject: Re: rk3399: Graphical artifacts when running for-next
Date: Thu, 21 Feb 2019 20:29:25 +0000
Message-ID: <AM3PR03MB096698953B17A52CA58EF251AC7E0@AM3PR03MB0966.eurprd03.prod.outlook.com>
References: <69ddf17a-232d-fc1f-f6a7-59dbde220395@collabora.com>
 <2996476.nJxoliyDTa@phil>
 <48fe80bd-92bf-41fa-f508-941765e4354b@collabora.com>
 <1654246.IP1FNPqO5J@phil>
 <ec6768e8-c6ce-b4e6-10b6-2880dbbdff4d@collabora.com>
 <8d5e0ce1-b1c5-1f4b-fd81-f18f376fc756@collabora.com>
 <eaec0319d2a79a49a39fc29bfe2473f2cec15b52.camel@collabora.com>
 <905cfe71-c98d-f73d-8870-623129b5e470@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <905cfe71-c98d-f73d-8870-623129b5e470-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Content-Language: en-US
Content-ID: <B349B83F27E09E4C87800B9919702FC0-yI6K9L9iJZCcE4WynfumptQqCkab/8FMAL8bYrjMMd8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Robert Foss <robert.foss-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Tom Cubie <tom-ZvE2cuBqvIQAvxtiuMwx3w@public.gmane.org>, Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 2019-02-21 20:42, Robert Foss wrote:
>
> On 2/21/19 8:15 PM, Ezequiel Garcia wrote:
>> Folks,
>>
>> On Thu, 2019-02-21 at 20:08 +0100, Robert Foss wrote:
>> [..]
>>
>> The clock debugging is obviously good research.
>>
>>>>
>>>> Additionally I've had a look at the libdrm modetest util, and it is reporting
>>>> far fewer modes than what I would expect on my 4k monitor.
>>>>
>> That said, this is also worth looking into.
>> I'm curious, is the EDID the kernel getting OK?
>>
> Given that modetest lists way too few modes, I would think
> there could be some EDID related issues.

It is more likely the issue is in dw_hdmi_rockchip_mode_valid(), it currently filters out
any mode not defined in rockchip_mpll_cfg.
That method needs some changes to allow for 4k modes and fractal refresh rates.
E.g. for RK3328 it should probably check the inno-hdmi-phy clock rates.

Best regards,
Jonas

>
>> Thanks!
>> Eze
>>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
