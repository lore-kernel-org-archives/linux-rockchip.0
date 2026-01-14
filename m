Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D407D31A02
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 03:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dYF2UDmub2BD1GP5ZqDchIWPwMLiyUA2oIV/KT3MMig=; b=wHKKIqIQoHc1GE
	hkZQdIbf1Bny4KKcOKGH7AKKXxZmTl3R1FsCNMhjfrTcrqjPk29jfXkcaMAf+MgzB5iB2kmBUlobU
	ntw0hu8RQJOhsjwxEVe5KHgDum8vuhy1qjJlcNS5Dn8RVldoP4JUSH8AA88+iLIdSAbn7aJn/HjSS
	ZOsrERTQJX6IgfISUBY18syByCUYqA8kCS+mS1dutE5vSAYk77BtemDyTqvLsuAEJ2+xwXU2IfstU
	SEq+OE3+YKZCv0kXjxQLCp4sj0ZU1S85qiK0i/R/9dv+5RkWr8eqIb51LT5LiniH60B2yx3KyH8oz
	K0ZC83W7UPVy+2v0pNww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfrRL-000000081Tp-0CJw;
	Wed, 14 Jan 2026 03:20:59 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfrRH-000000081TN-3TUf
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 03:20:57 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-8b2a4b6876fso1260760885a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Jan 2026 19:20:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1768360854; x=1768965654; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=f4iPZHKbl8MdY5hLvluvOrXfesCaDcyAvHHbo6IMrf8=;
        b=jFdfFoWziAr1zjrwRJOhWd1HCTHcH6Y/TBmHFQzrrDtudXFehRSyfsK9mDY9GyDN0c
         Eia7xxxWvm0hOXIXjWIDc1yHqmnD7ORamTl14onxjKyjyboP7bYnOE9lGDkrte7foU0L
         K4OVSyU0Ukr9uXC9qsJF9XlnzgkaKa6xMziJAxRFUkhuIDR8N6xcyNYsZhRViXaUAFRO
         qOy8Q+lti3JPUoNNBqgp25Oq2VZaoKhoZyMrxv/193kASKaCtGwSJXkALvYZ5NULg5Xt
         RKyDGwxB7xe2wWnUPcDAq7nV7+4MnsK8OE7n0JMv2UijNx7yZRV1iH7TzXW7Y7rJJtGf
         jdnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768360854; x=1768965654;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f4iPZHKbl8MdY5hLvluvOrXfesCaDcyAvHHbo6IMrf8=;
        b=Acth6InoCSOoKs/Rl0FhfUSKonaamHft42ElUpUwntX29YuEezLMcZOJ6oo69XlznJ
         dKTbUPlxyDwqdiKav4hc86gL+pKoJySMhRq7QwhhlQO6+6h/krUwGd6oN+CNVGBFWcsU
         nR2xLEFwAe1mxZsHo7SioeBPF7i+GS3T8QL2JTZAGBRCHD1um/SIrrbn8zY1s6cxqsxo
         pj5kzkEQiQ94C/pX4HL2H4PfaLqfaTys7pr4cI7fGftuRLbP4jNdoMZ5l//woBXrMX2k
         l+qSplCW5SMDwLoqnoMBLI9DIx7ur01srtjSxM/nZma1B5pEG2I20YSedBQAxCA1HKXb
         wX8A==
X-Forwarded-Encrypted: i=1; AJvYcCV3vE7KAMiUCgFH62RsB70yS9OAGLht96RnLDHem57UGmmW3sshoYtFyxVaKlVHQUXPSjV+yq72hGcbrw20Dw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwtOmL8PekcOUOnjSDgtm7dc04iEScnkgdolwSf/5CYuXkY+ZbT
	oNvWxuFlMHn88FvVTnGf6oMDcDQT1pNkf3uvx2yHKJ35UG6TWTzAMO9oqD5j+q9haw==
