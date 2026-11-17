Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB99606A31C
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 21:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wXvmDee+;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=blC2FyDR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=yIoAN77PMT1+Su59nSSqYkqtSXxqV3Iu335VgbSzMyA=; b=wXvmDee+d8bL9NQROYCcl9h+8W
	nr26DunPxEC0ThWnkYD37hJYwY7QZam275LMTxTFZsFIV3Q0M8DuCRjxTEV8L1dyf7rjsVIDz4IF2
	39h3sdW4USGIwmuWtTjo/ntHlvjWss3kkOp1aEn/Tu9yAoDCgfENFg3MMs6c3fIqpvcxxgWFoN6Js
	5ZahtzdF6JLaO56snc5PRhkex9bpv/upDn4k8/lLIheSgAYTblc4PKgH/52p+peNb2EOVCG8XPIcZ
	+1csgp0YbJJxSOTEW62mORLxrC+B6qStsH6Tljo43fDryVXhm7Mh9mcg5eFQkGbb2mwyWtsg1yPim
	6/s4TN5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTR1S-00000007A6c-0be5;
	Tue, 17 Nov 2026 21:47:26 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTR1Q-00000007A5u-2a0M
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Nov 2026 21:47:25 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4a214c5c4c0so3332755e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Nov 2026 13:47:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1794952043; x=1795556843; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gIwiNUiHWgzvyXGdgc8knRbhVSBtepqYaXTWRnw+kyM=;
        b=blC2FyDRWXiVWFj0OarM9cnSDIBo7iZHz3gcWPGHkP6haJ+IzJQsP7JYLaqx/++qT9
         Bs4TE42OOpkOR9kamLkOJZ+G+t/b3xmIXMGdaGm778T52cdeG+j5vhWx7FkRHxjSuI16
         5IXMaZ1OWfBuNM0P/jcG6F2FG43AhE0/ErtcIIlzkZ8wvJMbxi4XutKhwy0YF5Niv6Nr
         JDlR7Bts9a1wIC8UZj/957VCmfZkqfzEk2ZBuxLV+hz4bChlBmQs/eFsvQSFex/YBzZU
         YJ/sO8e3jM4JDTzQp20+MclIvu6drsoEsuy2kwiKuotr8YM2H1fxgspqw1ASwCgT79bw
         uT/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794952043; x=1795556843;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gIwiNUiHWgzvyXGdgc8knRbhVSBtepqYaXTWRnw+kyM=;
        b=mv/2BxFSZhW9Z1C1aA/uudBDEUBMDf46rZ7K9VT5oSKnrK350In2Y3BP8W7YxYpeei
         KhkRMp4VrJptsJsnJLBYbE0chban7DrYTwxuE/3iGQB5sf0Uj1j+kwSwAjkX0YGB0Ko/
         SA4PwTAStWsAzE4+ImqImi6fs+mKy33F497/fE65OZ/GvqOiPIMWZXKYEuvNWrhAKAhj
         t3Fo+MwGnIRDj4+y7ku9h7R2VSvkM91F1o71HAOMoiGgu/r2LBIVzZw/56ZcDRSWklu9
         yzD88S4BVO9l7gf82bISZy4PUGV772KMIq5sf637i56LHM+NxhCOPyCN/sos7gqpchZc
         1M1A==
X-Forwarded-Encrypted: i=1; AL+hErGkdTk7JUpv+UPx2ULgQveug64sF9zgD1p1czGpdempB67W6ey9nSv8xgO5b3sYh3iGi4W+yAtUZ+oX1sDytw==@lists.infradead.org
X-Gm-Message-State: APuU4Z+HJ154e3wp6LqNw0CxQtpOSWBhqSAbrg/NfT7EHezSmii/rfmD
	N1A2Nb7SnwNWMdLhu33dAHlkaad9yD7CGjdu9pJSUhKRL6ztXwrrhEz3e5naR0k4J9Y=
X-Gm-Gg: AYBFou2bL28ULs23nzSSZPKtuU6uMNzz3biw9RFz0a5Z4FMBUUSwJBzI42Y3gADQY2G
	EdwRZ8+xTXJbi9fJax3wBqRUx8sY9bdKTrTkA6sb30Uc15ZdtDBe13VVZdGwqD80rIKsCuaR7xw
	xtKaToAVLv+7E1+h55bw+YMpIyl3mA4zpLt9T9qb+iFwbahpRO+vhceRtHhUJUWDLmv3Lpk9Osr
	TtS3DVObeuoSHBiGnRQEiccTo5Pct0Zyx/DrP2D2wKj5H1ivc0hzCnsrM7uTHY/hAvTqpizfzBD
	eJEnexTpCAttwnvBIy6sWNkKylxUFieYYYa6AGfFi0G6/jq5yigN74UzG3pKtB3Su2QkbZiXJ9J
	M7Ci5tzT9IAEcex4iItj4XczfFg7q2E4+cadjB7+4O7iOf+lIE9D5YGYyb6oO3/8UcZBttEdHa4
	RtSuydG4jA/ABjMOTFTASX14mGLTcrdQmcjPigLkZ2XKTCKp8TvlOf0hVCRHbGP39cAiLzc2MeR
	yPfNUx4eEBwX3Og3X6BZ3tv/jS79/yRikDiA0h4RFRiTO4Z6hrBSrFSXiEpjPbvpW9NwXWAjZ/0
	nGrVUM8JfmOU1lQPImEFGJ71jyDf3GKc1THkBNqVT8tEpEiu/87REkQXqxZtHp8ojibSMfUpt/e
	2+g==
X-Received: by 2002:a05:600c:34d2:b0:4a1:6992:f861 with SMTP id 5b1f17b1804b1-4bb7d6d1f21mr10057405e9.1.1794952042780;
        Tue, 17 Nov 2026 13:47:22 -0800 (PST)
Received: from ?IPV6:2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183? ([2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb7d256f64sm14409575e9.1.2026.11.17.13.47.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2026 13:47:22 -0800 (PST)
Message-ID: <f68008ab-e743-4859-9b33-a88fc1e4b855@baylibre.com>
Date: Tue, 17 Nov 2026 21:47:21 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] accel/rocket: Fix the panic in
 rocket_iommu_domain_put when the domain is NULL
To: Chaoyi Chen <kernel@airkyi.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>,
 Oded Gabbay <ogabbay@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
References: <20260814022453.437-1-kernel@airkyi.com>
 <20260814022453.437-3-kernel@airkyi.com>
Content-Language: en-US
From: Daniel Drake <ddrake@baylibre.com>
In-Reply-To: <20260814022453.437-3-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_134724_663648_2D61FADB 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 14/08/2026 03:24, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> In rocket_ioctl_submit_job(), since the domain is assigned last, an
> error before that triggers rocket_job_put() -> rocket_job_cleanup()
> -> rocket_iommu_domain_put() with the domain still NULL,
> causing a panic in that function.
> 
> Therefore, the input parameters should be validated.
> 
> Fixes: 658ebeac3351 ("accel/rocket: Add IOCTL for BO creation")
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
This issue was already fixed in commit 
70e6a33d68a9b03335c5426332666e52d07f45d6.
This patch is not needed.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
