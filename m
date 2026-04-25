Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7542EFF885D
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Apr 2026 09:30:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rImYaqyHTUHf2PxL2Tmpx7zyHlkJdOuABBIHUa9oDYI=; b=SdzADoTG+lSv85
	GOz30lOTPWmm6GnKx2bxOBsbKNqEcOuXKJYoWsUEbyEpS+R3rfgPLE0kAhnZzrV/URtGscOtjhaPl
	9GKceAk7hf+6RDLhKq+djOnU//oCi7xIwgfnQ1tHuc35g30WM4tuWkcZv8khhV7ZuxEUptnKiYMmY
	oKSDzzesHasp/J2pFRF6SdfjSdfY6GChT3w51DhkPH3q6gE53r8fXg2t5/xk65B8l4iYDAjTkuuP8
	hl0J7nbBjJ0I/AxxFYIHKYkQ4xICZ6PnfwAI+dHwmQyFnIW3dc2ZAB2s7m/Eo4ykUHCgzT9AEI0j+
	IeVR8QLOGA2bLE6SWq5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGZLV-0000000EHq1-0vSE;
	Sat, 25 Apr 2026 09:30:41 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGZLJ-0000000EHeZ-3b6U
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Apr 2026 09:30:30 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-43cfd832155so6339854f8f.1
        for <linux-rockchip@lists.infradead.org>; Sat, 25 Apr 2026 02:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777109428; x=1777714228; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xyL6eQDTOa83HsK8N08HXtdZVDzA0HoYcQ2NsR08O3Q=;
        b=Kno0eFvdReru9qtd/X3DLtgj6auLVSnd+qfqCivmF+0v7+eZrwPVFRcwDlWohRGj2m
         llhd4dt6Ati/g7Z0BYHtGQKrJV6WY04neldeVQxiTCSh6iLaoAC4zqyawwIMeXC9zonq
         oYxiBkXEnSbXR00gdAKkZGrsiKBzG2XTf4KlXMMxykgVG+wdkXdaI2iQfrGKvMAK8U7v
         lyf1ajbbJXMx9mi10pXuY86qI9Pv2hmaexAMrYSVAsXEMzSMXSe+HofOvgVWwDuZDXpq
         ynG5kPMBP0JGUxQbEMgYZvyQHK2b/mffiEMdRvBkLND2AxBwaubi6NUe0LDuBVm8VeYR
         9eBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777109428; x=1777714228;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xyL6eQDTOa83HsK8N08HXtdZVDzA0HoYcQ2NsR08O3Q=;
        b=BFPdg6DjmUGAbVDNGzsVHDkzPF13uPVwX1BvOYO7D+wXH2hi+Tumk+Lmu6gv/LpmBF
         6e4ghEFYzzRtl+PgKzG3K2inFxQgtfnU9vaLAF00rRYwgA543lO9TcFBs1VJhZOoCOdv
         +Zf6u+Fm++BPDFz3hfYTqjqVszc2Kfe5v+5Ig4NgI47vE63IG6EbusgXe4a1nfzff0SX
         XptdEXdiwNFnC+Zhl6YKJPHZ6qNlEmhDi+i7zL27upFtapTXb9Nv6uLtUgTHV2it69VD
         zmMPQEbMKQrJxcApXBpYd394CPDcu+gjkdZlYtQoGGLYcynjTndDMJfDNsULlRYZ2mbv
         3dtg==
X-Forwarded-Encrypted: i=1; AFNElJ9SfBybnF0d4ikbGeXBT8vp/cOzNHIJIeowo47bit78FSXMeD0/V6YKtiob6f4u+XmQf/C0hu2htc03JOLmKg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw90TT0CsZLWAWSiNjkEV3Ivv/6LW9fsCXihM8fiAfjGCcx7+ul
	u7PdESo2Rt1fmQuefqyY6UPh2JTNhbxeOt1vngcRJ98oQjOyyOFRffe4cRP3aVl82U6L4Ju/
X-Gm-Gg: AeBDietQ8aHYe0EgyhNRHIbRjYszJj5sqsQsamef+Pf391AzVLA9lrkpEnEfhOmJPtq
	RRTL/b178aYD3zf8N3f1YQcdLTDLW/2XV17ai5Nn5fUWdmBcuj8z3sT47EFz7Me7XcTJZg1PXqE
	dQgVGDj2FW68oZ4GtjXqHPcRePouCMcBBKNptFBLYT6TxWo8qN6pYwiEz+UO7+EHMswOPQOfxml
	gqTK+6oh6hKQXf8k4Q1/soVlqeANYh2qcYlabOfvX47Pzmv6pxFJIwVq62SBxuCXkzhE49PA9Ie
	giBu3PmYUKghcRPoa9GaaXdriLG+4klESn/6Gz3+o6vBfmloQWe/FSQpXrXScMUHY1LeZ7s1+aT
	UFK6xCk3ZPeQ10lYqy+weGkxQ4NYoGjoGLm6l08tk1Jqi5OT0wSgYN66YyiUrH1qTIvkg4o6uMa
	vecHSaiuAumau6iFZpmjf+3GFFKiJTR7+ywXTvNCcwJEibwnQ97Hau6SRyfDusLyfWFpgUhH8wu
	0+T
X-Received: by 2002:a05:600c:468f:b0:489:1cd2:610a with SMTP id 5b1f17b1804b1-4891cd2624fmr339312755e9.9.1777109427813;
        Sat, 25 Apr 2026 02:30:27 -0700 (PDT)
Received: from localhost.localdomain (ns31537009.ip-141-94-163.eu. [141.94.163.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fb7b2716sm204422615e9.30.2026.04.25.02.30.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2026 02:30:26 -0700 (PDT)
From: John Madieu <john.madieu@gmail.com>
To: broonie@kernel.org,
	heiko@sntech.de
Cc: jon.lin@rock-chips.com,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	John Madieu <john.madieu@gmail.com>
Subject: [PATCH 3/3] spi: rockchip: Drop dead zero-check on fifo_len
Date: Sat, 25 Apr 2026 09:29:36 +0000
Message-Id: <20260425092936.2590132-4-john.madieu@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260425092936.2590132-1-john.madieu@gmail.com>
References: <20260425092936.2590132-1-john.madieu@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_023029_910442_DE871983 
X-CRM114-Status: GOOD (  10.08  )
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

rs->fifo_len is assigned from get_fifo_len(), which returns 64 for the
two known SPI controller versions and 32 for everything else - never 0.
The subsequent

	if (!rs->fifo_len)
		return dev_err_probe(...);

is therefore unreachable.

Drop the check. If unknown controller versions ever need to fail probe
explicitly, that should be expressed in get_fifo_len() itself, not
through an impossible post-condition.

Signed-off-by: John Madieu <john.madieu@gmail.com>
---
 drivers/spi/spi-rockchip.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 231fbcf0e7aa..1bd48376498a 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -824,8 +824,6 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 	}
 
 	rs->fifo_len = get_fifo_len(rs);
-	if (!rs->fifo_len)
-		return dev_err_probe(&pdev->dev, -EINVAL, "Failed to get fifo length\n");
 
 	pm_runtime_set_autosuspend_delay(&pdev->dev, ROCKCHIP_AUTOSUSPEND_TIMEOUT);
 	pm_runtime_use_autosuspend(&pdev->dev);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
