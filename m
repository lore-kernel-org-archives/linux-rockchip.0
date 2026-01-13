Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6549D2F326
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 16:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:Subject:Cc:
	To:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFDhhxZGzjkNlkvmDj9KpCajemJVcpQvkWQu16wpums=; b=VpH9jqwtPPo4rc
	MHeHsThyCk98/Kb/plDbsJD0bmG2LsPGgNFfeckVCei+ucpYVl8rOhGLcdu1Kf+ctAiRz11an1933
	Bixc6xQi5Abs7Lq1fqsSOzr0dgPYj9u0pPgvLmL5hKH3whvf2M2n/9MYoLqkBoVHKI7yAUNMFepb+
	ivLz9rAkzUUaSz3hddyvVOXnXTr3WTsEckDY9aTd5HhX/25fyfRB2C/UjcApzzBLF4QfIVJFZo319
	b3CRnWcpd5A1ama/lb6jF5KTxTDW1apinh/eUnLlc5t/rK6qtJu5DHAP9ONDev17B3pSu5W3hMTxa
	Zkyqf4XrqR97NIX8196g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfh45-00000007SDp-1y6I;
	Tue, 13 Jan 2026 16:16:17 +0000
Received: from out-186.mta0.migadu.com ([91.218.175.186])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfh43-00000007SDA-25Eh
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Jan 2026 16:16:17 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1768320971;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G/0vSieeJBhG2qqh8FuHToqqUBQ13qnWcsKX9OripvA=;
	b=f1N7exyYHC0gwKdI3cs107pjDJZN/XVYu3bsLBMn70zVirBaVQqOU/+RQUcTEVTlK3TvS9
	zAt7qroBHbBnQJkXZoUUug+RzuhPTLMrkEMg0yQn+HEpii4TSnRQfsCeXqePpUZqYWrIco
	wI5H9Y0GQ4kAh3n1k/w+DFyO55FIFXQOECF8PbQE6Fosv0mIf1CfhPhHI/nS4LEyfc+xvX
	lBNwUv3LxhCi2qo13Dg8JsfT6r2MxBFoUWjBiCqPSGqa3yYJHRz0iXr01ukztbq2JkSnhu
	pAK47TU0IxCBSjVzYAEQgQiwLcnFsv2Y3d7O9S7ID2cjaH+siSb41fimNWThtg==
Date: Tue, 13 Jan 2026 17:16:05 +0100
Message-Id: <DFNLGSUWJA5Z.3OJHVYWST2YFH@cknow-tech.com>
To: "Alan Stern" <stern@rowland.harvard.edu>
Cc: "USB mailing list" <linux-usb@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: Track down EHCI and companion errors on rk3xxx systems
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
References: <073879e4-aea8-4625-bc83-c4b6dd9c9231@rowland.harvard.edu>
 <DFNI1Q9N7GC6.20PN0RG9LRAQF@cknow-tech.com>
 <38365c37-b125-4ffb-8ce7-bd4f3f7596ba@rowland.harvard.edu>
In-Reply-To: <38365c37-b125-4ffb-8ce7-bd4f3f7596ba@rowland.harvard.edu>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_081615_875542_6CAFBFF7 
X-CRM114-Status: GOOD (  18.98  )
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

On Tue Jan 13, 2026 at 4:47 PM CET, Alan Stern wrote:
> On Tue, Jan 13, 2026 at 02:35:21PM +0100, Diederik de Haas wrote:
>> Got my (gtkgreet) login screen and plugged in my keyboard adapter in the
>> *bottom* USB2 port ... and that did NOT work.
>> 
>> Logged in via SSH and noticed it was indeed not listed in ``lsusb``.
>> Checked ``lsmod`` and ``dmesg | tail`` ... and noticed the kernel *did*
>> notice plugging in the keyboard adapter, so did ``lsusb`` *again* and
>> then it *did* list my keyboard adapter.
>> I did NOT employ my usual 'workaround' by plugging it into a USB3 port.
>> 
>> So it may be that it would have always worked ... eventually ... if I
>> had just waited long enough?
>> While 'dmesg' seems to suggest it took little over 0.5 seconds, I'm
>> really not that fast ;-P (or that impatient)
>
> Is this repeatable?

It doesn't happen every time, but it did actually happen another time.
After that test, I shutdown the device and unplugged the keyboard
adapter. Then I powered on the device and waited till it had completed
the boot process.
Logged in via SSH, retrieved my usual boot process data (what you saw in
my 'paste' starting with ``uname -a``) and then did ``dmesg -W``.

Then I plugged in my keyboard adapter in the bottom port and noticed it
didn't work (straight away). This time I waited, pressed various keys on
my keyboard, turned the keyboard off and on again, pressed some more
keys ... and after ~20 (or 30?) seconds, my keyboard started to work.
When I then switched back to my SSH session, I saw dmesg had (then)
printed messages indicating it saw the adapter plugged in and ``lsusb``
did see the device.

But that ~20 seconds is key here. Normally I would conclude that "it
doesn't work" after (say) >5 seconds of nothing happening.

> If it is, try doing the following.  After a fresh boot, log in via SSH 
> and turn on dynamic debugging for USB:
>
> 	echo module usbcore =p >/sys/kernel/debug/dynamic_debug/control
>
> and clear the kernel's log buffer:
>
> 	dmesg -C

Would ``dmesg -W`` also work?

> Then plug the keyboard adapter into the non-working bottom USB2 port and 
> wait a short time (say, 30 seconds).
>
> Then get a copy of the dmesg output and post it here.  Also, check to 
> see whether the keyboard is working.  In fact, you should check the 
> keyboard during that 30-second wait, so you will know just how long the 
> delay was before it started working.

Normally my SSH session is displayed on the same monitor as the desktop
session of the Quartz64-A (I switch between HDMI-1 and HDMI-2 input
sources of my monitor). This makes doing any kind of precise timing
activity impossible. I'll try doing the SSH session via my laptop, which
hopefully allows timings to be closer (but likely still not precise).

> Another thing you can try is to force the necessary module(s) to load 
> before plugging in the keyboard adapter.  For now, a simple modprobe 
> issued over the SSH connection will do the job.  If this turns out to 
> help, you can configure modprobe to load the module(s) automatically at 
> boot time.

I was already planning to make it built-in as the chances of me not
needing USB2 in some way, are quite slim. And they should (hopefully)
prevent such issues and I'd have a warning less in dmesg.

Cheers,
  Diederik

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
