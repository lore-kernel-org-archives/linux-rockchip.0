Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60D8AC79FAD
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 12:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTATDJYbPD+efEqkAaH1UgZ4KZ2UIuJqGVdyI9cnyP8=; b=DGXVhZWiIMqH7G
	1gIfLZpJuZXFge00SVs3VzMJOPvMkIWOIAQmxrOERmUL359Yz+20GaekGW5JzQgVoDbNxpqTv33Mb
	JnguvgEI4YlVezauiMiSMyj7Vy4mq+cM7SMmMET5b5JSZBoMGhdLwRY9CD6Gf9CsIlUwJLqxBOh+y
	Q9ar+a2ikRYRSQ2CNhFSYAFtu3SqxgSbrKmbx0CqN8GuGJwUjX2gN4sI8/Gnpul1c50n3E8q9u02E
	355k23/jK4kVwMtOe/YF17pXshF/TEOBguakJc5ritWPPUMPFVPY5TZScHFCmJyVZLMP+zVWFUnox
	SPjOR+S3B1QyaMLTcXAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Hj3-0000000BhQB-1dAB;
	Wed, 09 Sep 2026 12:48:29 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Hj0-0000000BhPk-31Lj
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Sep 2026 12:48:28 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-482e1b429f7so382467f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Sep 2026 05:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788958105; x=1789562905; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ktTcKvzi+Dmn6xaiXbKoHfLb8FntlzV6x0/ox6k4ynw=;
        b=bvt2NI0X6iJm9T1gDwCO2AthZUw+zXLfa8wveERq3EC8QiR7IAbXQCQ4ZcBdcp31z6
         +4rrrVJ+ryOg37rV0K5/+3bxzKfURpNmi1c/y5XQqJV7IAXkgkyVDyzJOaU/dFlwmHlR
         qWAu/BMNS5gzN1VwtZY5LQ9Zg9EAYpUMwBnDd15oVeQhHMBWtRXV/hZZwdHcV/5kHV/s
         PSQpXrUR8PLYGCVIog1f39lhioyIgQKROINzstWsxSFLner8dE1W5UyObYB/CwWO/iUI
         0bpf5k8q9QTRu2wj4GZ9SBxafJXqYfD8/KMM6GM+2cmB17hQaBvQEQzwDr43qe2EUvv1
         NWZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788958105; x=1789562905;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=ktTcKvzi+Dmn6xaiXbKoHfLb8FntlzV6x0/ox6k4ynw=;
        b=RffQhLXpCu4BUNjJTxsB6znX8bH/U7R0z8KPYOivG4KmogXQFjOKXxSX8N+2lRKrun
         cBi5DkcdrIZa5ugVFKYoMLh2uF93xTH+HZbpo1N2XhT1Zy33qThjgYm5i9/u7eMoZver
         mM79aONx7UF7PakLQ2MnbN3FcyaFq7zDIjUvyV53c0V2/7np1fF0s2SQE5nqwRGLtgkQ
         Z17Yq0p+AdjrKkGO6WCZQr05gbryClBluSyIEtxgtlQ1kpR2uvYagCJvVzcgy8Mb1gv6
         7vVVIf6tNAmA3M7bNc4TppoyrxyqXIShcujL6N740bI1nDATRyuxF7sTN0MJweFG9enH
         8tRA==
X-Forwarded-Encrypted: i=1; AKwUvBzn/5xZMtKIDmRVDSqGVY/kGhd7GdIO33TRqBZ96JGVZfNtwYwDHCgmcHR+R4T+7J4AzMc4GRSJ9TgvmPthVw==@lists.infradead.org
X-Gm-Message-State: AFuF++krJ2WlO3FqBPnR7yAfTGkcahs/A6utf+1fJaqZ+UBxQXzBARoF
	UCbUHg1T16j9WLGcTcErxZ9K5o+LGbbYh/m1OlsMyvhu8LdTt6KyADip
