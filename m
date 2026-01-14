Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55D2DD37E3D
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 14:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ADJhhhoWI7UjEDMRKOprU7gDd/mS7cTAO2O5gYdirs=; b=1oHJzKQ1qh3T1W
	Gn6YdWqdpODnw20wz5Tocm9OdF5rwgunLMsx9smPLdaPWuoXAYGJCe7pByKkr2hl8kKa4sVQlZflg
	zFZc2nHt5sgakov2WXVuv7YqhnCzuyB9wjnZEPmr8w1qjg86KU50KYgV5wjlsI57ggfiLp3jqt2Su
	UJnPU+LQmwMufGujWKD1XgzeCI6IVtYZB6X5qtoqGWS/Rz7PPwbdQz/DQjI2L/PMBrzy3KzaKNxiB
	RPJnCYNqEDXYMuosPpYi4iSQjqTLIlzNean2QuEJdMRkihrm4E87ZnPvaRxYRxyQIKxrHKEqwaeFU
	FQs1RA4180X9nRnfqEAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2LV-00000009bLV-2nWE;
	Wed, 14 Jan 2026 14:59:41 +0000
Received: from out-170.mta0.migadu.com ([91.218.175.170])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2LR-00000009bJj-0SnC
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 14:59:39 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1768402771;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FIMxu/hWbq7bQWtXRRovePTYLW/ZHcdUA2i84ufAmXs=;
	b=GW4YKCSLMT8n/AvWcyi681ac7w29jlRS3SzlqlbSk3ocdEyVQxwVvlAvTO71R3I2Oeq0Pv
	5zrKZoewevadqxDleVkPZ0d3xZaZu/mauyfC+cLKVWejzpQQeujvisJsPsrtWkrrNOdRIN
	tzZDrKYg06HisSBpZboYB4PI0bjU1WWYl5DavmmTq2ISNcRIKGXDTla0aR46PFTnAcjH/K
	Gsu2ztqHErDhBGpD65mg+BXmGFHS34rLaaWJozC/xOr/d6ubILRaYO4cUpJm8YSXjSwB9G
	UgKg08lIIfEQOXVPac/RTV/7wA7UoIR3EagJl8wz9scLDONmzNg9KqXEzJJUOg==
Date: Wed, 14 Jan 2026 15:59:28 +0100
Message-Id: <DFOEGOTI1AQ9.175GP7V1VK1XU@cknow-tech.com>
Cc: "USB mailing list" <linux-usb@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: Track down EHCI and companion errors on rk3xxx systems
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Alan Stern" <stern@rowland.harvard.edu>
References: <073879e4-aea8-4625-bc83-c4b6dd9c9231@rowland.harvard.edu>
 <DFNI1Q9N7GC6.20PN0RG9LRAQF@cknow-tech.com>
 <38365c37-b125-4ffb-8ce7-bd4f3f7596ba@rowland.harvard.edu>
 <DFNLGSUWJA5Z.3OJHVYWST2YFH@cknow-tech.com>
 <b9041d32-1eab-4428-ab2b-769daefdbdcd@rowland.harvard.edu>
 <DFNRUF2LUPH4.1493G2SYERZ7Q@cknow-tech.com>
 <b108b747-cc7c-4537-b9bc-b0862bac71ff@rowland.harvard.edu>
