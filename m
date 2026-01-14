Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FCD8D37E3F
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 15:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbBQ/ZlphCwM6IFLjfkut56e74Ha3u5MaFUd9jiJUUA=; b=JUm/lE0HOHpVWH
	1tGHSyhtjPm7wnU6OQ8tytavqR4yRCoMzpYCFK1Xh9N5Z032SI1Fpo1d/Vr9z5vgwXcR3AQJCpJ8/
	jVMis3uwIAsJyseGcqHfOGry5UcWTWmTWBT8Fk8eZhT2lrVAwVJfKY6Mpg6JWwAUqs4PlU6he/2fx
	prlbWhASA0jEJKPLX+idrpjLA9gDe49V7cev+PBx8w5OGM3Rm7d6EDHCz/HvX/hPjeJTd2aRKNLYk
	rEN8UymW9IH8GMRtgMRf7rOEX0AAC/C+Rc1XUN1JUtbZh7pZNj9245Mu/LEyb5Bcd37byU2PWno86
	MZSYSmMJTo6oBgjj+9Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2eu-00000009elJ-10EM;
	Wed, 14 Jan 2026 15:19:44 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg2er-00000009ekM-1m2C
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 15:19:43 +0000
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-8c24f867b75so895371185a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 07:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1768403980; x=1769008780; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=q/l2dTGi1fcjjWqEh6dTIcofWxSDYplLtwaLtxQH71o=;
        b=RWZHNqBn5PaDeIvmdG9GmNhjvoz15WzeSAJQ4rQRJFgGnGV7TWYG1kZXL29OV4E6b4
         uMt0wQHnUJSsqKH+vGffMP1T3Alciy/xsjLwxgLV8jGqPT2m1MojQ8C4UNQ4iG4VUhwC
         OSZivEaQ9+Reqg9WAdHSbrQWQhKr9G0FP6Yuw0ynIBnaEi8hbmDh5EtBFllz31EIfzaz
         lWLHzcg7cemBSLjBOzX+W7s2x/qx3F70vW9gBqwMxX+3usPEd0OeEOECP0H7hqK9jibD
         59TPHFfcCh1gueCMxwQI/NWxLe/cJpyvPoVE39kJ5CMK0Oqj/uvgDV4okLJXuc/CG0tl
         RrwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768403980; x=1769008780;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q/l2dTGi1fcjjWqEh6dTIcofWxSDYplLtwaLtxQH71o=;
        b=n+0YigkKBIQ9L0D534tzVWvBkkFT2n7RndUVIkSNHf8yhsdbkhZCymRihwh6/UDp24
         69KN2ZSFtKWHJsbWpjLCcy26XhOJOcoW8L+ExzNAHVSeB5iQ2WcyPT76mXZdhygznu7j
         r6XuOtQ/TrxRXNEI7QhNSowivrKiXTZEQbHdPmZthJng57rz/mkVExSoSFUtWzZeOuKR
         ZXAsnaTglfHF1gL8GW9nSJSJ3+NZgaCxBNq5/LyfPNoK51yK+RfXY4AuitH40uP+/VY0
         Wwcze2qNQsGuRA5awUSmcwEf5zKfh+ZIjsndue/CGx2JcR+8tr7/zGIvm7YTu5qXSCr3
         xdKw==
X-Forwarded-Encrypted: i=1; AJvYcCVKZTpudZ73NJSFz319g7GCMmdNKxjzEVIR1ae0i8SYr4Y8vOfXZQulr926PVkHEr7nbBcZrgA+5lNh956FzQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YysRVSEhnIS4pOoCvWsdTRavI3u2lzmAgLuVRG8KcnBzIUu1oIQ
	DcO4KhBZgZLT79Qy2fS49e7TXYVmwoDKixmsXrtUgqIKTe+TX9+kmR9zKFEtfWv3XrZNpFOw+fS
	pMdo=
X-Gm-Gg: AY/fxX70bGhtVBV6AY6mrmdydfBvmfabR/eGGALtgXLYRVo1k/sIMoy0mmJVxzuqh+h
	hvZ/N5o7zHeH4m9Grnn+tCi8XPYku7gBJBR4wRxb6cAsAVK8T5u5n5U4uoh2+T8UE71Hqp2wnQl
	+tVG1C+vD2ikntpB9yQZ+I4e952MV8/NjB4GnZXr3I4hqc9ns7gd0bfQ1EcsnmAOEDTIEOc6YHq
	4aFAb8cA5+M4ML8wvd6KOm5CjeGOO69PVwsEJEYyJQvY6FeUR3ufNcBOLgrTVWbrYVKheYhIDjv
	dKz0xqWjWotF0C8/3zaLZ+ppVGANR8EThE0Jj/YxcprM06PywizLwVCjV9zJsdycdyQ3GZNLCmD
	NpBmWQDck/+e6vD2nJiKEVpXaooWzod/Dxi5ktPYIS3yVPHyBFRa6XoOzDTr+6t3ayNr6SIWzKV
	XD+9/8uZI1PA0g/2NeXU/pD0j7C7D2UQ==
