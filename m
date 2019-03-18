From: Gael PORTAY <gael.portay-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [Bug] Rockchip crypto driver sometimes produces wrong ciphertext
Date: Mon, 18 Mar 2019 11:03:04 -0400
Message-ID: <20c7a1d9-bc68-c5e5-d666-6db2d10b1f87@collabora.com>
References: <875-5c8d7980-7-55088a00@27384378>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <875-5c8d7980-7-55088a00@27384378>
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
To: Ezequiel Garcia <ezequiel.garcia-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Eric Biggers <ebiggers-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Zain Wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>, Ard Biesheuvel <ard.biesheuvel-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Zhang Zhijie <zhangzj-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>, linux-arm-kernel <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hello,

On 3/16/19 6:31 PM, Ezequiel Garcia wrote:
> Adding my colleague Gael, who has been working on fixing this driver.
>   

I have a couple of pending commits that may fix that issue.

I will give it a try, and get back to you then.

> On Friday, March 15, 2019 00:31 -03, Eric Biggers <ebiggers-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
>   
>> Hi Zhang,
>>
>> On Mon, Jan 28, 2019 at 11:14:32AM +0800, Tao Huang wrote:
>>> Hi Eric and Heiko:
>>>
>>>>> On Sat, 26 Jan 2019 at 22:05, Eric Biggers <ebiggers-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
>>>>>>
>>>>>> Hello,
>>>>>>
>>>>>> I don't know whether anyone is actually maintaining the Rockchip crypto driver
>>>>>> in drivers/crypto/rockchip/, but it's failing the improved crypto tests
>>>>>> that I currently have out for review: https://patchwork.kernel.org/cover/10778089/
>>>
>>> Zhang Zhijie, engineer from Rockchip, will try to fix this software bug.
>>>
>>>>>>
>>>>>> See the boot logs for RK3288 from the KernelCI job here:
>>>>>>
>>>>>> https://storage.kernelci.org/ardb/for-kernelci/v5.0-rc1-86-geaffe22db9d1/arm/multi_v7_defconfig/lab-collabora/boot-rk3288-rock2-square.txt
>>>>>> https://storage.kernelci.org/ardb/for-kernelci/v5.0-rc1-86-geaffe22db9d1/arm/multi_v7_defconfig/lab-collabora/boot-rk3288-veyron-jaq.txt
>>>>>>
>>>>>> alg: skcipher: ecb-aes-rk encryption test failed (wrong result) on test vector 0, cfg=\"random: use_digest src_divs=[15.64%@+3258, 84.36%@+4059] dst_divs=[69.11%@+1796, 8.49%@+4027, 6.34%@+1, 16.6%@+4058] iv_offset=21\"
>>>>>> alg: skcipher: cbc-aes-rk encryption test failed (wrong result) on test vector 0, cfg=\"random: may_sleep use_digest src_divs=[100.0%@alignmask+3993] dst_divs=[65.31%@alignmask+1435, 34.69%@+14]\"
>>>>>> alg: skcipher: ecb-des-rk encryption test failed (wrong result) on test vector 0, cfg=\"random: may_sleep use_final src_divs=[<flush> 66.52%@+11, 33.48%@+1519] dst_divs=[58.82%@+1, 19.43%@+4082, 21.75%@+8]\"
>>>>>> alg: skcipher: cbc-des-rk encryption test failed (wrong result) on test vector 0, cfg=\"random: may_sleep use_finup src_divs=[100.0%@+3980] dst_divs=[60.4%@+3763, 23.9%@+4011, 16.87%@+4046]\"
>>>>>> alg: skcipher: ecb-des3-ede-rk encryption test failed (wrong result) on test vector 0, cfg=\"random: may_sleep use_digest src_divs=[100.0%@+4] dst_divs=[47.25%@+19, 14.83%@+22, 37.92%@+31]\"
>>>>>> alg: skcipher: cbc-des3-ede-rk encryption test failed (wrong result) on test vector 0, cfg=\"two even aligned splits\"
>>>>>>
>>>>>> In other words: the ecb-aes-rk, cbc-aes-rk, ecb-des-rk, cbc-des-rk,
>>>>>> ecb-des3-ede-rk, and cbc-des3-ede-rk algorithms are failing because they produce
>>>>>> the wrong ciphertext on some scatterlist layouts.
>>>>>>
>>>>>> You can reproduce by pulling from
>>>>>> https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/linux.git
>>>>>> branch "testmgr-improvements", unsetting CONFIG_CRYPTO_MANAGER_DISABLE_TESTS,
>>>>>> setting CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y, rebooting and checking dmesg.
>>>>>>
>>>>>> Note that I don't have this hardware myself, so if it turns out that no one is
>>>>>> interested in fixing this anytime soon I'll instead have to propose disabling
>>>>>> these algorithms until they can be fixed.
>>>>>>
>>>>>> Thanks,
>>>>>>
>>>>>> - Eric
>>>>>
>>
>> Thanks for the fixes, but I've improved the self-tests more, and there is
>> another bug.  See the KernelCI job here:
>>
>> 	https://kernelci.org/boot/all/job/ardb/branch/for-kernelci/kernel/v5.0-11071-g7d597cc3f0ef/
>>
>> The self-tests are failing on the rk3288-rock2-square platform:
>>
>> 	alg: skcipher: cbc-aes-rk encryption test failed (wrong output IV) on test vector 0, cfg=\"in-place\"
>> 	alg: skcipher: cbc-des-rk encryption test failed (wrong output IV) on test vector 0, cfg=\"in-place\"
>> 	alg: skcipher: cbc-des3-ede-rk encryption test failed (wrong output IV) on test vector 0, cfg=\"in-place\"
>>
>> The issue is that the self-tests now verify that CBC implementations update the
>> IV buffer to contain the next IV, aka the last ciphertext block.  But the
>> Rockchip crypto driver doesn't do that, so it needs to be fixed.
>>
>> This has always been a requirement for CBC implementations so that users can
>> chain CBC requests.  Unfortunately it was just never tested for...
>>
>> This should be easily reproducible using the mainline kernel.
>>
>> - Eric
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

Gael
