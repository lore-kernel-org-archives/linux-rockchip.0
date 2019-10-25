From: Felipe Balbi <balbi@kernel.org>
Subject: Re: [PATCH] usb: dwc3: Add shutdown to platform_driver
Date: Fri, 25 Oct 2019 13:25:17 +0300
Message-ID: <87pnil2kc2.fsf@gmail.com>
References: <4d18d4f7-a00e-bd60-6361-51054eba3bca@arm.com>
 <20190817174140.6394-1-vicencb@gmail.com>
 <8d48017a-64c5-4b25-8d85-113ffcf502c9@gmail.com> <87v9uix1sv.fsf@gmail.com>
 <645526b8-bfed-4cc6-9500-1843c5fe0da9@gmail.com>
 <0edb55d4-3bad-47ac-9d29-8d994d182e67@gmail.com> <877e4wj7ly.fsf@gmail.com>
 <fcddc3d9-f36a-4b7b-be3f-ee720fbacb05@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <fcddc3d9-f36a-4b7b-be3f-ee720fbacb05@gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Vicente Bergas <vicencb@gmail.com>
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>, MarcZyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>, linux-rockchip@lists.infradead.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


hi,

Vicente Bergas <vicencb@gmail.com> writes:

> On Wednesday, October 23, 2019 8:31:21 AM CEST, Felipe Balbi wrote:
>> Hi,
>>
>> (sorry for the long delay)
>>
>> Vicente Bergas <vicencb@gmail.com> writes:
>>
>>> On Tuesday, August 27, 2019 2:16:20 PM CEST, Vicente Bergas wrote: ...
>>
>> I meant something like this:
>>
>> diff --git a/drivers/usb/dwc3/dwc3-of-simple.c 
>> b/drivers/usb/dwc3/dwc3-of-simple.c
>> index bdac3e7d7b18..e64754be47b4 100644
>> --- a/drivers/usb/dwc3/dwc3-of-simple.c
>> +++ b/drivers/usb/dwc3/dwc3-of-simple.c
>> @@ -110,12 +110,9 @@ static int dwc3_of_simple_probe(struct 
>> platform_device *pdev)
>>  	return ret;
>>  }
>>  
>> -static int dwc3_of_simple_remove(struct platform_device *pdev)
>> +static void __dwc3_of_simple_teardown(struct dwc3_of_simple *simple)
>>  {
>> -	struct dwc3_of_simple	*simple = platform_get_drvdata(pdev);
>> -	struct device		*dev = &pdev->dev;
>> -
>> -	of_platform_depopulate(dev);
>> +	of_platform_depopulate(simple->dev);
>>  
>>  	clk_bulk_disable_unprepare(simple->num_clocks, simple->clks);
>>  	clk_bulk_put_all(simple->num_clocks, simple->clks);
>> @@ -126,13 +123,27 @@ static int dwc3_of_simple_remove(struct 
>> platform_device *pdev)
>>  
>>  	reset_control_put(simple->resets);
>>  
>> -	pm_runtime_disable(dev);
>> -	pm_runtime_put_noidle(dev);
>> -	pm_runtime_set_suspended(dev);
>> +	pm_runtime_disable(simple->dev);
>> +	pm_runtime_put_noidle(simple->dev);
>> +	pm_runtime_set_suspended(simple->dev);
>> +}
>> +
>> +static int dwc3_of_simple_remove(struct platform_device *pdev)
>> +{
>> +	struct dwc3_of_simple	*simple = platform_get_drvdata(pdev);
>> +
>> +	__dwc3_of_simple_teardown(simple);
>>  
>>  	return 0;
>>  }
>>  
>> +static void dwc3_of_simple_shutdown(struct platform_device *pdev)
>> +{
>> +	struct dwc3_of_simple	*simple = platform_get_drvdata(pdev);
>> +
>> +	__dwc3_of_simple_teardown(simple);
>> +}
>> +
>>  static int __maybe_unused 
>> dwc3_of_simple_runtime_suspend(struct device *dev)
>>  {
>>  	struct dwc3_of_simple	*simple = dev_get_drvdata(dev);
>> @@ -190,6 +201,7 @@ MODULE_DEVICE_TABLE(of, of_dwc3_simple_match);
>>  static struct platform_driver dwc3_of_simple_driver = {
>>  	.probe		= dwc3_of_simple_probe,
>>  	.remove		= dwc3_of_simple_remove,
>> +	.shutdown	= dwc3_of_simple_shutdown,
>>  	.driver		= {
>>  		.name	= "dwc3-of-simple",
>>  		.of_match_table = of_dwc3_simple_match,
>>
>> Can you make sure it works as you intended?
>
> Hi Felipe,
> just applied your approach to v5.3.7 and it is working properly.

Do you want to send it as a formal patch or shall I do it?

-- 
balbi
