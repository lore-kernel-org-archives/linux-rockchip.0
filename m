Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6ED606A331
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 20:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gJ8S9Flw;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=LYvWahyu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ANQlTNiFFCsSQFXy5hXfyPN89F+aodbZ2bSTEoHByT8=; b=gJ8S9Flw3YP++R74tt6ogdooki
	79UeuLIEgQfv5XSK7oBee0qXnJaiRbKhQ5X4giKnxQoSJ+1u4mCKO2xhWOo+WOVn0F1gtZD05HohW
	tS8iBavVP2mvb/LDJxVbaiSOUsPJOoTWRryLbf525mEcASgIbUC/aET3E5XXM3prC8f0vOOGejGBz
	F50VBaGoIo+kd85gRSITK0XCJjA5vVQutwQjzZbJ5DrqpV34C+aJ3kspCoHjBUKm/GX/oqYm1lN5Z
	lgLtDAEOcw9EU+9HDWgutN3BNq/Dk6LD7L3AvVbJ+sZ19ZaN8VHIvEsUSFrwlqWTRSzj4cNd8mWiv
	NARd3hYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRxw1-0000000EQ8o-3ZhB;
	Fri, 13 Nov 2026 20:31:45 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRxvy-0000000EQ7g-1LOs
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 20:31:44 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-3ad0c2e71ebso193339a91.2
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 12:31:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794601901; x=1795206701; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:message-id:date
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YiZ77gIfuRvrG4OhaqVJrXWfgW4P+h0z/eTCC1VVgzo=;
        b=LYvWahyuWfibwq+wIg7FggSGoFzy4sfRCg34zf15fCJEwEnbOrX3LZsFEqaimaSdll
         HneuCLTSp6o+Q/PHkN2M41LUM7iH/JLlbmtsTXh3/nJNyWsZAcUp7Eq1dd2ksu22WNWg
         reKlTH1BJ4cch3GhvYCFZBLIEcQpYH5P2IvNhcScqc5sYaW2KcAU3QNJDdOz2yIKy6cm
         PrJmk48IlmnsALXFSZx7rP+hAMt87bImwZFmSKdRxMpCNdcQCu8zPsRJBueVQLAi0bcI
         xRt3thJlbyN4fYZdwVn0HF7s1S0KlGjjJHvA0WpkO8HkMu8HYdRG1la2kR4em7S2OKEh
         ZQQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794601901; x=1795206701;
        h=mime-version:content-transfer-encoding:content-type:message-id:date
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YiZ77gIfuRvrG4OhaqVJrXWfgW4P+h0z/eTCC1VVgzo=;
        b=uKvXUiT5Nqdw+RgvSGBuFMY7DGC/urNtXJ/zc8dwIWUSmW7t69mfJiYirfpHA/EeKs
         a72jJceagdAcxW8OgS7tE5f9pSUE4LgQVBocBQE1Pl1y310DTpxxsDg4lMsoIBogSoJv
         53OL7oDxdLBZ4fNbCEVp0nl7jmkYDUw0RmhG5eO2V4QB598NzcZh2ODR9kty1RTvFocd
         C/m1BDn5QSaX0HfERPyWKeOCfWNx5xFBuSdyfLPPkka7lJ2HB0+ofqZMS7lLyEkmCJm6
         FJM7oxcfOmI/79DzPCCVCZ68NMco/9LuXUfwi0KL9D8wVkfNb0kNAddExBYBBQB+z5hX
         3nDA==
X-Forwarded-Encrypted: i=1; AL+hErFmMi+OoXQisAP+7STAa5ZDJUJ2ELk2hnLigCnnFQSLX625B5l61VlT2i8vdbwjaKNwmyUUvzVYMB5p72G73g==@lists.infradead.org
X-Gm-Message-State: APuU4Z8R6RDP4gIS5lzt2vDmIGTk4WkmCM56P5zl+vfZ678PHHqy9FSg
	ould1yg+o/FfJ1I0hn1LWnbIhWiekfQZwa2bq5z5sBkcvkujJBru6nlc
