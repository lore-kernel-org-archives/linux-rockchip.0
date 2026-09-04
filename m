Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92718C61DD6
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2026 12:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FTJTO4r/gv5Lj20MGsycuzDTLOjHQorp2hZjl7RICqA=; b=dgnZFvzOlTBWVN
	Yy7RbAgatPQFS14ndgPP1N7cD1uNfsFc31kpqRibGlVhhoW7Tj15ebaJDD9f1eFSgGtAdE8P7bztE
	bs3uviyZFCBdLIPTKrFf3GuoURX1KW0EYrdwUvtjahp9bJb3kD91SmpaoZtnlP8zPvPTyJ1He3xMx
	7+ADsJorahLZW7oca/qlYasdPaf+FovGmeHfsQX1SePNdzHT8THmAxhz5wpcndDk/VhwUZESexfMx
	V4i2eZnzQN53+YXMCveFjLA3XX3kkWsyF0TE4JG1pkJ1FTOESXdtg+ss3FCvec3jzj0fIIT48a/TC
	XrEuvkRZIOq/sIUq98zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2TKN-000000024Yz-103o;
	Fri, 04 Sep 2026 12:47:31 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2TKK-000000024YC-0Q5f
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Sep 2026 12:47:29 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4956d1d9fb2so906025e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 04 Sep 2026 05:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788526046; x=1789130846; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RkSNe1iKI6tZKILRaV1iEvBVwUEOpWWRfifGPFlO+mE=;
        b=Ak5jCERLqaiJucFGTzGGUOdc6rWf/Q+VN63Ofij2/8Bsy0a9gFplI7JE/qvL4WgfIL
         4EwB4C/NvatrpkwPpXSiLvJt405/xxTPqqVW3CW456vQ+iplRqWFl6XZEgb0V9Tb4IDB
         JCZK+/qDMcyAUJg5gklPgoBXzh1xyxrIbxgDbGsFOMAdjpcu3igs+Y6KK6pSQW1s9ENV
         LluUuQkjpd78VG4RByhzjmJXLP0x7sZiOnDnAeeRJESk+YBhAqbM+SfX0lvAq4wbEKz0
         udbO+A54UlJas/S01+VOXE9WdyQTkxPiL/gq7C7No15NJfdlPqn8Ns4FhtUP5xdFAdxN
         MWbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788526046; x=1789130846;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=RkSNe1iKI6tZKILRaV1iEvBVwUEOpWWRfifGPFlO+mE=;
        b=lOUQbK/8DKppTVtPla3uKTCI0Xrt+ke63xCAxFxO4NzkLCnk07xzhodWMukGMAbqEi
         z/Dcep2bk/SCboov1ER/MDDBGrUyUjRqebdUHOMMd/2i8/vw2z1wcNEHBwbJiCVvXB5G
         v4zziJxt6D7KNUJf9pwExucjltWNF091sCVcHBY3nlGng7eMRvhnIwk1VZ/cKEAm4z7i
         oOgYYTmspD6mn9FoTp6GC8qq74e2QIWRnTylhMgDHyrDb2wx8Ry0WUw/0yQObn8IA9eY
         Mho/cnmXbOH4bmFsx1c0PT5oQsOiLbSdAX+YC4BFTdVTJa8Rhe+oZYb9/DzG7kMH5h8A
         uUgQ==
X-Forwarded-Encrypted: i=1; AKwUvBzDovoCUs3WRbm6g0hsZyZPHIx4//cLsQLnYSXBcao0a2Kb8c0vYUw/mWTPIZOiSjWPMyYfyi8qcJgNxAuUTA==@lists.infradead.org
X-Gm-Message-State: AFuF++mv7a1FImKPZkjYzpCbY+VCYLE2/SyxUMKb47g9dF9xQ8fluzNI
	u7oOGBTeuXjMGTgoQ9oHwc97fyMq4DDenCof8xENf7F7SL31OqQfybuw
X-Gm-Gg: AYBFou2Ka87J99Z+HI7nqpik28DJOIjQzCEEpCS1vz9Eo715S84nYjuvE4ymSDR1UxM
	AncP+un3qSinyzVuTvkHDrZfeEZ1+ctZbTifwh+SlisngpFqTpDoE8Y49wrJjD5kjRrvHfd7aQa
	M9Xmg6+RZHnQ6CcBooZoo5+ni9r+EtHZTpTVSFJYhzHjnOq8lq/1xP4F/fi4CZ6RlRaK4FetS7T
	DnCfyrPq3QuJdBTxmPeDDrRJDAtXzApbnsle8KpEIjLnHMnc/U1Ag8a/UJA62UZkEOmck8j5DGS
	AxzQWgEp7+2DaykmjWwuSqWgB007dq831I6H8RB+1jFLeASYXL01j7rrk6rs7V0Jnjm11gGvGhR
	hwjahL1a+NCGUHoLUaLzlzOwXYNYQYQJeKMkwwEmDOTLiIHPAKPK9T1iBLMUaa1GTZWicJHRLry
	Q/kZLhcArgldmujf1yaBqOiFtU6qYkrKPCCS5iITFIp2hrNccinaKx2QBFI/W1wQ2O90b8sk0/f
	rW2lQyhIQupJFPaRzs38qS386KKd89y2wv2i9pwwIDzObARg0Hp5CFdMOldqLdWpiwrVw==
