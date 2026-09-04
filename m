Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCB9AC79F82
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2026 14:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nr9INmsEKpLMoGyIa1VsiWVrfETzDvT5Yw/435zJEY4=; b=jH/rcdgSoparQY
	auERVBjeC4Hkk2H5E2ouFth1/CoWo9c8kNtfeXrcCuVpz3qCj9uXx6WM0NI1KivhANT6C1XwUlHgN
	xHXjR2rltKVC/fbCnQgjuFdCNylB7uYgrhWmpUx1nZypMPlQ+uiiKtJOMDiIOnviXKaq2WdYezn6m
	VHr7iRmL8OAHH32ynsiGNDx+6Mw+9FICxNQcolUHWIEt1GhviYMAGsGYWIyw/42lBTNFWESA+H83B
	i/LXOZov8NFUldxTtWFMG1p4H0/FWQYobdiLzUn90M60qCsYxqS8jEyaveywFs2tFUtE8fxaC+Oyo
	GiWRDzQU3zbETpw92ZiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2USZ-00000002JbR-0t4e;
	Fri, 04 Sep 2026 14:00:03 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2USU-00000002JXX-30hT
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Sep 2026 14:00:01 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-499db1740f2so347075e9.3
        for <linux-rockchip@lists.infradead.org>; Fri, 04 Sep 2026 06:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788530397; x=1789135197; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pL5oIYV7zk9vcM9H1fRzBKbJl+oOE//iZp70tDsfKtQ=;
        b=jSkbEGm16RNRmioDMJAHGZEfkqw9KIvS4PTlSXpNiFJOpHRg7gm7XR92z2RcU9z2xy
         woNJFSHGKP9MWDkeTvFesEjMcnXdH4fuvKjlBYnjEiKGKkcJLyHifN7hL1Nf2nffX2o1
         2a9ro+ustjDzxYPgiVHJcgnKnsFFl0EwsnlllOIyf74cvfKIfSenUawiOZD1fFxymIg2
         OXgvfDwZL3vcugcxwY2YnNZ/gaCPFz3Kx5mfCgv5Z75wCTLjSUT1BUTlmFt2XXooZOQ8
         w+1B6cjZcYbiOs3U/jt97KXuxkTvY2aJBPF8Oa2hIidDY8nmp349bq2QEQVSwu4dxWvd
         6piw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788530397; x=1789135197;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=pL5oIYV7zk9vcM9H1fRzBKbJl+oOE//iZp70tDsfKtQ=;
        b=V6vgdMIJXaogNXOvP6O8DJVhSBQRa5QbnXq7i9Dgm0ZHZvmgwtgX1RvDtWpFy1rzEj
         AGGFU36Md32gYQaX2LhNDST5Rq6FpSvPVWPWPQ5bgm6MMHZMY5bboeW7Fb1mJCw4e1bo
         VaRLZ6WGl5020/22zzchdnW0nhUAZ9Fi2zFeZesjqB8arwn5wHhE4gd4oQwTJZ8fF6XO
         jxBrViummHGIl2zpw3IgV+dR40lPEvkUDHfKGA9C05N6b8E+u6Sc2V2qITtoapyye49N
         dOhLRDpAZV3O6ChQiJU8gMhfeV6m+3sLnL2DLC+gvxkRU5aATIKJxamRXVrL6YQNjgOQ
         SOJA==
X-Forwarded-Encrypted: i=1; AKwUvBwhVfhVCPy5tXFJCL2TsWb0vnhJ1y4HG2OWJZTeOnMb2GQVgG3CivmB8gg7xmUoiUkkR83hcQTqtJW2ko2iVQ==@lists.infradead.org
X-Gm-Message-State: AFuF++k1ecwVFxs0FrrT6oxwatt7suIvRCjvT6a8yXqhnbSba0ua9SHG
	cg1tFJGVlUE0ZNg11boKz5qF/a1cLaPKae3Njn048vaYGt1gfvVudN5L