X-Gm-Gg: AY/fxX4swMKdHYA5tPn6N1dLnSqN7xofQpHf6QZz5OeTOFARGVkL9w1mFMzjPJ8NZv6
	FCu0TowuT2ONTu+QVDy8IEyb5AqLSR53oZ/ccl75GfqepUFYI7IdDToGTkmH06KTR7L2LjU9uoZ
	bhGOwZo9/vM6tk9PXexF7M4bom5/AanLiU2jgZ9l5kSNCIFEORgU5yJNx3QzRevQZyMhH9JLmEU
	mEHa9KwB1fQw4EjashIxwqhmwn65cJAfojIFt2ezvP0c0EZ1BeFmo3Pd5ypThecxiD0ayQwUucU
	2SVW6O3cKkZXTx+JhJLecM8h7PReTlsF+N69jubrCMebwIsjE9AXIvyqTIGFxk9b6G0GdDb6+6e
	VqK5NFyclcBE+0s0Nw/ro6BcrnIcUz6YUxZy3HqFTvoKXCN5RQH/BlajqKtUJ0bM642pPO4DcFe
	ef2zhtCjy9TSQ0
X-Received: by 2002:a05:620a:4153:b0:8b2:dcea:fc78 with SMTP id af79cd13be357-8c52fb3934cmr204857585a.16.1768360853468;
        Tue, 13 Jan 2026 19:20:53 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::7a0a])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c530a6c678sm78774385a.9.2026.01.13.19.20.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 19:20:53 -0800 (PST)
Date: Tue, 13 Jan 2026 22:20:50 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: USB mailing list <linux-usb@vger.kernel.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: Track down EHCI and companion errors on rk3xxx systems
Message-ID: <b108b747-cc7c-4537-b9bc-b0862bac71ff@rowland.harvard.edu>
References: <073879e4-aea8-4625-bc83-c4b6dd9c9231@rowland.harvard.edu>
 <DFNI1Q9N7GC6.20PN0RG9LRAQF@cknow-tech.com>
 <38365c37-b125-4ffb-8ce7-bd4f3f7596ba@rowland.harvard.edu>
 <DFNLGSUWJA5Z.3OJHVYWST2YFH@cknow-tech.com>
 <b9041d32-1eab-4428-ab2b-769daefdbdcd@rowland.harvard.edu>
 <DFNRUF2LUPH4.1493G2SYERZ7Q@cknow-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DFNRUF2LUPH4.1493G2SYERZ7Q@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_192056_229916_FE3F8697 
X-CRM114-Status: GOOD (  21.18  )
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

