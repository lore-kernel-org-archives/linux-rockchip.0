Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25B79C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 02:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9jsV+J+7H2lCHII1zbwBtdqcAHaOTBdaFvOha9p+Wio=; b=b18mlLnbq9DPBX
	Moc6x9LvQ70Zb06WpSmLATG9mddtAYoXYeRthbq97gWN8DraZ/gZKi9irT8+aARYcl+S5Do09HeuT
	4EU+y+7M6wEFQMBbXdOCbBm1KFLdAaBvEsa7bZFZhdmpBMCBSPeCcPH2jh2mtOZPNIWwFPwCnUMCT
	8hFSL9/DcXthr1yOwKSX/uIJuaA1b1S/porFUE98dwl6zFcuXtjxUJ8/3KopdiwVzaGcCMddzQ6P3
	YpUz+Ty0SXgZghFDpe6JO4K6XSkI8sHzRCUp0mm+KHLzGI+Kg0S/rzz7IAkYdN7c0oRiGrayHmWEB
	Ftcb3LVdlatgn115XNoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0weZ-006nb6-Jc; Tue, 14 Jun 2022 02:51:39 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0weO-006nXw-6y
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 02:51:30 +0000
Received: by mail-pf1-x430.google.com with SMTP id u2so7418058pfc.2
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jun 2022 19:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=9f3QGTquyPNqt5Y0ehbeYkFH6SxKJFf9weR2+dr9JWE=;
        b=P1BYcRUky4pTlBCXgymwrbeyuxVeejqaqw+JSs0ELqecgtAA8S1wQVXLUSyIUEfVnh
         QvMMpYuen89Ix6WBpHx6Kn6lpOsQnahN1rKirs2nmFI1OBmwttSk7YBJoDBo69aI4mVu
         Fia2AXw9sK523hRAkVZ0hak767LdTjO9ysOgk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=9f3QGTquyPNqt5Y0ehbeYkFH6SxKJFf9weR2+dr9JWE=;
        b=QEq5TZqR/IUzSM1MFe+VF+weibavU674rOgr8LhRCJghEYtPgLaxCE5/szZ/62UqIE
         UOeTNbrRKDf7vRR7KuYgAmQRr8srXDgecbLkEp0hNsaYUBA0eOuEapBW0w11EFb5REZ8
         7MzOHxlK8KCdysf/z3XEPfC9CsfZS9JFlfn1FE1ixR9J6dhjXaKPkEoj1DiG1xwGGlRg
         A67TaOYI/T/MMQQdWIHix4Klntk14UKEgNXpNrfayBLyVn3Zuxa2rMsS2bLUSXwuKxY5
         amC2RE3oYQscFSkWv+c0JZQ3aVPxEv6P62mXHtchz0SfxwmZhxy/UETp9alJ19CipdUb
         UViQ==
X-Gm-Message-State: AOAM530ScSNJgcDlCvan58NBs2ibCN0hK4vMo5oto5OCbODKVEm5+qgg
	Cp+MXgUQWKKfbRVffKjCxe17YA==
X-Google-Smtp-Source: ABdhPJylGhOEry1IwuOWykOk7USTnbbJcg+B07vWOeXChI+8gMoxe5N2wMpODJvV4Ll+IIRjj6BF5w==
X-Received: by 2002:a63:89c1:0:b0:3fc:6001:e871 with SMTP id v184-20020a6389c1000000b003fc6001e871mr2528817pgd.14.1655175086959;
        Mon, 13 Jun 2022 19:51:26 -0700 (PDT)
Received: from google.com ([2401:fa00:8f:203:580a:28cf:a82b:5610])
        by smtp.gmail.com with ESMTPSA id a10-20020a62d40a000000b0051b416c065esm6147718pfh.8.2022.06.13.19.51.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jun 2022 19:51:26 -0700 (PDT)
Date: Tue, 14 Jun 2022 11:51:19 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Cc: sunjunchao2870@gmail.com, jack@suse.cz, viro@zeniv.linux.org.uk,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	pmladek@suse.com, senozhatsky@chromium.org, rostedt@goodmis.org,
	john.ogness@linutronix.de, keescook@chromium.org, anton@enomsg.org,
	ccross@android.com, tony.luck@intel.com, heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, maco@android.com, hch@lst.de,
	gregkh@linuxfoundation.org, jirislaby@kernel.org
Subject: Re: [BUG] rockpro64 board hangs in console_init() after commit
 10e14073107d
Message-ID: <Yqf3pxG16lQcacUA@google.com>
References: <Yqdry+IghSWnJ6pe@monolith.localdoman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yqdry+IghSWnJ6pe@monolith.localdoman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_195128_326351_9580FA80 
X-CRM114-Status: GOOD (  12.99  )
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

On (22/06/13 17:54), Alexandru Elisei wrote:
[..]
> [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x588fe9dc0, max_idle_ns: 440795202592 ns
> [    0.000001] sched_clock: 56 bits at 24MHz, resolution 41ns, wraps every 4398046511097ns
> [    0.005107] Console: colour dummy device 80x25
> [    0.005549] printk: console [tty0] enabled
> [    0.005956] printk: bootconsole [uart0] disabled
> 
> Config can be found at [1] (expires after 6 months). I've also built the
> kernel with gcc 10.3.1 [2] (aarch64-none-linux-gnu), same issue.
> 
> I've bisected the build failure to commit 10e14073107d ("writeback: Fix
> inode->i_io_list not be protected by inode->i_lock error"); I've confirmed
> that that commit is responsible by successfully booting the board with a
> kernel built from v5.19-rc2 + the above commit reverted.

Hmm, interesting and puzzling.

If you disable console kthreads (__printk_fallback_preferred_direct) and
keep 10e14073107d, are you able to successfully boot the board or does it
boot to a panic?

> I tried to do some investigating, it seems that the kernel is stuck at
> printk.c::console_init() -> drivers/tty/vt/vt.c::con_init() ->
> printk.c::register_console() -> unregister_console() -> console_lock().

Is it console lock (console_kthreads_block() -> mutex_lock(&con->lock))
that we cannot grab or is it console semaphore?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
