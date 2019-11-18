From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/2] PCI: rockchip: Simplify optional regulator handling
Date: Mon, 18 Nov 2019 13:10:58 +0000
Message-ID: <b0e9a54e-4938-0afe-5059-bddf7e9ae1d9@arm.com>
References: <1eebc002101931012d337cda23d18f85b0326361.1573908530.git.robin.murphy@arm.com>
 <347bc3ef8399577e4cef3fdbf3af34d20b4ad27e.1573908530.git.robin.murphy@arm.com>
 <20191118115930.GC9761@sirena.org.uk>
 <a59da4a4-de88-62a5-5f44-001f8e30221e@arm.com>
 <20191118123951.GM43905@e119886-lin.cambridge.arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191118123951.GM43905@e119886-lin.cambridge.arm.com>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Andrew Murray <andrew.murray@arm.com>
Cc: lorenzo.pieralisi@arm.com, heiko@sntech.de, linux-pci@vger.kernel.org, shawn.lin@rock-chips.com, lgirdwood@gmail.com, linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>, bhelgaas@google.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 18/11/2019 12:39 pm, Andrew Murray wrote:
> On Mon, Nov 18, 2019 at 12:20:10PM +0000, Robin Murphy wrote:
>> On 18/11/2019 11:59 am, Mark Brown wrote:
>>> On Sat, Nov 16, 2019 at 12:54:20PM +0000, Robin Murphy wrote:
>>>> Null checks are both cheaper and more readable than having !IS_ERR()
>>>> splattered everywhere.
>>>
>>>> -	if (IS_ERR(rockchip->vpcie3v3))
>>>> +	if (!rockchip->vpcie3v3)
>>>>    		return;
>>>>    	/*
>>>> @@ -611,6 +611,7 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
>>>>    		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
>>>>    			return PTR_ERR(rockchip->vpcie12v);
>>>>    		dev_info(dev, "no vpcie12v regulator found\n");
>>>> +		rockchip->vpcie12v = NULL;
>>>
>>> According to the API NULL is a valid regulator.  We don't currently
>>> actually do this but it's storing up surprises if you treat it as
>>> invalid.
>>
>> Ah, OK - I'd assumed NULL wasn't valid based on regulator_enable()
>> immediately dereferencing its argument without any checks. If we'd rather
>> not bake in that assumption then this patch can happily be ignored.
> 
> I'd suggest we drop this patch.
> 
> "IS_ERR(ptr)" is not the same as "!ptr", for values of ptr between 0 and
> -4095 inclusive.

Hence the explicit initial "if (IS_ERR(ptr)) ptr = NULL;" condition 
quoted above ;)

But yeah, it was merely an attempt at a minor cosmetic cleanup, so let's 
just forget about it to avoid any possible confusion.

Cheers,
Robin.
