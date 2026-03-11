Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 099071125839
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 14:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zpTsnihQik7ztQJa7xM2zb50frRWo9UihMKPWRgd0aM=; b=FPTNKMANnrIgqE
	/Q9WzaTquJ1TsOW7O+mHOcQizt/X3b8+uUoXV9/SDwkE0Ly6KbOpknMLyEEkbUtqyBn7prPWB3N0t
	Roa2XReSUfUssPAmScMyF56YUcDvAvZZ3tngVO/W596Uk6eJ2c8ahYvU5mTC84S1MRPko2EomWSRs
	XjI+FnSNy0biXXkidh5f1I4i59LpdvOUWiOMOfF8iyv2JayiuP/jwXG8rUFyg9h/PDJ7XSq6jtSIw
	oJZqZr+rV1WrJ2YHlWJhdbYGjzaaxHnxjcMEoX7eLV0Qn6M5XfH1gz7nQQmc/NsTrJmGYSwgcxUpo
	bXynOD1X/nl/aJaEEKxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0KKT-0000000BghZ-3wxt;
	Wed, 11 Mar 2026 14:14:29 +0000
Received: from mail-ed1-f49.google.com ([209.85.208.49])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0KKR-0000000Bggu-0v1e
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 14:14:28 +0000
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-66325f30570so987298a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 07:14:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773238465; x=1773843265;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wIz9Fr5w5J45ZN4rxwvT/0kjXMGfLP1VpB2aKPOax7k=;
        b=W86Fge/6EAIPXoaw5Xp2/LOya76+a+1SBStw0UYTkaFhvykjA4T2J4cfOl6mXa8M5D
         CrpOiSV3EgYzECXapUzL/rEW/uxet+0fk7A6yTVPIcyAnaN8Cq+gzFdny7QwzvWntkTm
         QxnsENjv4Wkr9lmNOococ7bSNHzZFupwuqZBuFapq4CfOQx9uUXWF6Uy/FwC7EuXwtEm
         113E3Wz5/7gDy+B0faepvsnbYH6S/r4IgY+6sa/ZH6tEPqWMynHPyr4EY6O2/QjvqaMV
         2NEAtnVihYNa09cGTZQEf7XELZzyhZM4I/qMJvM7ftvnuwVCRP1LHw9xcYImEBThfaes
         jRdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUC4HM9Pk4UXkV/5TDXUt3/277kaMvv7o8KgOxeUl+LDlsbY9WW/K8FG0KtT0Km40YqGAxJtXlCFQL0jpFPgw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzrGJJ3pfL3fZE4MYVOoX5et4HEnllcU1O49B3lerDbRsA9Tlp+
	ehAjQGGW84+XNd0TQmNJzpf5odMkoQeodtz+HeLxOtNgmfJLdPawW9ecsOpkGj+4D/u43A==
X-Gm-Gg: ATEYQzyMBUdMCJSt0KjczLvMkPXjGtSgicGE4Zj+vDlnfQPIZhahA7fpeXzQMRLEx13
	gCAej2WMgmZEAjttlep/juGQmAmhvhimMBzxUChxyLS/piX4YKVCxVHrLbq8l9bloIf7SktA3ei
	gxu9c+ZrNIyrt7ZRjru/1ajbQeHi8QTKud+5bs3DNK3l3HTjIo/hNIReLxxeWYJ2U+NayvFqnGc
	tJbUdmudaKJmY57bw2zacYug738pIctZ/ioiInw3SiCefnlDbM4sfQz0gJ1nHqwbgOKfpYp/rS4
	ly+rACzN9M9lzehZPHji96jY8MLC7s22TZFyqTrzD+FKfr2iyxNOPgK3j/8cbkbzIK4ntvZIy0J
	wQUXSuzxdnx5siQHKs4NC9KI6+kMpURByP09fEYDWMcscG14YQuAiEepYJXx3UdRE1oAwntOBHC
	pRrjEr3ISNAhv5OetrDP1Tl+Yte/tVlg33lrzs7nOh/Pb/h15xIxqwM9iML2ao
