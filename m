Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FF60D37E59
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 16:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wW7Yi41jBwAN/5wNFDOvxZJSY/5H+uWEteBg10YpLTQ=; b=v4wD4MQhBbo4Gq
	7Mwe72vQwo1edlpdH2FW88hAzC5xCOG8zMK0OSN4CcBKSOkw8/I6Xm6padc6cJfYPabtc3Zia8EaT
	NvZK2n0Qqf6OAEN5Gy209jkjnDFV5T7i9pbV8NBMDwUdY0IXRhBN3LyTmrf5O32T/uoqjyyuK9Ema
	6nK7SLztihPlQoLNaNL1FN9IgMkb5o8xpAnu+SqxajP35tsSDDq6ApoVn3dWQdgeQee/kd3aTqIfG
	K6R6fry++vurZHEZt1vyt0h25U7C0n7ScbSu0TJfs/g1bxKOKbViCT0TJSkw8sabpVSIMM4hWqx4Y
	YTdGDpSKKFF7jLpP04cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg3PU-00000009rkl-3yp1;
	Wed, 14 Jan 2026 16:07:52 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg3PQ-00000009rir-3Vgk
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 16:07:51 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-88a34450f19so88901536d6.1
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Jan 2026 08:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1768406867; x=1769011667; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0w8zIqQECJAGujQJ53HaaQtSuGI0B6FUk93HelliUNY=;
        b=LTL7fzr31dYvn9FuJlwds12UYuCd9raFwegAdWr/6MM9tBoxm03px0tkno5p5SD5rK
         ReFFEMZQ2PHix/cxDmEILLAKeLUCQn1vkGjGJNu6ts1b7w9j4bGMxI1lsZqdTLGvdaLJ
         3Fjk48JruaKcIev1I+WSs6yfhNWzociwqBjmjTAvUO21qQ2My14Ip745kRJLnAqu2L7L
         9MJpxKF3xTe+f8WB7sKtFPUVwA3xsmZhk0NkHAeBdGlchoHuRryD1s5WggIdb5U0kCv9
         Kf9ppdxObJKGRq0DCbzpMW4HphF/wAgQvJSE7pJV33xzuG4qG7+1vlnsMun3Y0QehkEn
         QUog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768406867; x=1769011667;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0w8zIqQECJAGujQJ53HaaQtSuGI0B6FUk93HelliUNY=;
        b=E2632ePfaa/sCTNa7tzrannQXqDzJkNYJO8KfHLwlzFugOGT74IewdG2YKrVhuAeTg
         DS1l5kslEVeaQqeSB/9lju5s2I+tCQwxXmidBQtuuXcirJaDh8KvXd33c10BKAJqs0Fc
         M2VpDFkQpF4irRcUQhH9qbWK/uBuFfVOOAUQZmkAtIGCtP4YA5zRt1vGL9YvlVbLg8GD
         fW/SzdpbWH+FmvdsA6VbkjtFiGyhmliMdM1GrgtQsFhOVUGlBql+svkU+sVj8p85x17p
         Sx26aIzxTviZixbvtSKtgK805LmL6oycPB47tlUCxvYK8agPpgrYY6exhU//K2eB13bm
         iVuw==
X-Forwarded-Encrypted: i=1; AJvYcCUyQZAmw9XUG8+qDX5Tr8wlRtXkfyPblGz6AIJnyQBHu/Zi1B0TqD1dVLtSk+S3Ed14eaGkYiLtpXj3zRNM9A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzSubaEGILZ3Qr/8Wy0+XUmvsr2zkqKM4TiOc/2++zq73b9w71s
	SAp1d4Om635prNGsOFoYoi0WWxgCUOIDGpaFFEtmi8EBLKOQfD8LJeVrNJmkr+SuPG9g89vIaaE
	dQE8=
