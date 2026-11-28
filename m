Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1923B606A31C
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Nov 2026 06:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PRz7Z7pX;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=furiosa.ai header.i=@furiosa.ai header.a=rsa-sha256 header.s=google header.b=KyFTXXl8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=THtaLuQyyivhG4o+SpzsFftRZLd+vWrOGTYZOzMJIUo=; b=PRz7Z7pXcNayTGQWiwePz9HWDT
	o1xCj1dfkElyFgDTfE0pBDn/JyC2tTAlMtGADJ1+xDAC+/WplfQNe5T8I/d9Mxvuuf7hqbMqssN9p
	r0mSAIYTJSrVeUfjKyXOLDVasIsmVUpV4lLIBNjMqibfPjuK2lLxWLqWmfJJ6xHerXguHz3HYgfYD
	jrxRHzS/zEK5ADX4x3Mwiq8A2Lqzm2JXW2O+foa+ONYoJRyPiWM/U1EhN3Nv5kSD16BLIgaCujSDW
	GO7Tn1OLPvQjcgz8S25GOP4di7ZnoP4vhqevIEjUTP6ca6ey+B4kQr2Nlt06zBD45dT8t4YzpUWdE
	/65DMIcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xXC5d-00000000QRt-2dme;
	Sat, 28 Nov 2026 06:39:17 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xXC5T-00000000QPU-0F75
	for linux-rockchip@lists.infradead.org;
	Sat, 28 Nov 2026 06:39:08 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-8c700d6cc0bso4756886b3a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Nov 2026 22:39:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=furiosa.ai; s=google; t=1795847946; x=1796452746; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xJUrKT1/8wtWEpCHd0NA5Y6u4vvqC4B4ufA7sT35KDU=;
        b=KyFTXXl8zldEUcH4pAL0rtVVwn6eMuwcyq9PjiubpbvCofrERj2cjK6Mbnv2GnT9Kc
         xicFJb4f6sFQwX+ZIffYLEleMTyHMdNI2EL9lZA3F2OmGxXfugfCpnl2I/FMpb/GemHd
         QrcO9Il/iXsuQ1GUSJNuEvFPGbxi/dAu65C0I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795847946; x=1796452746;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=xJUrKT1/8wtWEpCHd0NA5Y6u4vvqC4B4ufA7sT35KDU=;
        b=ylVZhqctamz64bTkUuJjNaME/sOxllB6r5wIebuzh24xgOznmTfgPlTKm0GrN27+x1
         UrpRaOtWhLUm4adD807DgfMBgxroJw6+taLNpZWWXHWUogVDWjcxVOwBNZJq/damtHv/
         /WNndzpp/8COu4PA2QryBSK6tWhlyfow9DqM8Y8nWHRqkxVrpPN2gi+/9Q75HLPwz7NJ
         KKkjEQ1X65v7GCCyBTZmTYE6UOWPJzzcV1A7720ZcQCBVJgYTFqiYJHP3foBYZmmO/O+
         e8OZbot2HTntyiTMnlOUuzNc/RXdnCrgU5I/8ht3uDmvfRMqi2h6b5rYBYv4DyXQsPi9
         U1NA==
X-Forwarded-Encrypted: i=1; AL+hErHZSBBOpIjalqVcKhw94FwqDBtLPiX+Hg6EIBjXvZzTyx+dMVnjZJ+zjvQfwan9YHuwf/21JrJGgak7yRx6Jg==@lists.infradead.org
X-Gm-Message-State: APuU4Z8Blky5UcNYThIMJNBB/egEZ0JXCSZpEHqFg8Dew2bIZGRkGkr6
	UyTOaJChaZd6UkjocZhkDzzee+dEAdhh8471t8sM5mUfkd/Z2eP64JYaF48cbZEoOdM=
