Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80067606A31E
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Nov 2026 06:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0CgxZ4JX;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=furiosa.ai header.i=@furiosa.ai header.a=rsa-sha256 header.s=google header.b=A1uaqp3n
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ZhgGgr9chYRgAKj/u/rhjHzFnG9rpZC3Yj/q5yzjkF8=; b=0CgxZ4JXlwZMd2cQQa58SNGPK2
	C+Twe4lAK7EGYFeWlnfnJ0zqyd6S41orRmfo84ovzor2LPfDNXeKm6xpvopZ7FkrzEQFpJ9VZmWMR
	DwZXPb+kFykw7dLsCaFDfW4OYp54I1rLswL56kbLIszl8lRbD1sQih2AYhOD8ZbS1jIYtOZ5D4dXN
	fjS5ZOoMItR1LGVUEU4vTxs9wJbPhiG7KZwhVKVUqgTXvyJbM365627qEL7FpYW8V3xuplj7BB5Nj
	7HN6HUaxWP6XvLJKzw+oXhVwcXn5GGP/XLz5jugrocDsewOuC1WsPJvVcnRqv7dG21tkez29P9fdM
	E842maYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xXC5e-00000000QTI-0K8q;
	Sat, 28 Nov 2026 06:39:18 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xXC5V-00000000QPu-2uuX
	for linux-rockchip@lists.infradead.org;
	Sat, 28 Nov 2026 06:39:12 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-cd6acc50b8dso4454969a12.3
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Nov 2026 22:39:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=furiosa.ai; s=google; t=1795847949; x=1796452749; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7/KIItuSkOccTTrf3OQEivNTHfzC9rlU/LCr+peVUCg=;
        b=A1uaqp3nyRM/B6aCJ996dWUE//gn5+GcISQA4YKuLSs4+dHMj1dnaTfWMsUJtfQqp0
         tuGthNx7oxLUFcOWpqRNoT1CUqzXNgDmmBnxgO4Ktm5hL0/eWx6czTjY6PrSsukcB6gD
         IHGsvqsz5EjrToep/AvhDyV5+9RG2tKYcZWAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795847949; x=1796452749;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=7/KIItuSkOccTTrf3OQEivNTHfzC9rlU/LCr+peVUCg=;
        b=c5fBj0oYRnE6kMBdkLtF6Ud+t0RC/MdZBp/21eIm0Jx2CtV9l1K7ZyfcA84s24VX6T
         9lJxf90bhfgIy9y87I5uBv3PQJvFxj4DqnFhOeFBROkJvzrTRnaIGvLd/fRdtfm/ooTj
         k07lk/Gutu2DQvaOsthZ6kTeQW5P+WDMJyXVK80BaBuhxp6tkARH95ur3DS2ixnEoPEt
         Egg1OJCcL4Oakn1Xi6mp+rjhwpTAK++Z4GZYMXzgi2TRJ66ebhKh6D9V7wDA5snDGZwx
         A1Mmih+dg/+6QXW/j0Di8NnXYIsc5qwmKGwlCkD27f1uxoFb4+NVfWmzStVgEUI+PkoH
         BfCg==
X-Forwarded-Encrypted: i=1; AL+hErHYrvSEsjl2cu+VUAKki1TE5puQzN1msAQXJWbepvmBW4SNtUec+2XgX2Jw+HnlrfSAMui3xCqT1YmoeJLpNA==@lists.infradead.org
X-Gm-Message-State: APuU4Z8x9KknatFyz/3yaEI4OhHEaPCSeaailIju5/OJKoG/opJ8zdg9
	yErp1WfukXICml6DV6WfAUhKvhoCsvccs5K9XuVfhFjM5h4oyiX0c0FcxBK0aw6KmGo=
X-Gm-Gg: AZFdTZeraomzaMosx88QNEzl8CzPnYXIsVtQpQJofkUHy/5aExS3JiKuly6Cp2qP6c6
	xRW9fD3+1lqSWN+5fIDVnyb9YTWtSnbuYoC6V1ystr9Euci6zLNR7zOV3psT1yfG1S/QR9BXAtT
	kIi+xtzQdGg8mRzf2EgCqp4B1HYaCmB6RMMwA2lUvWssBJupUMxUICC+63j49H4uCOL1xXaLnSE
	oUUYMrdyM9QzL8VQmDmh7YDQG0udRjVzcjLUVwS5Ipw4VtgW4VHQss0ioQUZwGNQ3Fy6fBYUAGd
	uOGRaD6yiLqmSqAJ5BSRMb+fvCBRutB/mSYorQzoV39gAILnXS2HZ0tK1NzRxoG4EXpVe6ZwNnq
	N7GSQi1GCBcn0iHos6PAluHRLl/iZlEkUr2L+g0iRgpcCzFcI0vTqnt/GtZ8z215T1ocsGNRDl9
	0WV8nvLlmxdppM0ZLQXHaGauWXWd0uzxyUDS3RkE2cgqC9s0DJIibOgQ5D/zFsqmQaCPunyLH3T
	3cLULzPbj4THjlLdXsPZTAXIpefqx4B8S4XVfsSM4XTg95HeEWHkzpY9aS/sAJPNoraUZG7vS7R
	3ph4EKF1/Rm4E1yPAfDKo/ZXbOkD1/wkpMAjw/jjJb7S1mVWKr0py0JV34uokQhLpdqeXXcItcS
	5fLPFHEuHomKL
