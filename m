From: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH 1/4] dt-bindings: phy: phy-rockchip-dphy-rx0: move
 rockchip dphy rx0 bindings out of staging
Date: Fri, 3 Apr 2020 10:00:43 -0300
Message-ID: <be7f32a3-bd22-5a8e-6c2f-835bcb693d46@collabora.com>
References: <20200402000234.226466-1-helen.koike@collabora.com>
 <20200402000234.226466-2-helen.koike@collabora.com>
 <a86bfa69fef8eee428d7c89b1d4fe99728af2ab7.camel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <a86bfa69fef8eee428d7c89b1d4fe99728af2ab7.camel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devel-gWbeCf7V1WCQmaza687I9mD2FQJk+8+b@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, hverkuil-cisco-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, karthik.poduval-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On 4/2/20 1:17 PM, Ezequiel Garcia wrote:
> (+Kishon)
> 
> Hi Helen,
> 
> I was wondering if we couldn't also move the phy driver out of staging.

I think we can, let's move it.

Regards,
Helen

> 
> Thanks,
> Ezequiel
>  
> On Wed, 2020-04-01 at 21:02 -0300, Helen Koike wrote:
>> Move phy-rockchip-dphy-rx0 bindings to Documentation/devicetree/bindings/phy
>>
>> Signed-off-by: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
>> ---
>>  .../devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml           | 0
>>  1 file changed, 0 insertions(+), 0 deletions(-)
>>  rename {drivers/staging/media/phy-rockchip-dphy-rx0/Documentation => Documentation}/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml (100%)
>>
>> diff --git a/drivers/staging/media/phy-rockchip-dphy-rx0/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
>> b/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
>> similarity index 100%
>> rename from drivers/staging/media/phy-rockchip-dphy-rx0/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
>> rename to Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
> 
> 
> 
