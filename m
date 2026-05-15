Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 048A2CD4851
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 13:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QkyKVCOa+G5GL+zhbhPxJlGfDO/uj4HB0jCKSU7nJMc=; b=hNfm7RKZK2Ulpi
	clU30OGwpBNW2mqGWxsquG8sU7jHEEyXnnkr0KtkKBmuMQ3yf5LgHtiqj/Ha5ppU3KImZbVas8t8a
	5vUXPKMRlLragY45sjtW3NtdfUdotFD7Yb6GiI44dTyPMfnrqnYoJp9XGKaw/PMs8K3Q3jTqXE3ZY
	/ExenWCHYIEUBgKi4pacnFKIwrP04iF2RRlCr2mVtg+1WmT6jhzqT8cGKORMnk9LXcsW3pv8Duo4V
	Q7h7+dX1VwxahaoRXQ6lW2TYI7rWjHZpRO+9wN7mKqJAp7AcLstf9T5abTbDZukUQRa1WXZ8sK2Kt
	qCHYuxsVFBlROrVWNjvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNsBh-00000008OFE-1QKK;
	Fri, 15 May 2026 13:02:45 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNsBf-00000008ODr-2CJQ
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 13:02:44 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-40946982a78so3358235fac.2
        for <linux-rockchip@lists.infradead.org>; Fri, 15 May 2026 06:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778850162; x=1779454962; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q+2ydEn6hztRE9Iv70/dCmwY4D4SjSGA68XyIdXdlEs=;
        b=fODqP+8MKP3cLF1ONmTwhMHgzSn37fgUS27m3DZrsKP+m96Ipg77U2nD866jMyyCyL
         1etY94CafrvF6AE08FMMDNfJrKTFxYFTohjBWiQM4ZdenBXOgjXBgqz0w/HurQsGrehI
         L7v8zCq/cvrFA9E1l1P5szE5b0cgs13PfstQUPWP+UCJg6MlMR2/yo4ccteGXaEC7VSh
         eZYcpW87B5ECZ7SDJ/AvhKjYwkxWYcjeeUuGFg1r21ETp9he48+C8HRj7+4tAGQt4lOK
         J2QMpjwkUunyz4E0ijbb1WkhpaN35f9A67DXWKi7l8GJfdoquudjCbhrWM4bu+2FOCQd
         Z3PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778850162; x=1779454962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Q+2ydEn6hztRE9Iv70/dCmwY4D4SjSGA68XyIdXdlEs=;
        b=I6a1xpLn3ApNZ8uU1h5vV+nTrm8dppxpRFZqwEsJUsyGrSWoco08tVbhjd4DTzjzEh
         qmeAdcdJCkW63RIJyerTlhgnX0Q8cH9UvU3owKiUlnb3SWM7h/wTua9TvY9M/J+tZPUQ
         Hssn8bfSLVJxLNY29BvgHWtCZpvniOCiE9SiKk+4H4W0LhFsr67xnzSLNWTeJOk6ochY
         JYt5KSJpG8gmxdUAzcL5LzqJx7J7R8XjnhdjfKg2nPFtgwF+PK0I/HUH6CvwEBPXv0YC
         vFi9UhuljKawlJr35hz2VQDeus4T4Euo+WkVHA+mO7UK8n4xkf2EirR4JBLr7ljF2F6i
         eoig==
X-Forwarded-Encrypted: i=1; AFNElJ8yU5k4+OXrLWaOXKzG7emSY/KpT4jrttdTy+TUJrNy1rkLmsvkP8BkCfoRLwJYBeSlqH3UDpxDXPzWxlXWqg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxQHUUk0H/MOCWUjNRIJs3OTZoslxQ1J/KQ6uCTYPSamEPoIA2Q
	+k7NX9BRwX85V9v/Ay+D3r0zYa6zgnXUOTtWxG30d2yDVrkMCa42yK1o
X-Gm-Gg: Acq92OFD5lLnzilEtxpHKt5sESfIGlnHgaachw8l94gS0hyavQoYohtC0Mfs/1JwjbH
	RS4Q4GSn4AI3rzHcyEmxD+BllcgckOgH2ZDQn9WwqTBRSMGGEFJdQdJFr9y4tfE0/YUW9p1TvWi
	Nwn8WLEGUOAR8Eo6eiJjAwlxy6W6FWNc+Kjh+1LyxjISTk7S4a7puR4Cpg2AoPZbU4KVPiInnlb
	8l8DnoAv2qNa+ZN+hEZw4UYNRHuJtHldVjR/91Qy6KveyOYJPaBJPhljEf90g2R/ixF/e+/8LY8
	tXTkrBlrM+Xg4qwm1gJYcsRl6B36vjN0/TkWUJyMd8eG9VxP4stlTh/THQpm/8q36Y9JAfKEuYU
	e4AwA71P+jMX3IFPSnViqbxQ1DRP/CYcEcwny8s+XZCGRLycTwJrBybPKTL6erZ9orlNDzgyfxn
	6qE+Xx6ybF/UKQrz93vgI+m4uYQwu+S5zE8a8LAjFN+w==
X-Received: by 2002:a05:6871:68a:b0:439:c869:f5d6 with SMTP id 586e51a60fabf-43a2decabadmr2469552fac.36.1778850162214;
        Fri, 15 May 2026 06:02:42 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:8c2e:6a8e:445a:9169])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-439fc53f2acsm4155822fac.14.2026.05.15.06.02.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 06:02:41 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V7 02/11] dt-bindings: iio: imu: icm42600: Add icm42607 binding
Date: Fri, 15 May 2026 08:00:07 -0500
Message-ID: <20260515130018.237378-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260515130018.237378-1-macroalpha82@gmail.com>
References: <20260515130018.237378-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_060243_567247_F8379E2C 
X-CRM114-Status: UNSURE (   9.07  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add devicetree binding for the Invensense ICM42607 and Invensense
ICM42607P inertial measurement unit. This unit is a combined
accelerometer, gyroscope, and thermometer available via I2C or SPI.

This device is functionally very similar to the icm42600 series with a
very different register layout.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/iio/imu/invensense,icm42600.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 9b2af104f186..b69c6bbb6f6b 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
@@ -30,6 +30,8 @@ properties:
       - invensense,icm42600
       - invensense,icm42602
       - invensense,icm42605
+      - invensense,icm42607
+      - invensense,icm42607p
       - invensense,icm42622
       - invensense,icm42631
       - invensense,icm42686
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
