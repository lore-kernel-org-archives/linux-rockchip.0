Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5BB606A324
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 20:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=akCz+thO;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=mhOWHDaS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=G64Z5gaTxPzPFHzWCe/LaGfS0Tf9fG2eDG3XcM3Yvnc=; b=akCz+thOx6j2kZfKvm+KYcPhJW
	ZLHeIXnznwxReMhyE1LK6l7LThP0dZ9MqC6hP6UlHGJDCZ+r3l89PM2MWXKWk1HRVYYYZMWJAzndl
	hwB9bYgeeLvq7IFFVAB+wDMCmEWEKeMgv8vSIcbBPQ315im2UA1h+fMyhFhHRfZfbnPVbgvMCMRDR
	8SXk28jtUTW+kJvrcQqtlM0uI2eyp/ginchzeJXdsVp8BZ7axFeI0uRGV9ONuIZilSYK64i6x2gWe
	ixknw/e0bN8DwSEzZIcnPelP7UsXns8ipdCKK0reAyAHyNWI+HnfAKMJbCHTznb6TbvcV+Auk28du
	wFmD3XRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRFN5-00000007hJE-0iD8;
	Wed, 11 Nov 2026 20:56:43 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRFN1-00000007hE8-1EJY
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Nov 2026 20:56:40 +0000
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-53dbe9b8d6eso201457b6e.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Nov 2026 12:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794430598; x=1795035398; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/68slAGoCiWwGW7/BCLB0f6DYnWaQm4ouuZ6Xn1Qqn8=;
        b=mhOWHDaShPMH3M7Nida1VyWvf0ZoY+T0Y8Onme41MVICkIkBy+IkG9AE7wA0Z296Ey
         BvHmVGmYMrufBZZgqpkhXLUa/+UX6j24A6ea7N94gIfyZ3Nj7rbe0lZuhOQXt61vdcb8
         KEZ67Wdv33j6im/fc81h974aU4/+mUJms263sqkGaYL6kziO3I1cb4uGyXS3k7iAOMro
         m79t6lYPtf205gMYiLcvRknMAM2gIHYZ+/Z9Xpat5OvXOxs1C3T40HWZmhlYG/T0J4FF
         EcNAzeLHWtjE8OpQSwN6R6ryf2TCN7YlRFfWWLhxpmqoxZBlzcFBTnLaw4gNMGGO6mOh
         ozmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794430598; x=1795035398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=/68slAGoCiWwGW7/BCLB0f6DYnWaQm4ouuZ6Xn1Qqn8=;
        b=MkOnE5VhxQEQnQcmMTFAnEhzW4NHSdxoFAqh5fhIU9llYl/8XU0CcWtJRUMQ2HZ+6r
         sI5uGOorlTxnKC5mOz1TYJ+Kbn+vrqXDDz9mjBhRYInosQW6C7ab30YLJr6n+RsQKzSa
         fmcFTkOTFYr+skX75/V3FEE7pGCoKoWvI9UOZoN6KPdaseig+XRF7jhqWI7IKUtrmULG
         RuBuxqpAjyrVsYzcXAgBqSoYqrvLRILD9CWbEa5vwVg09vt7XgUjX/h/Dm7/YVi6VX6G
         dWvp/idSIGIe+vTSsrt+0dWYJ7TeESv5Av1AR4DSa7wXnGnbHfL0KesNEGfAritvg4fU
         iQFQ==
X-Gm-Message-State: APuU4Z8Hc9WXHpPSd2+XMRqyjaC70rZIyEn4C37yZOzdaDd9id3mfuWO
	kfE79t6pEnW8R8kigVwTZk1uVnr5Ibh8ZXTRr9kdf4B/swieYbAfEVWimDxNpiV8
X-Gm-Gg: AYBFou3zKCQ08Q/mbgg+HZMYS+kBU5NBxo9fHyXr7RDBDoO2ckIZInFN8aY7f2dcvQR
	rX4j2jQIWLI5QRBki3TWWl8uaOLQJFRyibwIiafUIjRs9gfWXqYv4VtzpLW97datGGBLq2QXYio
	50yfiQp4udbHFzi4JTSTN78ncMirvEk6ky98iLWzpIiXBMVql98dpYUpRz5Ie8Y9L+nIyU46c2z
	EeA3HSgAT5HCaywclyhce58UnY9DQ8M34ODZGq1/gT1eatsGhQR7ilq3nvHVXbdQPEC+Y8UB/x7
	sWLHu9iG9AvUTolmcuSXZlLBPDW630Bf+UlCfwSx6b+kpFde2km4rELzznkm0+JcZG/qlbOrdn+
	wcKEakOQlDfR/rILjTuPZG16xDkM/8W4G7r7Qd7t3IcKMg4lda+RO0QZcutmArsNpdKT2kPtB0Y
	olgx4fEf0oDDJabnq0qgmaWzDGf71rcEmif/FTPd5FWQ52QE6Ku95ivF0O19UG2g0cshmk4XMxo
	zZUVAr6Hfy9B+kOm6Cc8uQXXU2lCaN72/XJm+WKRx5+OuqvVj1KQbQD1P+7hzdFJe/wtvEX95RP
	OFwKAkRpRE/2d+/X6PrfKJeJ2UpxLTwEaoNk34wQzS4IvL/ObYU=
X-Received: by 2002:a05:6808:320e:b0:4a4:989:bb1f with SMTP id 5614622812f47-56cd7618fbbmr471755b6e.9.1794430598142;
        Wed, 11 Nov 2026 12:56:38 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-56906036028sm6564231b6e.11.2026.11.11.12.56.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2026 12:56:37 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mfd@lists.linux.dev,
	linux-pm@vger.kernel.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	lee@kernel.org,
	sre@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 7/7] power: supply: rk817-charger: Clear full charge cal on resume
Date: Wed, 11 Nov 2026 14:56:27 -0600
Message-ID: <20261111205627.56652-8-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261111205627.56652-1-macroalpha82@gmail.com>
References: <20261111205627.56652-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_125639_361901_B6F9C531 
X-CRM114-Status: UNSURE (   9.63  )
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

After suspending, the coulumb counter may be off by a bit. Set the
cal_soc bit to 0 so that the gauge may be recalibrated again on a
full charge.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Lee Jones <lee@kernel.org>
---
 drivers/power/supply/rk817_charger.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/power/supply/rk817_charger.c b/drivers/power/supply/rk817_charger.c
index 9a8d14691f9a..fa140d437b04 100644
--- a/drivers/power/supply/rk817_charger.c
+++ b/drivers/power/supply/rk817_charger.c
@@ -1398,6 +1398,9 @@ static int __maybe_unused rk817_resume(struct device *dev)
 
 	struct rk817_charger *charger = dev_get_drvdata(dev);
 
+	/* try to recalibrate capacity if we hit full charge. */
+	charger->soc_cal = 0;
+
 	/* force an immediate update */
 	mod_delayed_work(system_percpu_wq, &charger->work, 0);
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