X-Gm-Gg: AYBFou3SZ4xSacyXbHiftTfqt5d9NP52bikU1UNo4lYGp92BQRP/3atq+yQOP8nPXYN
	XK0mo8Yhb/iYuOWMoUyon3w4PZHZZhNBjCW6AVJcANh0y4ug9M/Ul7tv1dtoqWmlQ2ZL7xiQ9EK
	Ol/hFqHcETMwJN/Ftg8Elfx3iR92Gq+UjZJGQEkAF2UYmZ6NH3RY/Lg1U5FTzqrNCzR5w9FihWq
	w7nAhVwEYeChRguydrLxedqRukFRxZAzHOm+din88fjgjW2R1b9/upRiJWYBoiHFZgIIl164dfR
	G6ThvMYbJGREEeLc0RfWJHmOCFYpap6K24R8fA64Ab079GSbEMG7PMs60ZcXj9yMzkOiHoypmew
	lt9cqE1cuoQ49PoZcHBCsxJlZQVHsrLKDAsiYWoDvBkrsIq2Yy/5qiBid0uLsgvChv4cuKm//vH
	hYQvUVkm4PRgHqbQeY8OEUvQZpAoDdM0HOulErjQ+kmq1WiiUlqFOU5XLeikPgt4jKJBk9fXnwh
	GuqdgzANoa4PW25bYbwJ4cUGpsTzv8a0qayxG5u2t2V2rOZP5622q7xWsbzTXGo6b/tZh4nGOr6
	vBMGMw==
X-Received: by 2002:a05:600c:34c5:b0:499:cef6:104c with SMTP id 5b1f17b1804b1-49cf823c012mr44419095e9.1.1788530396364;
        Fri, 04 Sep 2026 06:59:56 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B871500455C8730D6A15F49.dsl.pool.telekom.hu. [2001:4c4e:1b87:1500:455c:8730:d6a1:5f49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cf770fcf5sm70619115e9.6.2026.09.04.06.59.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2026 06:59:55 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Guangshuo Li <lgs201920130244@gmail.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] accel/rocket: search every core slot when a core is removed
Date: Fri,  4 Sep 2026 15:59:36 +0200
Message-ID: <20260904135938.8757-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260904125936.26234-1-royalnet026@gmail.com>
References: <20260904125936.26234-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_065959_817795_31AF8E86 
X-CRM114-Status: GOOD (  15.08  )
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

Answering the one question that is about this patch rather than about the
state it leaves behind, and confirming the rest.

> Because rocket_remove() doesn't clear the dev pointer or compact the
> array, wouldn't subsequent out-of-order unbinds match stale pointers
> since find_core_for_dev() now searches up to max_cores?

There are three callers: rocket_remove() and the two runtime PM callbacks.
The driver core calls remove once per device, and the PM callbacks cannot
run for an unbound one, because rocket_core_fini() has already called
pm_runtime_disable() on it. The slots the widened search adds are either
never filled, where .dev is NULL and matches nothing, or held by a device
that has been unbound - and nothing asks after such a device again.

What the narrower search did do was lose live cores. Unbind the core in
slot 0 of three: num_cores drops to two, so find_core_for_dev() stops
before slot 2. The core sitting there is still bound and still running,
but its own runtime suspend and resume callbacks start returning -ENODEV.
Searching every allocated slot fixes that as well.

An earlier version of this patch did clear .dev on removal and take a free
slot on probe. I dropped both. Clearing .dev turns rocket_open()'s
unconditional cores[0] into a NULL dereference whenever the core in slot 0
is unbound while its siblings stay bound, which is a worse failure than
the one it cures - and it is the same rocket_open() issue listed further
down. That is why the commit message says out-of-order unbind wants more
thought than a fix should carry, rather than quietly half-fixing it.

On the rest: all eight are pre-existing and I agree with all eight. Two of
them have names already.

The ERR_PTR left in the file-scoped rdev is fixed by Guangshuo Li's
"accel/rocket: clear rdev on device init failure", posted in July and
still unapplied:

  https://lore.kernel.org/dri-devel/20260708062845.716487-1-lgs201920130244@gmail.com/

It carries my Reviewed-by. It would be good to see that one land.

The devm point may explain something I measured this week and could not
account for. Unbinding and rebinding all three cores walks the DRM minor
upwards - 1 through 10 over ten rounds in one run - and only a module
reload puts it back to 0. I have not shown that the allocations are
leaked, only that something survives a rebind that should not, which is
consistent with what you describe.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
