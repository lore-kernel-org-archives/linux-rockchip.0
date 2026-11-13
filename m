Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE6D2606A884
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 13:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=UKTnB/Lv;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=L5Leebox
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4GhQTG0gMl2aAc1yHoW7nQGOny2sXBHs0qof3W2BAmI=; b=UKTnB/LvHrX1TRwek4eKnT9/Bh
	Wa96iQrQGJ7x8v9nHwSeK+1+5+zqHMu7Z2F3AwI6+hjdsHX1AiAFiCF3vpNvzCFEZKeVwgkCafn80
	TSdWd0QQX0EqT5LWjj+wJYAmkZRh1AhGQAo2oIARUgXEuNLa1lW5RF5HMQ6rlRzrvs77pRK1UFiZY
	A+cPKTF68X7IXjgg2bDVG5WQoFNNu6X/3r3DMJ6r81wJBhZiPlqRvsvyWqJbhWRX9dVQcR93uYG/x
	Sp2z6dXCIdev/7KXPQ14SJ9zmAViJqegi9FBrxn0iNg42la+LcGGTh+wx5o1gO1MdRfSPwRMv4+A8
	Y6gqHqWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRr5V-0000000CqkB-1JkZ;
	Fri, 13 Nov 2026 13:13:05 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRr5S-0000000CqhS-0mrZ
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 13:13:03 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-3ae2b7e1e17so1187001a91.3
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 05:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794575579; x=1795180379; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fMa45R+tCxZf7NGiJEXnK9MPuFreV0vlZ1o7pYt/ZYA=;
        b=L5Leeboxerfck2RcYo3aufINxLdm9tzQ0eJjXlY8bgpCbqw0AF7ki7rwxM6Ae4jLNz
         Sxs5zcGpz197GDFpvc+pUITI4+Xn3r0ayDi8Kwjt7510d8JejL2N6n+YDoe7YpG5U27O
         gxv5+hfnlzOkX4sXA1cLCS90KxogWdb9EKbEmT9woTRXhAv6wGT6pV+bAUAfe2KQWkOK
         8O9SguC7NJXMTvJY2M1YOuI/OzLAzCS+oVYTOSsuM85B8pvOVCynKxV902MreeQZaneK
         Q5UqdCq7GzVNMGUOFO+fJZh8Jx5CnzJlfA4CCHv97lZq4pxOBVL4EHxCF80RXLZ9sBFo
         DozA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794575579; x=1795180379;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=fMa45R+tCxZf7NGiJEXnK9MPuFreV0vlZ1o7pYt/ZYA=;
        b=PwGqhhE1LZoDR3Cj2fom3aCkOFuRXvPH6CwfLyvSfx5rrmls6j5DGkhJ3lI+aqFCgd
         R5eUoL3sXrwwm29On1yjJF7iJcQ8dKUkyqa1q6LgPQSmXXDO9NWJ0JGbzf1UDPgqvcBZ
         uu+wbkD5QXz3z5VQOddLE7faBqo0Q1gKcv5aowoYvITlqcHzqmvIJwuFcg3KEJxUC0My
         sbKmosPq4riarCeyAZOT9WNfzvV97kNrlCdTiuUrsVG0N8rDLVg4MCnOzErsSGa00PzO
         PkgZ4DBvVwUZFQSBzKx5LtTJDSJYO5HpWUGKdmWSwmgXHPTfVRl3kSgBfUdTsykER7J5
         qfYw==
X-Forwarded-Encrypted: i=1; AL+hErFSHD3UW3ZZ0WMV2ugssTqB2nOr01PfQ74QJlBJAkCzlFXKvYuO8VtwmE/FmeoWafyPrWDjW204zcS9GxROVg==@lists.infradead.org
X-Gm-Message-State: APuU4Z+jlVBhHVJ+u8gsw/mtKfu1QYzGGoZd/PRO0n0LAegMw41t+cZU
	6mjJteCpSxCIOe7xNvDpLuqoji4mDTeMIuNzrsk09YxIQf5pLLStRgya