X-Received: by 2002:a05:6300:278a:10b0:3f9:797f:385a with SMTP id adf61e73a8af0-407235c3a0cmr11591887637.15.1795847948803;
        Fri, 27 Nov 2026 22:39:08 -0800 (PST)
Received: from rock-5b-plus ([61.83.209.48])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c87077944bsm13939838b3a.2.2026.11.27.22.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 22:39:08 -0800 (PST)
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
Subject: [PATCH 2/4] accel/rocket: Fix iommu_map_sgtable() return handling in create_bo
Date: Sat, 28 Nov 2026 15:38:42 +0900
Message-ID: <20261128063844.1537615-3-sidong.yang@furiosa.ai>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261128063844.1537615-1-sidong.yang@furiosa.ai>
References: <20261128063844.1537615-1-sidong.yang@furiosa.ai>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_223909_762749_F64371AA 
X-CRM114-Status: GOOD (  14.91  )
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

iommu_map_sgtable() returns ssize_t, not int. Storing its return value
in int ret truncates any mapping of 2 GiB or larger (reachable via the
__u32 args->size) to a negative value. The error path then removes the
drm_mm node without calling iommu_unmap(), leaking the IOMMU mapping and
causing subsequent allocations at the same IOVA to fail.

In addition, if iommu_map_sgtable() ever returns a short mapping, the
error path fails to unmap the already mapped range, and the drm_mm node
was sized from the unaligned args->size rather than gem_obj->size.

Store the return value of iommu_map_sgtable() in ssize_t, size the
drm_mm node from gem_obj->size, propagate negative errors directly, and
unmap partial mappings before returning -ENOMEM.

Fixes: 658ebeac3351 ("accel/rocket: Add IOCTL for BO creation")
Cc: stable@vger.kernel.org
Signed-off-by: Sidong Yang <sidong.yang@furiosa.ai>
---
 drivers/accel/rocket/rocket_gem.c | 27 ++++++++++++++++++---------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/accel/rocket/rocket_gem.c b/drivers/accel/rocket/rocket_gem.c
index 9f3d85e3dd30..e52fc6ea7cf0 100644
--- a/drivers/accel/rocket/rocket_gem.c
+++ b/drivers/accel/rocket/rocket_gem.c
@@ -67,6 +67,7 @@ int rocket_ioctl_create_bo(struct drm_device *dev, void *data, struct drm_file *
 	struct rocket_vm *vm;
 	struct sg_table *sgt;
 	size_t size = PAGE_ALIGN((size_t)args->size);
+	ssize_t mapped;
 	int ret;
 
 	if (!size)
@@ -81,7 +82,7 @@ int rocket_ioctl_create_bo(struct drm_device *dev, void *data, struct drm_file *
 
 	vm = rocket_vm_get(rocket_priv);
 	rkt_obj->vm = vm;
-	rkt_obj->size = args->size;
+	rkt_obj->size = gem_obj->size;
 	rkt_obj->offset = 0;
 
 	sgt = drm_gem_shmem_get_pages_sgt(shmem_obj);
@@ -98,19 +99,27 @@ int rocket_ioctl_create_bo(struct drm_device *dev, void *data, struct drm_file *
 	if (ret)
 		goto err;
 
-	ret = iommu_map_sgtable(vm->domain,
-				rkt_obj->mm.start,
-				shmem_obj->sgt,
-				IOMMU_READ | IOMMU_WRITE);
-	if (ret < 0 || ret < args->size) {
-		drm_err(dev, "failed to map buffer: size=%d request_size=%u\n",
-			ret, args->size);
+	mapped = iommu_map_sgtable(vm->domain,
+				   rkt_obj->mm.start,
+				   shmem_obj->sgt,
+				   IOMMU_READ | IOMMU_WRITE);
+	if (mapped < 0) {
+		drm_err(dev, "failed to map buffer: err=%zd request_size=%zu\n",
+			mapped, gem_obj->size);
+		ret = mapped;
+		goto err_remove_node;
+	}
+	if ((size_t)mapped < gem_obj->size) {
+		drm_err(dev, "failed to map buffer: size=%zd request_size=%zu\n",
+			mapped, gem_obj->size);
+		if (mapped)
+			iommu_unmap(vm->domain, rkt_obj->mm.start, mapped);
 		ret = -ENOMEM;
 		goto err_remove_node;
 	}
 
 	/* iommu_map_sgtable might have aligned the size */
-	rkt_obj->size = ret;
+	rkt_obj->size = mapped;
 	args->offset = drm_vma_node_offset_addr(&gem_obj->vma_node);
 	args->dma_address = rkt_obj->mm.start;
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
