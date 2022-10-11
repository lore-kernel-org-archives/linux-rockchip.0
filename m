Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12958C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Oct 2022 08:22:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+h2yK8RogZhjYNTJx4uf1W6QtU7jzcPgBGq+br7FgYE=; b=niQSrX31/3MZPh
	ujNa2gLrSc2XLaUGHX33+4/tBbqhZei1TUNQvMWqshIl96+CSDmLbHxysMF2s5QVe98OII7d3HavC
	Xg2CCepqXlR9W1z4h2d4T1Ur6SxOZxMyKCzhK31sOUzoMuf2AOBq+yytT5DpVk3SoCZh1PI7/T8pV
	aAA9g5XmjzFFldv9ZCKY303ekIiB3nox66+m68fMPIfDaQe/ByN7b8H6eiQu/seZepJp0ZXUialiU
	ia7K6HtPh99GBEqrfGBPrKUk3QQtJZxF2fO3TlKX9Bl5jnqi2zoPMcVGmELGf599PxptZjsZ5Jwhz
	+CvLqE7bzjfIWplRj3Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiAWi-003gxo-VY; Tue, 11 Oct 2022 08:22:12 +0000
Received: from pscan.eu ([31.193.140.172] helo=mail.pscan.uk)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiAWf-003gwa-08
	for linux-rockchip@lists.infradead.org; Tue, 11 Oct 2022 08:22:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=pscan.uk;
	s=2016050301; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=uhsBeN47nP3zhqZRv0knUFwN1XzpEbbWxPoA51brJcI=; b=BeOCu3BWQ5dGTA+C/XJ9GoQTLO
	u1N6v+oouz9gy6knTdnx1wELo2WiD36QDZxDkKsCDvoYMRAHlB/5hv/cvKwmZQgl9TYmfdw1HH8Cv
	nwWD0PUPm5AzTmfK6cxX8cy39mXskLR9yfSDgJybR0X1qiS3Y7Mr5rr1bQKfnmKbi0aQ=;
Received: from host86-153-126-124.range86-153.btcentralplus.com ([86.153.126.124] helo=[192.168.1.77])
	by mail.pscan.eu with esmtpsa  (TLS1.3) tls TLS_AES_128_GCM_SHA256
	(Exim 4.94.2 (FreeBSD))
	(envelope-from <subs@pscan.uk>)
	id 1oi9OR-000Dgv-18; Tue, 11 Oct 2022 08:09:35 +0100
Message-ID: <4737d50e-5f5b-670c-227e-e3d84e4fb09d@pscan.uk>
Date: Tue, 11 Oct 2022 09:21:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Subject: Re: More RK817 questions
To: Peter Geis <pgwipeout@gmail.com>, Chris Morgan <macromorgan@hotmail.com>
Cc: Maciej Matuszczyk <maccraft123mc@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
References: <0ec9541a-8d8c-0fc0-d158-73ba949169a3@pscan.uk>
 <SN6PR06MB5342D159E9E83EAA4FEE9CDBA5239@SN6PR06MB5342.namprd06.prod.outlook.com>
 <CAMdYzYq6vbYgG_c1O3_pR1nNRWLK2QUim0rQ4PZiucU=vVK1Ng@mail.gmail.com>
From: Philip C <subs@pscan.uk>
In-Reply-To: <CAMdYzYq6vbYgG_c1O3_pR1nNRWLK2QUim0rQ4PZiucU=vVK1Ng@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_012209_466380_1718ECB5 
X-CRM114-Status: GOOD (  41.17  )
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

well if you really think that so many people will be interested in my 
incompetent ramblings ;-)

I just noticed that there are a set of pinenote dts files in mainline. 
My bad for not noticing that.  I will have a look and see what I can 
figure out.

thanks, PHilip

