Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41B92C982CC
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 10:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4IeTF4pBPn1NN4oZn2tAXDABElp2yDBosOwDO4MhC8=; b=hFK5+kTczA2X2o
	d0aN/+N6EKNls+e9iFcgBhB94SEmoLRoWJJhc0uu1jQm/PJAcyDEbhLmeKALWKNf0GsQbwGXylm32
	Wb1NU7aXUmdFOV5r3k/vrg9mjBQASnfeXIHG4BqdqQZXmh6u5P4rlJIHiOZaHftsCbvREpfxio4xl
	8g7dWXMfutaPMk0hOyEm6NVbIlwMR4eskyFMSnkI80C/EerY0RillVDY80v9fWDrRKh2BDIu9v/3e
	Ram50Kz2jI629dc7N5fpv7bZkkU4dZ/BuatjA1WsFYwdtZiANIBKloeBrNeCQgCbhqmSwI72Na4MI
	CWuuLSG/dCpWgTPY2XVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7sPB-0000000GBjI-1LXF;
	Sat, 19 Sep 2026 10:34:49 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7sP9-0000000GBir-14uK
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 10:34:48 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-4843971bdd0so168749f8f.1
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Sep 2026 03:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789814085; x=1790418885; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Q4IqvQL/KqjQznpd6jaMZqdfn/Z26HNbimnHqtbc/0c=;
        b=I/PTm1Yp9qjcffB+eE0jDyUGou/i7iSo0JbK91lqy6uhzMirtfxeEvyYx7fbL+BLgF
         WhH2F3tXvaC/r96aGBfBx85G8U80xTHULwOx8CsvmHgZAsV2vI3Q5wv8CufHHAOacK32
         GQZFfQMJ5ti91uFX2OMvcd43SyshIICYjag7BN9W4KHgrzqDFc6IPFhK6OG1V5SukD0D
         8XqOvCdIORU4uDODmpzosEf65GBAL2goKxIJrC3BZLZZmxAG9cVWoXtlxwimmRz/c7S6
         trWUOh16NRL4p6st/q5ovF7vnAblFm3fhxEk3LwXcJzgir0LpocmbQ+QQhAe4VhLO9aU
         E3kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789814085; x=1790418885;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Q4IqvQL/KqjQznpd6jaMZqdfn/Z26HNbimnHqtbc/0c=;
        b=VePfoFzoAcVXSDheepo53NULmLDzwsyLgP7NbhJczkIEBHXdwxwEhGXQNmD0jmIZwJ
         B5LrBmChNHMHZemeF1wLWIHZZJ5J9/iLQxkbRveqGtoArrIKLCbs+a5jv92Ynn61hVcs
         Y3h1VJzvR2IGspXZSOiwExHdqq++8xETOWugjEdzCmNokYP0Jvrz4qDsz6fUfkB/tVPI
         asfmg0aRKPVaxXSJC/KAGMke6UNJK2l71cTPv2HotSG9V5KaUiITiEBC9bwFz9l9l6CU
         elkohGsTiGeWuYop1o7jLva8wE5C+ZeLZx+XrHZxGlrjJjoS1nIK/VGE9wfrs3Bi3Yxg
         HddA==
X-Forwarded-Encrypted: i=1; AKwUvBy5YvaYb7GLxq9XjZrCgP+medzGGlsUGb9IRBqofODmfv8rmyDDKahecLyzDDCr2pPPABfPMJB9ODjt4Erefg==@lists.infradead.org
X-Gm-Message-State: AFuF++kW336qKQBKBQcgKu8fAO8U4aphFeUxd+tMsIsYCVQnqEH52cy6
	Xd1HlfdDb88BH4Q7t7eZmT7FX3NU5LI3K8cv4AtZbKsBgllXeL1EDyq6CRfJhg==
