Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649F8606A325
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 07:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PRSiUkO+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=oMvAOfWq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Y3D1eFlwkLsMY8J1BuFn7kG/cL0py9d7wdLHc3zZayo=; b=PRSiUkO+4CCRH3W+Izlzswe7wb
	igDs14JKUYw3XofWx28taifQZb3RlCrM43x9fvAidTFBkbhgbGHHFDkn/g9YMcdWpZhElglCHT6vb
	KdXhiQ2ckt8xilf/pFG4ItHb2VtYLxxsm1MI91RymbLBbQZ0ogXUKhJWN4MDNGV0Z49BiILyHlXNZ
	OUkVtcQKwcVr/YNgBdce2kj7g9RhluX3brTELmWGvk3xg/ouy/Z11MZdaTiYQQVXkOlcepXnTesQ8
	vIbZ2U2pwIf2ETDItSIw683idFDWgy8BqrDJev7S4TXtTS+6qHx4uD1PNP03eztaxoMzb/v9DSbwl
	qKZO2DZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNQGU-0000000DxZo-1vxg;
	Sun, 01 Nov 2026 07:46:06 +0000
Received: from mail-dy1-x132a.google.com ([2607:f8b0:4864:20::132a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNQGR-0000000DxZA-2kzK
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Nov 2026 07:46:05 +0000
Received: by mail-dy1-x132a.google.com with SMTP id 5a478bee46e88-33fb4680717so2497550eec.1
        for <linux-rockchip@lists.infradead.org>; Sun, 01 Nov 2026 00:46:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793519162; x=1794123962; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SAR00vszMy7Oo8d4FC1bVF4Fi2pxCcoHYlztJt6Lr9s=;
        b=oMvAOfWqoqoT60R+9419AVAq1tatm5lmp3ng0Nu9MP06zGTyOQZ3D5S1uC9Kx4rUAR
         ENBTqqQtDo6IZetlTWj+wvPp4j/jyuNhEDgPBLz52Fmvazp6kLTljwIuLjeDZTNhw3JL
         J+k/5MVUzXU4T+zMdVIjbfQPWNkULogOxH9HzZF4trQueij8P2Tq4gkuxwsRMaUidoro
         h/SOYy3L2/N5NMw1WeTF5jfBK3GZ5Muu+BvyMXoLlSKtoj2zCUv+L7NJLZfMLO399rhq
         poMryHXGsYMLKqJSgZqDqpuSIkZdo5d0TzTQQ+OblyyZ7X/GloREA1fZVMY/hqOEIsKE
         bwKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793519162; x=1794123962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=SAR00vszMy7Oo8d4FC1bVF4Fi2pxCcoHYlztJt6Lr9s=;
        b=RFtnomE4kGetsA+O8PrI2uOicc4Nx40A1vlDToh2ljoy4dh/u5cxSymhFaSOWFSKx+
         e+RLU33GNVBqPsg0Io4T7m+k+onuOF5KsNEMxyv514uAE7uCL0RHRB//00oquhiSvNOl
         4u2/E5TeQXKZbBt1DDeFEr8ziduNsSNmg4NioZrb5X7HO+6baVr3Qav6iYnEQJ7STzoM
         l0w5Ck22Os3spE1EXS9lLhAiRXrPPQ4hwrPvLOnpXmuWCaQh5KzcSKPl8fYX7F9JeOV/
         vT5SmO/4gm+rcz2XMOvk64srUBPC/cLViQjrRsJiAeRBsfFdco1vwCjhve1xpvorRQhz
         elTg==
X-Forwarded-Encrypted: i=1; AKwUvBxkuZzjUW96Tn2G5ToqxsFmwcMHd/QM/3IdW8QT3nApDwvD4dXo/WK8viAMy9sugY+wzgipdOkOlTqxHHnWZw==@lists.infradead.org
X-Gm-Message-State: APuU4Z8DA5Lfjcedd+UGRG6N0rRfp2ZCMFiEA5geeF00/IW66be5Bvgd
	5FzKozkZW/ONUHTrRF7pBcwjRXNaoBVq/g5J05gOkZ1VRbfufkHG1wpG
X-Gm-Gg: AYBFou2y4pzMdCmSjN+Z/m3f/ObLll+rkxsCM0RJ0uSp7AAZrxUv27JuWGqpeL9mkeQ
	xASTwBZUUKaSsTLFhR2awizZI4+oh9nXzdXd1iMuPtL8YMJ6BZ2ZAoqyliM7MhiSW6qkfpM3LQs
	crrF1t08bRDHfCWI3MpyCR/OHOMRa0OKvYAhpnpfOotpLd+AcJtg5/916XSIi3rWNk8O/LC/Oj8
	IZSdc5+h+TqUZClUJXCIhaIe/hewTMrrY2L7qmCLWsoNiUAHvQHcY0B1U8Inob8z8IVXcJ1MEAm
	KDnhamu4l20NzXZWjcLaLqYAWhGorWf2TRKRtzbZ83hqsluyNH30TY1JauTH7mgT1/3LEhXBBIT
	VQK57iHgFgk6QJUJlF35S7m8v4yOi9DqsfHtNNbmrZJYtgCfEazteFlsfSUHIhRwHTmgeGG8uNw
	YUTarVkl9oIw6LDM7cBgTRiWostO9HtWr92niR3HwJqsaVafhxcKa+GW7B7i9fWMRmlIgww0UyP
	OicFBisfJ/Eo0AeCbT64IZMdRmlimg4n5zUsfRTcqF8lESGYiy6bncnSRXBM5mZlksjwBrUGyiX
	VfRL26xeGw3Pwo2HtsN6/n+nz2wrJlENrXm+soXd
X-Received: by 2002:a05:7300:fe86:b0:35c:85fa:5a68 with SMTP id 5a478bee46e88-36a42400c6amr10962673eec.31.1793519162483;
        Sun, 01 Nov 2026 00:46:02 -0700 (PDT)
Received: from arch.localdomain ([152.175.67.103])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a42662f23sm28414684eec.2.2026.11.01.00.45.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2026 00:46:02 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: jerrysteve1101@gmail.com
Cc: Laurent.pinchart@ideasonboard.com,
	airlied@gmail.com,
	andrzej.hajda@intel.com,
	damon.ding@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de,
	jernej.skrabec@gmail.com,
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
Subject: Re: [PATCH v2 RESEND] drm/bridge: analogix_dp: use devm_phy_optional_get() for the DP PHY
Date: Sun,  1 Nov 2026 15:45:51 +0800
Message-ID: <20261101074551.263631-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261013134659.335829-1-jerrysteve1101@gmail.com>
References: <20261013134659.335829-1-jerrysteve1101@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_004603_701487_672FBA82 
X-CRM114-Status: UNSURE (   6.45  )
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

Hi all,

Gentle ping - three weeks on the list without comments:

https://lore.kernel.org/dri-devel/20261013134659.335829-1-jerrysteve1101@gmail.com/

It makes the DP PHY optional, as needed by the RK3288/RK3399 built-in
PHY, and drops the misleading "no DP phy configured" error at probe.  It
has a Reviewed-by from Damon Ding and applies cleanly on drm-next.

Anything else you would like changed, or can it be picked up?

Thanks,
Jun Yan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
