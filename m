From: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [U-Boot] [PATCH v4 1/6] common/image-fdt.c: Make boot_get_fdt()
 perform a check for Android images
Date: Thu, 14 Jan 2016 09:47:12 +0800
Message-ID: <5696FE20.6080003@rock-chips.com>
References: <1452675200-15941-1-git-send-email-jeffy.chen@rock-chips.com>
 <1452675200-15941-2-git-send-email-jeffy.chen@rock-chips.com>
 <20160113152157.GY3359@bill-the-cat>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20160113152157.GY3359@bill-the-cat>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>, Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Paul Kocialkowski <contact-W9ppeneeCTY@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Max Krummenacher <max.krummenacher-2KBjVHiyJgBBDgjK7y7TUQ@public.gmane.org>, Joe Hershberger <joe.hershberger-acOepvfBmUk@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Tom,

On 2016-1-13 23:21, Tom Rini wrote:
> On Wed, Jan 13, 2016 at 04:53:15PM +0800, Jeffy Chen wrote:
>
>> Android images don't have a fdt.
>>
>> Signed-off-by: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>> Acked-by: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>> ---
>>
>> Changes in v4: None
>> Changes in v3: None
>> Changes in v2: None
>>
>>   common/image-fdt.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/common/image-fdt.c b/common/image-fdt.c
>> index 5e4e5bd..41aaa0d 100644
>> --- a/common/image-fdt.c
>> +++ b/common/image-fdt.c
>> @@ -379,6 +379,10 @@ int boot_get_fdt(int flag, int argc, char * const argv[], uint8_t arch,
>>   				       (long)fdt_addr);
>>   			}
>>   			break;
>> +#ifdef CONFIG_ANDROID_BOOT_IMAGE
>> +		case IMAGE_FORMAT_ANDROID:
>> +			goto no_fdt;
>> +#endif
>>   		default:
>>   			puts("ERROR: Did not find a cmdline Flattened Device Tree\n");
>>   			goto no_fdt;
> Hang on, this doesn't seem right.  Rob or Paul can you comment more
> here?  I know we've gone through some issues in the past with respect to
> booting Android and FDT.  Thanks!
Oh! How careless i was...Seems we don't need this patch, the default 
case is enough :)