X-Gm-Gg: AY/fxX7fViY5mVSnsjKgkICNhMOzti+LJjeNh9YZglGQPYNifW+D/XUjrPDMUGMJdoJ
	WN8XHyR0+lbyYoI6MmsxW1mEM0VY8iynEXl+bh2/ZicGqYFpJ38THtdv3nxTCX2Kjr1sIiLuRwq
	SQttxTukqdwSBKd+zSh/F22K8nZdPZqyLbjCXLpdWmUdCIhhgB/t5MH0gIoDJHc8gVJsu29Zmt2
	mkBhtDmYP6D8s4FrCNkNm4txezwjaL415OSntOdmJopsolWNBAh+ONhWGDeg8k3PXlt6KwBbNEl
	0SApO+1YGQXcQJteemx3cJ1dGeir86SnfKA+UzuioekPF8LyaVRaaF86KpTG5KezDzS2M7bKJ/b
	W4+5/DHe8QobuWREEBNAVIIAfUit06DHx5SxbS2IPxdwjvjuZOyXao0XqaZVSStJCV6LcuRvUO3
	vD1ByT3vMZFhRhzQEA+AS6dGaXPsSodyQNeD4o56D5
X-Received: by 2002:ad4:5be5:0:b0:888:593d:c08c with SMTP id 6a1803df08f44-89274390c21mr42145126d6.20.1768406865775;
        Wed, 14 Jan 2026 08:07:45 -0800 (PST)
Received: from rowland.harvard.edu ([140.247.181.15])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8907728565dsm172303526d6.56.2026.01.14.08.07.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 08:07:45 -0800 (PST)
Date: Wed, 14 Jan 2026 11:07:42 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: USB mailing list <linux-usb@vger.kernel.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: Track down EHCI and companion errors on rk3xxx systems
Message-ID: <febe88e2-9abd-481e-af9d-3f0825ef204b@rowland.harvard.edu>
References: <073879e4-aea8-4625-bc83-c4b6dd9c9231@rowland.harvard.edu>
 <DFNI1Q9N7GC6.20PN0RG9LRAQF@cknow-tech.com>
 <38365c37-b125-4ffb-8ce7-bd4f3f7596ba@rowland.harvard.edu>
 <DFNLGSUWJA5Z.3OJHVYWST2YFH@cknow-tech.com>
 <b9041d32-1eab-4428-ab2b-769daefdbdcd@rowland.harvard.edu>
 <DFNRUF2LUPH4.1493G2SYERZ7Q@cknow-tech.com>
 <b108b747-cc7c-4537-b9bc-b0862bac71ff@rowland.harvard.edu>
 <DFOEGOTI1AQ9.175GP7V1VK1XU@cknow-tech.com>
 <91fb697a-7bfa-4e26-85cd-40810a8d2be5@rowland.harvard.edu>
 <DFOFCN7H0Z10.1FAC3SN3TX79O@cknow-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DFOFCN7H0Z10.1FAC3SN3TX79O@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_080749_016575_EA5F2ACE 
X-CRM114-Status: GOOD (  17.10  )
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

On Wed, Jan 14, 2026 at 04:41:13PM +0100, Diederik de Haas wrote:
> On Wed Jan 14, 2026 at 4:19 PM CET, Alan Stern wrote:
> > 30 seconds was a generous estimate on my part; 5 seconds probably would 
> > have been enough.  However, the USB subsystem does include some timeouts 
> > that are 2 seconds long and others that are 5 seconds long, and some of 
> > these timeouts are inside retry loops.  So a 30-second wait isn't 
> > unreasonable.
> 
> But that's all processing times *after* it detected a USB device?
> The thing that really surprised me that it took the kernel a minute to
> detect anything had happened at all. If that had taken 30 secs, that
> would've surprised me too. If it then took some time to make the device
> fully available and operational, sure, fine.

Well yes, I wanted you to wait long enough for all the initial 
processing (making the device fully available and operational) to finish 
up.

However, I agree: 30 seconds is _much_ longer than it should take to 
detect a newly plugged-in device.  It should take less than one second.  
One possibility is that something involved in waking up the EHCI host 
controller from its runtime suspend may have caused the delay -- that's 
why I asked you to try turning off the controller's runtime suspend. 

Also, I'm not at all familiar with the particular hardware used by your 
platform for receiving wakeup signals.  It's possible that a GPIO 
responsible for this wasn't working right and that's why you were 
getting all those warning messages.  Another reason for wanting to know 
what will happen if you take suspends and wakeups out of the picture.

Alan Stern

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
