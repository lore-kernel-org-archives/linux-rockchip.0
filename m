Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C8E0C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 05:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sen4Bf+uvSntQ5qEbrploMZv6y/aHUYb1Am5xeVxc+s=; b=Smq9Eczfza8yLLabVHUMaU2XDn
	87hc5U/kXEw5Bxv2TJxqNw/0/csYFFXQ589wVMq/cL5HC89dGtKgOk0D8U5z+cke03UrIl0Rt8BO5
	GGBs0nyzMPTwD647Oie8l9vOfYu74rUIq9CFC/s7AiBKVVsJRd0hWJUkTeIyUDvBmKZg64CyBUshZ
	1kkav3kTh4Uo4El+HuZi+5wdU5ucLXxou/q2JzyC69zIx2/RoEMFbBkAwKxQi/Z1TE2YCorxKrGEZ
	KhFog8y5ap0PMyuLUUv5EoUr4dxksn0NL2kq1tIUVy7z99Rs+JnE824dvChCKktnAxsB1emmSDosR
	MBqHxv0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0yuM-0074ZN-3o; Tue, 14 Jun 2022 05:16:06 +0000
Received: from mail-wm1-f49.google.com ([209.85.128.49])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0yuA-0074Wd-SP; Tue, 14 Jun 2022 05:15:56 +0000
Received: by mail-wm1-f49.google.com with SMTP id e5so4029670wma.0;
        Mon, 13 Jun 2022 22:15:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BKPCEej7XNpKZCmWUzCvozlUOdtWySqWwvAYCO0M4ug=;
        b=CdPmWgRmo+/BAvX9CM/TG57WJ5kcS+brK7z3EmIlvN+MR9I4k86Td6u1J0q7GAfHAY
         ChjWeQ11qVo8xNQqlvyocMbZ4xnsykL0rJc7xVhV+r+JVANd/hfG7Atvcg7gfsgVumzY
         pIb+5u445NuCTwz+uKgYdfLf540xaIrOL/ptv2mqgfG6nXqyrgmkacGI2/poi5h8tBs9
         eAEMto7OuSlzP9EuqHo3UvKLeST0JUE6uVnh6+KfTrCOEzFjgGH2K6ZLv/FepK5sL0ex
         pryql9HyplKZzX2wMf6VKNQxTcjSu1RX0DyAV0YsmB0653h5VKIvHDbIfBdDIqle+Ua0
         Wj8g==
X-Gm-Message-State: AOAM531z/A1JkLUT59Y1EuUcimLFBiAawV0Sq7BoqSTMB57ZIUIxTD/4
	NTp0HPdSEvrgjlthJ7btH8I=
X-Google-Smtp-Source: ABdhPJwUBl/sB3fsDVIR+RwP9lapXhzMNi9BnuL0kim5pq2+MZneitk7qs+SsvWOlrYy9e99M78qvQ==
X-Received: by 2002:a05:600c:3510:b0:39c:7fe7:cbd3 with SMTP id h16-20020a05600c351000b0039c7fe7cbd3mr2143641wmq.191.1655183750835;
        Mon, 13 Jun 2022 22:15:50 -0700 (PDT)
Received: from ?IPV6:2a0b:e7c0:0:107::70f? ([2a0b:e7c0:0:107::70f])
        by smtp.gmail.com with ESMTPSA id ay4-20020a5d6f04000000b00219b391c2d2sm12741996wrb.36.2022.06.13.22.15.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jun 2022 22:15:49 -0700 (PDT)
Message-ID: <297b268a-85de-bc8c-88eb-b8d050ac1ec3@kernel.org>
Date: Tue, 14 Jun 2022 07:15:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [BUG] rockpro64 board hangs in console_init() after commit
 10e14073107d
Content-Language: en-US
To: Alexandru Elisei <alexandru.elisei@arm.com>, sunjunchao2870@gmail.com,
 jack@suse.cz, viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org, pmladek@suse.com, senozhatsky@chromium.org,
 rostedt@goodmis.org, john.ogness@linutronix.de, keescook@chromium.org,
 anton@enomsg.org, ccross@android.com, tony.luck@intel.com, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 maco@android.com, hch@lst.de, gregkh@linuxfoundation.org
References: <Yqdry+IghSWnJ6pe@monolith.localdoman>
From: Jiri Slaby <jirislaby@kernel.org>
In-Reply-To: <Yqdry+IghSWnJ6pe@monolith.localdoman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_221554_965041_75E85DD2 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
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

On 13. 06. 22, 18:54, Alexandru Elisei wrote:
> I've booted a kernel compiled with CONFIG_PROVE_LOCKING=y, as the offending
> commit fiddles with locks, but no splat was produced that would explain the
> hang.

It's too early for lockdep. Could you try to move lockdep_init() before 
console_init() in start_kernel()?

You'd need to use early console (which you already do).

thanks,
-- 
js
suse labs

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
