Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B80A107BCD3
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 17:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRj0uQ+7dx5z9WOC71eOL/6fLkkt+TBsYKIIrlu+Ci4=; b=dKkcZs+9DJyS1Z
	bOQdTm9dLeF9+tL4+UI+53Bd0bTSx41hOBcNqChEWitBgsoXPt6iy0q3p/0mwm0ScZ7peZ0/35YXw
	CHe9frcZUSPnbxBv1cR49IhWXWSP0IYTa/Hl0ZZtMZcbsyX5BbECnHoSxZq8X9vY3peV9PYCuy5hX
	NpAM3BzV7CspiQPVQl4YO/3OrUxlK0J+nMSGUqvlRIlUBNi1w2MNHSzXF1rdptbmpXtkg4ATeMBfC
	SnogN+l+mX/r4Fe487uPd9i239+SPjetnAmXOJ7aYaEIn2Y2aWlIBHsBUrkA6jhW3Hb7RFUv+OJyz
	qmoimyspppFV5VOzhcFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w16Rh-00000000luB-2CmQ;
	Fri, 13 Mar 2026 17:37:09 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w16Rc-00000000ltc-381h;
	Fri, 13 Mar 2026 17:37:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 82FC4176A;
	Fri, 13 Mar 2026 10:36:55 -0700 (PDT)
Received: from [10.57.59.200] (unknown [10.57.59.200])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E8C03F73B;
	Fri, 13 Mar 2026 10:36:58 -0700 (PDT)
Message-ID: <4f9fdfc9-f2ad-49b1-a6b9-ae64aaa47cfd@arm.com>
Date: Fri, 13 Mar 2026 17:36:56 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] PCI: dw-rockchip: Enable async probe by default
To: Danilo Krummrich <dakr@kernel.org>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, Niklas Cassel <cassel@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Hans Zhang <18255117159@163.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Wilfred Mallawa <wilfred.mallawa@wdc.com>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Anand Moon <linux.amoon@gmail.com>,
 Grimmauld <grimmauld@grimmauld.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, driver-core@lists.linux.dev,
 Lukas Wunner <lukas@wunner.de>
References: <20260226101032.1042-1-linux.amoon@gmail.com>
 <177260693908.10259.13055467642416391434.b4-ty@kernel.org>
 <87bc37ee-234c-4568-b72e-955c130a6838@arm.com>
 <f7tfshf7riljjibuqge4ubfjmludubpyh3ppdf6lasurzdzbtj@sw4xxagfhnn3>
 <5d88fb5b-e771-4ea6-8d2c-c5cfd21e5860@arm.com>
 <qwanhqrpztzkudik5fmberhabnzaly7v53677dohqzj5nq4wi2@6ndpiubyxcbi>
 <DGZXF3LPSRK6.2QYN63QTKUQAX@kernel.org>
 <cp5uktfqdf6zs53qsye57ior2ikmssgevxxdtevkzpisaif22h@7mrxspkuibow>
 <DH09EDBW3X6T.2996UB1CFCAW2@kernel.org>
 <55c28218-1638-4b90-a9cd-a177fb5abcb6@arm.com>
 <DH0TM60TVX5D.20W4O1X696ALA@kernel.org>
 <6cfe4bda-036f-4bb9-8a08-ed75f61cae24@arm.com>
 <DH1QCLS89ADR.3H0XABP0GEFQT@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <DH1QCLS89ADR.3H0XABP0GEFQT@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_103704_882038_8FBB9FD2 
X-CRM114-Status: GOOD (  31.67  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2026-03-13 2:39 pm, Danilo Krummrich wrote:
> On Fri Mar 13, 2026 at 2:15 PM CET, Robin Murphy wrote:
>> On 2026-03-12 12:59 pm, Danilo Krummrich wrote:
>>> On Thu Mar 12, 2026 at 1:48 PM CET, Robin Murphy wrote:
>>>> On 2026-03-11 9:09 pm, Danilo Krummrich wrote:
>>>>>    From a driver-core perspective I think we're rather limited on what we can do;
>>>>> we are already in async context at this point and can't magically go back to
>>>>> initcall context.
>>>>>
>>>>> So, the only thing I can think of is to kick off work on a workqueue, which in
>>>>> the end would be the same as the deferred probe handling.
>>>>
>>>> Hmm, in fact, isn't the deferred probe mechanism itself actually quite
>>>> appropriate?
>>>
>>> Yes, I've also mentioned this in [1], including the fact that it technically
>>> even complies with the guarantees given by PROBE_FORCE_SYNCHRONOUS. I.e. the
>>> documentation says:
>>>
>>> 	Use this to annotate drivers that need their probe routines to run
>>> 	synchronously with driver and device registration (with the exception of
>>> 	-EPROBE_DEFER handling - re-probing always ends up being done
>>> 	asynchronously).
>>>
>>> However, I'm still not sure how I feel about this, since I consider this to be
>>> more like a workaround that just moves things to a "more approprite" async
>>> context.
>>
>> I guess the underlying problem there is that there are at least 3
>> different significant aspects to what "synchronous" can mean:
>>
>> - literally in the context or device/driver registration as documented.
>> Off-hand I'm not really sure what useful property may be *specific* to
>> those conditions that a driver might rely on, other than for
>> super-special cases like platform_driver_probe().
> 
> I'm not worried about this one, as it is already special by not being compatible
> with deferred probe. I.e. the caller already has to promise that the
> corresponding probe() call will never return -EPROBE_DEFER.
> 
> This is a much more error prone requirement than just "don't call this from
> async" already.
> 
>> - serialised, i.e. probes of multiple devices won't happen concurrently
>> on multiple threads. This is probably the one hiding the most driver
>> bugs, e.g. internal shared/global state without sufficient
>> synchronisation. I guess this falls out as a side-effect of the first
>> condition, but AFAICS it *can* also still provided by deferred probe
>> (given that it's a single work item iterating a list one-by-one)
>>
>> - in some regular thread context that isn't liable to have issues
>> synchronising against other async_func workers (i.e. the request_module
>> case). Again, deferred can't have a problem here, or it wouldn't have
>> worked properly in general for the last decade.
>>
>> So it's not that we'd be relying on some dubious "deferred is always
>> synchronous" assumption - AFAICS deferred *can* launch async if the
>> driver permits it - more just ratifying that deferred is still able to
>> effectively honour all the useful properties of PROBE_FORCE_SYNCHRONOUS
>> other than "during registration of the thing".
> 
> Yes, and as mentioned above, EPROBE_DEFER has always been a valid path for
> PROBE_FORCE_SYNCHRONOUS, which is why I brought it up as a a workaround in the
> first place.
> 
> (The reason why I still say "workaround" is because nothing actually needs to be
> deferred.)
> 
> Anyways, as I mentioned...
> 
>>> On the other hand, eventually we want everything to work with
>>> PROBE_PREFER_ASYNCHRONOUS, so maybe it's also good enough for the time being.
> 
> ...plus there are not a lot of PROBE_FORCE_SYNCHRONOUS left anyways.
> 
> Do you want to send a patch?

Sure, I just wanted to check that you didn't see anything obviously 
wrong with my reasoning-by-inspection - if you're sufficiently happy 
then I'll write this up as a proper commit message and post the patch 
(likely on Monday now) so we can all nit-pick the details :)

Cheers,
Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
