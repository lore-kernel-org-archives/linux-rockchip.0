Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26FE3D2F33E
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 16:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WUSvOAxyRUCwPT56spUIcEaOb30juTeybMICcjexpZ0=; b=GoFieX6U6ukgYr
	H7dEMQ6dVPH2VE9dRqqgZAMZM++pqwDkZ98cdGcoJKdbWFiI+AO/QPD/t9POolWDsfZuE60kN6wF6
	7oAU11A9B+bdLd6JIVSbFkKHwx2tKI1/QM3HsGjM5kCGnIfoY/ZTV2kjI3H9b7vTSDduTCPbMytVZ
	xpdSXVUlLbrz+Bdq/4q4Y04Kef2i8z7E4/G09FXapOj83hfRxkj2vXXQsdUcB8Ovq65bMiyBxU+R0
	8eUjgfF+kMIhfK4fB/t51rYGWEu7EvkXMRQcs//H3PqETpVTpne7T+swi86OdI5CK6ecl8Jl2a0NP
	hu7oCi1t5CfbbAdq0Yzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfhAP-00000007Sqg-3M5H;
	Tue, 13 Jan 2026 16:22:49 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfhAN-00000007SqI-1XfF
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Jan 2026 16:22:48 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-4f1b1948ffaso53890311cf.2
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Jan 2026 08:22:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1768321366; x=1768926166; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=X74vWYnBsqzGHyfTnqM4DKdfP76kV6yU74BIUcrrZcc=;
        b=qyDCR/wAIBeglgHP6R57P1/7j5MuTfPvwfAH9U7HxBwwLhHLmopEvgzxgiWAMw5xzY
         6qYLr4q+RgoeYAfJOmCuqUw0t04ym1mm5zsyMgv8dL7ZR8WXPhAJTne2HSBMKnPPBizh
         u1oRMVfsylqvRIEuOU4KHdlJPqKRKqL5KFpVaTBERBL2Sld3JhLk3S6/27VfkKNd0yNQ
         gyDePPHVcJK8rQi1suTvrz/RBIxNs1y3Zl7URI1wJhpf/i8xTPWKZh1c80fNL9EnikPi
         x72wz0JSL5u7H5jui2ysT/rkxNh7+36tNVVdGZJ4RvaJBwvn/GDKAqjB4WhUor0tx5sH
         21BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768321366; x=1768926166;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X74vWYnBsqzGHyfTnqM4DKdfP76kV6yU74BIUcrrZcc=;
        b=ldhMr11bdTOVz7t3D5fZRGmqOvUlqj+cIJkPxESXOKhHmbXCo38v0kGR6BcHOiKWCQ
         Cc+HloEJDue6RaSB2wKh4jfQ9TuwzJmSrlZrud4hScuLGiARISy4kRA+rwSNHaOf1CND
         nZ+NSGc+aCp178prY3yGHR4/b3VLz/D/rOPC0Tfh2CCWAJMQKSVUtwbS9fG4JpfGZdCk
         ci/JzfJUOjH0m9DLntLmsyOj4OeqZICdtJt7gi5TOYc7TbTyIRLifpPp2cYfJ0NEU9C3
         xVqMwwDYmX+AQv+8lsyKz8MTbNNiuUMzw5PJ9a8v6PpSAKlLx9FFwGqW+0o3xEYBfM7F
         l1GA==
X-Forwarded-Encrypted: i=1; AJvYcCWJLpiFq6LsAnECU3QtNiUpfKSLI6ApyVw+8fAvXpu+MwJf/jF7zvaTLorSLcuThPCWOR9bhDZ0TLLeKjeaOw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzCbk1tBxNAMD2aNjbZouXW4nA3r/c4qsYTqVgLhYB981fdUo0j
	cYK98Hn2vK+LSgP17HL6i7ckP25L6qMfgyRXcfV9SZRZndZ8WkCHPG+0f3YumX3Ai/JCLd8GJsj
	UfzM=
X-Gm-Gg: AY/fxX73lv0X8V9Ol2NOxijTRLhtA3F5fey4FhK3kSQmk1GD4SvxaDC5byydq20I1tK
	JWPm2XGlgHfco6cU1CyRzrfK6AT9b8sZjz8B0bRBZCObwX1ObFKrsCyCy6z38vhEBb73iQvJHoY
	+Eqm3HNm7f7i0mB2OnhO56a7AG71hK+4MhHO9awwl6rIev5RUeeIk8/K5y3p8J0Hc0RFPAuoR62
	hrQrA9q0mw843Hj44NkWwHGaCgcIO9c27fv3UiAJgy2/X2lltnZww4/pbINAxxtqndc4OTnYUzC
	wC5yzywoThlOj9PhF0Tayv1zaWf2N+jPT9Q2u2N6raZkGmiur1mBhkL15Ut7c2BECBTgiPXBu6L
	4pr7kZm0iXVj06RBqh+54RYBv1Y28QjRJDLe/YhOU+wZCvWDCaPM1gbpmo1YWXZLHvArlfxM2C1
	ct+ASpzL3DihOU
