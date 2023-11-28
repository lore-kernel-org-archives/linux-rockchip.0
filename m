Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B022BC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 17:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CfFYHU7WuCtu6aSFttKa6cYG+Aa29ZGtnOmS7Nj6Tsw=; b=wOzrfTBquOide5
	Hgz2DjJHL2ZEM+6xB8vDem4CnTTQBGDeDIVbAbPjM9WpFAupr68LKnYcLtAfTmJ1xlTC3uT3oC8ee
	qNZl78fZZXKWhNhc4l1HNSGYg862qSppHVQHANVBGuqCgIuHv0xBx8Ll/frvU4aDuf6nsv6PgZBMh
	vg4MS73aFVvmi5k1qhcEhLYPNHnNisfVaUiSzdPHKWjpw0iLru3hdTuMToiHViOWOCzulEIigm/8B
	h5rw0sdeTrJ+A8ER7ZdWFlNOOmn0mFwFhI+9ICG/NRqE1XyBZQqwLgUVxhitjLJ2zHjh4dlLmqsJS
	719I49FE1hUjped3MOyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r81Rd-005sOb-1b;
	Tue, 28 Nov 2023 17:00:21 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r81Ra-005sNp-0P;
	Tue, 28 Nov 2023 17:00:19 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40b479b9c35so16789175e9.1;
        Tue, 28 Nov 2023 09:00:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701190810; x=1701795610; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ELFRihX3CtF7RhjnQusbjB/B/hfaZV0Nbj4a0FnBTOw=;
        b=Iax6SrD/W6jxB82pBBQefW6pAb9bbwBwSwivimf6zBSnKyqSeimCbNoEb0gDihLkc2
         1aRrUnF3sOw9wjOfF+RrwdIxLJei5vvyFrylbqRftF7K8B60KxT+qB9eJpSvvpSKwqlM
         MckYBcln36zAZh2qRCE/8Ug3pCBZ3n8+oyhOPE8ALpSSXJmJqHDo7vxriakV9f+T5BLd
         lWfYP98LHLZBTF3rSpMzvqfOOC5oggLneX8xkGnNe3RWLJnpf0VANFuyqy3PLsRBhHBX
         Yjiw4kegslbwsmf1bnoACIPgtQm54TUDp0nkwDhGq3q6ERKJ4KfDvPMKEVGnLJoRgCM0
         jZvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701190810; x=1701795610;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ELFRihX3CtF7RhjnQusbjB/B/hfaZV0Nbj4a0FnBTOw=;
        b=AX4a5DaBYDPhGarSsUP2dFJwR+0NB8yGqhiSEtXaxTmmch8JgwQMv4jga3GppWHC8j
         HRNJ+bnR50DZLSwOBiMD7gsAjz9xENC4vP+EetFjFErTUdGgztKWoFKwMoBLR50+hT7F
         qPjsuU4dOFtCLWitqZ9Gp7wn72bSiT8S4Pg5bwJcP5EcNTMCh7saKuPhEeYy0EpjUYUU
         6OAWJgJxJTi7RU7tWaU8AnjkSHcjSbAVebVuIEQWZ7XdkuIAVMbMJYmAJYg6I2kuh1Yw
         92kxSDIO3QI32EU0PXl+muRjJ2LCNUbxwxDAemSO71t9t4cYE80wHs3CJ6EPDFDuGVDf
         u0UQ==
X-Gm-Message-State: AOJu0Yw4ozGpXV2ROw1U9p3Pqlm62caMSJ9Pjc8UNKztAWUNHjWO7XQy
	GQLnP+QomAJ87lZp/E3qRBCw91cdZL8=
X-Google-Smtp-Source: AGHT+IGgm/D1KmtQMgeCyY/5kKBhGpQJ2TpH2E/ZvVJuY46OvL1ykEusYln54WAR+F0TPMHS5lkZzQ==
X-Received: by 2002:a05:600c:3b83:b0:40b:2a53:7913 with SMTP id n3-20020a05600c3b8300b0040b2a537913mr11464033wms.13.1701190810132;
        Tue, 28 Nov 2023 09:00:10 -0800 (PST)
Received: from localhost (p200300e41f0fa600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f0f:a600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id z12-20020a5d640c000000b00332cc7c3aaasm15618353wru.21.2023.11.28.09.00.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 09:00:05 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>
Cc: linux-pwm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] pwm: Use device_get_match_data()
Date: Tue, 28 Nov 2023 17:59:55 +0100
Message-ID: <170119076371.215216.199281430371759022.b4-ty@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231026195417.68090-2-robh@kernel.org>
References: <20231026195417.68090-2-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_090018_168238_F8415885 
X-CRM114-Status: UNSURE (   9.97  )
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


On Thu, 26 Oct 2023 14:54:17 -0500, Rob Herring wrote:
> Use preferred device_get_match_data() instead of of_match_device() to
> get the driver match data. With this, adjust the includes to explicitly
> include the correct headers.
> 
> As these drivers only do DT based matching, of_match_device() will never
> return NULL if we've gotten to probe(). Therefore, the NULL check and
> error returns can be dropped.
> 
> [...]

Applied, thanks!

[1/1] pwm: Use device_get_match_data()
      commit: cf5a1a8c8e8875b3fe38835942b393cc1577da55

Best regards,
-- 
Thierry Reding <thierry.reding@gmail.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
