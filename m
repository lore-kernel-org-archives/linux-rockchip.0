Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12743C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 17:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ixmc+Z0bFm1sWZAUr1jih9F8W5cHN01jEFOJpVQP9jA=; b=FoOYfGn+LStNY1
	iDFslGf7XNLdzoc3T0Y3n2hGFbRSrxMA8b7kTU1mG+V0mMPGNGZYaOya8Ubq2Y7Ueq7ujNYtFWFDb
	FoOMlHIfUEEAy8AEQ5+85WMJ7UUKEjqc/20yMwHO+4Ok5uk4RNnqmpDmvsuoaRNRLxql4roMXpzg2
	2OdZ+fA/RptRDH2C11YjPr1kR2owY9AOr/I2IzXhXjPFXeWnuS2LWBhFEVg+1cWU8eVteAMomUHng
	JueR/n4xv2BHq8Ekq2o2tYqa53E73x+C8vuEr+svey8ponY4nRIxPpWSa19tBRqTd2Lazr+UD+OVa
	sw/0SuAuEKLY9thR5P7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwPp6-00000009GYU-3dvK;
	Mon, 15 Apr 2024 17:08:52 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwPoF-00000009G1Z-17Iq;
	Mon, 15 Apr 2024 17:08:09 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1e5715a9ebdso27353865ad.2;
        Mon, 15 Apr 2024 10:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713200876; x=1713805676; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ABeytDe9J6dRcflLX7NGphJIPq806ptdx9PirUfiALs=;
        b=KQ9OynXzlV65Bcqb+aq59EqgvCOa0//UdtS1wMYA2/rFvGnSwEHuqSRFSls7xZoqIL
         B3b64i2IYGO0MKfataJcbcddxCf3pqMNf9U3HyV3xbi3xrDgm0HM7CRJjUnVFaAwutsg
         y1aHSfOgveNAqCCcQE7Z443L5DrJura72yDXJRcCVQrK5vgw2zVNSp0v9Bu5m62Lwr2k
         2RZ5qqd4CESXulKO8+CR1G7qeroqREGFLkzQ3uuKD9GmEaJDeB2NTNvgVSsPBohbg04W
         uT7ovfegkf3IrWZtsw0DE2kV/ywT1ZA8PysI1ENLJGDKRBsiudYw8ThYcJLgsxIue1dt
         QF6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713200876; x=1713805676;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ABeytDe9J6dRcflLX7NGphJIPq806ptdx9PirUfiALs=;
        b=ofEgzIY/VKfHewnE2ozwnb8zM5g2Coco3tTKQbOjz7/CN9C/7etf5BIVj6oeqZShFg
         QZxrTiu7Om6EoiqgRX4zGlQ9qY0oj/u+UmJFbdPN7+kLA+Oc+gZwaBhYOanGZkz4PTFp
         oi1/nbKZTvc4gDchU8B87d7l4ccC5UhTNSVZfCHf8every9b8nQmybvUWE7fprOx8z4o
         I8ozfAotvwxEs2p9Uj8HHmO7O6C8/22BM3OC2UU43kM/Eu67P6G6STBlzIhBdvNtrCa7
         2W2uxjDdWq3QhiurrVrfMjeZZfcEAp36qsREHhW9EpfSnsALCAL/Vup97TvaTsUSUaAe
         yWbA==
X-Forwarded-Encrypted: i=1; AJvYcCXuEXpLMFnJ/AFSc/ohIm+bUz/BuHt3Q++Mryb4J87rJERshSEY+Jq8WTDYD40ARN/uvEE1TSJ/sXgDH7x9DoHePYXLMcdPi9Gjcl0h2IXirb5jXJH9Um8SG1kqWVrXNp8y2uGDwsy5zbOcsHoEg4S0Fq2/nCPU0ME=
X-Gm-Message-State: AOJu0YwhJoVJz2KNMYIqE3y392fDuAlUjswmVb4k/i7tMP3Gxn4nOsxY
	bj1FWdjdY+Ut+GIrxgvtEjvPP2ylWI0Y5qw7nKDwIZ06RtaArBFnkskasLqKWE4=
X-Google-Smtp-Source: AGHT+IFmY6HG7aEbZWz6ebnGSVKgwSHHukUej7AD0a/vPW8YKUrrgoO1ZxklAg3N5L/vACRKKPeISg==
X-Received: by 2002:a17:902:ecc8:b0:1e5:5be7:be86 with SMTP id a8-20020a170902ecc800b001e55be7be86mr11674236plh.52.1713200875970;
        Mon, 15 Apr 2024 10:07:55 -0700 (PDT)
Received: from localhost.localdomain ([221.220.135.251])
        by smtp.gmail.com with ESMTPSA id r1-20020a170902c60100b001e0b5eeee41sm8203983plr.38.2024.04.15.10.07.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 10:07:55 -0700 (PDT)
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
	weizhao.ouyang@arm.com
Subject: [PATCH v3 0/3] Add ArmSom Sige7 board
Date: Tue, 16 Apr 2024 01:07:34 +0800
Message-Id: <20240415170737.49350-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_100800_182441_97DB2872 
X-CRM114-Status: UNSURE (   8.72  )
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

Changes in v3:
 - Update vendor description in vendor-prefixes
 - Link to v2: https://lore.kernel.org/all/20240413153633.801759-1-liujianfeng1994@gmail.com/

Jianfeng Liu (3):
  dt-bindings: vendor-prefixes: add ArmSoM
  dt-bindings: arm: rockchip: Add ArmSoM Sige7
  arm64: dts: rockchip: Add ArmSom Sige7 board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588-armsom-sige7.dts | 725 ++++++++++++++++++
 4 files changed, 733 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