X-Google-Smtp-Source: AGHT+IErkjpWa120sFbKMAdCMCgyMbzGdCF7VgpTh5sizxo1ArqrW9ocmCNmPhmTtyPd14FP/67arg==
X-Received: by 2002:a05:622a:11d3:b0:4f1:cd0c:80f6 with SMTP id d75a77b69052e-4ffb4a44431mr309936451cf.49.1768321365696;
        Tue, 13 Jan 2026 08:22:45 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::7a0a])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ffa8d6d2ffsm156409631cf.15.2026.01.13.08.22.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 08:22:45 -0800 (PST)
Date: Tue, 13 Jan 2026 11:22:43 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: USB mailing list <linux-usb@vger.kernel.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: Track down EHCI and companion errors on rk3xxx systems
Message-ID: <b9041d32-1eab-4428-ab2b-769daefdbdcd@rowland.harvard.edu>
References: <073879e4-aea8-4625-bc83-c4b6dd9c9231@rowland.harvard.edu>
 <DFNI1Q9N7GC6.20PN0RG9LRAQF@cknow-tech.com>
 <38365c37-b125-4ffb-8ce7-bd4f3f7596ba@rowland.harvard.edu>
 <DFNLGSUWJA5Z.3OJHVYWST2YFH@cknow-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DFNLGSUWJA5Z.3OJHVYWST2YFH@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_082247_413890_A48ADC87 
X-CRM114-Status: GOOD (  29.35  )
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

On Tue, Jan 13, 2026 at 05:16:05PM +0100, Diederik de Haas wrote:
> On Tue Jan 13, 2026 at 4:47 PM CET, Alan Stern wrote:
> > Is this repeatable?
> 
> It doesn't happen every time, but it did actually happen another time.
> After that test, I shutdown the device and unplugged the keyboard
> adapter. Then I powered on the device and waited till it had completed
> the boot process.
> Logged in via SSH, retrieved my usual boot process data (what you saw in
> my 'paste' starting with ``uname -a``) and then did ``dmesg -W``.
> 
> Then I plugged in my keyboard adapter in the bottom port and noticed it
> didn't work (straight away). This time I waited, pressed various keys on
> my keyboard, turned the keyboard off and on again, pressed some more
> keys ... and after ~20 (or 30?) seconds, my keyboard started to work.
> When I then switched back to my SSH session, I saw dmesg had (then)
> printed messages indicating it saw the adapter plugged in and ``lsusb``
> did see the device.
> 
> But that ~20 seconds is key here. Normally I would conclude that "it
> doesn't work" after (say) >5 seconds of nothing happening.
> 
> > If it is, try doing the following.  After a fresh boot, log in via SSH 
> > and turn on dynamic debugging for USB:
> >
> > 	echo module usbcore =p >/sys/kernel/debug/dynamic_debug/control
> >
> > and clear the kernel's log buffer:
> >
> > 	dmesg -C
> 
> Would ``dmesg -W`` also work?

The point is to get rid of the everything in the log from before the 
time you plug in the keyboard adapter.  If you want to use "dmesg -W" 
and edit out all the initial stuff by hand, that's fine.  I just don't 
want to see it, because it's not useful and will only make the report 
harder to figure out.

> > Then plug the keyboard adapter into the non-working bottom USB2 port and 
> > wait a short time (say, 30 seconds).
> >
> > Then get a copy of the dmesg output and post it here.  Also, check to 
> > see whether the keyboard is working.  In fact, you should check the 
> > keyboard during that 30-second wait, so you will know just how long the 
> > delay was before it started working.
> 
> Normally my SSH session is displayed on the same monitor as the desktop
> session of the Quartz64-A (I switch between HDMI-1 and HDMI-2 input
> sources of my monitor). This makes doing any kind of precise timing
> activity impossible. I'll try doing the SSH session via my laptop, which
> hopefully allows timings to be closer (but likely still not precise).

Exact timing isn't important.  An approximate number that can be 
compared with the log is what we want.

> > Another thing you can try is to force the necessary module(s) to load 
> > before plugging in the keyboard adapter.  For now, a simple modprobe 
> > issued over the SSH connection will do the job.  If this turns out to 
> > help, you can configure modprobe to load the module(s) automatically at 
> > boot time.
> 
> I was already planning to make it built-in as the chances of me not
> needing USB2 in some way, are quite slim. And they should (hopefully)
> prevent such issues and I'd have a warning less in dmesg.

Okay.

Alan Stern

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