X-Gm-Gg: AYBFou2zcOs9+PsXazApPFyJBXSeQTT8J8XQ84PcMGmMreIjMJQtuo34Z5pShXzvPQQ
	N7ADtugH25WP2NQ6BSHb5mVgUhBRX19JkDJo30+wfCDMeEyNejC5qAFx+Om1Wv7GYfBagI7ogBj
	CdLyIplV+ok0S47ImJQDEs1kY7jkkuWDLz7hRoGv2VRgThdYOMMrgGXVg6UQx/M9Z9ute6Th1U7
	ZnHrrwYxQPw/eI9qOHA5j57dLxu5ACBsiOXdkKpgU0Uh961c/MVMOfUrsJmK2GviScFSHgqDpzL
	RZDLNpJ8S3Glz/BFe/YHboMJIQurapnQz24sV5tfGo6odGNrmyRQEmyXjgzcPIGdcaiI1VR/uO6
	X1BQ7fQplCZ+zTPVXl2+nfreTFK02xZIGySA9Cl5W+ylHwBGiU2kU/bV+yy5MGCr2v/xV43m+or
	mvNxcZG5mSc0jy2kW853DiR2qE9us8CDCZ8v7fTf5kdvZq8nUwFuiGiXbbcrAThTJvuIKZ36A94
	H3zk7oBV7+HmTSIkFl9T3/V962wTSOcp6aRjOOIxrzLuL24XvgIhKTNH+XyVFbMS9gvSN9JwHAe
	UNw=
X-Received: by 2002:a5d:5e0a:0:b0:484:3310:f393 with SMTP id ffacd0b85a97d-485908001bdmr27918574f8f.5.1788958104422;
        Wed, 09 Sep 2026 05:48:24 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B836900E58FC5516AABB3E4.dsl.pool.telekom.hu. [2001:4c4e:1b83:6900:e58f:c551:6aab:b3e4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485883a9b49sm36853890f8f.17.2026.09.09.05.48.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 05:48:24 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v9 05/13] dt-bindings: npu: rockchip: add rockchip, rk3576-rknn-core
Date: Wed,  9 Sep 2026 14:48:04 +0200
Message-ID: <20260909124806.14525-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260903112208.952061-1-gahing@gahingwoo.com>
References: <20260903112208.952061-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_054826_773615_33EEBD1E 
X-CRM114-Status: GOOD (  15.11  )
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

I finally ran reserved0-build.py. Three things back, one of them a bug
in the script.

First, it works: pointed at your geom corpus it produces the full
report, 415 lines, no warnings. Thank you for writing it in a way that
runs anywhere - only numpy, and the parts that need your files skip
themselves cleanly.

Second, the bug. Point it one directory higher, at a corpus that also
contains files outside the geometry set, and it dies:

  File "reserved0-build.py", line 431, in dump
    % (o["off"], o["v"], o["RESERVED_0"],
  KeyError: 'v'

The cause is small and I think you will spot it faster than I can
describe it. read_ops() gives an undecoded dispatch a short dict -
dict(off=off, undecoded=True), no "v", no "RESERVED_0". Everywhere else
you are careful about that: the good/bad split, the row groups, the
per-file value sets, and the "mixed" comprehension itself all filter on
"if not o['undecoded']". dump() is the one place that walks f["ops"]
straight through, so the first undecoded dispatch in a dumped file
raises.

It needs a corpus where a file has both more than one RESERVED_0 and at
least one undecoded dispatch. In mine that is exactly one file out of
thirteen: chain, with 2 undecoded dispatches out of 26. It lands in
"others", so dump(others[0]) hits it. Skipping undecoded ops in dump(),
or printing them as a short "undecoded" line, is all it takes.

Third, the corpus I owe you. I have not collected it yet, and I do not
want to give you a date I am not sure of. To be precise about where it
stands: every .rknn on this disk is still yours - 103 files, and all
103 declare the same build string, 2.3.2 (@2025-04-03T08:26:16). So the
axis I offered to test, whether 34/66 <-> 0x4044 survives a different
toolkit version, is still untested. It is on my list, behind the DVFS
series review.

One more thing, unrelated to the script, from your earlier mail: the
/dev/accel/accel2 you saw after two rebind cycles is the same thing I
hit on RK3588, where the minor walked 1 -> 10 over ten cycles and only
rmmod reset it. I traced it in the source afterwards: rocket_device_init()
allocates the DRM device with devm on the shared rknn platform device,
which is only unregistered at module removal, so each unbind leaves a
drm_device alive holding its minor.

You do not need a new patch for it - it is already written and waiting:

  [PATCH v2 1/2] accel/rocket: release the shared device's devres on teardown
  https://lore.kernel.org/all/20260731064933.12548-2-royalnet026@gmail.com/

That series has your Reviewed-by on 2/2 already. If you rebind on RK3576
often, that patch is worth carrying locally in the meantime.

Thanks again for the script.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
