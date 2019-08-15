From: Felipe Balbi <balbi@kernel.org>
Subject: Re: kexec on rk3399
Date: Thu, 15 Aug 2019 09:00:16 +0300
Message-ID: <87sgq3t1cf.fsf@gmail.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com> <c6993a1e-6fc2-44ab-b59e-152142e2ff4d@gmail.com> <87v9uzaocj.fsf@gmail.com> <4fc3e5b5-31fe-41f6-8031-b37454f21437@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <4fc3e5b5-31fe-41f6-8031-b37454f21437@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Vicente Bergas <vicencb@gmail.com>
Cc: Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>, Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Matthias Brugger <mbrugger@suse.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org


Hi,

Vicente Bergas <vicencb@gmail.com> writes:
>> Vicente Bergas <vicencb@gmail.com> writes:
>>> On Monday, July 22, 2019 4:31:27 PM CEST, Vicente Bergas wrote:
>>>> Hi, i have been running linux on rk3399 booted with kexec fine until 5.2
>>>> From 5.2 onwards, there are memory corruption issues as reported here:
>>>> http://lkml.iu.edu/hypermail/linux/kernel/1906.2/07211.html
>>>> kexec has been identified as the principal reason for the issues.
>>>> 
>>>> It turns out that kexec has never worked reliably on this platform, ...
>>> 
>>> Thank you all for your suggestions on where the issue could be.
>>> 
>>> It seems that it was the USB driver.
>>> Now using v5.2.8 booted with kexec from v5.2.8 with a workaround and
>>> so far so good. It is being tested on the Sapphire board.
>>> 
>>> The workaround is:
>>> --- a/drivers/usb/dwc3/dwc3-of-simple.c
>>> +++ b/drivers/usb/dwc3/dwc3-of-simple.c
>>> @@ -133,6 +133,13 @@
>>>  	return 0;
>>>  }
>>>  
>>> +static void dwc3_of_simple_shutdown(struct platform_device *pdev)
>>> +{
>>> +	struct dwc3_of_simple *simple = platform_get_drvdata(pdev);
>>> +
>>> +	reset_control_assert(simple->resets);
>>> +}
>>> +
>>>  static int __maybe_unused dwc3_of_simple_runtime_suspend(struct device 
>>> *dev)
>>>  {
>>>  	struct dwc3_of_simple	*simple = dev_get_drvdata(dev);
>>> @@ -190,6 +197,7 @@
>>>  static struct platform_driver dwc3_of_simple_driver = {
>>>  	.probe		= dwc3_of_simple_probe,
>>>  	.remove		= dwc3_of_simple_remove,
>>> +	.shutdown	= dwc3_of_simple_shutdown,
>>>  	.driver		= {
>>>  		.name	= "dwc3-of-simple",
>>>  		.of_match_table = of_dwc3_simple_match,
>>> 
>>> If this patch is OK after review i can resubmit it as a pull request.
>>
>> not a pull request, just send a patch using git send-email
>>
>>> Should a similar change be applied to drivers/usb/dwc3/core.c ?
>>
>> Is it necessary? We haven't had any bug reports regarding that. Also, if
>> we have reset control support in the core driver, why do we need it in
>> of_simple? Seems like of_simple could just rely on what core does.
>
> the workaround has been tested patching only core.c with
> --- a/drivers/usb/dwc3/core.c
> +++ b/drivers/usb/dwc3/core.c
> @@ -1561,6 +1561,13 @@
>  	return 0;
>  }
>  
> +static void dwc3_shutdown(struct platform_device *pdev)
> +{
> +	struct dwc3 *dwc = platform_get_drvdata(pdev);
> +
> +	reset_control_assert(dwc->reset);
> +}
> +
>  #ifdef CONFIG_PM
>  static int dwc3_core_init_for_resume(struct dwc3 *dwc)
>  {
> @@ -1866,6 +1873,7 @@
>  static struct platform_driver dwc3_driver = {
>  	.probe		= dwc3_probe,
>  	.remove		= dwc3_remove,
> +	.shutdown	= dwc3_shutdown,
>  	.driver		= {
>  		.name	= "dwc3",
>  		.of_match_table	= of_match_ptr(of_dwc3_match),
>
> and leaving dwc3-of-simple.c as is, the issue persisted.

That's because your reset controller is not passed to dwc3 core, only to
your glue layer.

-- 
balbi