X-Gm-Gg: AYBFou0luuUtJU3qHI8QogvcGZqh2lE7KNZrMNrtMkAYt6JnfVA2d0g8nthAdihbwxR
	bwD6wPWrXs9+YbTyNGTJDCap/wWN3xmne9UPNCfH5DkZABD4MnqQoDglm/AzqGwWXNysxz/JSxS
	o2H0YBQomy5sHCguECRZk9zsFdpDao7a6IoG7ccRGDolxV/vuWl+kZg4+gt17LqijKJs36WAOdm
	KI9siLaZNyTlk8EEeJi3tqgbPjNFwW5n11EGIJJuk8PWFHUKn9Sj1mg8OFvafQs15WtTbucXRGY
	BFwdAkEjQxL8Ny8WoiR7Sg7N2M4EItzT2cAqBnFNFzRdYi8MnvB4Y6x1utJ5Lg0l6aBHkNaKbtz
	qvknU3dpzjLlm/exSpF/8O0z1K8eyHa9BsevX2XUbsnvYdRJloGNYssRrCtCOqvPeWifXDPQEew
	0sDMgZJ2OFKNMDtSLjKzjc+dJ4ATJL7vmWfDQGzPdxSXwh1N9uRCadEmOqmneqUIRI7YQ2mcUFQ
	V28aOWeOAbzPle99dye34z9RON/V8kMhGTwMunAPYyY0d79E1TUjmY6DYCPdTyJhIS/tE955N8m
	00GTAM6LIAOCp8I=
X-Received: by 2002:a05:600c:4708:b0:49e:745d:5768 with SMTP id 5b1f17b1804b1-49fc7b9a4f8mr55647955e9.0.1789814084786;
        Sat, 19 Sep 2026 03:34:44 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8FAC008BB5F187970BF937.dsl.pool.telekom.hu. [2001:4c4e:1b8f:ac00:8bb5:f187:970b:f937])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fcd03fe55sm77203745e9.2.2026.09.19.03.34.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 03:34:44 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v13 03/14] accel/rocket: wait for a running IRQ handler before resetting a core
Date: Sat, 19 Sep 2026 12:34:22 +0200
Message-ID: <20260919103422.148834-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260919091725.8981-1-gahing@gahingwoo.com>
References: <20260915104328.45901-1-gahing@gahingwoo.com> <20260915104328.45901-4-gahing@gahingwoo.com> <20260916132824.13527-1-royalnet026@gmail.com> <20260919091725.8981-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_033447_314216_259183C8 
X-CRM114-Status: GOOD (  15.99  )
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

On Sat, Sep 19, 2026 at 09:17:25PM +1200, Jiaxing Hu wrote:
> I read the tally as 8 of the 126 scored inferences missing on all 48
> channels across the three runs, and 5 of those, in the two runs you
> traced, sitting on the 5 -ECANCELED completions.

Nested that way, yes. One correction: six runs, three per arm. Five
of the eight zeros are on 2+3 and three on 2+3+4. In the two traced
runs the -ECANCELED completions sit on exactly the inferences that
scored 0/48 there: rounds 1, 4, 8 and the one after suspend/resume
on 2+3, round 7 on 2+3+4. The other three zeros are in runs without
the kprobe.

After that mail, on the evening of 16 September, I reached the other
path. A 1x1 convolution gets there when the input, not the weights,
overflows the CBUF: 80x80x64 in, 48 out, so rkt_split_tasks() splits
on input rows and rkt_ml_subgraph_invoke() submits one job with
task_count 2 (rows 0-63 and 64-79). A graph whose weights do not fit
goes the other way: reuse_weights_cbuf is false and each task becomes
its own one-task job, back on the scheduler thread.

Same board and config (JOB_TIMEOUT_MS=2, PROVE_LOCKING,
DEBUG_ATOMIC_SLEEP), the induced-reset protocol at 60 inferences a
run. On 2+3: five runs, 310 inferences, 180 timeouts, one of the runs
with a 32-output variant that splits the same way. On 2+3+4: three
runs, 186 inferences, 181 timeouts. In the three traced runs on 2+3,
24 of 110 timeouts cut into a job after the IRQ thread had submitted
its next task (9, 9 and 6); in the one traced run on 2+3+4, 11 of
61. No lockdep report, warning or MMU fault in either boot, and
debug_locks 1 at the end of every run.

So the lock scope ran with the IRQ thread submitting tasks, but this
does not show the race is closed: the window in hw_submit() is
microseconds, one reset began while the IRQ thread was in it (in the
32-output run), and waiting on job_lock itself was not instrumented.

One result bears on 4/14. Without it the core stayed active after
every cancelled job (113 of 113) and no cancelled job was followed by
another (0 of 109). With it the core suspended after each (122 of
122) and 84 of 120 cancelled jobs were followed by another, the next
job waiting for resume against the same 2 ms. That is the timeout
feeding itself, not a defect, and it is why 181 of 186 inferences
timed out on that arm against 180 of 310. Core 0, one client. If
4/14 changes shape in v14 I will re-run that arm, with the two-task
job in it.

Scripts, counting and this draft were prepared with an LLM assistant;
I ran the tests, and every number came from the raw files of each run.

Regards,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
