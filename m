Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14A4BCD343F
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 20:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UlIqkfsBlheCSHoOKgvSDWn/YQ9FB4iCyH900/hvpw=; b=eJ3PdOPCI+DBW5
	NORGurgktcgupBQZdWm2p4f9qO+x/Hhb3YHq4z3KLYS4aJoeH+dZD6LwI2jCZw7nX+ltgc+d54grt
	lV+3YvzKqIQMFuxw8gIxuYq0FczmZYVNwMGsmnXC3C1fyEZFu+/prhmSOeSUHUbseu0wkfw0GVRv1
	asP5o3cmR3JpGGYJ6MQx20+5ZQpi3YI240wUP6WuaWXQ7WR7/jIEny7RJaAk/i3bpAeV8YD470l8E
	H/bgG5o0wLijKq9lU1tBuxtGoNxHGyVAGx+HuqIfZJbqZkgIOwaTWwzK8WlDkIgEU+6rWzjldKxMX
	qkL+IBFmh7XD4vkWuQog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP4Fm-0000000GqE0-32Wq;
	Mon, 18 May 2026 20:07:54 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP4Fk-0000000GqCU-1i1V
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 20:07:53 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-69b4f7d66e2so646515eaf.0
        for <linux-rockchip@lists.infradead.org>; Mon, 18 May 2026 13:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779134871; x=1779739671; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=iVzCnMjCJpglDIb0wy9kN9Ix7DaLh3EYCWWU5UGwsk37W6wXpFHHlSK7T5Bur1IWKZ
         Ax5bQUiUKn7+Blmngw2N4ru2xSYsndBFmhmAriPAAInJ0DxglNTEvOC5DHoD3KmzNz09
         tJZav2UyrYp+gZ0cpoCUxDhS7aSdxzb+N45BEwknyVup/oIaQsvZPXTX/bxQYWsV6/Rq
         6m53N5m74fQiKZafNKpqjdWA5qILaw9DEwIlBTCfomu0t043sP1BE8fIL8agQgDx9bc0
         niSJw7Fy7GagGm5rdWVMmVHbxwLk0EzY3E94TEnLv70k+CVdAj6CminJmVREX9iVq4Ws
         XkZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779134871; x=1779739671;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=T/RRjICCLQmgXmULHiyv4+WHsTn20XfA44OzYxsJajDye2EIH4D6aDrHhA1F0OX4LF
         VmFp2hx7JNsc1cbQSYoqjz6kMRqIBJdxgWtDwmxU+d3MNBb7+pfbZZtlJx2qSW06PD+K
         ADUtAanyMporaiSypdDXdiwrSvHc9FAsYAkCCaKQ18lAynQsISbjUmU0Ok4j0RUUmtui
         DrhVQOJkFgAZbf/0ns7OmGYV0qN/dY6+mRmYQcV+F/uvEobIoJEN3lnEHYIL9SVyTcLt
         j+F41FEYHWtl2lj89W2YY4oU6D78iQ2OOl0rYPWjpEZDlz+xC/zWWYKhJqfsi1IOfXY1
         /U/w==
X-Forwarded-Encrypted: i=1; AFNElJ942T8AzonDQLKR7IwoHFknrkswbuoRNrj9h/mudrfILAliMbbyuT4M6y9SW/tnXUvVcs43KaiXavS/9zZNCg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyAvoCal22khUd9vVrNUkOeWBBCZROTf20jpi4uguOpejCx8MX6
	+EdJtvifja7549rr/YXNvGQSVWqzJGFBZXdC8i2GgztxA0OuNp4LlHlh
X-Gm-Gg: Acq92OF/BvuGh7WteTQ47DI7E37nc+5NBLXG4pIjf6/dPcvLZjDticN4rEsgbcmtETY
	GEDLtJMIrzV+9tNEH1IU3gHcrX+CwEx5HWgD4f1v+ybkeR8Sa9+YA9TXHs/29J6eKHYyL3OtmhS
	zT9CzJcph0Na5KVb+3wsHMKyPzP+KKWIs0RbA9qysbuuKTCiO2YJojlU43SGFVUQp3Wx1X1Ynuj
	JuYRJ09LBLZmODPy6FTXhg0xCrvZAqcWG5zaa2znvlY5Fyyzv2fCJdT1TMXcmqH5jNLIc589b0d
	nPTpiPomEX5iOReqlyu1ruHb9lfiHeZEeu2uwvymJzitycULEzm7GWDtR5+JjAiOdjrdQAMbUr9
	LlZLPx3b/8RDZDx3CjKVWf0VqRyC1Wg2dymjTmNt9AxAOn2QJeGEKvTC5Hx4ykFnZrHrXFWkky3
	h12p3pig6Up7HSohUwZHZ8
X-Received: by 2002:a05:6820:221e:b0:694:a362:e3ba with SMTP id 006d021491bc7-69c955c7f57mr9560119eaf.48.1779134871241;
        Mon, 18 May 2026 13:07:51 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-69d0462e85esm6113360eaf.6.2026.05.18.13.07.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 13:07:50 -0700 (PDT)
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
Subject: [PATCH V8 01/10] dt-bindings: iio: imu: icm42600: Add mount-matrix to icm42600
Date: Mon, 18 May 2026 15:05:16 -0500
Message-ID: <20260518200526.458421-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260518200526.458421-1-macroalpha82@gmail.com>
References: <20260518200526.458421-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_130752_441578_1FA45F16 
X-CRM114-Status: UNSURE (   8.66  )
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
