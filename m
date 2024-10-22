Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E8CFCDD0DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 19:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UgLDKgHtsEMZ8DAlPzdhEKvazWIxAbRigVOetQSXyr0=; b=awg7Yk/D/9HtfX
	e0VOUftwIkQXUJPXt/I7RYpyjSau7jEZmxnsDzZgZVUW2Jf3oJEeDTyP884/zDKROQ0/MG+l/lXTM
	dQae3pBj4mKYbDUTBd1yGrI3Aeg3RRBfu2r2rD4bN2EO30xCcbmt824w2fEc55p+2j6OdCtCC03Y3
	UDT0raIDCF+NSUxwtcw1x5U11XZMae2KHJGhpVdmy5pglZgcYB7j/0gXo/NLjGLoSaeHSA+aB3bOm
	VP6TGgJNb/c5qfjI3xocJrPohh3I1DwWpJ4lvAHBr+Sv103L3J+aOxm8jObrED4X5IT1Gfs/7dAJS
	ch3WY6gOdJDvHKeCYT/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Kfp-0000000BxZh-2xHy;
	Tue, 22 Oct 2024 19:36:09 +0000
Received: from mail-il1-x130.google.com ([2607:f8b0:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Kfb-0000000BxUh-2DVU;
	Tue, 22 Oct 2024 19:35:56 +0000
Received: by mail-il1-x130.google.com with SMTP id e9e14a558f8ab-3a3bb6a020dso22129705ab.2;
        Tue, 22 Oct 2024 12:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729625754; x=1730230554; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ib/ig3/S11byU+V/CcemUiFs2TSic2CNnnx9wlVKppE=;
        b=afaYhM+jGbrIE6VQ2WBtEVTYyRq/karUOlDPyrTA5bUoiu8GP2f8MmkHqZjGIsPp7C
         m4HajxnKKxAJ2Yd4Ty8vWRsS0REnqbUXN5d+Hva6Fyfk6JsoS+jfTnX2o3wxMNwTKJCt
         D2fVkuhphWPZSD2qZYAWU1WS/qnKE03g1ISkI6ikQv10j69vSmEN3YtgxF3qOOIKbPmB
         unhwBDcmGYClKXEYedtlsqYR89wmrBq2s2bmGxbhBga7cf5pNkUy3OkRqWl4upZJMgQM
         8/vQtwEzBgL/gfrR37EA2Ml3K6ApcqFl8O8UCGxoYWcxswsvgSPs3AdwGx+jOLmp4n1Z
         8huA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729625754; x=1730230554;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ib/ig3/S11byU+V/CcemUiFs2TSic2CNnnx9wlVKppE=;
        b=N75WlTcrigAH+1fsLIMnaymduur61xmJNu6nmo8JdosauNWbjQAOKrDe3SzP18+kYn
         hcRTUGD8mFL1MpjG6NbgkEccNMm5TIbhBzXDY+OazkoK6GBoglkzgFoFZQtRZeKhBXNS
         EdxdPRId9ym/KCWU9i2I0ivgMnWEHc3At9DrThTOnef9BB+iAOWGnekoIpuZft1HuCh3
         6tA6MOQ3yZOKgrLjbh4sc50ycLBbuK4pFcCPu2hIOJtTTcYHlPWZ2xqMq5Hf+igRUTWo
         4yXEe47W2MVSY6yTShBGLUV3x2SOuQzsFD1ve27PFavnfe7NilyU/rx66vnp0+tGTGYn
         Ae/A==
X-Forwarded-Encrypted: i=1; AJvYcCUDHgpXmkzP2yxN0Y7EcCVes25o2/ji4fSgZ0Wb+WqU6ugwf32CYU+PhKK1BihUwNQMgHGbHAeSLBiOu6w5IxPd@lists.infradead.org, AJvYcCVnwv4nbAgHNXWvD7RIcsS/fFL0DUwvTTO9WajQ7ydC6HIP9tO0faWWkC6pEAqP4HvDAqsSvLC4RfwWM5EzJuI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7d2sUATbmB4Rx3ZdZERJg5t8UsnHDpKXh0m+MWR+7ia1FTdTj
	0S4WWG20pZvKYFts8oUsABzHTtXCbAND/e+CXC7ysPEmX8KQX1I+hCVWOp4fiWw=
X-Google-Smtp-Source: AGHT+IHnHVKqeEUU87NEuaO+Je6oEbDVQJmeeMVNJ4F961asQttJfoCd2nPE9LF+Dw/EmEboHeEgRg==
X-Received: by 2002:a05:6e02:1569:b0:3a0:a070:b81 with SMTP id e9e14a558f8ab-3a4d59df6c9mr2902825ab.23.1729625754109;
        Tue, 22 Oct 2024 12:35:54 -0700 (PDT)
Received: from CNSZTL-DEB.lan ([2408:8262:245d:4d65:bc4b:53ff:fead:2725])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7eaeaafb1e0sm5467316a12.3.2024.10.22.12.35.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 12:35:53 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/5] arm64: dts: rockchip: several fixes for the nanopi r3s
Date: Wed, 23 Oct 2024 03:35:25 +0800
Message-ID: <20241022193537.1117919-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_123555_589557_60CC93DC 
X-CRM114-Status: UNSURE (   9.56  )
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

* Enable eMMC HS200 mode to allow it boot from eMMC
* Sort properties in pmu_io_domains node
* Reorder mmc aliases
* Replace deprecated snps,reset properties
* Use the marketing name for the model name
* Update the website url in copyright

Thanks Jonas Karlman for the review and suggestions :)

Tianling Shen (5):
  arm64: dts: rockchip: fix model name for FriendlyElec NanoPi R3S
  arm64: dts: rockchip: replace deprecated snps,reset props for NanoPi
    R3S
  arm64: dts: rockchip: sort props in pmu_io_domains node for NanoPi R3S
  arm64: dts: rockchip: enable eMMC HS200 mode for NanoPi R3S
  arm64: dts: rockchip: reorder mmc aliases for NanoPi R3S

 .../boot/dts/rockchip/rk3566-nanopi-r3s.dts    | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
