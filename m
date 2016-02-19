From: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [U-Boot] [PATCH v4 5/6] rockchip: kylin: Enable boot with android
 boot image
Date: Fri, 19 Feb 2016 13:55:57 -0700
Message-ID: <CAPnjgZ3tDnQ7+C-A69qO76gEnEFoWtSfam9GQkX2MEE7U0UjVQ@mail.gmail.com>
References: <1452675200-15941-1-git-send-email-jeffy.chen@rock-chips.com>
 <1452675200-15941-6-git-send-email-jeffy.chen@rock-chips.com>
 <20160113152811.GC3359@bill-the-cat> <56970886.2040009@rock-chips.com>
 <20160114162227.GY3359@bill-the-cat> <569842F2.4080808@rock-chips.com>
 <20160115005950.GC3359@bill-the-cat> <5698577B.8040209@rock-chips.com>
 <20160125190709.GN3359@bill-the-cat> <56B056FD.70006@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <56B056FD.70006-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Masahiro Yamada <yamada.masahiro-uWyLwvC0a2jby3iVrkZq2A@public.gmane.org>, Tom Rini <trini-OWPKS81ov/FWk0Htik3J/w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, U-Boot Mailing List <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

+Masahiro

On 2 February 2016 at 00:13, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
> Hi Tom,
>
> Sorry for being late..
>
>
> On 2016-1-26 3:07, Tom Rini wrote:
>>
>> On Fri, Jan 15, 2016 at 10:20:43AM +0800, Jeffy Chen wrote:
>>>
>>> Hi Tom,
>>>
>>> On 2016-1-15 8:59, Tom Rini wrote:
>>>>
>>>> On Fri, Jan 15, 2016 at 08:53:06AM +0800, Jeffy Chen wrote:
>>>>>
>>>>> Hi Tom,
>>>>>
>>>>> On 2016-1-15 0:22, Tom Rini wrote:
>>>>>>
>>>>>> On Thu, Jan 14, 2016 at 10:31:34AM +0800, Jeffy Chen wrote:
>>>>>>>
>>>>>>> Hi Tom,
>>>>>>>
>>>>>>> On 2016-1-13 23:28, Tom Rini wrote:
>>>>>>>>
>>>>>>>> On Wed, Jan 13, 2016 at 04:53:19PM +0800, Jeffy Chen wrote:
>>>>>>>>
>>>>>>>>> The android kernel is using appended dtb by default, and store
>>>>>>>>> ramdisk right after kernel & dtb.
>>>>>>>>> So we needs to relocate ramdisk, and use atags to pass params.
>>>>>>>>>
>>>>>>>>> Signed-off-by: Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>>>>>>>>> Acked-by: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
>>>>>>>>> ---
>>>>>>>>>
>>>>>>>>> Changes in v4: None
>>>>>>>>> Changes in v3: None
>>>>>>>>> Changes in v2: None
>>>>>>>>>
>>>>>>>>>   include/configs/kylin_rk3036.h | 23 +++++++++++++++++++++++
>>>>>>>>>   1 file changed, 23 insertions(+)
>>>>>>>>>
>>>>>>>>> diff --git a/include/configs/kylin_rk3036.h
>>>>>>>>> b/include/configs/kylin_rk3036.h
>>>>>>>>> index b750b26..49997ec 100644
>>>>>>>>> --- a/include/configs/kylin_rk3036.h
>>>>>>>>> +++ b/include/configs/kylin_rk3036.h
>>>>>>>>> @@ -35,6 +35,29 @@
>>>>>>>>>   #undef CONFIG_EXTRA_ENV_SETTINGS
>>>>>>>>>   #define CONFIG_EXTRA_ENV_SETTINGS \
>>>>>>>>>         "partitions=" PARTS_DEFAULT \
>>>>>>>>> +       "mmcdev=0\0" \
>>>>>>>>> +       "mmcpart=5\0" \
>>>>>>>>> +       "loadaddr=" __stringify(CONFIG_SYS_LOAD_ADDR) "\0" \
>>>>>>>>> +
>>>>>>>>> +#define CONFIG_ANDROID_BOOT_IMAGE
>>>>>>>>> +#define CONFIG_SYS_BOOT_RAMDISK_HIGH
>>>>>>>>
>>>>>>>> This should already be set.
>>>>>>>
>>>>>>> Right, i'll remove it...
>>>>>>>>>
>>>>>>>>> +#define CONFIG_SYS_HUSH_PARSER
>>>>>>>>> +
>>>>>>>>> +#undef CONFIG_BOOTCOMMAND
>>>>>>>>> +#define CONFIG_BOOTCOMMAND \
>>>>>>>>> +       "mmc dev ${mmcdev}; if mmc rescan; then " \
>>>>>>>>> +               "part start mmc ${mmcdev} ${mmcpart} boot_start;" \
>>>>>>>>> +               "part size mmc ${mmcdev} ${mmcpart} boot_size;" \
>>>>>>>>> +               "mmc read ${loadaddr} ${boot_start} ${boot_size};"
>>>>>>>>> \
>>>>>>>>> +               "bootm start ${loadaddr}; bootm ramdisk;" \
>>>>>>>>> +               "bootm prep; bootm go;" \
>>>>>>>>> +       "fi;" \
>>>>>>>>> +
>>>>>>>>> +/* Enable atags */
>>>>>>>>> +#define CONFIG_SYS_BOOTPARAMS_LEN      (64*1024)
>>>>>>>>> +#define CONFIG_INITRD_TAG
>>>>>>>>> +#define CONFIG_SETUP_MEMORY_TAGS
>>>>>>>>> +#define CONFIG_CMDLINE_TAG
>>>>>>>>
>>>>>>>> But I'm confused as to what exactly is going on here.  Appended dtb
>>>>>>>> is
>>>>>>>> not the same as ATAGS.  And you shouldn't need to split up bootm
>>>>>>>> like
>>>>>>>> that.  Can you please explain a bit more?  Thanks!
>>>>>>>
>>>>>>> The u-boot will pass atags to kernel, and kernel will merge those
>>>>>>> atags into the appended dtb(fdt).
>>>>>>>
>>>>>>> The default bootm flow would not pass ramdisk state, but we need it,
>>>>>>> so we should add this state into default flow, or just use split
>>>>>>> bootm cmds :)
>>>>>>
>>>>>> That seems very strange.  Is the ramdisk concatenated with the kernel
>>>>>> and dtb as well (and that's why bootm ramdisk somehow finds it but
>>>>>> normal bootm doesn't as you aren't passing in a ramdisk address) ?
>>>>>
>>>>> Yes, the ramdisk concatenated with the kernel and dtb as
>>>>> well(u-boot/include/android_image.h: struct andr_img_hdr).
>>>>>
>>>>> And the normal bootm cmd would find it by parsing andr_img_hdr struct.
>>>>> But we still need bootm ramdisk state, because it will call
>>>>> boot_ramdisk_high to relocate ramdisk area :)
>>>>>
>>>>> I found if not relocate it to somewhere else, it would be corrupted
>>>>> after kernel's decompressing(during update fdt area).
>>>>
>>>> So 'bootm $loadaddr' of an Android image sees, but does not relocate the
>>>> ramdisk that is included in the image, but bootm ramdisk does?  That
>>>> sounds like a bug in the regular bootm handling.
>>>
>>> Yep, the default bootm flow would not contain ramdisk relocate state:
>>>
>>> vi common/cmd_bootm.c
>>>          return do_bootm_states(cmdtp, flag, argc, argv,
>>> BOOTM_STATE_START |
>>>                  BOOTM_STATE_FINDOS | BOOTM_STATE_FINDOTHER |
>>>                  BOOTM_STATE_LOADOS |
>>> #if defined(CONFIG_PPC) || defined(CONFIG_MIPS)
>>>                  BOOTM_STATE_OS_CMDLINE |
>>> #endif
>>>                  BOOTM_STATE_OS_PREP | BOOTM_STATE_OS_FAKE_GO |
>>>                  BOOTM_STATE_OS_GO, &images, 1);
>>>
>>> But i'm not sure if it's ok to add it here...
>>
>> So, I've poked aruond a bit more on some of my TI platforms at least.
>> Can you look at the following things on yours?
>> 1) Do you still see the problem on top of tree? Masahiro fixed at least
>> one problem just before v2016.01
>
> Yes, after rebase to tag "v2016.01-rc4", i could still repro it with the
> normal bootm cmd.
>
> It seems we would call boot_ramdisk_high if fdt enabled in the prep stage:
>
>  vi common/image.c
>
> #ifdef CONFIG_LMB
> int image_setup_linux(bootm_headers_t *images)
> {
> ...
>         if (IMAGE_ENABLE_RAMDISK_HIGH) {
>                 rd_len = images->rd_end - images->rd_start;
>                 ret = boot_ramdisk_high(lmb, images->rd_start, rd_len,
>                                 initrd_start, initrd_end);
>                 if (ret)
>                         return ret;
>         }
>
>  vi arch/arm/lib/bootm.c
>
> /* Subcommand: PREP */
> static void boot_prep_linux(bootm_headers_t *images)
>
>         if (IMAGE_ENABLE_OF_LIBFDT && images->ft_len) {
> #ifdef CONFIG_OF_LIBFDT
>                 debug("using: FDT\n");
>                 if (image_setup_linux(images)) {
>                         printf("FDT creation failed! hanging...");
>                         hang();
>                 }
> #endif
>
>
> And as Daniel said, these would "leads to a different behaviour when calling
> bootm as a single command and calling bootm with sub-steps."
>
> If IMAGE_ENABLE_OF_LIBFDT is enabled & images->ft_len is not zero,
> boot_ramdisk_high would be called twice with splited bootm cmds. And in our
> kylin case (IMAGE_ENABLE_OF_LIBFDT is disabled), the boot_ramdisk_high would
> not be called with normal bootm cmd :(
>
>> 2) Instead of fdt_high / initrd_high can you look at bootm_low /
>> bootm_size ?  include/configs/ti_armv7_common.h has these along with a
>> big comment about what the overall constraints are.
>
> On current kylin board, we're not using fdt_high or initrd_high.
> The bootm_low / bootm_size would be CONFIG_SYS_SDRAM_BASE /
> gd->bd->bi_dram[0].size by default(if not define those env), and arm arch
> will reserve 4K at the end for stack, so the ramdisk would be relocated to
> around (dram_end - 4K) :)
>>
>> Thanks!
>>
>
>
> _______________________________________________
> U-Boot mailing list
> U-Boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
> http://lists.denx.de/mailman/listinfo/u-boot
