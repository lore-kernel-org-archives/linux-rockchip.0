Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66F93C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Dec 2023 22:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YexRYeoVZnBkCnEWSvTzHe9D9P8zMoTbkXTZPYN9HKU=; b=t3qNGe2VXn74S5
	agQNQiEgaJyVcF/8RxtgDXxdAaHz+X2Tgc+h97F/htHSmtCk05JRJxWiKXd2sw+ifQ/ikbYwlxsI2
	W7TLZSxUuf9WISzCXiAKz0fisFZ7cQf6nfVuR74nfHsifaBKu3AkSUijgxv1RLRTOXgnNoBPiKn/L
	exW1+RJFwFQjHmPRXd47QDMOTozLTsVO+H9dTssw+cfci+FMrboN3ypfLno0hps1H29kPAZcJoC25
	XowdGfIK0xMxJiXD5z9Z9oIXIixkC9kzYT6qwaoXALhR/kBovcGXAnDWaJ9n9Xq/BgTMhHHcWdrEo
	aZgP0rxQ9b4eypV44uug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHtRk-00BKPe-00;
	Mon, 25 Dec 2023 22:29:16 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHtRg-00BKOw-2W;
	Mon, 25 Dec 2023 22:29:14 +0000
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-7815517a9c7so9086785a.2;
        Mon, 25 Dec 2023 14:29:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703543351; x=1704148151; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=itzMXVoCv9j1w1f/Q7ZRq3fNWiDaf3bJqeVynZuN8k0=;
        b=jddrLTj20GUjpGpSwYE+6eeT9z7C0fKuytJQlX8vdlF025xtW7GNOTlp4suSBhITnN
         58ydLyZ3qoCfXW4FU2OcyPFuV17JfkCTt+VfVP9tN9ZZjKofHnFQsa29WkA+XEGmNANH
         0Iwvsu8VYr1ErrekIZV669dRKJIBkcE/Y6IdaKRv7llL2hfMjNIDS24CjujEvGsiS9Fn
         Z5RBA1uKGE1oUUIP+Wku5fNUmMc+Mmzhkm7yuDEkz0seal6XT36uViwfMA2xOi2JNj0v
         oXg3T/humYLN2czhguix3ydN9SsKerH1loXRCmXdZuhee6W70FaAFUuPaWUZdR1LhjPy
         JtPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703543351; x=1704148151;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=itzMXVoCv9j1w1f/Q7ZRq3fNWiDaf3bJqeVynZuN8k0=;
        b=a8sbdvvi9J3ohmKZN0xBc0AcEexMPdgmUjXeEt5rLUICBg2OOjC0s9GQIiEdioXJdb
         j6nL8GYaHi4eraVzHBM1X/aMjgGCZzIKBsOS/XkXDrb4ayL0onEkZGfSRK8ACRGpUQoW
         E1gYWZ/83zoDw0tjAChmmCLzA1f8/HhEhmO3MHPZIdaldEjlBXg07bZO5DdbAGwKQeHN
         qSaqkJgVQIOpy163o6yMp55m6Piw8rDEJE/8MOl4G4uB+a6kWZRUKUZCWnwt71+RdgbC
         N3Ze4OlhzuXSfw5v+lTWSQtBq0mGA0JCdkpKyy63QLjCq5j48wO2ycMjOpx4mA9Z8hpN
         DhWw==
X-Gm-Message-State: AOJu0YxrLP1E62z1Pa/gl/bP7hoWlgYJt/j5T5qdIyaVI1U9rDTBux71
	jw07S92lAqqbUb0vLfWjBOQt+2yYeKzdFQ==
X-Google-Smtp-Source: AGHT+IGvKTDnv4qt19H/Be8Gp8HiEl1PFhupgr9g58mx26sTM4Yh8MT9jWUTm9h4TJYyCuwevjjuCg==
X-Received: by 2002:a05:620a:2942:b0:780:dde2:deff with SMTP id n2-20020a05620a294200b00780dde2deffmr9946891qkp.98.1703543350774;
        Mon, 25 Dec 2023 14:29:10 -0800 (PST)
Received: from localhost.localdomain (107-015-241-140.res.spectrum.com. [107.15.241.140])
        by smtp.gmail.com with ESMTPSA id ay8-20020a05620a178800b0077f15eb3528sm3881457qkb.70.2023.12.25.14.29.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 14:29:10 -0800 (PST)
From: John Clark <inindev@gmail.com>
To: "Rob Herring" <robh+dt@kernel.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: "Thomas McKahan" <tmckahan@singleboardsolutions.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	John Clark <inindev@gmail.com>
Subject: [PATCH v2 1/2] arm64: dts: rockchip: support poweroff on the rock-5b
Date: Mon, 25 Dec 2023 22:28:19 +0000
Message-ID: <20231225222859.17153-1-inindev@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_142912_826766_BDF6FC43 
X-CRM114-Status: UNSURE (   9.28  )
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

Allow the rock-5b to poweroff its pmic. When issuing a "shutdown -h now"
on the rock-5b it reboots instead. Defining 'system-power-controller'
allows the rk806 to power down.

Commit c699fbfdfd54 ("arm64: dts: rockchip: Support poweroff on
NanoPC-T6") similarly resolves this issue for the nanopc-t6.

Signed-off-by: John Clark <inindev@gmail.com>
---
Changes since v1:
 - added commit message with additional patch detail
 - expressed the related commit using checkpatch

---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 74719aaf697c..dc7b88f29172 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -426,6 +426,8 @@ pmic@0 {
 		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
 			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
 
+		system-power-controller;
+
 		vcc1-supply = <&vcc5v0_sys>;
 		vcc2-supply = <&vcc5v0_sys>;
 		vcc3-supply = <&vcc5v0_sys>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
