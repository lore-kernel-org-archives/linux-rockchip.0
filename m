Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 270EBC2BBCA
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 16:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpgGp/0rx80j+4RyZ4w1x/LtT36V4cfZbEvSKWFErl8=; b=l7dFGw+yNtaRoB
	9Zs2fYE9W/KvKyz8nFs2mXr35sj1Aq3qiLMNJBUjZg/3LhFiObCAwjLEZE5hm/BY56acaaqxpv1nd
	5z/Skb5QzJLQawbbYLMGAssVRH4M8xwTsvvMT5IuYZ7+3BPIKSbSnpR62wiQf9j/R1Z4Y/rovRXWJ
	cyDAPdh+yToU4CSS40evCxLe0llsv4hoGG0ryzmritooL2Zk5R83e8s3iMxZl3mQ3EdMHuDulCTd4
	oXkAn6Xd5n/EZhIJ4NO/9w/aS1vtIY12SEaR2xpIZ7RFfy/DO8Gi2RhGTq89Ve46TFcqblggrIjvC
	UbgYQet2q9iIeH2ha+zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLQTF-0000000EQ2e-2YjL;
	Sun, 23 Jun 2024 16:53:41 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLQT6-0000000EPzv-3gWJ;
	Sun, 23 Jun 2024 16:53:34 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-421820fc26dso30593385e9.2;
        Sun, 23 Jun 2024 09:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719161611; x=1719766411; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Whsw22CVzG+AEJuA+lPSpYe6KJu2sy9QKywWti8n5dw=;
        b=d4Fz2GRdxUEg/rEeD9gSyBk0uiCDc98S2yHNyyVHpv1f3DJ7udgCdxEKtXc8TDFzEn
         2O/Q826QQJQd6Dnj17pixSu33ziE21Qd2ElBrI8MxvSqVxeY3mfAsBTMnjHrJTU/Zhrp
         zfkY5N3evJs/hDZWiIkovH4sqXGlwIFtH0Y6WnboHXH22HEQETFjzVMQlfWDqDSt6zEQ
         bDYi2oCsv1lMbYryX+W7bQqr4UU8EMYM/QE2jNhZQuUxyrTNh6lUStkun8rHxnKLcXjv
         EHe+YjPyFAi2hTadTelaDATwMSfgoHL5ppZLSBbSTYljQKrPhOsAf+MuBfukF2Jgx5S8
         RfAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719161611; x=1719766411;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Whsw22CVzG+AEJuA+lPSpYe6KJu2sy9QKywWti8n5dw=;
        b=hzKmbNmGKWCCJEL9CBdlH3LpsxaQ3nw0QExHL9dKaQsjP5bCgjQA6rLApmO3AnZOLa
         BeIHvtCP5LH/AedNDLYIpqZLxHGANY8+MkPOfT1iBSv4ukOrKym8bb8P0kXOHXNNUKdj
         VT4pppY3ZkyuZunK3sBiWjPeqCtLFwd6tEYM0PQtXQJKGizG3nFrkAAXOXC4eb3vnDV7
         zYTDUbhcmKXstlEbVyVMe7/Iyu62X/UFtk22ql8aPrpKGOdCitlFpF+o06ud8ZqBsp8w
         lQjysZKlVTwOuO8XV7Eh7gViZ4aFtaEm5LRklV1yaPSZQPFJDQSY1eulzNvkAX4XxWRw
         0ZLQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAl/0US9weK9khWZzjWEchHvrWlBiFkAXMsOQ9mFJhTpI5qtBNwXXVq1RUiQXTjsVf4TJCEC8fYzwUQNDkTkrWVwY6bN36hFAdlzJdSnZ8nw/FOFYIiVIvuINvIwY64ACLzhp5kfUWhODPtagzYeLy8Q0xIWElCvo=
X-Gm-Message-State: AOJu0YwIZPi5LczdREqu5fM0YmTE5uIv0aGDhgEI/3MRBM6brY7SaG6/
	ldvYM4lktAnY7lu82xdghvULREEb5/wLsZthYhwEyQK76BTxwe1I
X-Google-Smtp-Source: AGHT+IE9yH+wIWIpe34XkBs0GwYW8sI8C+AfF4fj0IIrlwcHW/UJhNAXwDFIFbpvoN6eQI8dxBNJcw==
X-Received: by 2002:a05:600c:340a:b0:421:7caa:7a6f with SMTP id 5b1f17b1804b1-4248b9cfaa6mr29146885e9.31.1719161610621;
        Sun, 23 Jun 2024 09:53:30 -0700 (PDT)
Received: from morpheus.home.roving-it.com (8.c.1.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::1c8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4247d0bea05sm144835555e9.18.2024.06.23.09.53.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 09:53:30 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Enable PinePhone Pro vibrator
Date: Sun, 23 Jun 2024 17:53:22 +0100
Message-ID: <20240623165326.1273944-3-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240623165326.1273944-1-pbrobinson@gmail.com>
References: <20240623165326.1273944-1-pbrobinson@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_095332_941563_81022018 
X-CRM114-Status: UNSURE (   9.54  )
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

The PinePhone Pro has a vibrator attached via GPIO so
lets enable it.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index fbaf0202df632..8c2a4aaa635d0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -137,6 +137,12 @@ vcc1v8_codec: vcc1v8-codec-regulator {
 		vin-supply = <&vcc3v3_sys>;
 	};
 
+	vibrator {
+		compatible = "gpio-vibrator";
+		enable-gpios = <&gpio3 RK_PB1 GPIO_ACTIVE_HIGH>;
+		vcc-supply = <&vcc3v3_sys>;
+	};
+
 	wifi_pwrseq: sdio-wifi-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		clocks = <&rk818 1>;
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