On 11/10/2022 02:49, Peter Geis wrote:
> On Mon, Oct 10, 2022 at 8:47 PM Chris Morgan <macromorgan@hotmail.com> wrote:
>>
>> On Mon, Oct 10, 2022 at 08:33:48PM +0100, Philip C wrote:
>>> Hi Peter, Chris and Maya
> 
> Good Evening,
> 
>>>
>>> I'm not going to bother with the rockchip list because I think that you are
>>> the only three that will be interested in this.
> 
> I have added the Rockchip mailing list so they can get a heads up about this.
> 
>>>
>>> I did a bit of hacking of the 4.19 BSP kernel on my device to see how the 5V
>>> rail of the USB port works, and I am pretty sure that I understand it now.
>>>
>>> I think that /power/supply/rk817_charger.c registers itself as an extcon
>>> with /phy/rockchip/phy-rockchip-inno-inno-usb2.c for notification when the
>>> state of usb2phy0 changes.
>>>
>>> Specifically within rk817_charger.c there is a function
>>> rk817_charge_host_evt_worker which reacts to the notifications from the phy
>>> and runs rk817_charge_set_otg_state(charge, USB_OTG_POWER_ON)
>>>
>>> This won't be true of all devices, only those (like mine) that have the
>>> EXTCON=<&usb2phy0> option set in dts for the RK817.
> 
> I suggest you look closely at how this was implemented in mainline.
> You'll notice we do things significantly differently.
> 
>>>
>>> I have done enough experimentation with my device to prove that if I upset
>>> this particular mechanism that that 5V is not applied to the USB port when
>>> it should be, so I really do think that this is how it works in BSP.
>>>
>>> Looking in mainline is interesting, because the concept of another driver
>>> registering with phy-rockchip-inno-usb2.c for updates when the phy state
>>> changes are still there, all be it with different messages.
>>>
>>> So now for my questions:-
>>>
>>> Do you folks have any plans to write something into mainline rk817_charger.c
>>> to register with the phy for notifications and switch on the OTG power?
>>
>> Not yet, but it's not a bad idea. Honestly I wonder if that's why my OTG USB
>> doesn't work on mainline... because I don't have the extcon set up properly.
> 
> OTG works when set up correctly, look to the pinenote for how to set
> it up. It also works on soquartz when attached to a correct carrier
> board. There are a few kinks that needed to be worked out with the phy
> driver, they have landed in next and should trickle down to the stable
> kernels.
> 
>>
>>>
>>> If not then would it be productive if I have a go myself?
>>
>> Absolutely, let me know if you have questions. I might get around to it one day
>> but not in the next few weeks. I have a large stack of U-Boot technical debt I
>> have to pay.
> 
> You really should have included the Rockchip, USB, and MFD mailing
> lists on this. That way they could tell you that the existing
> infrastructure does everything it needs to do. Downstream does a lot
> of naughty things to hack around limitations of hardware and the
> limitations of the coders. Mainline requires everything to be
> compliant with the various standards applicable, even if that means
> some things aren't capable of working to their full potential. It
> pushes for manufacturers to comply with the standards of the systems
> they implement.
> 
>>
>>>
>>> Do you consider rk817_charger.c the right place to have such code or should
>>> I be putting it somewhere else?
>>
>> The rk817_charger.c driver in mainline currently only checks (via an IRQ) if
>> the power state has changed, if it has been plugged in or unplugged. Presumably
>> without looking at the phy driver you could always check the phy state when
>> this changes and then take the appropriate action? Otherwise we could set up
>> another IRQ or workqueue of some kind in the charger driver to listen for events
>> from the extcon.
>>
>> The only gotcha is this *might* actually be something the main mfd rk808 driver
>> needs to do or the rk808 regulator driver (since I believe you need to simultaneously
>> shut off the BOOST regulator when you switch the OTG switch). Mark Brown/Broonie might
>> have some insight into that as he's the main guy for mfd drivers.
> 
> The otg_switch is literally that, a switch. It exists to permit you to
> switch the voltage generated by the boost converter on and off to the
> usb_otg port when necessary without stopping the boost converter,
> which would kill anything else powered by it. The phy subsystem and
> the regulator subsystem handle this without the awful hacks downstream
> implemented. If you would like some help with getting your dts to
> work, you are welcome to reach out to the mailing list, or to me
> directly.
> 
>>
>>>
>>> thanks, Philip
> 
> Very Respectfully,
> Peter Geis
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
