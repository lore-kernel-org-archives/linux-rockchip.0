From: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [U-Boot] [PATCH v4 5/6] rockchip: kylin: Enable boot with android
 boot image
Date: Thu, 14 Jan 2016 10:31:34 +0800
Message-ID: <56970886.2040009@rock-chips.com>
References: <1452675200-15941-1-git-send-email-jeffy.chen@rock-chips.com>
 <1452675200-15941-6-git-send-email-jeffy.chen@rock-chips.com>
 <20160113152811.GC3359@bill-the-cat>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20160113152811.GC3359@bill-the-cat>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>
Cc: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Tom,

On 2016-1-13 23:28, Tom Rini wrote:
> On Wed, Jan 13, 2016 at 04:53:19PM +0800, Jeffy Chen wrote:
>
>> The android kernel is using appended dtb by default, and store
>> ramdisk right after kernel & dtb.
>> So we needs to relocate ramdisk, and use atags to pass params.
>>
>> Signed-off-by: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>> Acked-by: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>> ---
>>
>> Changes in v4: None
>> Changes in v3: None
>> Changes in v2: None
>>
>>   include/configs/kylin_rk3036.h | 23 +++++++++++++++++++++++
>>   1 file changed, 23 insertions(+)
>>
>> diff --git a/include/configs/kylin_rk3036.h b/include/configs/kylin_rk3036.h
>> index b750b26..49997ec 100644
>> --- a/include/configs/kylin_rk3036.h
>> +++ b/include/configs/kylin_rk3036.h
>> @@ -35,6 +35,29 @@
>>   #undef CONFIG_EXTRA_ENV_SETTINGS
>>   #define CONFIG_EXTRA_ENV_SETTINGS \
>>   	"partitions=" PARTS_DEFAULT \
>> +	"mmcdev=0\0" \
>> +	"mmcpart=5\0" \
>> +	"loadaddr=" __stringify(CONFIG_SYS_LOAD_ADDR) "\0" \
>> +
>> +#define CONFIG_ANDROID_BOOT_IMAGE
>> +#define CONFIG_SYS_BOOT_RAMDISK_HIGH
> This should already be set.
Right, i'll remove it...
>> +#define CONFIG_SYS_HUSH_PARSER
>> +
>> +#undef CONFIG_BOOTCOMMAND
>> +#define CONFIG_BOOTCOMMAND \
>> +	"mmc dev ${mmcdev}; if mmc rescan; then " \
>> +		"part start mmc ${mmcdev} ${mmcpart} boot_start;" \
>> +		"part size mmc ${mmcdev} ${mmcpart} boot_size;" \
>> +		"mmc read ${loadaddr} ${boot_start} ${boot_size};" \
>> +		"bootm start ${loadaddr}; bootm ramdisk;" \
>> +		"bootm prep; bootm go;" \
>> +	"fi;" \
>> +
>> +/* Enable atags */
>> +#define CONFIG_SYS_BOOTPARAMS_LEN	(64*1024)
>> +#define CONFIG_INITRD_TAG
>> +#define CONFIG_SETUP_MEMORY_TAGS
>> +#define CONFIG_CMDLINE_TAG
> But I'm confused as to what exactly is going on here.  Appended dtb is
> not the same as ATAGS.  And you shouldn't need to split up bootm like
> that.  Can you please explain a bit more?  Thanks!
The u-boot will pass atags to kernel, and kernel will merge those atags 
into the appended dtb(fdt).

The default bootm flow would not pass ramdisk state, but we need it, so 
we should add this state into default flow, or just use split bootm cmds :)
