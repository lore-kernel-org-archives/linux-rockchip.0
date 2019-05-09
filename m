From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v7 3/4] rockchip: dts: rk3399-u-boot: Add u-boot,
 dm-pre-reloc for spi1
Date: Thu, 9 May 2019 11:01:42 +0800
Message-ID: <a244a80a-9c93-f477-80c2-00fbdfcc6586@rock-chips.com>
References: <20190507182152.4254-1-jagan@amarulasolutions.com>
 <20190507182152.4254-4-jagan@amarulasolutions.com>
 <c7964e95-1ff3-91b7-c34d-29ca9c617215@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <c7964e95-1ff3-91b7-c34d-29ca9c617215-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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
To: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
Cc: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On 05/08/2019 11:39 AM, Kever Yang wrote:
>
> On 05/08/2019 02:21 AM, Jagan Teki wrote:
>> Add u-boot,dm-pre-reloc property for spi1, so-that the
>> subsequent rk3399 boards which boot from SPI.
>>
>> This help to separate the u-boot specific properties away
>> from base dts files so-that the Linux sync become easy and
>> meaningful.
>>
>> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
>
> Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Applied to u-boot-rockchip, thanks!

>
> Thanks,
> - Kever
>> ---
>>  arch/arm/dts/rk3399-u-boot.dtsi | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm/dts/rk3399-u-boot.dtsi b/arch/arm/dts/rk3399-u-boot.dtsi
>> index f533ed95eb..0786c1193a 100644
>> --- a/arch/arm/dts/rk3399-u-boot.dtsi
>> +++ b/arch/arm/dts/rk3399-u-boot.dtsi
>> @@ -6,3 +6,7 @@
>>  &sdmmc {
>>  	u-boot,dm-pre-reloc;
>>  };
>> +
>> +&spi1 {
>> +	u-boot,dm-pre-reloc;
>> +};
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>
