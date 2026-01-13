Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7484FD2F338
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 15:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BL8xohH21GbSmqyeQWdNQk0REbcXWmKUrQ1i6+ACCRg=; b=NFLATlkjjRMk2v
	aDQqEyRbmQkN7n/UV1duUo+SnWG9W0oydsdI6Z3X9lcA3iPrFu6AqM8vtuhKzjSiJU8HcSRcNx5Dr
	NCbY3TpV4n8WTkXcaKIiQ3NvAZxGWIhp+9adTkgH39JO6JUIVTFZyXVvBsrGUbczrS+FTUOVFendx
	1898Xd0tT4Yma+txVKWgtGZ8xRSVnG/EJw1Huru9u6BzrlchzbgQ7xV4GMP2+hO4KBfoGOe1LDyd8
	g4RVWeQs9r+jWv5E74gTP/Q1v9LhVCsHxIciGQVeOPD1sF6rHWl5kdS2RYmnehEMbPVbhwyv2DJb/
	DaX+CyhyKfWbgzn2EIZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfgcO-00000007Pne-3vx8;
	Tue, 13 Jan 2026 15:47:43 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfgcK-00000007PnF-3Bms
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Jan 2026 15:47:38 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-4ee14ba3d9cso85113321cf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Jan 2026 07:47:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1768319255; x=1768924055; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=V4E29K8NtthQbL8xaHlQbXgCcFMaQ8I/QIsll/4mAVI=;
        b=YA1EKLJukVSDbfLb+Czme7fQEEgRloVRCejy5JD3ZviAQn66IIi1iG4g+3GViZRzsZ
         b08L7IGyCUAc/51oeCHlnTIH8jEK0ZkP0wzk0RXCzu7ijWW92C+DeWlLqqUdS2AyM4Qr
         DyrpoLlfn7ICNJlGbkt1RibBWPFpGJMzS4ZE+Wm/XGVoR2lcmWbx2PZk0fvtlZzZI30Z
         ipa3i+KvIYjiV0MoimmNmvdjFdEZvIrbePSfgZmxDXY6AIGdMV2QJF+IHhh0nrHwCWe6
         0GSpuhrNrKpjc+DSeArm7JUlkRotNevzO5ST2KiMiw8r0r0wtBEe1uQfs+K0uHw9jJp7
         tFww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768319255; x=1768924055;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V4E29K8NtthQbL8xaHlQbXgCcFMaQ8I/QIsll/4mAVI=;
        b=M8F6IbaXMmuxrjijyisHh13MO1HAext6WrlOdPKpjHobW3+V4Q9zjU17txp/BdJLfs
         rKCEV4uA48U+jWVzA9X6No4cOe8LwUJfYvnqaRaLjoMh6bUFsCQYD54OjEr2D56Bx6VR
         Y3jG7tCKUbUasZDeBhPyGyu+uUxqKn4TjVRW+VQuPEy2mux5mexSz/kXCqohicL0qpvT
         GMwdTq4vQTdXTFiO+cFGeolsCs3+gx2a8pAMyY6KDIPDaRClJ+JU3juwm0j6QV3A5Pm0
         L1InGEaIBqnJbMv5z6QUGgHbhYiiftQ2Jt6TRE467JliS54IwPvLVma+yq5DuQl32Vg9
         L7sQ==
X-Forwarded-Encrypted: i=1; AJvYcCW139o9ApibIFjNKMRRoLghR/5WFbhys/WRS3YTcU6XpTG+nSQdsa9POvI5SIyfdF3B8gUm1PVATnbq9avryg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyxiC4m2D6CDbfxz3BgL/8HH9uo1UmXKGphTNa623WY1LGIrxXj
	kKcKJQbm0ABMrvyJkP09QV7uFJqYxAu2cmFEP4g0iStfBM94/J47DtXyWlchXoE1oQ==