X-Received: by 2002:a05:620a:2991:b0:892:eeb9:4def with SMTP id af79cd13be357-8c52fb9240fmr397315185a.49.1768403979358;
        Wed, 14 Jan 2026 07:19:39 -0800 (PST)
Received: from rowland.harvard.edu ([140.247.181.15])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c530a6c1a1sm179648085a.2.2026.01.14.07.19.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:19:38 -0800 (PST)
Date: Wed, 14 Jan 2026 10:19:37 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: USB mailing list <linux-usb@vger.kernel.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: Track down EHCI and companion errors on rk3xxx systems
Message-ID: <91fb697a-7bfa-4e26-85cd-40810a8d2be5@rowland.harvard.edu>
References: <073879e4-aea8-4625-bc83-c4b6dd9c9231@rowland.harvard.edu>
 <DFNI1Q9N7GC6.20PN0RG9LRAQF@cknow-tech.com>
 <38365c37-b125-4ffb-8ce7-bd4f3f7596ba@rowland.harvard.edu>
 <DFNLGSUWJA5Z.3OJHVYWST2YFH@cknow-tech.com>
 <b9041d32-1eab-4428-ab2b-769daefdbdcd@rowland.harvard.edu>
 <DFNRUF2LUPH4.1493G2SYERZ7Q@cknow-tech.com>
 <b108b747-cc7c-4537-b9bc-b0862bac71ff@rowland.harvard.edu>
 <DFOEGOTI1AQ9.175GP7V1VK1XU@cknow-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DFOEGOTI1AQ9.175GP7V1VK1XU@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_071941_496908_FCD366EC 
X-CRM114-Status: GOOD (  24.40  )
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

On Wed, Jan 14, 2026 at 03:59:28PM +0100, Diederik de Haas wrote:
> On Wed Jan 14, 2026 at 4:20 AM CET, Alan Stern wrote:
> > On Tue, Jan 13, 2026 at 10:15:59PM +0100, Diederik de Haas wrote:
> >> I'm now wondering if there's something wrong with the Quartz64-A ...
> >> I already thought that it took way too long before I got a login prompt.
> >> 
> >> In my first attempt I noticed I did NOT have the "Warning! ehci_hcd
> >> should always be loaded before uhci_hcd and ohci_hcd, not after"
> >> It took so long I forgot to keep counting, but most of all I forgot the
> >> dynamic debug command, so I tried again ...
> 
> I know it didn't result in the requested dmesg log, but isn't it
> significant I had the problem *without* the warning? IOW: the connection
> (correlation or causation) I thought there was, (possibly) isn't there?

I told you much earlier in this discussion that the warning message was 
unlikely to be connected with the problem you were seeing.

> This was with a 6.19-rc5 based kernel (with mostly media patches added
> on top) and on a Rock64 (rk3328) I got a whole bunch of these warnings:
> 
> WARNING: drivers/gpio/gpiolib.c:3523 at gpiod_get_value+0x64/0x98, CPU#0: swapper/0/0
> 
> log of a few of them:
> https://paste.sr.ht/~diederik/154c5023a3a50d77f1da2195e7bb9a96f6a88555
> 
> and I suspect (but don't KNOW!) this commit is relevant:
> 20cf2aed89ac ("gpio: rockchip: mark the GPIO controller as sleeping")
> 
> So I'll switch to a 6.19-rc4 based kernel, which is mostly the same,
> but doesn't have that commit.

It's very hard to tell whether this is at all connected to your problem.  
It could easily be a totally separate issue.

> FWIW: I'd expect to see sth in dmesg within a second of me plugging sth
> in, so I was surprised by you calling '30 secs' a short period.

30 seconds was a generous estimate on my part; 5 seconds probably would 
have been enough.  However, the USB subsystem does include some timeouts 
that are 2 seconds long and others that are 5 seconds long, and some of 
these timeouts are inside retry loops.  So a 30-second wait isn't 
unreasonable.

Alan Stern

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
