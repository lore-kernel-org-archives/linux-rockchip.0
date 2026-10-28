Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09643606A31A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2026 01:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SyktJQzg;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=U5OsSv6c
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=E7GrVaHc8GUp7VfksnTcq8tQ+nfmyAzpkV8U/sK+Mzk=; b=SyktJQzgTj8hmBQV44oq3aqceX
	OR1coGhvsHUd0Nd6LrH89gLYcHXFxfnseNPjqNuliTZCuFyk1dYm0pf2irIeEpqN0M8ewStivZKxR
	36az6QBBgne/OHgPmJpGWT9I1kmzsSM763Bu2UfVWBch9X/eu9Fr72WAjNS+rLYNh7XlRxbdAV37t
	ii5Vsd2GxJX3oiUJCcEy/TGkiid52t3raVCnjHolvBfHv/FKTqifuxsZYtGp4VdYZ4sqW3Yf5Z01W
	GRYSt/TmJ23uScoI4XE8ixdaYAM48fOc52Vyb0ui/c2MLA0Y/p+AyeUku23pV1aHmHkdf77ajcQ23
	7twvkz8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLsgA-000000062p9-1Nrc;
	Wed, 28 Oct 2026 01:42:14 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLsg7-000000062oE-1eql
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Oct 2026 01:42:12 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-2d01548ac96so747965ad.3
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Oct 2026 18:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793151730; x=1793756530; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6qFiHf0tIbDLVDz6TOJvHxKdyUmXFvOVRG/rMFDPZq0=;
        b=U5OsSv6cLUSUHLCsTjdjnHbmn5oaSn+Q6Kc9VAqhMLWu+s6IurkJ+6oWy3WKttHXT/
         c8mEo7GujS5vqU4BXSHZtFY8uit0ftMD9V3CX5IwXeIKXaX1dMRfawyqdJr4suyvj0nE
         716J+XN5aO+yb92Mh0/m/TExaSjWJ6DQCOmBzoocrg1kCHSZoLkTAnolCA8jlDkha2Oq
         bokXCGPj9tR60s0mgtodr/yLiQqqgVFkKm+3Lj/fMkKRoR0bKKt0rPQ+yLHoQ740Qpd9
         1DdoU9DEZ6VPa+muryh0YmQsnR5H4FLpSVC7JRCIJn9Dkzm+AU6PrayHr/N5eyCdkZmj
         rR5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793151730; x=1793756530;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=6qFiHf0tIbDLVDz6TOJvHxKdyUmXFvOVRG/rMFDPZq0=;
        b=iRkTJrezVcS9mhqJJt4dlfTIL+z/WNLJZnRXHMFEj36NqU55DwRpxibamqLA6QFC2K
         /qoyYxQ6AihfdsmFhZKrNLbD1xm+Z2ltWLKWDfGaONyWu2oV7cpyPaPULGwuPNKRvgr1
         N5YgfVCbRuzac540bHw3v1Qlq85sSdPQ7SZfbDTDiwlrIvfkxf+VXGtwO0buvriwHZ+9
         tsPB3yS3aVM51nYlT35DeKdIjoOOrTtUkrXuXj8RJ7EngQW3IGZ4T+CPNa2ymGZn9DL4
         aaS0alzNT+zhctfYznRtWpKK0a2isUQrR/pAcIW32dpcto/avY6LX2YeZX7qR5sRawOy
         Z1fA==
X-Forwarded-Encrypted: i=1; AKwUvByaSh5furhzVYEyPMhKydVPNbfFv7wpxzePe7dqHcuHH+MiV+4z2qhfpGp/buqxSMPFtT4oi0ETKFw78Y5Axg==@lists.infradead.org
X-Gm-Message-State: AFq9FYLGcDVoPdm1j1vlH0qlevuJLJOZLniZev+wmCR5kGGkodI8siQo
	y71qNkKMCYx0Ht0lWQiAVUVQ/AKcAsocyrvhtrhNnwygNh1XfpgCyoLS
X-Gm-Gg: AYBFou2ajzt2Y0Y0duY7g1Y1QT7/RPyrFG30aa5vEYjL283a4necZ/XeDwnReggKMkL
	bmCkijj5+v5sq1nVCxuemL4VOM1stX8Fyi8Tk58VvKMXKTMR+tYSK6yTBeyZ8DcZ+gCQBzjiloR
	Mq+VT4FcV68ewf3VJtqF+T57mXRSgz0vioouHXxcgZDrm5OfN6JMbLMbKZyD+M3GwLE9w6UHlBN
	1aTFADWdQfzD8hleADo6NUuc/Skf/kYh7tEnOr1U8e2MdgpLUx9q+yH2nW4o6VQjCfCfvzDqWoP
	lrV5VkbJTWiYgNICYOHfkp7Ap+IrIQZtJsUnbbMV0PTDy2O9O5gDxm+4lMw7zviKwH1G3oZi1fG
	TlSi1OwjTKFKgwWayQTqW8j94GHLBjcr+tkpyoZEQmygLc7Msho3vMmh1kaHY5v9VyFvgpIGpej
	navO+RBDfD7pnOKaSqmUDmfYY2Nn4nz5B03QPy0LsOyDF033DLukCh+votXiHLNn/9l+six7grb
	e1iTikVlbgW5fHExWxYrLIu9lt9ZsbsD5PepaXH9V1AS8vEGOHgRKOhN+pJAOmqB/xoKaQPdUD1
	8qgsfX/3388YmbvGVQJWuS+v0yHj6Yph
X-Received: by 2002:a17:90b:3c8c:b0:3a8:736e:c19b with SMTP id 98e67ed59e1d1-3ae581811b1mr1020251a91.4.1793151730487;
        Tue, 27 Oct 2026 18:42:10 -0700 (PDT)
Received: from localhost.localdomain ([240e:36d:b08:2bc0::a60])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ae5a9a5e73sm544338a91.10.2026.10.27.18.42.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 18:42:10 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: krzk@kernel.org
Cc: HystericalDragons@proton.me,
	amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	hrushirajg23@gmail.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	macromorgan@hotmail.com,
	michael.opdenacker@rootcommit.com,
	naoki@radxa.com,
	robh@kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: Add ArmSoM Sige7s
Date: Wed, 28 Oct 2026 09:42:01 +0800
Message-ID: <20261028014201.11057-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <7b993a3e-d2b4-417b-90a3-a41d1f454cda@kernel.org>
References: <7b993a3e-d2b4-417b-90a3-a41d1f454cda@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_184211_432620_0DAA88DA 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

On Tue, 27 Oct 2026 10:56:44 +0100, Krzysztof Kozlowski wrote:
>Yes, just be sure to capture this in commit msg and maybe Sige7s DTS
>comments.

Thanks, Krzysztof. I'll clarify the hardware design relationship and the
reason for keeping a separate board identity in the v2 commit messages and
Sige7s DTS comments.

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
