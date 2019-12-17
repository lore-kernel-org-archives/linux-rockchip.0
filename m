From: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
Subject: Re: [PATCH v3] arm64: dts: rockchip: split rk3399-rockpro64 for v2
 and v2.1 boards
Date: Tue, 17 Dec 2019 17:53:13 +0900
Message-ID: <c7a6427d-9a11-a83e-82dd-d799fc0f72ce@katsuster.net>
References: <20191202055929.26540-1-katsuhiro@katsuster.net>
 <6656576.A7zHEAv81k@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <6656576.A7zHEAv81k@phil>
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
Cc: Vasily Khoruzhick <anarsoul-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Hugh Cole-Baker <sigmaris-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hello Heiko,

On 2019/12/16 19:04, Heiko Stuebner wrote:
> Hi Katsuhiro,
> 
> Am Montag, 2. Dezember 2019, 06:59:29 CET schrieb Katsuhiro Suzuki:
>> This patch splits rk3399-rockpro64 dts file to 2 files for v2 and
>> v2.1 boards.
>>
>> Both v2 and v2.1 boards can use almost same settings but we find a
>> difference in I2C address of audio CODEC ES8136.
>>
>> Reported-by: Vasily Khoruzhick <anarsoul-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Signed-off-by: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
>>
>> ---
>>
>> Changes in v3:
>>    - Add compatible strings for v2.0 and v2.1 boards
>>
>> Changes in v2:
>>    - Use rk3399-rockpro64.dts for for v2.1 instead of creating
>>      rk3399-rockpro64-v2.1.dts
>> ---
>>   .../devicetree/bindings/arm/rockchip.yaml     |   2 +
>>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>   .../boot/dts/rockchip/rk3399-rockpro64-v2.dts |  30 +
>>   .../boot/dts/rockchip/rk3399-rockpro64.dts    | 759 +----------------
>>   .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 763 ++++++++++++++++++
>>   5 files changed, 800 insertions(+), 755 deletions(-)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>>
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> index d9847b306b83..8d8658613c57 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -409,6 +409,8 @@ properties:
>>   
>>         - description: Pine64 RockPro64
>>           items:
>> +          - const: pine64,rockpro64-v2.1
>> +          - const: pine64,rockpro64-v2.0
>>             - const: pine64,rockpro64
>>             - const: rockchip,rk3399
>>   
> 
> applied for 5.6 with a changed binding. If you need a
> "one-of-many" element it should use an enum ... see the rk3399-firefly
> and other boards for example. So I've adapted the patch accordingly:
> 

Thank you for pointing and fix.
I will do as that for next time.


> @@ -409,6 +409,9 @@ properties:
>   
>         - description: Pine64 RockPro64
>           items:
> +          - enum:
> +              - pine64,rockpro64-v2.1
> +              - pine64,rockpro64-v2.0
>             - const: pine64,rockpro64
>             - const: rockchip,rk3399
>   
> 
> Heiko
> 
> 
> 

Best Regards,
Katsuhiro Suzuki