X-Gm-Gg: AZFdTZe4E9eRTPMAhxit4oSN7IXDZhYxM522fflqtOuJ7X/zFprsX68/bDvMRGekHIl
	/K9m41f8+NVkRg7f9QCNWIFdU8o5OtiNf7zWm+/6CC1fDoA0Xmx5HVLI0aDKRgCcTRzQLFVM77w
	lrpmVTrk97gJD/2JCAqtMarnrRAFToW/TEfHd0SSaQS+rhro69R2cxtK26cC3R4LKZegDmq7ltI
	rHg0GF0ZjU5sPMKIVSIunsIb8vYVsb05mWX4rBOSbI5DPhXoafq9v/L13j0Yeu3R5vfqac+fdb1
	I9HtJtENkflHcewhTnaL69eWoemtieWytUqXpIVmeBE5BXh0MJ1GEelJ7+SC8uiM0ycdTRF9Mib
	ibnWGh3/USsVYl2sdUZXB1CbNmstBSQ1xWImHjs8o42p2PL1V2HvR3q/5h8WS2rRFHj4y2km0Jj
	2oiR5SMBj2mE2Zd7kv/Ne7cXZNR27ei80qleuHLOQr4xeY8Os6SZQaN5v7arWH8/HQARqKyUhNL
	fXpMvnWPUjG7fPFugal7YRBqVhR7YmYW6d0nYSLHIkvBeQtZmGiirHV/lbWyy9L8AotBiYtgLbu
	g6upbkMnfifL5tn9YJaCwMdkjkpUmUnABX+HomhrXDU1vML70gKlNjRnYwd7R7y4/rG4Ak1LSJP
	k0k3xWr6ywHfH
X-Received: by 2002:a05:6a20:a106:b0:3fa:53f1:abf2 with SMTP id adf61e73a8af0-4014de5db77mr21193451637.29.1795847946035;
        Fri, 27 Nov 2026 22:39:06 -0800 (PST)
Received: from rock-5b-plus ([61.83.209.48])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c87077944bsm13939838b3a.2.2026.11.27.22.39.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 22:39:05 -0800 (PST)
From: Sidong Yang <sidong.yang@furiosa.ai>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Haoming Gao <Naixumogu@whut.edu.cn>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sidong Yang <sidong.yang@furiosa.ai>,
	stable@vger.kernel.org
Subject: [PATCH 1/4] accel/rocket: Reject zero-sized BO creation
Date: Sat, 28 Nov 2026 15:38:41 +0900
Message-ID: <20261128063844.1537615-2-sidong.yang@furiosa.ai>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261128063844.1537615-1-sidong.yang@furiosa.ai>
References: <20261128063844.1537615-1-sidong.yang@furiosa.ai>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_223907_157970_160AC9B9 
X-CRM114-Status: GOOD (  10.60  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

rocket_ioctl_create_bo() does not reject a zero size (or a size that
wraps to zero on PAGE_ALIGN()).

When args->size is 0, drm_gem_shmem_create() succeeds with obj->size == 0.
drm_gem_shmem_get_pages_sgt() then calls drm_gem_get_pages(), which
returns ZERO_SIZE_PTR from kvmalloc_objs(..., 0), and passes it with
n_pages = 0 to sg_alloc_append_table_from_pages(). That function
unconditionally sets chunks = 1 and dereferences pages[0], crashing the
kernel with a page fault on ZERO_SIZE_PTR.

Reject zero page-aligned BO sizes with -EINVAL before creating the GEM
object.

Fixes: 658ebeac3351 ("accel/rocket: Add IOCTL for BO creation")
Cc: stable@vger.kernel.org
Signed-off-by: Sidong Yang <sidong.yang@furiosa.ai>
---
 drivers/accel/rocket/rocket_gem.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/accel/rocket/rocket_gem.c b/drivers/accel/rocket/rocket_gem.c
index 8f802df3e0f1..9f3d85e3dd30 100644
--- a/drivers/accel/rocket/rocket_gem.c
+++ b/drivers/accel/rocket/rocket_gem.c
@@ -66,9 +66,13 @@ int rocket_ioctl_create_bo(struct drm_device *dev, void *data, struct drm_file *
 	struct drm_gem_object *gem_obj;
 	struct rocket_vm *vm;
 	struct sg_table *sgt;
+	size_t size = PAGE_ALIGN((size_t)args->size);
 	int ret;
 
-	shmem_obj = drm_gem_shmem_create(dev, args->size);
+	if (!size)
+		return -EINVAL;
+
+	shmem_obj = drm_gem_shmem_create(dev, size);
 	if (IS_ERR(shmem_obj))
 		return PTR_ERR(shmem_obj);
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
