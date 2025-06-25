Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CAF8C7EE2A
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Jun 2025 18:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rTpj9S3A5U3v1nz0UQ0/l0Eib08fbz2mM7uxYQRdK6M=; b=wqz00FiCVMAfMH
	wN7FHxeOF8wxamUpd6LFqC58HMiVzUHhUKmiXVj1HdWOXrIf/F0dK7q+Fv2ejl36u6YiGQIpajM24
	RViZX2ldMBlbPJOeuNXqtNvT/RHU9t1T923otr2u9o0bYkGgRZ/HNHbBgY36Gduv944ae+KZz7PS9
	naRk67zRnfqEvW/Cm29I9DKolNOwzB2BLlZ0Q+0ibt1pP787M6CAsduEHKM4I2zI1xWJe/PO9qK50
	hlMEBl7s05HOWGTN/7y7tCQVXXGJRKPiZT4poQHwd9ItzEOcNBxkpKakYBg9AcMmFjrb0k5aNF5/Y
	bz0RClgInZ67djQ6QJ6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUUsF-00000009aA6-2Cpu;
	Wed, 25 Jun 2025 18:29:31 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uURxw-000000096SX-2eod
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Jun 2025 15:23:13 +0000
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-73a01a7bee7so580470a34.1
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Jun 2025 08:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750864991; x=1751469791; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RscgyY7zr0J0heuodisQOvqSQWiux2P+I5t0Y0pHfw4=;
        b=bOEeqdTpMYJQogwC1k2nkun58H4ioTvtroZE5lk6Ne5utVNaTmzTxEpmMM05nzxT95
         T7kM3ag7qb2nIA3m/OadBcnAg/f8DgEmTbHvea9cmWjWZeMcfQhR5/qG2SjxVOtHPY+w
         inyByDQfLcKIzUgdGvQa38jLwvs7/H6HBZ1onwzDNevPPiZ5Uf/EwasIVtp1mFdT6pbG
         uiJeKX1vdk5o7KsMVHnZ5zB6vkRPaCi9ffW20dllI8SBOD14lbGlw8HmhHEIl0+ARFnJ
         t2sYIyrFPkY4fT26SrYu7Vtg+oWesMFueoateaIOGRc1YfprubbxC97tuQwNzNRNf6V7
         49lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750864991; x=1751469791;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RscgyY7zr0J0heuodisQOvqSQWiux2P+I5t0Y0pHfw4=;
        b=bpXcih5CooQEVTCd2tog+FhfdUkrQ2zaZec63ONhT3bgZonSUoBftBbrIspygdM41F
         14ITT/eMMk7f4l8D0/VPuaxxXix2+OtXgaZYIBVBG/2Ahh+mKFU0Hf4Ow2xwzsf+dXXF
         V0CKjCM5PYQooTNZqkoJGla0kVCbp7ESEQ3lU8/qTPfBhMzj/BL5de9zkQN+iSMGxfLs
         s/iBlz6bN/jv9s8lK8OL/u6eK7vx+/oWzpkMJpbuawSCmpIWm0yDtGgi9oF819MQRjuL
         Oe5LiAEUuDHOSPfRl89UDmuY3EUw73QUl3XbI949A9CmxlT3vvBnmzaDtzHTON7/JEuQ
         jG6w==
X-Forwarded-Encrypted: i=1; AJvYcCXJ4ZlEs7NFyKPLHBwu37gVlznrdNSlEerjkgHeLqd8thEom3VEVLTEOARrdXxMNbP2DDQ4hGj4uM1IQLqdEw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyi4CiLKF/2AYfA7tTrVXFghNg0q2UcEDs/toAkgpzEwc95QFoZ
	UkMZJJTRURCHfqCPCkEdtBEbrdY34lcfQ//clTIMG3U/PhB+ZbR2vXO+E4j04DqnFEo=
X-Gm-Gg: ASbGncsEZoEJM2eYJz/uIANsqaUV61yfMsCUMtBn3klNCIOtH12p8iHN1n8ymkQmY+M
	YwOs6ycpH6J+lz+jhsZaEVsYfIssi760mlwbHMfUE8MnfJBeCqe9AtsAmvqKxDW4DSrP6g6K7jQ
	LAvpJaNtHMsZUEGDAfhB1Srl/+CYLB2dG8LQ/5p0zlJPegVHQi2Y6eaa6002xacxawUN6+u8icz
	KXZIpTobmuaF7g7Gv7pEhEmJEeEaXbF52BsCC8lX1V0o8J6JK6o9bnkR3jBS79l5ErqlooxptMt
	vTHy1oJKjDGTKNuj9MKez78UlWamy1p/GCDKofaIhODVBVWWJQH/3QG2nZyuMHIXkiJCdg==
X-Google-Smtp-Source: AGHT+IFW4wlR0wlfzJlAh8x3qk2Cx37JojTQFFpNrPClMsltnG4YGIKmiULYONmufRuAqIk5456wBg==
X-Received: by 2002:a05:6830:2113:b0:731:cac7:364e with SMTP id 46e09a7af769-73adc811af9mr2506085a34.22.1750864991484;
        Wed, 25 Jun 2025 08:23:11 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:1fca:a60b:12ab:43a3])
        by smtp.gmail.com with UTF8SMTPSA id 46e09a7af769-73a90ca9c12sm2237043a34.50.2025.06.25.08.23.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 08:23:11 -0700 (PDT)
Date: Wed, 25 Jun 2025 10:23:10 -0500
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org
Subject: [PATCH] media: rkvdec: Fix a NULL vs IS_ERR() bug in probe()
Message-ID: <696219e9-a1c7-4c87-b15c-1ffd42c95d58@sabinyo.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_082312_689249_2F8DF748 
X-CRM114-Status: GOOD (  13.38  )
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

The iommu_paging_domain_alloc() function doesn't return NULL on error it
returns error pointers.  Update the check and then set ->empty_domain to
NULL because the rest of the driver assumes it can be NULL.

Fixes: ff8c5622f9f7 ("media: rkvdec: Restore iommu addresses on errors")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/staging/media/rkvdec/rkvdec.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index d707088ec0dc..1b7f27e4d961 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -1162,8 +1162,10 @@ static int rkvdec_probe(struct platform_device *pdev)
 	if (iommu_get_domain_for_dev(&pdev->dev)) {
 		rkvdec->empty_domain = iommu_paging_domain_alloc(rkvdec->dev);
 
-		if (!rkvdec->empty_domain)
+		if (IS_ERR(rkvdec->empty_domain)) {
+			rkvdec->empty_domain = NULL;
 			dev_warn(rkvdec->dev, "cannot alloc new empty domain\n");
+		}
 	}
 
 	vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
