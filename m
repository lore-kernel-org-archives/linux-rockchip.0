Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C137CD343F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 May 2026 22:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLu0nsqgYftZ8YDsvnSo4EJg/o26iQc78EKp9br9xPI=; b=hkr7rx3tuJ+g1m
	QMnj39oxDhHquxRlRcdmj5fMQCcFuMpN/o2z3KaEYZrbPEZ6uhQZQDzjoW5LFr8i1bS9jcIaEEPN8
	5ljplXVWLZEJ/9e9/r6AGPeymr55BZUAkoqfdQM21gdgD0fsywEmfNxURhyZaq2Tik7VBNQF79h3Z
	nCE89KLkTLHUhZsZ1oh16fV6fSu+Qrv5I0JQb0MVAl3sitp50eRnnEvXuveqxQtsATNS0/4B2JkeS
	rr0he0kdkhUmqABZHPZSywomb1PRnsLZMdy8qvVWvIY1Da72a3GZk0+RuLgVUTaGPbGu1NjtzXbhn
	q+egafp3DW2EgKuMUyEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMvRT-00000000ZCo-2gHn;
	Tue, 12 May 2026 22:19:07 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMvRR-00000000ZBz-3TCO
	for linux-rockchip@lists.infradead.org;
	Tue, 12 May 2026 22:19:06 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-479d593a0c3so5196376b6e.0
        for <linux-rockchip@lists.infradead.org>; Tue, 12 May 2026 15:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778624344; x=1779229144; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=glwT5koQsVbYhX7I4MEF51k8vuLfNT2TtvwRkG3+C44=;
        b=F775pZ/fiJxv8g1KB9tsn48OSA+IVkBLkq2RuSEFN8Qr1qnnHiIuzqMunIR6fnzF3+
         J4F/3UCISW5bOfsYX9SIrubDYRKw+9eeg7XLnrlSaN6hXdjfKYwq4/6MA1YwKxJJsBqh
         PeaHuwtyZN/6Y6874UvhalS/OXRWj9PTpo/mD4IvGAhPVUpnVGzNpJIOzxBpt5dx+kFa
         xU15QUVzuM1d7K77BFQpEPWwfkFrcvgjc+HJnZ2vJmaHbGb4g3mp8mwXYo/sBMEb43Xj
         4LjxisuNRZ71tKxHpcwICszSRucrHPIUpHwXrC3xDWSY3ZgExiR0oLuXvgwo6Awf18x4
         z99g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778624344; x=1779229144;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=glwT5koQsVbYhX7I4MEF51k8vuLfNT2TtvwRkG3+C44=;
        b=Te/jvzRK9Rc/b4zb8WMcrXXnjzoohGsXhtPAY6eab/a3TUbMMZWo7fafWg449znY6i
         OaLYVMb+oBVTNSYnWJwL0OhWAVki96gEsrsCHgL+Z2VZuwtMaGFr0YlHVM2hKcRf7/2L
         YWdLRw6OUt4CCXz6xHlYFkrh47cqWh3ucGZKmFnlCD+7q08RHcSfT9mtihgZWIdFXyeu
         QWoVhIpAdB4IaSegNPLzLyL8PwFBlp6xk+5KgaRWSpZON9QszFy8FL9eMoZA/9LDgV5j
         0zizBm7ERjRmiAytGPjjwAXZe2QpbrpRC7CTYik8F3qUa6IQCtU2AiLAgW2s8AYEmEzn
         58Uw==
X-Forwarded-Encrypted: i=1; AFNElJ+KIvW458QnKYhYgSyua9YB62TnjzEfhnxx7ZeIPCgV1hFs7s4EW+6DLSEW/zVVXJmQwQUKV6MDOwkWVn48vA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzRXBpXLqzuxceaJgB5RrQ7YLBh6GD0n50yVt4MbcRG6jUbe3ZD
	hK3uTbQLTM3XFW0vSpcih0fr5C3VmD1NiGALVdNbgYSbmRlSXJeyUStK
X-Gm-Gg: Acq92OGlpezZkQBdQ8xHR/7aje/dpOGUvqLR4zmHQPyVeDXq+VsU41ZZ1ATEEb1bh+4
	Oj188sx3KlwJ0RkYUmQHG7QJhmbBfyqPNB0gYbj578+8JWLVrJG4q+YCN7NIDiTNfNkVyFi0U0p
	GN9kaZhpIp4SgBvhwEMDMC2l3J0fM+odPhTphGZOc89s46Un0MEP4jzTGcODLcZyjtqaB2xwTzk
	CfXNoIaI0w9QI3HvERqfUmSqI3ZU+xcwapCTzOjh3mbqa2CYDVsmXay2r/BVI27jnSFBYtQVCxZ
	5ByiYZkzlzAhoZSnMdK2N8YIi9kjF4dPFwnmxm9pb/xWtyyN7ms+0DoE2OE1CH6KpXwHKwacFLu
	YRW+1L7VOK7dxA3BTwRZLBNig4vKFpwWHe0Z6JUKfXPHjb6/HxeUinOrprXzv0bul3+Snqbkf/B
	jtbaua2PxbVEeo9JY8QRpe
X-Received: by 2002:a05:6808:19a3:b0:479:ae1d:fff6 with SMTP id 5614622812f47-482b2cf1259mr540768b6e.11.1778624344580;
        Tue, 12 May 2026 15:19:04 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-47c76986f87sm23291473b6e.13.2026.05.12.15.19.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2026 15:19:03 -0700 (PDT)
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
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V6 02/11] dt-bindings: iio: imu: icm42600: Add icm42607 binding
Date: Tue, 12 May 2026 17:16:23 -0500
Message-ID: <20260512221634.256747-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260512221634.256747-1-macroalpha82@gmail.com>
References: <20260512221634.256747-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_151905_867184_809473CF 
X-CRM114-Status: UNSURE (   9.61  )
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