In-Reply-To: <b108b747-cc7c-4537-b9bc-b0862bac71ff@rowland.harvard.edu>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_065937_914814_E2A5D772 
X-CRM114-Status: GOOD (  28.13  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed Jan 14, 2026 at 4:20 AM CET, Alan Stern wrote:
> On Tue, Jan 13, 2026 at 10:15:59PM +0100, Diederik de Haas wrote:
>> I'm now wondering if there's something wrong with the Quartz64-A ...
>> I already thought that it took way too long before I got a login prompt.
>> 
>> In my first attempt I noticed I did NOT have the "Warning! ehci_hcd
>> should always be loaded before uhci_hcd and ohci_hcd, not after"
>> It took so long I forgot to keep counting, but most of all I forgot the
>> dynamic debug command, so I tried again ...

I know it didn't result in the requested dmesg log, but isn't it
significant I had the problem *without* the warning? IOW: the connection
(correlation or causation) I thought there was, (possibly) isn't there?
 
>> This time I did the dynamic debug command and the above "Warning!" was
>> present. Plugged in the keyboard adapter, started a stopwatch on my
>> phone and monitored the ``dmesg -W`` for any changes ...
>> 
>> It took slightly more then a MINUTE for anything to appear in dmesg :-O
>> 
>> ```
>> root@quartz64a:~# dmesg -W
>> [  357.343890] usb usb4: usb wakeup-resume
>> [  357.343970] usb usb4: usb auto-resume
>> [  357.344023] hub 4-0:1.0: hub_resume
>> [  357.344243] usb usb4-port1: status 0501 change 0001
>> [  357.446845] hub 4-0:1.0: state 7 ports 1 chg 0002 evt 0000
>> [  357.447094] usb usb4-port1: status 0501, change 0000, 480 Mb/s
>
> That's the EHCI controller detecting the new connection.  If this took 
> more than a minute to happen then something is wrong with the EHCI 
> controller or its associated hardware.  Or possibly with the way the 
> computer handles wakeup signals.

This was with a 6.19-rc5 based kernel (with mostly media patches added
on top) and on a Rock64 (rk3328) I got a whole bunch of these warnings:

WARNING: drivers/gpio/gpiolib.c:3523 at gpiod_get_value+0x64/0x98, CPU#0: swapper/0/0

log of a few of them:
https://paste.sr.ht/~diederik/154c5023a3a50d77f1da2195e7bb9a96f6a88555

and I suspect (but don't KNOW!) this commit is relevant:
20cf2aed89ac ("gpio: rockchip: mark the GPIO controller as sleeping")

So I'll switch to a 6.19-rc4 based kernel, which is mostly the same,
but doesn't have that commit.

FWIW: I'd expect to see sth in dmesg within a second of me plugging sth
in, so I was surprised by you calling '30 secs' a short period.

I'll re-do the test and the addional tests you requested, but right now
I need to focus on some other things, so may take a few days.

Cheers,
  Diederik

>> [  357.510889] hub 4-0:1.0: port_wait_reset: err = -16
>> [  357.510909] usb usb2: usb wakeup-resume
>> [  357.510956] usb usb4-port1: not enabled, trying reset again...
>> [  357.510980] usb usb2: usb auto-resume
>> [  357.586708] hub 2-0:1.0: hub_resume
>> [  357.586936] usb usb2-port1: status 0101 change 0001
>> [  357.690841] hub 2-0:1.0: state 7 ports 1 chg 0002 evt 0000
>> [  357.691090] usb usb2-port1: status 0101, change 0000, 12 Mb/s
>> [  357.714843] usb usb4-port1: not reset yet, waiting 200ms
>> [  357.874717] usb 2-1: new full-speed USB device number 2 using ohci-platform
>
> This usb2 stuff is the OHCI controller reacting to the new connection, 
> after the connection was switched from the EHCI controller to OHCI.
>
>> [  357.918838] usb usb4-port1: not reset yet, waiting 200ms
>
> These messages aren't supposed to occur.  The EHCI controller is 
> supposed to realize that there is no device connected to it any more, 
> now that the connection has been switched over to the OHCI controller.
>
>> [  358.082679] usb 2-1: ep0 maxpacket = 32
>> [  358.087855] usb 2-1: skipped 1 descriptor after interface
>> [  358.087926] usb 2-1: skipped 1 descriptor after interface
>> [  358.089798] usb 2-1: default language 0x0409
>> [  358.093839] usb 2-1: udev 2, busnum 2, minor = 129
>> [  358.093904] usb 2-1: New USB device found, idVendor=1997, idProduct=2433, bcdDevice= 1.06
>> [  358.094803] usb 2-1: New USB device strings: Mfr=1, Product=2, SerialNumber=0
>> [  358.095481] usb 2-1: Product: mini keyboard
>> [  358.095889] usb 2-1: Manufacturer:
>> [  358.097629] usb 2-1: usb_probe_device
>> [  358.097691] usb 2-1: configuration #1 chosen from 1 choice
>> [  358.099335] usb 2-1: adding 2-1:1.0 (config #1, interface 0)
>> [  358.100603] usb 2-1: adding 2-1:1.1 (config #1, interface 1)
>> [  358.101371] hub 2-0:1.0: state 7 ports 1 chg 0000 evt 0002
>> [  358.126129] usb usb4-port1: not reset yet, waiting 200ms
>> [  358.203797] hid: raw HID events driver (C) Jiri Kosina
>> [  358.227055] usbhid 2-1:1.0: usb_probe_interface
>> [  358.227080] usbhid 2-1:1.0: usb_probe_interface - got id
>> [  358.231307] usbhid 2-1:1.1: usb_probe_interface
>> [  358.231331] usbhid 2-1:1.1: usb_probe_interface - got id
>> [  358.236333] usbcore: registered new interface driver usbhid
>> [  358.236850] usbhid: USB HID core driver
>> [  358.267050] input:   mini keyboard as /devices/platform/fd8c0000.usb/usb2/2-1/2-1:1.0/0003:1997:2433.0001/input/input2
>> [  358.326722] usb usb4-port1: not reset yet, waiting 200ms
>> [  358.326992] hub 4-0:1.0: state 7 ports 1 chg 0000 evt 0002
>> [  358.327125] usb usb4-port1: status 0100, change 0001, 12 Mb/s
>
> And here is where the EHCI controller finally reported that nothing was 
> connected.
>
> It certainly looks like the EHCI controller isn't working right.  Just 
> as a test, you can try unloading the ehci-hcd module, together with any 
> modules depending on it, before you plug in the keyboard adapter.  It 
> would be interesting to see if that makes any difference.
>
> Another thing to try is to see if disabling EHCI runtime suspend changes 
> anything.  To do this, don't remove any modules.  Instead, before 
> plugging in the keyboard adapter, do:
>
> 	echo on >/sys/bus/usb/devices/usb4/power/control
>
> Alan Stern
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