On Tue, Jan 13, 2026 at 10:15:59PM +0100, Diederik de Haas wrote:
> I'm now wondering if there's something wrong with the Quartz64-A ...
> I already thought that it took way too long before I got a login prompt.
> 
> In my first attempt I noticed I did NOT have the "Warning! ehci_hcd
> should always be loaded before uhci_hcd and ohci_hcd, not after"
> It took so long I forgot to keep counting, but most of all I forgot the
> dynamic debug command, so I tried again ...
> 
> This time I did the dynamic debug command and the above "Warning!" was
> present. Plugged in the keyboard adapter, started a stopwatch on my
> phone and monitored the ``dmesg -W`` for any changes ...
> 
> It took slightly more then a MINUTE for anything to appear in dmesg :-O
> 
> ```
> root@quartz64a:~# dmesg -W
> [  357.343890] usb usb4: usb wakeup-resume
> [  357.343970] usb usb4: usb auto-resume
> [  357.344023] hub 4-0:1.0: hub_resume
> [  357.344243] usb usb4-port1: status 0501 change 0001
> [  357.446845] hub 4-0:1.0: state 7 ports 1 chg 0002 evt 0000
> [  357.447094] usb usb4-port1: status 0501, change 0000, 480 Mb/s

That's the EHCI controller detecting the new connection.  If this took 
more than a minute to happen then something is wrong with the EHCI 
controller or its associated hardware.  Or possibly with the way the 
computer handles wakeup signals.

> [  357.510889] hub 4-0:1.0: port_wait_reset: err = -16
> [  357.510909] usb usb2: usb wakeup-resume
> [  357.510956] usb usb4-port1: not enabled, trying reset again...
> [  357.510980] usb usb2: usb auto-resume
> [  357.586708] hub 2-0:1.0: hub_resume
> [  357.586936] usb usb2-port1: status 0101 change 0001
> [  357.690841] hub 2-0:1.0: state 7 ports 1 chg 0002 evt 0000
> [  357.691090] usb usb2-port1: status 0101, change 0000, 12 Mb/s
> [  357.714843] usb usb4-port1: not reset yet, waiting 200ms
> [  357.874717] usb 2-1: new full-speed USB device number 2 using ohci-platform

This usb2 stuff is the OHCI controller reacting to the new connection, 
after the connection was switched from the EHCI controller to OHCI.

> [  357.918838] usb usb4-port1: not reset yet, waiting 200ms

These messages aren't supposed to occur.  The EHCI controller is 
supposed to realize that there is no device connected to it any more, 
now that the connection has been switched over to the OHCI controller.

> [  358.082679] usb 2-1: ep0 maxpacket = 32
> [  358.087855] usb 2-1: skipped 1 descriptor after interface
> [  358.087926] usb 2-1: skipped 1 descriptor after interface
> [  358.089798] usb 2-1: default language 0x0409
> [  358.093839] usb 2-1: udev 2, busnum 2, minor = 129
> [  358.093904] usb 2-1: New USB device found, idVendor=1997, idProduct=2433, bcdDevice= 1.06
> [  358.094803] usb 2-1: New USB device strings: Mfr=1, Product=2, SerialNumber=0
> [  358.095481] usb 2-1: Product: mini keyboard
> [  358.095889] usb 2-1: Manufacturer:
> [  358.097629] usb 2-1: usb_probe_device
> [  358.097691] usb 2-1: configuration #1 chosen from 1 choice
> [  358.099335] usb 2-1: adding 2-1:1.0 (config #1, interface 0)
> [  358.100603] usb 2-1: adding 2-1:1.1 (config #1, interface 1)
> [  358.101371] hub 2-0:1.0: state 7 ports 1 chg 0000 evt 0002
> [  358.126129] usb usb4-port1: not reset yet, waiting 200ms
> [  358.203797] hid: raw HID events driver (C) Jiri Kosina
> [  358.227055] usbhid 2-1:1.0: usb_probe_interface
> [  358.227080] usbhid 2-1:1.0: usb_probe_interface - got id
> [  358.231307] usbhid 2-1:1.1: usb_probe_interface
> [  358.231331] usbhid 2-1:1.1: usb_probe_interface - got id
> [  358.236333] usbcore: registered new interface driver usbhid
> [  358.236850] usbhid: USB HID core driver
> [  358.267050] input:   mini keyboard as /devices/platform/fd8c0000.usb/usb2/2-1/2-1:1.0/0003:1997:2433.0001/input/input2
> [  358.326722] usb usb4-port1: not reset yet, waiting 200ms
> [  358.326992] hub 4-0:1.0: state 7 ports 1 chg 0000 evt 0002
> [  358.327125] usb usb4-port1: status 0100, change 0001, 12 Mb/s

And here is where the EHCI controller finally reported that nothing was 
connected.

It certainly looks like the EHCI controller isn't working right.  Just 
as a test, you can try unloading the ehci-hcd module, together with any 
modules depending on it, before you plug in the keyboard adapter.  It 
would be interesting to see if that makes any difference.

Another thing to try is to see if disabling EHCI runtime suspend changes 
anything.  To do this, don't remove any modules.  Instead, before 
plugging in the keyboard adapter, do:

	echo on >/sys/bus/usb/devices/usb4/power/control

Alan Stern

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
