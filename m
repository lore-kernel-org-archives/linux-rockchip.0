Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF29CC5DF67
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2026 07:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rgzR6c+RFGpDreDd2yBL3A2fFk0/WWfQqbLnTYhpghY=; b=cT2zaqlfbm6weq
	ACEwoN66jNLgocMxVHtRw2BcNIxT5qGLL4jH8BtB7e8YQEXLQj/6UjQyeTtlT9aHTdSH25DTn4qwF
	osT5rkMZ6M2QkeMMgqn+3sHAdALO979HG6Cp+RKcD4VvUA0wPvT+UrGDxUHHqTykCyeRcAe23uQpZ
	hNZ5Hb6cx3uscLXCC3Bf7viPLIGx+KgXEbB/HjmInhXf4btn8DKol7T+8T2glZXLK216qoU98i5Wh
	Tu0eW/srv7dY8ISiS6mrHaWdSPTjN6LDM56pYRCi50V5svy7ngmCUxOVN+FVB00muj2iNbT1xVRgP
	n60/z5SlMYRN4TJ6w81A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwEGk-00000007SRK-3GQT;
	Tue, 18 Aug 2026 07:29:58 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwEGi-00000007SQs-1UWD
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Aug 2026 07:29:57 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4996c452e95so3863625e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Aug 2026 00:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787038194; x=1787642994; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3jTJ//eajjn4P7tJjJphCt0+k3XaL0BsSvnnhTQJhRM=;
        b=j9ODaKVd+crZlelDFIOGUhtV1JLNMBAdF1ix4Ih1wZKQsU55nwyVXPI9vYMdu8Hwbw
         aMtGAMFTWmR2ZurxDv0YR78WTvICG17PwsfJJ9a4xF9QMbGOEH/w7dZLGiuLU0k8Xjts
         wKkdUZMrMwoQ3oRU214179yUXShxoZTpuuWqCbNQ7lwNmalh/zmEwyXE8djzhvFw8qHF
         evR41vI3lhoL0HtPacm5M+uSqsL0JhwTxo4I+YNySGfbCNg4UWAveSzbRL4olT4U2xkt
         OSHmDqoaQ/HgljgWJPUzqOh5kdydxzl8Gy9A5Ctx+AP1uMioJYSQ4BqTwHeRuFp54HTW
         82VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787038194; x=1787642994;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=3jTJ//eajjn4P7tJjJphCt0+k3XaL0BsSvnnhTQJhRM=;
        b=O3o83CIHgB3uB5sVZWKE6ZsnejvFmtqwIFNT5soAkOiB7YRs76AuWi2QqAKHqn998h
         ZpiEWGM1drvXi5N3nzAwUEkACTdZH4DWk1+S61OtJ88LiinyWCz47JQYGMRjFmCWoPSE
         PasAF32CURq60J8t90osLTa8Mkjn83e5yUteIy92uezIB3D45vnV3fThcA6cvh+mJvjp
         L/lwm5Psfo4oMUiqDspDciCk1UH8zxC7xCMt7dfQSQcwkDBhOujwS9z/ZFfFn2wnmkJn
         Z64UeLQtzNQzX6nN6L06hT/SzlY2GlJwPiHlAiJX/sqGVIRPPITiBtlUiJ7mwDQpQGLL
         f7Ng==
X-Forwarded-Encrypted: i=1; AHgh+RomwQt/PkpChjHBhosWEUL/xtb5dcSkxXLmTFqlfjgRzMsq2c8WlPgVM/rPfAb7UMuJHAWTHxKQOl93Fih+Ig==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzd5qFSM7EbDOYmn+M9Zt+mBU/nPMCYIwBopEI5xAj5POWEL+lq
	lKan+mMkkctguYxBQEumsp6FFBm2+x9zYXvd3cBBi6aCH+fvQgj9lnbVelbuHQ4I
