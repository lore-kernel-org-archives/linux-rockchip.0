Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9AEB606A31C
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Nov 2026 06:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=rp42x1VV;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=furiosa.ai header.i=@furiosa.ai header.a=rsa-sha256 header.s=google header.b=UQhG0BRh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FqSOycrXczQmom63Wo6cCBSEpm9AC+gnTMJunPkL89Y=; b=rp42x1VV0/287+j9MnSkXIJR5i
	zvMYhD7pnoJWB8KD+Rqsx5z93rxonzNiESAWdKK0DNf1WkdBsdX5YAMtdoPI3zgtsLS2PInRM9wQa
	RVEGI+We7YPvl+Nm5TSTlI9ntXFoiYHEebcjkZIm3OA2fBn0FvuCsulLF/iGZ5vkc/+phrIWhaNrw
	trd/Xq1mjx7c1c+dwFuOmlm0A92cYatnniGLwdLp//dEYL1Ki5VP3DFF9Z3mwfFUFkTWiocw+SClh
	xJt8XEkdYJz0KabHYtxJJhiXeIIwEVRHM1oOqyjEVgxSn0XSLH8CnfHZMBqeJXfyZSBIBL6Q/3zbu
	MQYCvWQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xXC5k-00000000QVv-213H;
	Sat, 28 Nov 2026 06:39:24 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xXC5c-00000000QRv-1KCA
	for linux-rockchip@lists.infradead.org;
	Sat, 28 Nov 2026 06:39:18 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-8d2d4cdb478so605738b3a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Nov 2026 22:39:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=furiosa.ai; s=google; t=1795847955; x=1796452755; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9gp1NYV9MXlZIke0oUQdNHBR+MQ+XNi8DFIhrHDnoJQ=;
        b=UQhG0BRh3MmJNs0mn/WmxL7ByMMVne+D3w5ch4w7iC8az7eegJbd0u4JSUEfn40LrR
         xBPHn4S63JyNPHw/dDfDtDRQ1hOPhKZmT24E0noTx/4+fqwoRTBCCTxwYnYtkdiHx8ok
         U/oowH3U50vXzjH5k/BjDHnzsLw2d5Ocgf8os=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795847955; x=1796452755;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=9gp1NYV9MXlZIke0oUQdNHBR+MQ+XNi8DFIhrHDnoJQ=;
        b=D6cevm36AkfWGZUMndiwelkBwXyj5U3xHu9TXBlAWhmp8ibSzoYUMy83dBKrIWnTnA
         Pdb8eA2o/3Zz1Zn1R+/lokj7dMDoroyVXLqYd5ITxYO0PY9Mhi1Z4MMmPSSQj2rF6jbJ
         qGLUs4Q4db4+C8iRI8wDAm+TUbXs7APHIJ6OC/Dfpy7wj7L366UTtfc23Y8bISVYpD6c
         X9e5P9YnY8eQyBG7Me5uq7Luxk797YxH8L3oOwwRpJX6G2Sp6tCxkVmcdgiN781QJblM
         oGxpvcf7fAdq2Jy0wrB6nPXCa/L5mb6LmlVuTZGJ+Ok1RBGt/IA3dzA5t52f90NivHMF
         wSug==
X-Forwarded-Encrypted: i=1; AL+hErGgMno86qhgCs+Qg4sJTW8ZgKzN+VosXOPX4UDgyeNpeiV4jETfRkuxIaTMRC1BB03J2UAMsx9Kd1N0Nxielg==@lists.infradead.org
X-Gm-Message-State: APuU4Z/1Nb5W2M4wLFm1SRtCujpDPDcExVZDIFVyrmm4yLNqaBv6uGju
	Zx86YNWoeUsEMw9ErdxuQLlklO6uin5k0glXslBekw2u14xFasB6EiWsvv/qOG1zrc95LPi/eXU
	hnz/88NM=
