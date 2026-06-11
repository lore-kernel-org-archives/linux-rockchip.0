Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25A62CD98C7
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 20:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mqphKKSudG2y91YT+pRe/E/vyZJo4i9ODKlyqbzWH8=; b=09OA2KcPRl0L59
	XR1Dl83AkJr3yCPKHAz2czVVgsIT4X9g4yRR1p5Ukrhwm++qu0MqzSR4PwPIHL2nfxRqayTv9jhxC
	RKdppphpvgRTDfS9Fitr3jF2vqUlRGbrm4g+XAdwoSROmzlizxnzrVFx2mEZ5aUoJqfvRjvFEbZhJ
	8CQO/PyWFI+XIM4ftBLmbRX+KtHtjyOeFwBcB8NS/I8Y3LNE5Ok3bcTUKpRUgoCbT87EaBpdavPYb
	CflV/TANhFKgKvx0lxXNJlhL/T/xHn3y2pMFGpvAFV1ixIIwZOiB5nEwRJIbZdvLNquWqfmFtSnK+
	EnlmPP/WNODY6OELl4qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXm1B-0000000A347-010e;
	Thu, 11 Jun 2026 20:28:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXm19-0000000A314-1ETj
	for linux-rockchip@bombadil.infradead.org;
	Thu, 11 Jun 2026 20:28:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=; b=JZO+Hza73eEeVSuGL3EbCsLEJs
	wOtyUd0WFRggQcq7C5cigHoueGs3LRIPh0p43Kgd+YQl2RYlRghBP3+h5KMwJdvG8/qIYzUc7/GjE
	IkpavWdGsS9rfzwE/Ld0Ulg2Eo2kyIyZ8RZyWCTDoEx8BdR+LyE6sdXkFWAlAsJ9Vxu9cIlE8A2ox
	Uynyj/o6vp8fkTLnnJzKCK5DAV7NomZtjuIj1hc70DRO0zL2rRFYnia0NAe4weM+lxsnXXag8UBkQ
	KqXKjtLWE7cn3EBowevGXCojbD6wXA0ula9YzMjUbfsdLs+P0CvjOzyDvvKDwV2zcpwQxeUXThKTN
	4ZUT1dBA==;
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wXm15-00000005en2-17ZI
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 20:28:45 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-43bf9548df4so250538fac.0
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Jun 2026 13:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781209721; x=1781814521; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=XTIsMFjjW6ulHI9L8xtF48K3GkqvwyBM/mG/CyjflnG03+aoJY2EdA706yBY7ObhjP
         E+4XW7edla0CC/aC+j8EaStOEYJZoNQ21OYn6jl5y3WYIx34kKQ9Wv7bf7EfEa4jGgiI
         B4nJvNyHT/BRfMRYa89+pPJGS2o/6gN2mF/etuCqBJOegBcEFDCK3SAaRGikidfZmVot
         zvKw1znyLOJAv+gaU848EGNYgRcnC/kt1k+LVxP/LKKUxPOvUvFCKkN6hMatdsXnxqV9
         il2UvDD/A4DB7sl4dD2M0I+IbOzC8bZEYfohmxbkR5xh4JIzhTZ3jdZm8TKLoXtB3gYq
         95Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781209721; x=1781814521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=JQ4ETlxssGSg03i+BJ4IMM70QbTeRR98S2jmbwddaF6eQfeJEahIO44PrzlVO7PDUX
         1ljz2pQPUN/KTau26bFDD9fECNxD61YWCTBYzV1JIfAHEq3r7eGKiOOB4O29MoVVuCi3
         jSxeMF3XSwQ7a6ZWVAO63VMMcEjIhlMbioIFmOM9yb3cbnDH0IJu6d0Xc8c1FPxWAhLM
         dy63c+F+Vq7/AoZAKNBl25hT8fZzk/DFA56nY7UK0S1e8S8OTNIekgNUMjIBpNepeqF0
         4wqA4MACywG7WrLTIi67BfgaUV30r9qMAnS5n+qdFccLn9WnEN/fZUkRLK/Itms3xoTy
         3yyA==
X-Forwarded-Encrypted: i=1; AFNElJ9ra2xljgcfltsZKL+4HK8dGzIbz1ZPljtXDh7lx2NrFWfvAgLRYesC38w64SsllQL9P9Cje69niMcuWSxJMw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzEPwWy3UZRVOue4qfNqOYzQyCunQbRAJC1kgHb6ZMVTSTnASK0
	Sa5ASPGxTDsck7gya5kNTjiTyLNNXtHC0vopccf2c5Jj7izIOZjg3Jx3
X-Gm-Gg: Acq92OFMjEW0VvmQ8nnJb/xS6X/AGZmO4oHnzPS6zZj/WUQibx1vqCUOkW7hFv2efSn
	SHrKjWR1xImcroaXeBFhwLPpkccmqejdAJ1y75sD7lC2522zX+FliXyY+8z9SX6rXIrZ5HPFwMH
	CWw2ENvB4EcMZqoF6xfA2lIL9Gr6WwlJytSqYFcII/SgSA8TqSrPfcmUh2li50qkOuCDdHA2/yH
	HL+zzN9PJJO/DA+d3bfQVMqXgPHT3Jt/Ib2HOtJpD/7CXdNvEqZr9BhfWHFsRtpMaIIzrVS9Sww
	Kc1vvzmMObbjn/AluPHY04o95zBI3kDtslcdDXWrKMs5u7yAkPPfbpUkY8/rKHfmzFDExRvHeJf
	5XjAi4API3SXcvi0w7Akei3XOQipDbnoApB6G5Rwd8Thmqh7hfss4sOTSMD4gvyn3vL2YOhU8aN
	jpNhHdNln+8LgM0/Sg5dd/hQ==
X-Received: by 2002:a05:6871:a1d2:b0:42f:b21f:22fa with SMTP id 586e51a60fabf-44241da3288mr2990319fac.30.1781209721191;
        Thu, 11 Jun 2026 13:28:41 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-44244cd05c9sm1796134fac.18.2026.06.11.13.28.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 13:28:40 -0700 (PDT)
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
Subject: [PATCH V12 9/9] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Thu, 11 Jun 2026 15:26:06 -0500
Message-ID: <20260611202607.85376-10-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260611202607.85376-1-macroalpha82@gmail.com>
References: <20260611202607.85376-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_212844_173928_A45A574F 
X-CRM114-Status: UNSURE (   9.73  )
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

Add the Invensense ICM42607P IMU for the Anbernic RG-DS. Mount-matrix
was tested with iio-sensor-proxy and reports correct orientation.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
index 8d906ab02c5f..b770bfd5268d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
@@ -871,7 +871,13 @@ aw87391_pa_r: audio-codec@5b {
 		sound-name-prefix = "Right Amp";
 	};
 
-	/* invensense,icm42607p at 0x68 */
+	icm42607p: imu@68 {
+		compatible = "invensense,icm42607p";
+		reg = <0x68>;
+		mount-matrix = "-1", "0", "0",
+			       "0", "1", "0",
+			       "0", "0", "-1";
+	};
 };
 
 &i2c3 {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
