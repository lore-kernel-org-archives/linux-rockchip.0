Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB22ACCA473
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 17:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZ8iuWAP6R6MVeNoF2XkEBVMdHzyA0zJVveC4KeqwdU=; b=T3YCClU7xmDiTV
	mFNIDSsOb4xgidDOfnf6CdSQIbAWzZYo5+APMNEbKTDuHK6IPTdI/JRhwOj5G3pku5DXtgNdIB9Ap
	YB44lC8b6peyIltso1cnPVjDGYVQ6Y+LB/OlIQ9T3Hz9Tln6G6LyfFFux3Y0hgUHVmmRkFVLNiHR1
	mad42qRscqPFX0TWug8e+g3qTGtpAtcwm057/kkkqvKXSg9kIHAwrNvdLwj/boeNHcvn57gMy/r4o
	YjK5dx7b8jYRoxVZQffx8VsgItGcmP/YfJjOneAFAGs831lJ/+Woh7AAeVVacOzMCqgryZIIGuSWs
	4ouG9MnthqjLhz6P3agw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1X7D-00FoRo-Iw; Wed, 15 Jun 2022 17:47:39 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1X7B-00FoPp-56
	for linux-rockchip@lists.infradead.org; Wed, 15 Jun 2022 17:47:38 +0000
Received: by mail-ed1-x532.google.com with SMTP id n28so17259635edb.9
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jun 2022 10:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7N8FxBu6DA6O7mEvFYXStFEfAYN9n61bDy3OwBXjJ0o=;
        b=JHdk1N03ADEWzySRt7KcxOBPuZaGFXA/8Xyn6d2SSlY9ihVTM6DTBbu1drTtrmQ+M1
         8RPbl/vwMUwgaM0Na3DeW4R1DvZyVGTsvcipdrdnr6LbuwHnx+DPjFA6rx07XSw0xDHv
         KK/3LfmRBtp3+hX2z93IpwI50ZnSgl482NCGQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7N8FxBu6DA6O7mEvFYXStFEfAYN9n61bDy3OwBXjJ0o=;
        b=7cDwsikP9UYQVtn5BnkX3iqqSl+4nxCbzj57t8eBiH9kR2KvNh4yoONOH3ZZurlU6t
         sr48ye2x+wmZzgRwpJWZ95xjPj1JiKK4XfE0A2RY3ri+dbJTRhXXyQP1y/VooEeT9ExM
         ittAxFY/rEKNDBeWzA7Ziw6Zge57i1JEdijVASRebgv8jFp0Xsqd8HWHO4ND4X26Cdpk
         p098oWlt42NrrwiHxunpKvmF49KrkN6dM44uY1VC2ODXF6GhlN4iPjw6Kp18pCl/zb8N
         ZVjg5pTx/nQKL1MEyBi3RGeXcRt0gUyKT8nnxmQHkpqKWVhCIvl2i5EwRwTorPKjE4ZM
         FCjA==
X-Gm-Message-State: AJIora8euRTsCoSxOsET0prn0vnAyEUwfQI+Ngh1HTMDooJGVoSym1nv
	TwlfZNsl3tcygSU9FErocVmZISnxvbx309sJ8F0=
X-Google-Smtp-Source: AGRyM1vmVThGsRpBRISBrRkwumeusgthme3Hf6i8l9NiouX+AqVdl9K2jXX6+P5qoXBzIFBMh/pLVg==
X-Received: by 2002:aa7:db02:0:b0:42d:c3ba:9c86 with SMTP id t2-20020aa7db02000000b0042dc3ba9c86mr1100736eds.337.1655315252823;
        Wed, 15 Jun 2022 10:47:32 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com. [209.85.221.49])
        by smtp.gmail.com with ESMTPSA id r21-20020a170906281500b007121b22b376sm6560155ejc.105.2022.06.15.10.47.31
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 10:47:31 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id k19so16337021wrd.8
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jun 2022 10:47:31 -0700 (PDT)
X-Received: by 2002:a5d:414d:0:b0:213:be00:a35 with SMTP id
 c13-20020a5d414d000000b00213be000a35mr875787wrq.97.1655315251112; Wed, 15 Jun
 2022 10:47:31 -0700 (PDT)
MIME-Version: 1.0
References: <20220615162805.27962-1-pmladek@suse.com> <20220615162805.27962-2-pmladek@suse.com>
In-Reply-To: <20220615162805.27962-2-pmladek@suse.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 15 Jun 2022 10:47:14 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgs38ZrfPvy=nOwVkVzjpM3VFU1zobP37Fwd_h9iAD5JQ@mail.gmail.com>
Message-ID: <CAHk-=wgs38ZrfPvy=nOwVkVzjpM3VFU1zobP37Fwd_h9iAD5JQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] printk: Block console kthreads when direct printing
 will be required
To: Petr Mladek <pmladek@suse.com>
Cc: John Ogness <john.ogness@linutronix.de>, 
	Sergey Senozhatsky <senozhatsky@chromium.org>, Steven Rostedt <rostedt@goodmis.org>, 
	"Paul E . McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, 
	Peter Geis <pgwipeout@gmail.com>, zhouzhouyi@gmail.com, 
	Davidlohr Bueso <dave@stgolabs.net>, Josh Triplett <josh@joshtriplett.org>, rcu <rcu@vger.kernel.org>, 
	linux-rockchip@lists.infradead.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_104737_243890_A475BEDF 
X-CRM114-Status: GOOD (  12.60  )
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

On Wed, Jun 15, 2022 at 9:28 AM Petr Mladek <pmladek@suse.com> wrote:
>
> BugLink: https://lore.kernel.org/r/20220610205038.GA3050413@paulmck-ThinkPad-P17-Gen-1
> BugLink: https://lore.kernel.org/r/CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com

Other thread discussion about this exact thing:

   https://lore.kernel.org/all/CAHk-=wgzRUT1fBpuz3xcN+YdsX0SxqOzHWRtj0ReHpUBb5TKbA@mail.gmail.com/

please stop making up random tags that make no sense.

Just use "Link:"

Look at that first one (I didn't even bother following the second
one). The "bug" part is not even the most important part.

The reason to follow that link is all the discussion, the test-patch,
and the confirmation from Paul that "yup, that patch solves the
problem for me".

It's extra context to the commit, in case somebody wants to know the
history. The "bug" part is (and always should be) already explained in
the commit message, there's absolutely no point in adding soem extra
noise to the "Link:" tag.

And if the only reason for "BugLink:" to exist is to show "look, this
tag actually contains relevant and interesting information", then the
solution to THAT problem is to not have the links that are useless and
pointless in the first place.

Put another way: if you want to distinguish useless links from useful
ones, just do it by not including the useless ones.

Ok?

                   Linus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
