Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81B87C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Dec 2023 10:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WAYNMa5mus6V2jUu5QzTrACy+gjp+XSeijllc5fGUmE=; b=hzN8iHekGSDu1v
	e36bIJpYS9wHfB1nFA6A17DVm2tLSkLkV6QFwM/sPvxTT3CEzpixd4uubYqj4D1WVPQzl2AZKLDpo
	fpt5cqy0mdv/rrjOVmTmiNwhdbLSn201rpkvVb5mfo8tDtGfBL/mGJBJyx8u5FuUDuonJEf1MC15j
	mrbNiYl8bWPNIRJKF4eREw6lHXZyaJ0YlC9pDFGLAkwXOFnESItUqLaB3W2ELJWo7DApSGpgwo/gF
	TudGxZxKpHhE9kH1vRcf2zbxj6wekvdQO09+Gcy9RzvIzoZZNhbY1+5jaTS8KQufHc3ZcdSNOD+Pt
	JBFmmotpoEigLkSUCf5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHi4r-00AWjf-1b;
	Mon, 25 Dec 2023 10:20:53 +0000
Received: from mail-qk1-x72a.google.com ([2607:f8b0:4864:20::72a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHi4p-00AWig-1K
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Dec 2023 10:20:52 +0000
Received: by mail-qk1-x72a.google.com with SMTP id af79cd13be357-78101c35ad4so322938685a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Dec 2023 02:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703499648; x=1704104448; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HTynCy3wWc1Y6tVypLBYMD2YVQGVcpPoKJkIBK2ybiM=;
        b=FJOeV+klUde09AA3CKcUqs3Oh4vvqa8GYebN/GPANKKOPu5dHbXLLBrY0ZsA0+PyFC
         zIEWVeSCoJCcyRSRONxSOoTIPpvw4aKL67lA5F4R9uNy89kikIYmFlfg6asWYhPGWR/T
         v53ns5n4t+63uGzbKty2GZacDzfpqxFO8PzV/uJx3ie0KHjFwFZ1+dFA0ejpnvYe4PwL
         QLf3NTIiS1yZoF77q9FZbKrBo1s9fDe5jlsXRxAiNhUrkRfI2uDZRrB9HoA88pKomRJg
         oav0omHx9/Vbz6MT+j2pNiFSVJGjiOfL2uq5Eo1ie5WT68gFkjeEkHqrj9iXKAhWWTb0
         GYzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703499648; x=1704104448;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HTynCy3wWc1Y6tVypLBYMD2YVQGVcpPoKJkIBK2ybiM=;
        b=sK+94FyXzWZkITR81YgfwLva9700m2JSWYC5TW0HaCxkIN61zC5bdfhgZUATso0QEU
         HU7SooC8gTfP75Ws8FYDU3lYy0DtFEH+BneEYKjMDMQHtt1DJ50hdz8PrIE9QpIHcF5Z
         4KPPmFgwhFSlnCSeue+WYPYylv/8cTEpbzRs+xMm8Zq4DZgoW39FtCwiftuiyOgLf1pF
         OQA3y4mb5gh5QIG4aQOyOwBeFg2HzQiSfgpuq14BUTsgEdFI+wyPGhTKhfQr5UL/JYKN
         5j5crw7DslOK1ecTDGyKAKqLBV2NzpuQOVPVnWyf+viXYtacatxgphutv5+XCfuEIDWE
         V7+g==
X-Gm-Message-State: AOJu0Yx13uqDHU425TGLtYcxvYSv0OLOzHBmuKmR1gGdOndiNIl26I0i
	/SD/4/UvZoaa4VcH0QamcVM=
X-Google-Smtp-Source: AGHT+IHTiie7B5Mt+pORM4T1CDOD1F5Ep/xqpQTzfU0RrO/UZvWK+iIuMhOYKwRcGeEy/Eqlf56Img==
X-Received: by 2002:ac8:4e8e:0:b0:423:8287:dc67 with SMTP id 14-20020ac84e8e000000b004238287dc67mr8659488qtp.58.1703499648169;
        Mon, 25 Dec 2023 02:20:48 -0800 (PST)
Received: from localhost.localdomain (107-015-241-140.res.spectrum.com. [107.15.241.140])
        by smtp.gmail.com with ESMTPSA id fp20-20020a05622a509400b00425442a2f32sm4842040qtb.16.2023.12.25.02.20.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 02:20:47 -0800 (PST)
From: John Clark <inindev@gmail.com>
To: "Rob Herring" <robh+dt@kernel.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: John Clark <inindev@gmail.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: support poweroff on the rock-5b
Date: Mon, 25 Dec 2023 10:20:29 +0000
Message-ID: <20231225102030.10617-1-inindev@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231225090856.3890-1-inindev@gmail.com>
References: <20231225090856.3890-1-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_022051_468205_8B25DF4E 
X-CRM114-Status: UNSURE (   9.43  )
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

Allow the rock-5b to poweroff its pmic. When issuing a "shutdown -h now" on
the rock-5b it reboots instead.  Using the 'system-power-controller' allows
the rk806 to power down instead.

Commit c699fbfdfd54630fc51b96da577f02e7b772eb37 similarly resolves this
issue for the nanopc-t6.

Signed-off-by: John Clark <inindev@gmail.com>
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
