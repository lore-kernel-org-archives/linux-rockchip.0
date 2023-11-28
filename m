Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78EEFC07E97
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 20:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9LF7HjNRtohEl7spvIo3vUbqXvmTd3I/oeccqmGRFo=; b=sEGT2VsAncZJWs
	4vcHlgcA5w+jPuYx6ZVIjCN4rAlQyAIphT38McxB7S0JuOZqNZymayDLTFiYIeCseKUA7aIFa47em
	kxLbAf85O9svnsDUkiuTXbt2RfUL515j25hTqGcnq1MFeokTnZ9L3p+Q9tkwD+LoqfGA2q1wGtT5c
	96wrmdiX+oU16E+9EK76BmxKUUF/FeqObM9RBjr2WCNAOPwpA/W5LgxeM/lcqLXeS7yi8oIuEwh47
	jRIpP1MUWLP6UlzYqAxBNmOe7eeCcSc4XR4RB+Qgi7hAny/OF+rmgdZjuDw3QF+so+HYzQ2qAIsgb
	c7nIgM9RqKZguYxgS/Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r851z-006IDA-0V;
	Tue, 28 Nov 2023 20:50:07 +0000
Received: from mail-qv1-xf34.google.com ([2607:f8b0:4864:20::f34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r851o-006I0P-14
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 20:49:59 +0000
Received: by mail-qv1-xf34.google.com with SMTP id 6a1803df08f44-67a44ee7ab3so16623776d6.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 12:49:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701204595; x=1701809395; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iygGvNb1KE298FiVkmeH8gdBVxeTTuJw4eGKIF/nIuM=;
        b=Wo4ukq/sj7brKNPfNwkTy2zI3m/dIWYaf8kSWBNHK/izLGTEG3iFNNT3qcfbie4TbS
         hrtiKp4re5e5nC9twaaNqNt4i/pgrdAmg+WI0MwYOL/a4MYgVp7Ey8nizahuDAJVoelg
         hwSJrb/fX5uSMOpx8J+AedA2xru9Pu2nHW9xisZYOJXQNrjujEe1IIKqvveOADhXeNhK
         tPZqf4v9HV7zJDqmAscTYs5n/R76rusje8BXE9FglYWWujRlsQMYVjKTcfmvY6pRX6UP
         623E0zVI6dgOTqXzkYNQstfKu3udRie9RSGLZxva1hFIqhPDdSa8jJwBkhDsRLRffGSH
         sbew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701204595; x=1701809395;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iygGvNb1KE298FiVkmeH8gdBVxeTTuJw4eGKIF/nIuM=;
        b=mT8TDRXyjmAipQuTF3W/BYiBOVHwcjvzd5TxFs2FLGRZVsg7RjWEhQvWn1lOuwnhNb
         5xh7K43Huez60cEOAC29fWOuzhXxdfa0SSk0uKzwa6Rq6Q5HHeP5zuxwuRlH+R9Scxnq
         y6dOL3COgvFfJzZ2EFGOvwt1aET7FFoKApasYgx3YhWKTkVeycd0oZ1vu42PG3XuF8dY
         Q/v3UEoYAVZj61JTbxJQmTFSxjg8xPFIIEKV7uIXDF61+Suz8RU2ozXlfZFNybmKTJAe
         U6s9RN5K9P5RUNxCEVxhL3Ok9SooeuYzKxRKKZlfGiiwT7cnoP6oovNOykpa3t9jaJXd
         xB6A==
X-Gm-Message-State: AOJu0Yx80EdPmc/H4CDWIb5UBMIV4RkvJyJw0+Qwe4nIJVfUx0321gnz
	N0qw5uixH1fFZuSiHEOjyD8B8Q==
X-Google-Smtp-Source: AGHT+IE0Jl3QLEggdMt0xv2T8AyvhzkahJgD3VRGmfbhI7sqHJ8Aa/AdHKiYq6E8wbv77IBFZbLYmg==
X-Received: by 2002:ad4:5dc6:0:b0:67a:21aa:6513 with SMTP id m6-20020ad45dc6000000b0067a21aa6513mr18119809qvh.17.1701204595440;
        Tue, 28 Nov 2023 12:49:55 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id d11-20020a0cfe8b000000b0067a56b6adfesm1056863qvs.71.2023.11.28.12.49.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 12:49:54 -0800 (PST)
From: Pasha Tatashin <pasha.tatashin@soleen.com>
To: akpm@linux-foundation.org,
	alex.williamson@redhat.com,
	alim.akhtar@samsung.com,
	alyssa@rosenzweig.io,
	asahi@lists.linux.dev,
	baolu.lu@linux.intel.com,
	bhelgaas@google.com,
	cgroups@vger.kernel.org,
	corbet@lwn.net,
	david@redhat.com,
	dwmw2@infradead.org,
	hannes@cmpxchg.org,
	heiko@sntech.de,
	iommu@lists.linux.dev,
	jasowang@redhat.com,
	jernej.skrabec@gmail.com,
	jgg@ziepe.ca,
	jonathanh@nvidia.com,
	joro@8bytes.org,
	kevin.tian@intel.com,
	krzysztof.kozlowski@linaro.org,
	kvm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-doc@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mm@kvack.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org,
	lizefan.x@bytedance.com,
	marcan@marcan.st,
	mhiramat@kernel.org,
	mst@redhat.com,
	m.szyprowski@samsung.com,
	netdev@vger.kernel.org,
	pasha.tatashin@soleen.com,
	paulmck@kernel.org,
	rdunlap@infradead.org,
	robin.murphy@arm.com,
	samuel@sholland.org,
	suravee.suthikulpanit@amd.com,
	sven@svenpeter.dev,
	thierry.reding@gmail.com,
	tj@kernel.org,
	tomas.mudrunka@gmail.com,
	vdumpa@nvidia.com,
	virtualization@lists.linux.dev,
	wens@csie.org,
	will@kernel.org,
	yu-cheng.yu@intel.com
Subject: [PATCH 15/16] vhost-vdpa: account iommu allocations
Date: Tue, 28 Nov 2023 20:49:37 +0000
Message-ID: <20231128204938.1453583-16-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_124956_404306_524C3CD7 
X-CRM114-Status: UNSURE (   9.15  )
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

iommu allocations should be accounted in order to allow admins to
monitor and limit the amount of iommu memory.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
---
 drivers/vhost/vdpa.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/vhost/vdpa.c b/drivers/vhost/vdpa.c
index da7ec77cdaff..a51c69c078d9 100644
--- a/drivers/vhost/vdpa.c
+++ b/drivers/vhost/vdpa.c
@@ -968,7 +968,8 @@ static int vhost_vdpa_map(struct vhost_vdpa *v, struct vhost_iotlb *iotlb,
 			r = ops->set_map(vdpa, asid, iotlb);
 	} else {
 		r = iommu_map(v->domain, iova, pa, size,
-			      perm_to_iommu_flags(perm), GFP_KERNEL);
+			      perm_to_iommu_flags(perm),
+			      GFP_KERNEL_ACCOUNT);
 	}
 	if (r) {
 		vhost_iotlb_del_range(iotlb, iova, iova + size - 1);
-- 
2.43.0.rc2.451.g8631bc7472-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