X-Gm-Gg: AYBFou2bEWmmQn89D+2laYE7SSOJKxBxwde+AQr2/0LWZ98rwrHvK6yobR0MDwbl+bq
	qTrha+SuKXMAjvy7quURXzSt12lGh0hzQE8DXpNzqhg2AkTHHbExoSXiKRIkCneFejc54eqC5oN
	sA80JXXq95ydDTnGVi74F2w+uduwSj/ouCy3uTYWjAxuXrjqStauWGbRGZPU2NLqr/PmxuRU4Bs
	NWGo2qgInxGDziuhdTK+elADjWANC/xf31Bi8vKc/RiFmXYcmFJfO9W5Dth1b1kcVZ1weocysLO
	ktjCduANsnxYgzT0zY7HyBlU01rWcnlvzG7tbVkrU31hWOEMG0oN4OGLo27IQmYTIBexCxejnu1
	KZX2zwq2D2mRTgNd9HXP8OFumrdRJeIZ+dssi04/hkhjJ20mGmLVrKRfWAdgQLEI450Tj9CR2tg
	T2zfbe4cYVtGPgf1Ka04IuU+j7sGSVcdvLd5oc+OhoV3muZYQj7lVT3Q1dNWVJZHZrUPJHHHwrz
	oeJJei9Jyoc4w4YYQfIdwoYysJsWhGv5aPZVMox48iJr5M8gLzPyFkKAlS4++hi5YRO/SlPzYqH
	z1Kickg0DHRpduE4/oEQM/nDoR58pFeg9tpxLTo81c3h95tzKwgYApTaquHzMBP1Bd1ejg6nro3
	iWalkKA==
X-Received: by 2002:a17:90b:590e:b0:3a6:e1d1:e511 with SMTP id 98e67ed59e1d1-3b1b0b85d16mr5379769a91.4.1794601901202;
        Fri, 13 Nov 2026 12:31:41 -0800 (PST)
Received: from claudebox.iyengar.cloud ([50.39.139.68])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b197d35525sm11051461a91.16.2026.11.13.12.31.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 12:31:40 -0800 (PST)
From: Arun Iyengar <aiyengar1990@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Danilo Krummrich <dakr@kernel.org>,
 Johan Hovold <johan@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: driver-core@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Saravana Kannan <saravanak@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Ulf Hansson <ulfh@kernel.org>, linux-pm@vger.kernel.org
Subject: Re: [PATCH] driver core: fw_devlink: Don't report refused
 sync_state-only links as errors
In-Reply-To: <20261110-fw-devlink-sync-state-v1-1-6385be961c2b@gmail.com>
References: <20261110-fw-devlink-sync-state-v1-1-6385be961c2b@gmail.com>
Date: Fri, 13 Nov 2026 20:31:39 -0000
Message-ID: <179460189995.183918.12921536578133287930@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_123142_367900_9438A030 
X-CRM114-Status: UNSURE (   7.05  )
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

+Cc Saravana, Sebastian, Ulf, linux-pm.

This message was explained before, and I should have cited it:
https://lore.kernel.org/all/aixze8zFboY3huSf@venus/
Sebastian writes there that it comes from one power-controller device
providing all Rockchip power domains, and that it is not harmless: the
kernel misses dependency information. So "harmless" in my commit
message is wrong; the patch does not fix that, it only lowers the log
level. It also lowers it for every other failure to create a
sync_state-only link (found by the Sashiko review), which it should
not. One such case is being fixed at its cause: on RK3576, Sebastian's
"clk: rockchip: rk3576: create proper platform device" removes the
lines for power domains with a clock phandle:
https://lore.kernel.org/all/20261112-rk3576-clk-platform-device-v1-1-2f3ac9f09403@collabora.com/

Please drop this patch.

Arun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
