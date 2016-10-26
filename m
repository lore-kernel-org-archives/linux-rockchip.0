From: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH] phy: Add reset callback for not generic phy
Date: Thu, 27 Oct 2016 01:44:46 +0530
Message-ID: <8899b220-5f6b-5c26-d966-68d1d79e5fc7@ti.com>
References: <1477404934-7425-1-git-send-email-ayaka@soulik.info>
 <8c8d86e6-a3b1-a381-dd3f-70e43768cfb9@synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <8c8d86e6-a3b1-a381-dd3f-70e43768cfb9-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Randy Li <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: "mark.rutland-5wv7dgnIgG8@public.gmane.org" <mark.rutland-5wv7dgnIgG8@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "randy.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <randy.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "felipe.balbi-VuQAYsv1563Yd54FQh9/CA@public.gmane.org" <felipe.balbi-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org



On Wednesday 26 October 2016 02:17 AM, John Youn wrote:
> On 10/25/2016 7:15 AM, Randy Li wrote:
>> I forget to add a dummy function in case the CONFIG_GENERIC_PHY
>> is disabled.
>>
>> Signed-off-by: Randy Li <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>
> 
> Fixes: cac18ecb6f44 ("phy: Add reset callback")
> Tested-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
> 
> Hi Kishon,
> 
> Can you take this for 4.9-rc?

sure, merged now.

Thanks
Kishon

> 
> Thanks,
> John
> 
> 
> 
>> ---
>>  include/linux/phy/phy.h | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
>> index ee1bed7..78bb0d7 100644
>> --- a/include/linux/phy/phy.h
>> +++ b/include/linux/phy/phy.h
>> @@ -253,6 +253,13 @@ static inline int phy_set_mode(struct phy *phy, enum phy_mode mode)
>>  	return -ENOSYS;
>>  }
>>  
>> +static inline int phy_reset(struct phy *phy)
>> +{
>> +	if (!phy)
>> +		return 0;
>> +	return -ENOSYS;
>> +}
>> +
>>  static inline int phy_get_bus_width(struct phy *phy)
>>  {
>>  	return -ENOSYS;
>>
>>
> 
> 
> 