X-Gm-Gg: AZFdTZdsmkXyuGVB8YVcCxhh/SKgMXx8H1Y0WmKPinR/eJFAvt1lNGseqmm10kr/kDG
	+NwYeoXoMDbDQSKDhiuRHc/0Uf527Wh/QEUSAf51AY2HCOWVZyJcDjDpVJ1BtwQwc0L02POFQfJ
	FfDlKhUWQT7pXzzxTKTKgWUebkd2yg4OYW4WrLurix8xg4E99d/bX3luwO+nnMv4u3RHOoNKk2i
	oEtT/n7utH6sSyD1YgKnjS5pcsUt6FZ3j+Kk9QJ5oEeGWQlXaWtWoSNVyfV2uq29WiUu/dEIFON
	ZsGSlSRQFbWm5qb5TaB4zCJTYyQezvVSyZ8QZar1bpC2woOFltB47U4L8izQce1R2djCkmimy0q
	7V6ULYkfuC6W3vv1RvMV1l8zpIfxXtgZ1ahTvVp2C9RLmmfmrf5CRMtadeBrDzNSmqL9iJsoAlg
	GTkrcMIv/dwY0g2tkDSz4aWebHA1lm06Nue/mwREtYszSroGQxP5nFAJwxhElkGlTlULljoX8q+
	wOE2kULclQxWUctqjauypXhJpl+Rm5YPY0vLS/H5dGIaLHVqBRKHYrZvREZIOnQHFpIL440q2U0
	rMbZbNg3tK9fMO1/bIQkUFdCyYK4bazdrfRSfDBsNhZ2cGtAxMubMZwgvVqxgbCNgVw7sW4efx/
	XA6E8WCF9+Ld4pk2gW21aPXd74nKe2qL8fA==
X-Received: by 2002:a05:6a00:368e:b0:89e:3742:3e16 with SMTP id d2e1a72fcca58-8c87bdb526amr26434266b3a.18.1795847955449;
        Fri, 27 Nov 2026 22:39:15 -0800 (PST)
Received: from rock-5b-plus ([61.83.209.48])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c87077944bsm13939838b3a.2.2026.11.27.22.39.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 22:39:15 -0800 (PST)
From: Sidong Yang <sidong.yang@furiosa.ai>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Haoming Gao <Naixumogu@whut.edu.cn>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sidong Yang <sidong.yang@furiosa.ai>
Subject: [PATCH 4/4] accel/rocket: Wait for read fences in rocket_ioctl_prep_bo()
Date: Sat, 28 Nov 2026 15:38:44 +0900
Message-ID: <20261128063844.1537615-5-sidong.yang@furiosa.ai>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261128063844.1537615-1-sidong.yang@furiosa.ai>
References: <20261128063844.1537615-1-sidong.yang@furiosa.ai>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_223917_611970_2F632A3B 
X-CRM114-Status: GOOD (  10.26  )
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

DRM_IOCTL_ROCKET_PREP_BO begins CPU ownership of a BO and has no
read/write direction flag: userspace calls it before reading an output
buffer as well as before overwriting an input buffer for reuse.

Since commit 4d8cb7be620e ("accel/rocket: publish read fences for input
buffers"), in-flight jobs attach DMA_RESV_USAGE_READ fences to their
input BOs. Waiting only for DMA_RESV_USAGE_WRITE therefore returns
immediately while an NPU job is still reading the buffer.

Wait for DMA_RESV_USAGE_READ so PREP_BO waits for both write and read
fences before transferring ownership back to the CPU.

Fixes: 4d8cb7be620e ("accel/rocket: publish read fences for input buffers")
Signed-off-by: Sidong Yang <sidong.yang@furiosa.ai>
---
 drivers/accel/rocket/rocket_gem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/accel/rocket/rocket_gem.c b/drivers/accel/rocket/rocket_gem.c
index dddaf9d2fbc8..c5c08da72f76 100644
--- a/drivers/accel/rocket/rocket_gem.c
+++ b/drivers/accel/rocket/rocket_gem.c
@@ -165,7 +165,7 @@ int rocket_ioctl_prep_bo(struct drm_device *dev, void *data, struct drm_file *fi
 	if (!gem_obj)
 		return -ENOENT;
 
-	ret = dma_resv_wait_timeout(gem_obj->resv, DMA_RESV_USAGE_WRITE, true, timeout);
+	ret = dma_resv_wait_timeout(gem_obj->resv, DMA_RESV_USAGE_READ, true, timeout);
 	if (!ret)
 		ret = timeout ? -ETIMEDOUT : -EBUSY;
 	else if (ret > 0)
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
