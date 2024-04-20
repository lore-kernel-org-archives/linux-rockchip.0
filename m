Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8509C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Apr 2024 03:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BeDSSscLqQ+TG2FnDCv3uMVy27Ihm5I7FXan/KcBsII=; b=nr4oGLNhuaT3Pl
	CL5Q+ARak8M7BBKJhofqdQCp/ajjStXh+EvFf05GJ9zbJtwV7+buYjFPuXw6Vv5tByNnRgY1uBQU/
	+p5NnoWSZLTtFT0P1PMB5V4ZEg9Z70J9dC6rIgLRSxoKRrMdyPFeikgybgWZCv/mwYvJ8goXP55x4
	E3j8dqHpEnC/CexDH4LThJMQJkSIAGWoQsMd3pdFWzIj7v+83fBkbG6opQDPS/M5AJhDU2CI9e2oV
	jFM3ZczIoBcbhYGSMmYEizB5Hqiso9VL2sOuY14gXuMIUv5ooXWwJTtAwWOeDZqrar3pz86WMQzjc
	eJJklETtAZWtihhlJRSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ry1ec-00000007iIh-2T0z;
	Sat, 20 Apr 2024 03:44:42 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ry1eX-00000007iH2-0xeP;
	Sat, 20 Apr 2024 03:44:38 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-6f043f9e6d7so2837129b3a.3;
        Fri, 19 Apr 2024 20:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713584676; x=1714189476; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BWK9lHXVifGzKZL8qjW3u1qt3v5nGsCI1LZZqXIQODw=;
        b=KJIlJtvoiH8uXaYC1Q/9Oz0dAbwV+Dbxi2WOrCr1iU4cT7hSpUZ5viUDWPeFeMcVtJ
         FaCA6amTVZ1FSPNH+i2kspiHos4joZqnPgU5Dq/IOvKL/Lp4djOlnKBK6k0jEY+N0gwN
         I5K7WQhUtZW9AN7jJm0aEkRgabsGt1seFqQjXkv4roS8qqd+6djhIpgDujonar4L1N6Z
         w50EwfcQ36+SONmaRyiMfuH5h9zb36LvvLcA7jlEzQI2nzywmJv5QiXLxVCBt6vzkvuA
         xmO3SIxfq4epZVwo2Yc9T1GNaFzafRxb1mHxYOxwdi5GfTj6G0Mdhw/hTwQNbFzrLpd+
         fxbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713584676; x=1714189476;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BWK9lHXVifGzKZL8qjW3u1qt3v5nGsCI1LZZqXIQODw=;
        b=GCeWrFqpGV8GI7cjAT5LomplyzkR9Vq63RTPu7JgPkmVr3JuVyXCDbdu5zNRvRFqGf
         X9qaOvSIQpn/u2eZ6y9HVQwC/wFQOcDto4TagosACdmh/g4CnOj6rAWCEPgL4ykNbkPI
         cazuuz0H6ICMctuQQlRSHpsmoA5Mec0EKrrvJfZZd/UZMOEq5mZH8yXKBd4/w2szvYxI
         9G06vO8dfJlXYbj2SvlpElvK1ESrsud5YspcO/mcZGMRtjuBVbXHnG2HARlqohNq2CNf
         zvNML6z61HwN/I8Ov8vV5wAGN0d8gcUFnun3as+9rDoxYjT6fN2MoP6mOplEPtSvivFF
         DdPA==
X-Forwarded-Encrypted: i=1; AJvYcCVPgEQ/MLiHR7RTkkCVZo1/JTx5SFJzHTUdtW3XWZrWJOywzscjSBycO1ugoPqhGXOuVG490vizX+amSLMSGSUG4MTn1BMnpjl5esgZHZHZsE2GinXC3/mjuwdLN2PheINdPNtP+JmWzYsSfPCE2EXZRuvDCBXfeTY=
X-Gm-Message-State: AOJu0YzfD7ckOXwJ1H4S99h7YdtSWMb5vaYU/xRhF5tREVQhD6inkZXO
	kCXXGoNGUp7tpBheoAZERZfojpY4MritF4kfN3p7MpEZfdMZYIODFWLPgcQOuE4=
X-Google-Smtp-Source: AGHT+IFfHHEvwusDXwJ7QzyiabKuKmP6IeWc9mF60JbiHSMjpN1nmUGLBDuxtJP+puvL0mes+ZblBA==
X-Received: by 2002:a05:6a00:4fd2:b0:6ed:21bc:ed8c with SMTP id le18-20020a056a004fd200b006ed21bced8cmr4863108pfb.18.1713584675734;
        Fri, 19 Apr 2024 20:44:35 -0700 (PDT)
Received: from localhost.localdomain ([221.220.135.251])
        by smtp.gmail.com with ESMTPSA id b9-20020a056a00114900b006eaaaf5e0a8sm4005633pfm.71.2024.04.19.20.44.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 20:44:35 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au,
	weizhao.ouyang@arm.com,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 1/3] dt-bindings: vendor-prefixes: add ArmSoM
Date: Sat, 20 Apr 2024 11:42:58 +0800
Message-Id: <20240420034300.176920-2-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240420034300.176920-1-liujianfeng1994@gmail.com>
References: <20240420034300.176920-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_204437_299124_DAFBA7E8 
X-CRM114-Status: UNSURE (   8.06  )
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

Add vendor prefix for ArmSoM (https://www.armsom.org)

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Weizhao Ouyang <weizhao.ouyang@arm.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index e4aeeb5fe..e47405535 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -151,6 +151,8 @@ patternProperties:
     description: ARM Ltd.
   "^armadeus,.*":
     description: ARMadeus Systems SARL
+  "^armsom,.*":
+    description: ArmSoM Technology Co., Ltd.
   "^arrow,.*":
     description: Arrow Electronics
   "^artesyn,.*":
--
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
