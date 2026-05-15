Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A89ACD4F46
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 13:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UlIqkfsBlheCSHoOKgvSDWn/YQ9FB4iCyH900/hvpw=; b=0ZUmYn+GBRWdKB
	Gdb/JnrCRTYvCdA8l1THg98jtTntJ1dw53z8uiIteEb7t9IlgNE7fbUYXgukLpIPEVlG+OD4VTxls
	WuMUgddbO1eP90cRNxIy1TFsVMMSeyBfRj7nWXxuKZxQdRB4yWvbQ9/WsXllkGAAyebeDCuCo5+XR
	8aate++Nwmy+TuZc+nY7jjJ9w1i3soAj6LNXCWlVB+qWNI9A7uW92+gWD1wtr2yG4iCjbz9J18ebi
	xCH+x90rg2tOk2KwQoXTgD2UAEf8scjVh/17yrvt1TNm6gND7YLGF4Sg8h7qek2EIHXOPFts6s/qc
	5GgnU73HZ5hMbByY14og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNsBh-00000008OFA-1DZo;
	Fri, 15 May 2026 13:02:45 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNsBe-00000008ODW-3dZV
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 13:02:43 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-4358f61c9c8so3073063fac.0
        for <linux-rockchip@lists.infradead.org>; Fri, 15 May 2026 06:02:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778850162; x=1779454962; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=U45vWbECRUe9NkB+CjYTcfd8bqpTgZl5UxUep+ywrrkx/nGwf8QgdGs5S33AJF6gLP
         ERmdMfrjMOhLttGyBAoh3pYtgt6PnqrGdww+ATMYrcCobVOednp/W+Cr+Za+5TFTqJyk
         lcDKH740EJcJ8396obwNAENg77URMqOkogrMWfVXNbyu4xqjJsjO2Jom4Wj36NZgDmqa
         YBqwlclmtHW862UNZ4tAVgzWbNdZNL3jU8lDxaWVxeglCky75x1/DARthBJMvXYV5zZS
         Z8/6aDOxWqmbJ1r7EAuQZbEK+KqHMMCLk63x5qhaGquPl0IRCO8381dH5RMAvK6FkIzv
         RIcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778850162; x=1779454962;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=N8OwRvZhd/YHckr++XwJ2TBGb7rl4yPO/0NyffnBCiAnD8X2KvQA8L5uoAZ9Fgs0FY
         wgzSGpzinsh5WMchea4waXdX5boi0HGzJyW8o6Wkn6vt7LdLJH+YfvSR2Fu3SyIa99/8
         wCy98T0VBqeaG3uWA3OgFSiz4Acf2FZQvtO4o+AKXIVFMP1Ja980Xc2rnvh8QzMZmZ2P
         Wr39tXaiT64/5ktQ6bSjkBB12qDF92JHSuX6nywbDttC/CG7usIaDHiWxLxmveKz/oMK
         K+e1hzDd6FgLEZ1cyLDHDewXqTNs9suBJ1aWRGYBq5K2lL+6DE1DdHD5AG9QkLcpn1pt
         0CnQ==
X-Forwarded-Encrypted: i=1; AFNElJ8FiP0cIsG76JWqa8buLmRJl35XumpFZzlYHKTaMXWYCqocqFKR1UhbDeDxTjyp7TEEFcbkQj08n59KvTy0CQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwxSxp9k63whUHrNj6F4vtKO6mB49qX3MyXX5A8PbL8+/uhfU9s
	Hnpgw8NXPJDctIYJwNBbmZ2DWAoPYeMHqUpDeo2XCrRt9L+9PoLEXTm7
X-Gm-Gg: Acq92OH96hkOXViRQolE+zvAl6gwBHM0ZQx/Wj8TlfAdSqsDKnkXDS01Bd4qoBoM7ut
	SQMmXPVEh2ZFAgpSBoMOzerXKNo4zeCUgYCe0IZdy9hoRDZHxMd54/sx1GMgkWnBmTeGkYg1sDV
	zdjzMF7UzM4F17c2hJiPAvxyXknY81Zmonh1IpGeKRyK0pTb8ywlKAadUC0f+on8v0mNNoGD1mI
	lgdGkMfwG3b2kZasEU8XrJ/YG61PBms2S2zWFT31OTI3QKux7h7PNMwTDiL7QEUzctyUpLpX8Bp
	4L8IyWpRIjX5sjGMU8dYbxinychb+TTQ6vORRn2h+HpjaVrSrpFBANgR+87JeN9swiptZq6OEbT
	WZ1wazzfOXpirsOXGj/nHTjG6oY8yYeywtFhAmd7smSXVeMkXpJ9vnLKHbHvgQ2/QAYa4K6tmdW
	N47BQlgDW9Gpf8ATHbo5cJ1k9kuf0JW4AytokfMiGz/Q==
X-Received: by 2002:a05:6870:548a:b0:42c:5ca:e7f8 with SMTP id 586e51a60fabf-43a2dd598a4mr2483451fac.26.1778850161483;
        Fri, 15 May 2026 06:02:41 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:8c2e:6a8e:445a:9169])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-439fc53f2acsm4155822fac.14.2026.05.15.06.02.40
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
Subject: [PATCH V7 01/11] dt-bindings: iio: imu: icm42600: Add mount-matrix to icm42600
Date: Fri, 15 May 2026 08:00:06 -0500
Message-ID: <20260515130018.237378-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260515130018.237378-1-macroalpha82@gmail.com>
References: <20260515130018.237378-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_060242_906789_44B32363 
X-CRM114-Status: UNSURE (   8.48  )
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

Add mount-matrix attribute to schema. This attribute has been supported
since the first revision of this driver, but was not documented.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/iio/imu/invensense,icm42600.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 119e28a833fd..9b2af104f186 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
@@ -53,6 +53,8 @@ properties:
   drive-open-drain:
     type: boolean
 
+  mount-matrix: true
+
   vdd-supply:
     description: Regulator that provides power to the sensor
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
