Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2068AC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jun 2022 03:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gozFoCfKUe+iFAM5fLugSNUQJrT4HlXm4krufTpE34=; b=RmInGHFmRXnPep
	vI5bn9yZUiZ2XZ49CNa0Q841LlnIq5d8xrbFA28h3FsGDTpd99UftJgYEX7CJEDD4fxOLSlqhXy9r
	EzBJBkugWGW5ww+i/zUjzc58KShCQF+4AAPGqbprWqDjro8DIVCsdMNiw/sb5Q8Ua549PioyxRLb6
	j0cK7wL9tRa9xD1mYsWhyP5bdk/8u1kI1Ox+SHpdQzlvjshRpR3U6nMDKG4Yvq4sL8iQ3z1lJfNT0
	2Q74FJDdL7CI8y9xszEgalclmVvWASJVt9vTsQM4FZGO0SQ1hAlJC4go1TSdeiaVu6TkuXHaoNLTA
	G8ZiJAj4tF79XoyNSsoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0b4l-001COF-Ba; Mon, 13 Jun 2022 03:49:15 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0b4i-001CLv-6g
	for linux-rockchip@lists.infradead.org; Mon, 13 Jun 2022 03:49:13 +0000
Received: by mail-pj1-x1035.google.com with SMTP id k5-20020a17090a404500b001e8875e6242so4741853pjg.5
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Jun 2022 20:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=36dPqle/rlmpKapipF+KE1d4JPgoWr3C6RG6AlhQkWA=;
        b=Ugkkbu10YeDB3fFkCXZ732hz1icH485fPCKzAPb6Hfdy9IcTXnhDHiCTgWBulae2sI
         HCTEP9hdisGZk9fh5/56WCLuBfYD0VKVqsRLRXvFXo+v05O1bUIShZDIJR2hd1dZmmIM
         FXNZ5iOZ7IlBKe9WI5ZamyPsEBFlkXuIRi6U0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=36dPqle/rlmpKapipF+KE1d4JPgoWr3C6RG6AlhQkWA=;
        b=4pYRq+JnWHYAK/oEozfcxPRwEfbaToTFVf9WKKxuqET9KSZzy5g8+y06T99/TprwjM
         NIQcSf3mIDgDIIJJKZZsYJBXXhOhDVAt5uuJWHGfSRimIgdlUdz+FwypFVpLPZ4Qp9q/
         0mB07BJki0+fnddBFOzuAOG/p7DjTpjF83xb0qRwHzWWcdxChS/+eB5khPT3O9PbO9mL
         mx91rMYxfiS1aHrckZRmd2OYlO+5tdpaUG+CRaH8mNYCrknkKvcQbQ6SDYwaKC2AQEna
         eF2qUKwSPuiU0rbzZb/EsvQPXjVWYV9einws12ebOdR4MlZQrMIfeIYbxmRB/vb3c+nx
         6x2Q==
X-Gm-Message-State: AOAM532/XwI/hwSP2YFLih9oMrb55jnENyokYpZI7lOXtknCY554fYam
	NemdfnzFrcz/OXBzKsMBR3yeAA==
X-Google-Smtp-Source: ABdhPJzp4MllA13fAg38/cBxUsQG0hCqm8mssIZuQ/i/A4EmGw1NniOS8zrFvEDb+JlT9qh2I9h7Vg==
X-Received: by 2002:a17:90b:1c8f:b0:1b8:c6dc:ca61 with SMTP id oo15-20020a17090b1c8f00b001b8c6dcca61mr13258788pjb.13.1655092148795;
        Sun, 12 Jun 2022 20:49:08 -0700 (PDT)
Received: from google.com ([240f:75:7537:3187:de22:3777:8b31:5148])
        by smtp.gmail.com with ESMTPSA id m26-20020a63941a000000b003fc5b1db26fsm4150680pge.52.2022.06.12.20.49.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jun 2022 20:49:08 -0700 (PDT)
Date: Mon, 13 Jun 2022 12:49:03 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: John Ogness <john.ogness@linutronix.de>
Cc: Sergey Senozhatsky <senozhatsky@chromium.org>,
	Petr Mladek <pmladek@suse.com>, Peter Geis <pgwipeout@gmail.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [BUG] Threaded printk breaks early debugging
Message-ID: <Yqazr060OLp2Rpbk@google.com>
References: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
 <87y1y48spg.fsf@jogness.linutronix.de>
 <YqVZ4CyWTiDgngkA@google.com>
 <8735g9mqo0.fsf@jogness.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8735g9mqo0.fsf@jogness.linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_204912_308536_B8D64B53 
X-CRM114-Status: GOOD (  11.39  )
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

On (22/06/13 01:08), John Ogness wrote:
> On 2022-06-12, Sergey Senozhatsky <senozhatsky@chromium.org> wrote:
> > Should a situation when we have only one online CPU be enough of a
> > reason to do direct printing? Otherwise we might not have CPUs to
> > wakeup khtread on, e.g. when CPU that printk is in atomic section for
> > too long.
> 
> IMHO, no. Especially in that situation, we do not want printk causing
> that atomic section to become even longer. If the machine has entered
> normal operation, we want printk out of the way.

At the same time printk throttles itself in such cases: new messages are
not added at much higher pace that they are printed at. So we lower the
chances of missing messages.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