X-Gm-Gg: AYBFou2MvCdtOHDZ3YIX5+iARaMtThGx8NuchNZw5SwPBUn/1OGXbZtttC7Y/hAulg4
	bHsMioHHBzJ8+KEeyeqNYbNqwpIBqctgnpROJz5cDwlxdZ7mDqvItW0i+eqTGPLbTPPswzgpDph
	29u9s4rky/9T7ZyblMnsq0TRK7oytKDvl4gPIK5iyrOptbF7k8m4Vvoc/mdEe7HB0WXKoytpEtB
	O1N/gndPlfXvk3VFXv4j5+3IHyU7pgNBYT+sbjRJRY+K4cZQWI7qVB9jpGO/LmQOF2csf09D76T
	BDb2kBpcKdl0Afw+xKTAGEGQVpNK+ZliPmsnQgTd4v+nU3ydSR30hfv5ddfwwYOFsySreaHih1s
	bGfj+XSDr86FEez/UapE0eSyfJucp5fEwl06MDJTabuJqlwWXONMg8Yz/kl3lVZuF7nz4CLMAFP
	ycXHju7TYfkLjG6fsuhTOpz2MjR7WmM+Segve4R6+r/udWeSU8K8QwpofP1I5oV5mHLiLyJo7CC
	EAYq52VBe8T9EEGm+scQsgNYQb7WfI+ehXaDgACKWbGxZGlSQMyXLaz/nia/uF1m9mi8rFRuWR6
	HrknwayY2CMJn/2JqvLBNtWGWerD/9LpOFu5jM4=
X-Received: by 2002:a17:90b:2642:b0:3b0:9162:948e with SMTP id 98e67ed59e1d1-3b1b0ba0a60mr1992696a91.27.1794575579407;
        Fri, 13 Nov 2026 05:12:59 -0800 (PST)
Received: from arch.localdomain ([152.175.35.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b1aec622b6sm4931622a91.11.2026.11.13.05.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 05:12:58 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: damon.ding@rock-chips.com
Cc: Laurent.pinchart@ideasonboard.com,
	airlied@gmail.com,
	andrzej.hajda@intel.com,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de,
	jernej.skrabec@gmail.com,
	jerrysteve1101@gmail.com,
	jonas@kwiboo.se,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	luca.ceresoli@bootlin.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	simona@ffwll.ch,
	tzimmermann@suse.de
Subject: Re: [PATCH v3] drm/bridge: analogix_dp: use devm_phy_optional_get() for the DP PHY
Date: Fri, 13 Nov 2026 21:12:48 +0800
Message-ID: <20261113131248.2804840-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <385a67f0-e5cd-4dba-9b9c-5b766462c6c0@rock-chips.com>
References: <385a67f0-e5cd-4dba-9b9c-5b766462c6c0@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_051302_248522_5961EDDF 
X-CRM114-Status: GOOD (  11.33  )
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

Hi Damon,

> You are right, this is really a valid concern.
>
> If CONFIG_GENERIC_PHY is disabled, the old code could still proceed and
> keep the driver probing, while the new version would return an error
> directly.

-ENOSYS can only come from the !CONFIG_GENERIC_PHY stubs in
include/linux/phy/phy.h; the real implementation in drivers/phy/phy-core.c
never returns it. And the stub for the optional variant returns NULL, not
-ENOSYS:

    static inline struct phy *devm_phy_optional_get(struct device *dev,
                                                    const char *string)
    {
            return NULL;
    }

So with CONFIG_GENERIC_PHY disabled the PHY is still treated as absent
(NULL), exactly as the old -ENOSYS branch did. With CONFIG_GENERIC_PHY
enabled, -ENOSYS cannot occur, devm_phy_optional_get() turns -ENODEV into
NULL, and any other error is still propagated - same as the open-coded
check.

> It should be better to keep the -ENOSYS handling to preserve the
> original behavior.

Overall the behaviour is unchanged in both configurations, so no separate
handling is needed.

Best regards,
Jun Yan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
