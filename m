Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFFD4CD8C9D
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 11:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tmnCgs+zahoV2h74oHFOG7BeoXxXSA4jack9B5HIDyQ=; b=3XUGZEFAZ+4xLu
	/I0CS13wwGoIxtmhlsUTj0XLczRRmEZTCLLAtnOa9dt71roVeTyuxpe9rGmfZBWhTJb1Kj1KTrSPO
	gGNQv5Niq6wTxTZdyB+CU2N7L5hzk0A7AVD6OaRliOZ8bFjE6kiqbW369ZbOaEeim0ZGb9Iyiifc1
	XCzj81nVyHhxQjRkkW7oNb/z68dVfJICh/Cy+vjR49/ioHvAgN5NFUUDeABkaFZHXUOolhblRSU6a
	s+uUh2BnxtNxejR+qOHWblrsS/6AWVnes7qbfrFFsdFLHoO7OjZ0TiAV2QtKXWRa+Gq7aHjrrza02
	l94ig1nQaGaHWpQ0hJDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWYUO-00000003Sac-3kjR;
	Mon, 08 Jun 2026 11:49:56 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWYUL-00000003SZN-2sMz
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 11:49:55 +0000
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-48611862583so1936730b6e.0
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 04:49:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780919392; cv=none;
        d=google.com; s=arc-20240605;
        b=d83Ph3XjCh+0M+K+aUyPhQf1athoQoDjguKECpY1X99Yzrvd3W9OgXTK2X/7OQNeRk
         rQ4ZJ41KeVScblT4mWFZEl2iOszvjyvdHur7Zmkg/kqBT3R30gyF3j1T3GaDACmk/ZQG
         hn8I8ZoweVzNp/P0YKkKCFMgFPtVWLVdjtcCCWIejbr2oI+3FHI8pFl6pgrxlmQ7i5PU
         WPFj/XKsm4+BI9UY5VADHCTlTeXNV0x9vujLGot0kG+TpH4R/z/N4VUixXVc7dsCgwzi
         Bbiijq08bB+CpodPkNQ05yDlJYMwMJHY0ZgLiUedobCxlZS5o+i0R3G2MpEMIcix9uGa
         FSCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bqeXOKCCAHTSbjT3thK/dQntkGiU6yHhlCDunMzJh8g=;
        fh=bpLoC1vyEQqc9rLS4z1qzcxnDC++AQ4Kd1Cb+M1EVI0=;
        b=U3Q44oP/Cpt7zaTsXvtJG7f0DwqBozsGJnAzZRbQeNg8KJcYXOYTaHV0Sbf5pdqCvD
         rsXsvrpSs3fNVUHVr9kSdpkWtZwUqOd/ve/w0CkVeSNqLCI4zJtdo+XIQLQhyknRLLHZ
         0jdFD+Wff3GmwzARBdRibCrLnVbnz0Sz+NZxHBSvpZq9WyYul/kLDpKmDBO+QPUO3lXg
         mIwmHOksaaKyxcyN0W6F0gKPV1oWnfkgFz3U4PDn37NANOzK7Az8LYarX2OoFO3/GNWB
         wO81yQmr+c6odSJxPTklvDpqKQJQQ4HXGjfslXXu8QAt7qn3+v2v47iX+vhyoh3viZ5L
         Dfzw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780919392; x=1781524192; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bqeXOKCCAHTSbjT3thK/dQntkGiU6yHhlCDunMzJh8g=;
        b=OVRN5MpIapxIsjcDJqHt8U5PiQDkAfNg682Rm47BAmu5MTGnQwYRSOiOn7zRY00BtY
         16utl0s7cANEt+FI5Hz1Ek36T0TA8i0oSlO7VoovJWbwsXfPeuW93PfqOpEXIDT2qOeu
         bLY1Ca7bRxDhach8Wk4TsiWlqwf4PGadafgC1M2d5C2dOOMHJXUfYQMi1X9MWJj9HlMG
         bHvAI01T4rw6NvDA1q3cXY8hWxFXxiamJibLgUouklCcV++N0I+RWV+miRmGtTfeKiDU
         q6G/zKT1yi0+/uKjfkprxvogDEJTi44Pj0uMmGENwZePVuLSufxfvOspxirnGKEB81wm
         khRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780919392; x=1781524192;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bqeXOKCCAHTSbjT3thK/dQntkGiU6yHhlCDunMzJh8g=;
        b=Jgv7AuxFux/2bpSVygFP0xAuNaPxCwjNtMA+TYQWE0PQIZ31EijGvPJhNXskEX3pXV
         uEtXORHm3HHV5h6S9dd4CD7JNkL6kA39yQy0o3xjCC6Y0pW2ac0KAwjHmHbUy5hohn3O
         5E/SZ2Zoz+E4HEY30FO9givFsWKyfgQLYQkoTiXXlZ7CpFh14h8TRSYPGRp7HOnQBjsx
         T3EW2bVVX0QfClW6Y4+wXnkNfL/pjzzd/cTgiddF2wm++sZFPSL7G9V4SPMt6zohrLa6
         lxD6oIFclZsIFG0P4FW++W+KtjGndcmz0DWxLdL2W7y787Vgp2MjcCKgmClzwlnQBNSF
         bz8w==