X-Received: by 2002:aa7:da06:0:b0:662:f7a9:884b with SMTP id 4fb4d7f45d1cf-662f7a98a41mr1966829a12.3.1773238465131;
        Wed, 11 Mar 2026 07:14:25 -0700 (PDT)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com. [209.85.208.48])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6631419b0e4sm620384a12.2.2026.03.11.07.14.24
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 07:14:24 -0700 (PDT)
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-66325f30570so987181a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2026 07:14:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWB/JouipjoaJdrkHFkaopdmqEKFi9Q21k2De5EiE2zS27YAMHHSOBC5Wqh/USSI2YFhaY6k057T3tqIp1ARg==@lists.infradead.org
X-Received: by 2002:a17:907:6d16:b0:b88:4f25:81da with SMTP id
 a640c23a62f3a-b97113ff0b9mr462021166b.0.1773237981235; Wed, 11 Mar 2026
 07:06:21 -0700 (PDT)
MIME-Version: 1.0
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
 <20260310-b4-is_err_or_null-v1-15-bd63b656022d@avm.de> <20260310100750.303af303@gandalf.local.home>
 <20260311141332.b611237d36b61b2409e66cb3@kernel.org> <20260311100332.6a2ce4b1@gandalf.local.home>
In-Reply-To: <20260311100332.6a2ce4b1@gandalf.local.home>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 11 Mar 2026 15:06:07 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX4kRGLaKMzPuhS1Pmxh609eiqQW-cAS_jWBBbt-vE6SA@mail.gmail.com>
X-Gm-Features: AaiRm53WEGMMLW4z34e7P-lM1qFvsCJGZ_o4JNL5NPWbhJPKmcqz6k9bJcyL--8
Message-ID: <CAMuHMdX4kRGLaKMzPuhS1Pmxh609eiqQW-cAS_jWBBbt-vE6SA@mail.gmail.com>
Subject: Re: [PATCH 15/61] trace: Prefer IS_ERR_OR_NULL over manual NULL check
To: Steven Rostedt <rostedt@goodmis.org>
Cc: "Masami Hiramatsu (Google)" <mhiramat@kernel.org>, Philipp Hahn <phahn-oss@avm.de>, amd-gfx@lists.freedesktop.org, 
	apparmor@lists.ubuntu.com, bpf@vger.kernel.org, ceph-devel@vger.kernel.org, 
	cocci@inria.fr, dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org, 
	gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org, 
	intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev, kvm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-block@vger.kernel.org, 
	linux-bluetooth@vger.kernel.org, linux-btrfs@vger.kernel.org, 
	linux-cifs@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-erofs@lists.ozlabs.org, linux-ext4@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-hyperv@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-mips@vger.kernel.org, linux-mm@kvack.org, 
	linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org, 
	linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org, 
	linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org, ntfs3@lists.linux.dev, 
	samba-technical@lists.samba.org, sched-ext@lists.linux.dev, 
	target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net, 
	v9fs@lists.linux.dev, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_071427_291006_F2AE1C40 
X-CRM114-Status: GOOD (  20.97  )
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

Hi Steven,

On Wed, 11 Mar 2026 at 15:03, Steven Rostedt <rostedt@goodmis.org> wrote:
> On Wed, 11 Mar 2026 14:13:32 +0900
> Masami Hiramatsu (Google) <mhiramat@kernel.org> wrote:
>
> > Hmm, now IS_ERR_OR_NULL() is an inline function, so it is safe.
> > But if you want to use IS_ERR_OR_NULL() here, it will be better something like
> >
> > node = rhashtable_walk_next(&iter);
> > while (!IS_ERR_OR_NULL(node)) {
> >       fprobe_remove_node_in_module(mod, node, &alist);
> >       node = rhashtable_walk_next(&iter);
> > }
>
> But now you need to have a duplicate code in order to acquire "node"
>
> I think the patch just makes the code worse.

Obviously we need a new for_each_*() helper hiding all the gory internals?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
