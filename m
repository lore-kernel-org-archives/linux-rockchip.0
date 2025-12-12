Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AF19D3B7E2
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Dec 2025 03:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BpimL51N89sVxiN2JkTU5q5JaJNDmBmrHWUgJ8mVqs0=; b=JjvqoEgCoSneFJ
	UqqF3Ndc33Qw4P0IFcaW1gYiwmURC/jY8RSfUNTV+JjGWgf0+AMDXUsJ9kFEnCDMxhb0GIM5EpUih
	AYBBv937sqDuWOSAgWDYuVHmQ5yuviCCJKiKosqlP1KVZ+893jibJodGCQdR+PS8riiom5XHM1HvG
	5voh3BXHfKjkkixPUp+DebLI6wv47MLRWLLN5fjzT+e5sZcSyY+d5j9Lr30f8IURVm/h18L/EIx0e
	4jDDQJiw8sZttRsN9zF8dDE9yWy4yZEiFb+Cb3wK7b5Kb7BVoY/qAoRxKeJcd666sCKE/qjN7ijzg
	8bzSdrKo3++OQ9GrHJ2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTtv2-000000001O2-3hAL;
	Fri, 12 Dec 2025 03:34:12 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTtv0-000000001NO-3F2V
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Dec 2025 03:34:11 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-34a47daf077so111685a91.2
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Dec 2025 19:34:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765510449; x=1766115249; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DI+KXchmH44mUxxpsbUV6PudffQTHA3dEjh5VjxDDHg=;
        b=coF3Laik2qG8v0HZmAzshyRn0xRlgQxutJO5NMJapUUV2iDZhMbe03P5HK40ekjeVE
         BZmplkR8TLVQo8iKjyd4sJL2lMGmzDc/OJY+DDLW/sw5kAgIM5cM9INGLjeK4ZdB4fQ7
         oRzlMgz6MfXA9FmXWauysdvlfq8rLOKpwuse+sDNsDY6lY90ft6oGx80qWfqIt9iKFYk
         BO3VFSVg7KBZWOPm/kcUQ89xO7OQ+pLyYgDdRklzxn4eiWjNB4dBr9kzpA0mlVFFzrqW
         fC7Lo47lZGvkaDk5VOE2rDyfeY6TIOu4DJLAYiMY+11mZgxDr3EcGY8lFKzAja/QaDDg
         hB+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765510449; x=1766115249;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DI+KXchmH44mUxxpsbUV6PudffQTHA3dEjh5VjxDDHg=;
        b=NmX70wiqCDVuikRGEJJE0VSAagFQEl/vfDCz48qTusilXucfKgmCBvY/Mq8ztNabdZ
         7bp5Uiu2Y7MFh57FrvDqoSq536pQw6QghnV7ZAAj6vLom9MIabQgWF6u1F2yTu73M0D+
         z5y6oqMPmE26QOBsz9FvdCYfmlXuSOfzQF26STS6U5rj4DuPFlaEYiTCj52S5LX1wjNl
         t1C81ct1bUhaZ2nLNdx6CsMY6OOXe3ADLV7AwZafyHZLOofc/F+TNKDeEWRSqV0Oreka
         /4vblD5LmzRJdLDph77cbBV0lL75I7qLVbhbiuTa9oacBH5Y0sr5RPLerdzotT0APXL9
         SKog==
X-Forwarded-Encrypted: i=1; AJvYcCWXhnOXFt33GODxHfwE21hcnBOfhPl7pj6FgiR6ISMHHcynmmn6Qm4Nf6KlLY7D2lYXChhzZQQOvYXnsiHMjw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwEb1iGnYLpRjWM450BTmiBDyktxCU+2q7AFvcFqELzJZfWehMs
	+2RhEoYTv6tmGDmPtLcRzorcZ7U0GrEWLcH02BOd5eFsMyoFW032udKt
X-Gm-Gg: AY/fxX6gsiYel5+4GecUA2MOjFtDJY7q6LY4yc2NKlj5QmdBOiPQFTJjYEIV2u/fqA1
	YC0XdaxfFJYLy/AaLjnQ+aJke8kas1K3dNeeiKRrmCquWlLcXY09pMDwXUN6koQQrzj2R9+zmIa
	EDdbX73h4Wzcr5p5u43EaHpbW5nMzEJ+6ZYrwjqJ16bZrIjvXLfdb74qrjOi4djymEiiWaue/S5
	d4+9gZC+Y1TqwaWAhaGkyIuIHBpmDnaNc20RSDCyGi2XcAGQ9ZAtv5i3LeGXbMPpDdg3JYCPAAO
	3RkXWMeUPN12jLRgbnxb4Ub72ozPIyBSxv3VV1i9xMiFO1t9P1giDPhYXt/q2XsRiylT5028g9s
	QQJbcabA4mshf4RRN+hjNZ1qIODXXrVioeVi/BeGeND7ulhBSWyqHEXgSI8an0SeAxmH410LiYy
	5PpM/XYfKIY4r7HEs=
X-Google-Smtp-Source: AGHT+IEq2LErwdAEYXkfS1MvdZpjTJctOQkyTkNrB4+pZbLaSSuDnUfhZAotu6OCfqjLgju1qwGSvQ==
X-Received: by 2002:a05:6a21:3397:b0:342:d1c5:491 with SMTP id adf61e73a8af0-369aab23434mr604352637.0.1765510449357;
        Thu, 11 Dec 2025 19:34:09 -0800 (PST)
Received: from rock-5b.. ([27.17.162.110])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c0c2ad5996fsm3575764a12.22.2025.12.11.19.34.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 19:34:08 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: benjamin.gaignard@collabora.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	iommu@lists.linux.dev,
	jgg@ziepe.ca,
	joro@8bytes.org,
	kernel@collabora.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	mchehab@kernel.org,
	nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	robh@kernel.org,
	robin.murphy@arm.com
Subject: Re: [PATCH v9 3/7] iommu: Add verisilicon IOMMU driver
Date: Fri, 12 Dec 2025 11:31:57 +0800
Message-ID: <20251212033157.3036182-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250911155720.180465-4-benjamin.gaignard@collabora.com>
References: <20250911155720.180465-4-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_193410_801004_690F2E60 
X-CRM114-Status: UNSURE (   6.10  )
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

Hi,

On Thu, 11 Sep 2025 17:57:13 +0200, Benjamin Gaignard wrote:
>+#ifdef CONFIG_VSI_IOMMU
>+void vsi_iommu_restore_ctx(struct iommu_domain *domain);
>+#else
>+static inline void vsi_iommu_restore_ctx(struct iommu_domain *domain) {}
>+#endif

After applying this patch to v6.18, I get error when building this driver
as module:

drivers/iommu/vsi-iommu.c:541:6: error: redefinition of 'vsi_iommu_restore_ctx'
  541 | void vsi_iommu_restore_ctx(struct iommu_domain *domain)
   |      ^~~~~~~~~~~~~~~~~~~~~
In file included from drivers/iommu/vsi-iommu.c:31:
./include/linux/vsi-iommu.h:18:20: note: previous definition of 'vsi_iommu_restore_ctx' with type 'void(struct iommu_domain *)'
18 | static inline void vsi_iommu_restore_ctx(struct iommu_domain *domain) {}
   |                    ^~~~~~~~~~~~~~~~~~~~~

I have to use:
#if IS_ENABLED(CONFIG_VSI_IOMMU)
instead.

Best regards,
Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
