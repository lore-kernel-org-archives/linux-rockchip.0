Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6C24D37E52
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 15:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pbQglhKF69Rdd39g8J5xER56E4Z5P2mKxGF3J7tfHc8=; b=082dJYSaUGQvZg
	NjNNErZNSqcRLbN0ZuFH+/rZA1CQBi7XjsLuac2Uij4U48+nB0OGIuoFJpcZnJuwaTmEYDplJgFhK
	/c1vzFsWQcma8fvOEZQl+krB1x/DA711HC6WvjoT7yiG5ENr+KgveAk/68Wg3NCZSRgAdHpPtRoap
	OFeWm/2qOtRtvk/83m3eMiBk7WQaq3g97LWYbyUZOdSHsTINeyqELwwiwOSIoKMVV7zkhklB3sYCZ
	ZFWVRkvwjyt9/KtjgwKoQMoKP8STkP0A+CeRb+1l/Pz6RjZmTfhL8tGsXU3R0jRmo+j8VAWBj/CJb
	yZXcKlgzw6j7VHIyeRFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2zs-00000009klB-35jf;
	Wed, 14 Jan 2026 15:41:24 +0000
Received: from out-173.mta0.migadu.com ([2001:41d0:1004:224b::ad])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2zp-00000009kk5-1z6Y
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 15:41:23 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1768405277;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zLGtEW2rVXxeAKQ7IO/aDrpsAcXoI6YCU6kF2PJD+3c=;
	b=fNtB/4rAQltgBsqyuQEm7Xb9ZWnquvLi8GOWtG8/ed2BHlzSe9Vb0DTflsyxkTfGJPtfby
	NuSbq339amH4Rp68iSMp5WCDMVPKUebVr8eR8PRVIc8XHIFb+c4UImxnGsJmLzu4K2Snf6
	DO7DvHc+47Tmue4pgBOjRUEnNm/x6K8kvOR4R+FYVwLNzzIkNU7WKyICKiw/+GN0zv/hRj
	O26rm/9LLiY5pC6SPgLJUJuYxhVUWfjKP0atRQsmSjEEde6eSqy2SacPxUzlJFMw5JTBUj
	LLRfAQcvO2MyEy1QNtN8VQvL6b8gt9Nyv67lRzpEY5gJubujY0UlGH8Llk1b8w==
Date: Wed, 14 Jan 2026 16:41:13 +0100
Message-Id: <DFOFCN7H0Z10.1FAC3SN3TX79O@cknow-tech.com>
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
 <DFOEGOTI1AQ9.175GP7V1VK1XU@cknow-tech.com>
 <91fb697a-7bfa-4e26-85cd-40810a8d2be5@rowland.harvard.edu>
In-Reply-To: <91fb697a-7bfa-4e26-85cd-40810a8d2be5@rowland.harvard.edu>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_074121_795642_3ACFEC4C 
X-CRM114-Status: GOOD (  26.27  )
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

On Wed Jan 14, 2026 at 4:19 PM CET, Alan Stern wrote:
> On Wed, Jan 14, 2026 at 03:59:28PM +0100, Diederik de Haas wrote:
>> On Wed Jan 14, 2026 at 4:20 AM CET, Alan Stern wrote:
>> > On Tue, Jan 13, 2026 at 10:15:59PM +0100, Diederik de Haas wrote:
>> >> I'm now wondering if there's something wrong with the Quartz64-A ...
>> >> I already thought that it took way too long before I got a login prompt.
>> >> 
>> >> In my first attempt I noticed I did NOT have the "Warning! ehci_hcd
>> >> should always be loaded before uhci_hcd and ohci_hcd, not after"
>> >> It took so long I forgot to keep counting, but most of all I forgot the
>> >> dynamic debug command, so I tried again ...
>> 
>> I know it didn't result in the requested dmesg log, but isn't it
>> significant I had the problem *without* the warning? IOW: the connection
>> (correlation or causation) I thought there was, (possibly) isn't there?
>
> I told you much earlier in this discussion that the warning message was 
> unlikely to be connected with the problem you were seeing.

Yep, you did :-)
For me, this was the first time I actively noticed *this* combo.
And I know far less (about this subject) then you do, so things may take
more time to land with me and/or I don't recognize the significance of
certain messages, which may be obvious to you.

>> This was with a 6.19-rc5 based kernel (with mostly media patches added
>> on top) and on a Rock64 (rk3328) I got a whole bunch of these warnings:
>> 
>> WARNING: drivers/gpio/gpiolib.c:3523 at gpiod_get_value+0x64/0x98, CPU#0: swapper/0/0
>> 
>> log of a few of them:
>> https://paste.sr.ht/~diederik/154c5023a3a50d77f1da2195e7bb9a96f6a88555
>> 
>> and I suspect (but don't KNOW!) this commit is relevant:
>> 20cf2aed89ac ("gpio: rockchip: mark the GPIO controller as sleeping")
>> 
>> So I'll switch to a 6.19-rc4 based kernel, which is mostly the same,
>> but doesn't have that commit.
>
> It's very hard to tell whether this is at all connected to your problem.  
> It could easily be a totally separate issue.

True and it may just be in my head. But I'd rather exclude a *possible*
factor then having the possibility that it may have an/some effect.
AFA*I*K, all the RK33xx/RK35xx devices uses the same USB2 'stuff', so
while I didn't see it with the Q64-A, I'd rather not take the chance.

>> FWIW: I'd expect to see sth in dmesg within a second of me plugging sth
>> in, so I was surprised by you calling '30 secs' a short period.
>
> 30 seconds was a generous estimate on my part; 5 seconds probably would 
> have been enough.  However, the USB subsystem does include some timeouts 
> that are 2 seconds long and others that are 5 seconds long, and some of 
> these timeouts are inside retry loops.  So a 30-second wait isn't 
> unreasonable.

But that's all processing times *after* it detected a USB device?
The thing that really surprised me that it took the kernel a minute to
detect anything had happened at all. If that had taken 30 secs, that
would've surprised me too. If it then took some time to make the device
fully available and operational, sure, fine.

Cheers,
  Diederik

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
