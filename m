Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC0DACCA470
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Oct 2025 08:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z3Skz2oIA27dcgVCywm6wYW0SGMBNeqpRgsSyi5la0E=; b=3bJJLie2eX+iMk
	JNKckoUOqNzMFP11Qr99NFHDNuvd2GbTac53zcn6JfSmqAl9fMcHtLyShokyVSywKvwPkqLWFN4Rn
	163UZqHk3Y+CZUazrfKuyPokqJIpL5G+wrH2fF55zIG5fKxF8uXfaibdlQT40T8jC/V1rbEA2HRO0
	w5sKXrOnEwKEs/R9oL0ErYUIi5kheY3iegMGCMM9KVhybnOPvNkkJQd3xRzp2y6gLZr76guUOi0lb
	Ou4wGKdaIJGDP4ZV/Fu46q5Aqi3n9osrR3BiI+Xti9HSBRY2OcZma/7Nx0P0ULfZxQ6xqR4SNSgc1
	hpOv7EYSlcwHgC/6Vd2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6mHo-00000005YRB-1V75;
	Thu, 09 Oct 2025 08:46:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6mHn-00000005YP0-1i2t
	for linux-rockchip@bombadil.infradead.org;
	Thu, 09 Oct 2025 08:46:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=iWDW22d1KEEhzhYCQi/m5g5KGiHWCtagl6QTEa0SdVU=; b=C6n0vcySGYGCObFcMwdSy7dlQt
	kxZ4W8ngZqJe7S/8T7J0L0fOhg+bdpO/4DO+XuKwka1uT4GDkd2abKKSXMs0sSpa2A8n2pQwHU4oy
	v3CgBgnauLcjNuEw4SK8O0pzHER7k5HavCnZQX84VelpkGL8l0WUlzQvvuSH2M/WpmM3/sM87/6Wm
	trGtoxKqmFN9CQruDhe9kBjxZ5ZJdFT9CjKRZXAf3FrHApeKZsTKVwymgPQMzAxE1z3hzkSvRUaZX
	MzmBJzSeqLAM+Bg0ksSehap+q0ihQKX25CB/wENtcuu3eET2OlN/siVpCSnjr4UTMbPhRcvTBK7Ee
	522wYcnQ==;
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6mHe-00000001JWq-2pp8
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Oct 2025 08:46:00 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-780fc3b181aso428928b3a.2
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Oct 2025 01:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759999556; x=1760604356; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iWDW22d1KEEhzhYCQi/m5g5KGiHWCtagl6QTEa0SdVU=;
        b=ihbI69aQa/jYma2+n+sVWw6pLAVsyYOp4eCZWPWWwAp9HDPwCa0EYNv85LUjYpnBa3
         vrPT7LcaVNWhUQAPBKe83NCxBheVSfVIthk2gcGDUgFnn6NhOEQhIQMTyuhkAQt7CKjo
         Y0CfZ2kXQ51oacspu8m4oc5L6OIcKb5JTSelFHZ6eIx9Oi6DgkiDFtUFE1q41yO2h3nP
         4E7aOwMpZsQ4+QoXrk3/yV7yLPOTFoFMRlOqVkInaag/nJF+OKjyiLlmdbELJxZ2SwVe
         qC5EhIEv2XwVZRW0HUtQ6eftz1cEVe1DcrAkbQsuIREa7l+5tYedH+XuKvPMWBL+PAzT
         h6hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759999556; x=1760604356;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iWDW22d1KEEhzhYCQi/m5g5KGiHWCtagl6QTEa0SdVU=;
        b=VOiPfz93BUF1+HvY8MaPYumd8eMxfEt5XaYR/s5wlBYkfrYVjvHBLZgI8H5Qt7F8LL
         t1m9vPaq6oaKUmFheCmoddfOcdnePYh2Pbr3JxEj4fhZgA3fzmwNc/yQUNINQbQszAFV
         T6Tr59WYNitkf5rf2YJyHpCwafPzgeEqnvNhCJMEVPrR0QXVNgWb6IUmqfOcWui/m7ci
         9WuTah0SY2g9+BcWYHmhPlt3pUJa/SWkVvm7j0hrf349VnA+FdSEiUBVbMVzTM15xthA
         U3U8WZrXsYiJJYD3XFTCS0po5NTwof7QZFb2WnB01CslhLBK9VOBHSBolRwNiZ+WF8VN
         yY7g==