X-Forwarded-Encrypted: i=1; AFNElJ+PBe2+dIr3o8Qm1mOWbTMvEW2Vywc165hdUVRmSn/BwdxaVNJyifgU+34AvTnuh2Oel25Jf7dioUzeNfuUaA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyhn6X6YPocRfhPoY7pJAc1b/kOcqiSZ5F301Y6Fk9zFwMXER9E
	XleVVHNjvE5DayswwjC+SzpeRtookHU2N5zY75LkJ7jTkVmngIZQ0mA283h1k3IM+XAQPWazjJD
	afLjloQy9FOjlPWTctxsoOJ+BkSY+PKk=
X-Gm-Gg: Acq92OHbQ/uMF2wezAvfl1tOb6TxWLAo8GQMdvPr1zzwdRBxe97X0jQTnpFk9YM+I4O
	ZLIDPmbl6SjcX0eraRVknPksp3ImOQDMB316ePRrPrRjuRSPT5qEQjfX7Y1+AHiOf4BjKVGHfjP
	VqZgrwiuq/Xdel0mmt2DccGthfWVoi/rfDk9a6UlBkZskuhEYJ8lP54pIChKE3lZnoyrlWG9l2w
	K1DYp9NPXAvsIKejyDKMp2EeSfCd3FIUSok86O6DqkXcqCdXg3/KNPfoCsO6wub+arYW5LVENrR
	uAcGCvnxk6PV2F4b9K3qT4PTXSda7bD/EZLq61cdCOLJSQct7ak=
X-Received: by 2002:a05:6808:1b25:b0:486:560d:aa9c with SMTP id
 5614622812f47-4868dc63516mr8010687b6e.15.1780919392233; Mon, 08 Jun 2026
 04:49:52 -0700 (PDT)
MIME-Version: 1.0
References: <5277524.h16uAIiOU7@phil> <20260607123739.393974-2-diogompaissilva@gmail.com>
 <c8f30973-450e-4995-b6f5-03e7b6afc75b@kwiboo.se>
In-Reply-To: <c8f30973-450e-4995-b6f5-03e7b6afc75b@kwiboo.se>
From: Diogo Silva <diogompaissilva@gmail.com>
Date: Mon, 8 Jun 2026 13:49:40 +0200
X-Gm-Features: AVVi8CeJxeUbHghlTxE2UuvYPxQ1LFCbqB8oG8ZnSbGCKhS2OtDVPRGGcmVVnZs
Message-ID: <CAJpoHp7uF+Hgr_-oxxZEkaL+XbyLMv4=khMrfsDxPnty6=4oBQ@mail.gmail.com>
Subject: Re: [PATCH v2] drm/rockchip: dsi: Open-code drm_simple_encoder_init()
To: Jonas Karlman <jonas@kwiboo.se>
Cc: heiko@sntech.de, airlied@gmail.com, andy.yan@rock-chips.com, 
	dri-devel@lists.freedesktop.org, hjc@rock-chips.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, simona@ffwll.ch, tzimmermann@suse.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_044953_730977_030F31C3 
X-CRM114-Status: UNSURE (   9.95  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey Jonas,

> Please base your work on latest drm-misc tree, this has already been
> addressed in commit 3de723684be5 ("drm/rockchip: dw_hdmi: Use drmres
> helpers for encoder resources") [1].

Sorry, I'll rebase it on the DRM tree.

>
> Also instead of open-code, maybe a change to use drmm_encoder_init() is
> more appropriate for some of the other drivers?
>

Wouldn't it be better to first remove the deprecated function and then,
in another patch, change to the managed encoder as an improvement?

BR,
Diogo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