X-Received: by 2002:a05:600c:a40e:b0:49c:f9b8:bae0 with SMTP id 5b1f17b1804b1-49cf9b8baffmr32943645e9.2.1788526045880;
        Fri, 04 Sep 2026 05:47:25 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B871500CB6EF488A18F9C42.dsl.pool.telekom.hu. [2001:4c4e:1b87:1500:cb6e:f488:a18f:9c42])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cfd3f815bsm21924425e9.4.2026.09.04.05.47.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2026 05:47:25 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	tomeu@tomeuvizoso.net,
	boogiepop@gmx.com,
	nicolas@ndufresne.ca,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [RFC] accel/rocket: DVFS on RK3588 - a hardware constraint, and some numbers
Date: Fri,  4 Sep 2026 14:46:55 +0200
Message-ID: <20260904124659.25971-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260904110853.85150-1-gahing@gahingwoo.com>
References: <20260801131656.58450-1-royalnet026@gmail.com> <20260903091646.7183-1-royalnet026@gmail.com> <20260904110853.85150-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_054728_167971_D256757A 
X-CRM114-Status: GOOD (  22.00  )
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

Hi Jiaxing,

> Your rows are one inference thread with a bit-exact oracle, so they
> cannot see this class at all. Before the OPP table is settled, run
> the oracle with all three cores loaded at 900 and 1000 MHz on 850 mV.

You were right, and it stopped me sending. The series was packed and
checked and I was an hour from the send command. Every number I have
posted, including the ones in this thread, came from a single inference
thread. Not one of them could have seen what you found.

So I built the test I did not have. Three concurrent clients, each
checking its own output bit-exact, on the two top rates of the table:

  900 MHz, rail 800 mV    3 x 199 inf/s, 598 total, all bit-exact
  1000 MHz, rail 850 mV   3 x 204 inf/s, 611 total, all bit-exact

Single-client control on the same rates: 232 and 240 inf/s. So the
aggregate is 2.57x and 2.55x of one client, which is the part that
makes the bit-exact result worth anything - the three cores really were
computing at the same time, not queueing behind one. Kernel log clean
through all four passes. Voltages read back from vdd_npu_s0 during the
run, put there by the OPP core, not by me.

One honest note on how I proved the overlap, because I got it wrong
first. I had the test sample runtime_status of the three cores and
report how many were active. It said three of three, one hundred per
cent - and it said that with a single client too, because this series
holds every core resumed while the clock is raised. It measures power
state, not work. The aggregate throughput is the real evidence; the
sampler was telling me what I wanted to hear.

So: on RK3588 the answer to your question is that it holds, at the
voltages the table names. What I cannot tell you is where the edge is.
I have not run 1000 MHz at 800 mV to find out how much margin 850 is
buying, and I would rather not guess in a commit message.

> whatever the table ends up as, it needs the voltage column with the
> rate: a rate without its rail is what mainline has today, and it is
> what corrupts.

The table carries it: 200 to 700 MHz at 700 mV, 800 at 750, 900 at 800,
1000 at 850, which is Rockchip's own table for this part. Your four
days are now a paragraph in my cover letter with your name on it, since
that measurement is the reason the test exists.

> On RK3576 an assigned-clock-rates on the SCMI clock in the NPU node
> hangs the board before the console comes up

That is worth more than the question I was going to ask about it. I
have kept assigned-clock-rates on all three RK3588 nodes and listed it
as an open question, on the grounds that of_clk_set_defaults() runs on
every probe over the shared clock and could quietly lower a raised
rate - which I have not managed to make happen. Your board says the
property can do considerably worse than that. I will say so in the
cover and let the maintainers decide whether it goes.

Two other things while I have you.

I am sending a fix ahead of the series: rocket_remove() decrements
num_cores while find_core_for_dev() searches only that far, so the last
core is never found on unbind, num_cores never reaches zero, and a
rebind writes rdev->cores[3] on a three-element array. Silent in
mainline today; UBSAN caught it once devfreq started walking the array
from a worker. It has a Fixes: tag and Cc: stable. You may want it on
RK3576 too, where the same code runs with two cores.

And the small one I have been sitting on. My series carries the
clocks-by-name patch as 1/7 so it applies on its own, and that copy
still has your Signed-off-by from v11. You are not in the delivery path
of my series, so by submitting-patches.rst it does not belong on that
copy and I would drop it there - your Reviewed-by is the credit that
matters and it stays, on both copies. On the v11 copy your sign-off is
correct and I would not touch it. It is your name, so I would rather
ask than decide.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