X-Forwarded-Encrypted: i=1; AJvYcCXAVbkyuBoTk1j/0SzkRzXvuFofPLtA+dn7K9W+SQIHTD5GGuvWKOzcEXR2CjCcqo5+6Hp7rBjTkCjEqTHp8A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0fk9eCZOD5g9ouPBRx54SCSU9+VQtje0FyZxYXSDuDq7J8nzh
	v1PLeaTsrZgkC2t96ZXailHi8V4sJvdPRYDR/1OoPQQqDSoyMcMXfKRz
X-Gm-Gg: ASbGnctlq1Da3Z3c+f9QAQ2qsxzSddQbTOZNIgryD8S+s7f+YIKnYF9Wrg5xkx4NQ0m
	ZgOnssi+2567hH5MjQAKxR3R66jAVok7reEY3yBixMzzXJNHCneClhh4jC/XAOaySiIgxDcyEs+
	VSx1Ln5pr9v9Jl2YeKV75pLpwK6SuOb01KJHzvJuO2pa8VaplR5dQQOTVwJCWyBhPGs9fDG/b3N
	KzJUf663aet65T2M+7sKR8+bsTdKQa1D4GLgwSblk2xtI442sYbJTv7cZqCIZsZ+L+OMGem7zFH
	IoKj86IJb8ehbMuzSs0q9gDjOSEV+INsplQnPX08IqJshjfakccDORQfZhvWyELKpLJCEhbm90a
	nXyMzPdJk7mYiylkLIx95+1PmzneisfBH6/YfEQdoDv5+0zvtpy76G07J9RmeIBrWURdMxSf1Nq
	2N
X-Google-Smtp-Source: AGHT+IF7aFFcCzQTmIoHc4LXKvok/D+zEwjkzlIMaULpCLdJ/TR+jbfCMOyMxdkX7CTceRanUDdmDg==
X-Received: by 2002:a05:6a20:a123:b0:243:d1bd:fbc9 with SMTP id adf61e73a8af0-32da8462b41mr9009265637.56.1759999556317;
        Thu, 09 Oct 2025 01:45:56 -0700 (PDT)
Received: from localhost.localdomain ([223.74.108.47])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-794e1bf7604sm2130924b3a.55.2025.10.09.01.45.51
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 09 Oct 2025 01:45:56 -0700 (PDT)
From: Liangbin Lian <jjm2473@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	kever.yang@rock-chips.com,
	naoki@radxa.com,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	ivan8215145640@gmail.com,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	dsimic@manjaro.org,
	pbrobinson@gmail.com,
	alchark@gmail.com,
	didi.debian@cknow.org,
	jjm2473@gmail.com,
	jbx6244@gmail.com,
	andrew@lunn.ch
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 2/3] dt-bindings: arm: rockchip: Add LinkEase EasePi R1
Date: Thu,  9 Oct 2025 16:44:15 +0800
Message-ID: <20251009084416.45542-3-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251009084416.45542-1-jjm2473@gmail.com>
References: <20251009084416.45542-1-jjm2473@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_094558_996687_B93A63F3 
X-CRM114-Status: UNSURE (   7.70  )
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

LinkEase EasePi R1 is a high-performance mini router based on RK3568.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 28db6bd6aa5b..ec2271cfb7e1 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -726,6 +726,11 @@ properties:
           - const: lckfb,tspi-rk3566
           - const: rockchip,rk3566
 
+      - description: LinkEase EasePi R1
+        items:
+          - const: linkease,easepi-r1
+          - const: rockchip,rk3568
+
       - description: Luckfox Core3576 Module based boards
         items:
           - enum:
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
