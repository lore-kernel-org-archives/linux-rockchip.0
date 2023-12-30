Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FC98C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Dec 2023 10:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sR9zDmBNkqNGfzYmlwhe9NDT6cjc8fmyqnMkPMOSBYQ=; b=f+KvtuOcQre6ps
	/wYQY7rLhnjt2QpHkakpfjAACyhdz/B9xOJIZRU3v7bp0Q0viDeqxC461B7XZPKF7jpXFgtHqmrpv
	Lg627HkHH2EZnhS3hpqM/tWJKOiNNHGCG6ADyLRtfy40Y0gdluPxQg+BuA9cn4BmasclwEs5SXNC0
	wWda5HMaiPkKL+y/mqSCB+WQz4Azhf3ZDzZlqTiDcCopMouZW/ztRWgtYZT0rKeV+xbtqgXZ7FlNF
	9xyf3OWZgTEZ5/GhEjToPeUKx+fK2FxbN50ghAdiUlgoklZjsYHbEEXHagkgdLngVJ3xraPpUhsvm
	L5ggeVHthhOapZJR2agw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJWC0-002VVD-2e;
	Sat, 30 Dec 2023 10:03:44 +0000
Received: from mail-oa1-x29.google.com ([2001:4860:4864:20::29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJWBx-002VU7-1c;
	Sat, 30 Dec 2023 10:03:42 +0000
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-204301f2934so5471990fac.1;
        Sat, 30 Dec 2023 02:03:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703930620; x=1704535420; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wvqhNtKIg/MAMCdqwkucMfho19+t3p+RrNQxCyZUIbA=;
        b=EmNJ9+nyLG7IOkrIEqm1zjXidtIvBFLDJxll/FkAqgoBHNRBq0P50OvdHO2OEKFu+I
         W0R0urInCLDEzTKM1mKfUC1kXRBAz363Y3pR2eTXsvllC4Er+jwvon510Kb+GntwPSoJ
         k6GR8/BBqv3OqchYUlew8YhpYgp5TrQjz/S6DY50O1u0VJ/rkhIIF/LZ8F4gsyKgi00I
         91uGd6AyNH0dbFnTFeUl1zjgUZ3XBN6+VSdgnQsMdAj6WQQlU9h93jMKxJJUjVpS5bOU
         jVuFWbha/YJeA8Hg5+mgZ35tGhoO1bP9DkPQxVeBCRuuJllJKAnTjl3r2kvmWkizdM3X
         6OrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703930620; x=1704535420;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wvqhNtKIg/MAMCdqwkucMfho19+t3p+RrNQxCyZUIbA=;
        b=d8Ev8hjK0K4n4OrYdXBzrzjDXrnd+ezAvVGJ2scFl7q6+GTaKXUNtsJn1PwdPWUFfr
         aiyt1N3LTXmThbN8c/QYckSgRXBZyCyJs9oAr9Z1ohGG+bACPjqVv4plTHwOM5YEtfhb
         hduQH+wu+EEW6zh3c2Kek0XWN55fZZmt/EdWQDVk9lqbwyzW54IPphA5r8XvrlmM19Km
         H5xAo9rcWgcI3IwmT/X4DbJZRwDdwcN39DLPfvpobH/qEnFV1N5NnqaqBzarAUdvYZZC
         boUsjeR8ZbmF6UfLHVlRiNfsRUOuTB8gHQ1ffiFWjmthS8R34TcXV28nLBVaFZuLSlw5
         4KCw==
X-Gm-Message-State: AOJu0YxgVtKZSl2P0WfWmAZdLq5Q+K+CGocWTCs5r0r/ovR2OmGg9nae
	tadoEdczXEKqcdcJmaNorcE=
X-Google-Smtp-Source: AGHT+IEn7DipJTLYCFAcXQ3Ro7QhPViWJmdmErd0O7m5fzvljj6wgo5gwzlt3uD4pm8/WjttJMlgFw==
X-Received: by 2002:a05:6870:e410:b0:203:a854:cbab with SMTP id n16-20020a056870e41000b00203a854cbabmr16237640oag.111.1703930620214;
        Sat, 30 Dec 2023 02:03:40 -0800 (PST)
Received: from localhost.localdomain ([2408:8207:2540:8c00:23b7:4d83:3222:c5dd])
        by smtp.gmail.com with ESMTPSA id ff17-20020a056a002f5100b006d9bb753d2esm10087231pfb.166.2023.12.30.02.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Dec 2023 02:03:39 -0800 (PST)
From: amazingfate <liujianfeng1994@gmail.com>
To: knaerzche@gmail.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	ezequiel@vanguardiasur.com.ar,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	mchehab@kernel.org,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sfr@canb.auug.org.au
Subject: Re: [PATCH v2 0/3] Add hantro g1 video decoder support for RK3588
Date: Sat, 30 Dec 2023 18:03:29 +0800
Message-Id: <20231230100329.3740222-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <35df6456-2bc2-415d-bc61-09e4b440e2ac@gmail.com>
References: <35df6456-2bc2-415d-bc61-09e4b440e2ac@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_020341_565282_E09C168B 
X-CRM114-Status: UNSURE (   5.28  )
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

Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