X-Gm-Gg: AY/fxX5skgYX4wTdaaC1KQK7bNeWn4OrpGMhDCeCmK9wISkhuC2Snxh0RlEw/cYEGKV
	uUUIM2z/VTBbrkUiNgaRVaGP1ZKS0QmnTHPc/vTc6EdVLcTzATT3wvIwPgDm5FWmso0vefjTltF
	kNhflb8RRxkor1QQmrcmBHeVl3AwMOEuYiZQcW6snG1WajV9TuWgxAQI4dhvpZoolz+ECdm9NP3
	WaQb8AE4v182JJWOMyIdvMx2nIUrhklmLr6SuYQGW6X9CcwUjUa/Fot8ZKT8Gp0No+uXt2ozyRt
	Y+4ClOqCrX1UaGAMaBUEu0T/+6jcGPtZxBecEJsWra2HrDshV1EknkeTxOGPyRqf0aOHSX7oalz
	3BE+YPEwfzicqaZHwe3sxLobS9proVXy42cN7lmxIAa3g3rrXFhY4pqYroOUyY11XmuQI+QxqLA
	DCotH2IIkqlQU6
X-Google-Smtp-Source: AGHT+IFhjbjTMA3UG1+LzK0VTQpsT0ybcHnnkXUDGy3gkqerhp+UUzpz/yX8uxO8J69O4bodtuJvPw==
X-Received: by 2002:a05:622a:20a:b0:4ee:24e8:c9a1 with SMTP id d75a77b69052e-4ffb499a89cmr245461151cf.44.1768319254559;
        Tue, 13 Jan 2026 07:47:34 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::7a0a])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ffa8d3d92esm149003291cf.5.2026.01.13.07.47.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 07:47:34 -0800 (PST)
Date: Tue, 13 Jan 2026 10:47:31 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: USB mailing list <linux-usb@vger.kernel.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: Track down EHCI and companion errors on rk3xxx systems
Message-ID: <38365c37-b125-4ffb-8ce7-bd4f3f7596ba@rowland.harvard.edu>
References: <073879e4-aea8-4625-bc83-c4b6dd9c9231@rowland.harvard.edu>
 <DFNI1Q9N7GC6.20PN0RG9LRAQF@cknow-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DFNI1Q9N7GC6.20PN0RG9LRAQF@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_074737_203432_76583F06 
X-CRM114-Status: GOOD (  15.94  )
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

On Tue, Jan 13, 2026 at 02:35:21PM +0100, Diederik de Haas wrote:
> Got my (gtkgreet) login screen and plugged in my keyboard adapter in the
> *bottom* USB2 port ... and that did NOT work.
> 
> Logged in via SSH and noticed it was indeed not listed in ``lsusb``.
> Checked ``lsmod`` and ``dmesg | tail`` ... and noticed the kernel *did*
> notice plugging in the keyboard adapter, so did ``lsusb`` *again* and
> then it *did* list my keyboard adapter.
> I did NOT employ my usual 'workaround' by plugging it into a USB3 port.
> 
> So it may be that it would have always worked ... eventually ... if I
> had just waited long enough?
> While 'dmesg' seems to suggest it took little over 0.5 seconds, I'm
> really not that fast ;-P (or that impatient)

Is this repeatable?

If it is, try doing the following.  After a fresh boot, log in via SSH 
and turn on dynamic debugging for USB:

	echo module usbcore =p >/sys/kernel/debug/dynamic_debug/control

and clear the kernel's log buffer:

	dmesg -C

Then plug the keyboard adapter into the non-working bottom USB2 port and 
wait a short time (say, 30 seconds).

Then get a copy of the dmesg output and post it here.  Also, check to 
see whether the keyboard is working.  In fact, you should check the 
keyboard during that 30-second wait, so you will know just how long the 
delay was before it started working.

Another thing you can try is to force the necessary module(s) to load 
before plugging in the keyboard adapter.  For now, a simple modprobe 
issued over the SSH connection will do the job.  If this turns out to 
help, you can configure modprobe to load the module(s) automatically at 
boot time.

Alan Stern

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