X-Gm-Gg: AR+sD12VgDYMEaua4Xqt/Gh9fmsEYELM73JDGJFe4QmHYg0LPLnirsWyVTiY2tJuHhY
	3fV3lavkCF6frvOJlSz8LAEKVlpFI98Xl9hMg8LoePe+GjDajKLNj05+baVacEimP3NtOBttEWb
	HAmT1fpz8Nk830cxgqoIhOgKDIsph80GCaNRRs1HPbfrhMsqJ4UrRStD4/mbXUaMTpsaRi5yFJy
	tjczwS+njoqAk6UUz4q7EbJgLdEzpQs51pyGjivNopDCFj5fnk2aPaQ1JVV4C+p0qjLRCT68MSv
	zd8ZidfFFcO6kAgcgZeypPmfLSYF+4W4hKDPgh+dV4jqPYNjffl6/hyi/1Gfv6yPw8Y7rUfrAiH
	toTMpUafYYbTL69Nm/VNhq8MyuHDfHrJHaJAi01Io6v278Dpuy70rvmvnu7cu87fi6nPoHBqi5h
	v5/MX89Z9O+XnrEER3fhrnWs/QKI4k/E+5PvMHAT37QRym6DiEXSFLtjFxPWLxodrYRzTm33BMs
	pt0UyBc1ieYFYEtEGuaRxwrO6DGDKgrbBsig4ri8GhJ/uESk5tJDcfS3Z5iuilDWTzBLxzq4R1l
	QNzh
X-Received: by 2002:a05:600c:a418:b0:499:a660:f4ae with SMTP id 5b1f17b1804b1-499a660f7f5mr1504845e9.1.1787038193769;
        Tue, 18 Aug 2026 00:29:53 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B90C200E824DF014B0EC292.dsl.pool.telekom.hu. [2001:4c4e:1b90:c200:e824:df01:4b0e:c292])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49987b50869sm174877235e9.0.2026.08.18.00.29.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2026 00:29:53 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Oded Gabbay <ogabbay@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [RFC] accel/rocket: DVFS on RK3588 - a hardware constraint, and some numbers
Date: Tue, 18 Aug 2026 09:27:43 +0200
Message-ID: <20260818072936.41844-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <c495dae1976dab842d77f4a4a142217eb77b6fb7.camel@ndufresne.ca>
References: <20260801131656.58450-1-royalnet026@gmail.com> <c495dae1976dab842d77f4a4a142217eb77b6fb7.camel@ndufresne.ca>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_002956_407997_6653F3DC 
X-CRM114-Status: GOOD (  13.94  )
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

Hi Nicolas,

> I'm only looking at the RK3588, I suppose all the issues below
> related to RK3576 ?

No - everything in the RFC is RK3588 (Orange Pi 5 Plus, all three
cores). RK3576 is Jiaxing's enablement series and has its own set of
problems; nothing I reported came from there.

I went through the four commits on rock5b-npu-poc-4 today. We
converged on the same shape independently, which is encouraging:
200 MHz kept as the suspend rate, a single devfreq instance modelled
on panfrost with busy time aggregated across the three cores, and a
cooling device on top. Your ~2.5x on the SSD pipeline also matches
the 2.58x I measured here with simple_ondemand against the 200 MHz
pin.

The TF-A pointer (rk3588_clk.c, PVTPLL vs normal path) is the most
valuable part for me - it names the mechanism behind the power-on
ack failure I could only demonstrate empirically. I will reference
it in the cover letter once I have checked the firmware source
myself.

Status here: after Tomeu's go-ahead I am preparing the series -
bindings, a full-range OPP table in the DT (300-1000 MHz plus the
200 MHz suspend point, so essentially the table you ended up with),
a safe-rate-on-suspend guard, the devfreq itself, and a hold-all
guard that resumes all cores around any rate change. The guard is
ordered before the devfreq patch so no bisect point has scaling
without it. The one hard dependency is my "request the core clocks
by name" v2, still waiting for pickup.

Agreed on OPP staying optional - the plan in my series is that the
driver keeps working with no OPP table in the DT, which I saw you
intend to fix on your side as well.

One path worth checking in your PoC, because it is the one that
made me write the hold-all guard: a sysfs min_freq/max_freq write
while all three cores are runtime-suspended goes straight to
clk_set_rate, which can select the PVTPLL path while the domain is
off - exactly the case your TF-A reference explains. With the guard
in place I measured that write waking the cores and completing
cleanly.

One difference in test conditions worth keeping in mind: my numbers
are with the vendor bl31 that EDK2 bundles, yours is upstream TF-A.
Comparing SCMI behaviour on both seems wise before either of us
claims anything firmware-specific.

Thank you for the "take whatever you like" - anything I lift will
carry credit, and I will Cc you on the series.

Regards,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
