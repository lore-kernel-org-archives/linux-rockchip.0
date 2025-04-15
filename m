Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD890C369AB
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Apr 2025 18:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pb+fJ8BI+wYpauW2McJhpM6G8QKqr8ztWPjYmjcd8Mw=; b=4dNoZ6FS1zBQwZ
	Y0IBIouHa8bvdaOTS0HwMrifgCRlBlcdb01zHaa+M2NyXKG1jM+6oYNts404NLbPVelyb+Ge6hOjg
	YDxIEOLy87RhN4Q2YHzmDR/0YDkJzsnGPQukglgvfzQBJKTROCEiU27yRUtp2+FlzqT+KLqjaTb0I
	ss9RfCT3nRkppVGdhkHecpqEuXcqCmj6MiZ7wBJDOY5Qdacb+tm400I83tkwVg1PlcHV+cSogF6ws
	OpnJTi6LPMls69KyVek0ftn7d+M6ef75deHT68RePlsWpA+PKJldEWIpV9TnkTK+Uj+UTT21sS2F3
	Xl8nrwecU3tMtstlvqJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4khe-00000006frZ-0eJR;
	Tue, 15 Apr 2025 18:08:10 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4kPc-00000006czc-3o0O
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Apr 2025 17:49:34 +0000
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-72bb97260ceso1959776a34.1
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Apr 2025 10:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744739371; x=1745344171; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3w6rQSZC3l5rs0Ns24yIJioGfVvvMAWgXXfps6IKpOA=;
        b=Z+SPNnOXon1hj8+CX385XgKM5/fhX2VFxQjV3fOsHJHV3Mt5ptevl15GkOw2m04JWw
         f/26MQ3BtROLlk+iwtPlrmmfQfUX3nPSbAHqNv96y+5AB8PXi1pNF7O4mgVZx8SjtUQa
         mhQVFo4D3rfXg/Ov44Stc0/TSCiizoyMEev0pSwAYSKQ67Js0Z+yQT3ZAMiqowpnHQdv
         tnzeLaCFwZbjmAi/OiOOlIPmS4+sve8vQ0H2FZ92PbtXAH6HNNoUFZVoXrjzBfCI1dbE
         p7c/zgCLzc+6AWmy0IOHEAU1M3KHv1PUV4hKHED9FCiVnVBpKZveebB++GdAz9nO1nJE
         hjvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744739371; x=1745344171;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3w6rQSZC3l5rs0Ns24yIJioGfVvvMAWgXXfps6IKpOA=;
        b=RnFgTRyUo2neXBJzmnihox28s/2rxo0OyputPJwwcNMBHVsH/VfwLSRSrTFT8Ckeaz
         Yldhz5fxnWk8t/HUs7gaXQPFxq+a9C4HtJXRxkAC6YCG1VwnnPB42/X2yCBTII1m7P3m
         qJXvn4bJSIC8lepEIwhDGdLBK5LNP5HgdMKNBTiOjoVv3bbmLcQhV0VyttSp44LPws1g
         N8nQ0ef+INSlUL5O1hKCKMd5RP95Jpvd7CyZ75epdFBrGraa1QS4DEzly9gBkXP5rxZd
         oi21GNVWOS0pnQVkZXSrA/oEjIvphtcU56LtjigMhWSkA+oqFQwp0Uuk0cPA4SvfJ6z9
         Q5RA==
X-Gm-Message-State: AOJu0YxnWW1+vj06vc0evyOjJYwVTfwHAAYuMjqT4zige51gEmnEb8I/
	abEy5mo2/PzZB7KQjdA4E7CViHZN5KsUH6ah238qutpR3bGFi+OPYSGnDw==
X-Gm-Gg: ASbGncux6bLi3lG7Vms9+ua7R2C1m0MlV9FmJ3dqLUJdEeX3wXLx8HhLQKTFIrH8c/H
	P6fG/ICM1RPxnDKeP930qooUf8ge+Cyy7L9Ujk7ZbdkMGssr/zC9U5CJ98j2sskFM4bEGZPXsyq
	WlF/Iap9esPOPUyQ3P+m8OZj0EIr6FHxV2xT31h1rlXuKZavUkUQZ0J5SpPj6ZQ++46poGSd4PK
	fZIMLGkHe+xRPdmORqMR3GdVPwb6OLNUQbnqZqRi1lzU0Mwb4JNv4J6pkDRc6mn4kmLSKyYA3lR
	nCGSVm9JvYbRKkDeQpVjod1/PHStpe4CT2/nFsjoTS9UWZ6coGiqkHEwWzGv
X-Google-Smtp-Source: AGHT+IH8peAt1Th7gjeH9a0HnMN3WjHBZOGSj4STsAHR7kH2CKtN2X5R0pgEdwoUcgaVexU2a6iXTA==
X-Received: by 2002:a05:6830:610b:b0:72c:3235:3b99 with SMTP id 46e09a7af769-72ec1c3c76amr158132a34.19.1744739371238;
        Tue, 15 Apr 2025 10:49:31 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:f16b:606f:7984:6d0e])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2d096d49c8esm2971892fac.49.2025.04.15.10.49.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 10:49:30 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Enable HDMI0 audio output for Indiedroid Nova
Date: Tue, 15 Apr 2025 12:47:11 -0500
Message-ID: <20250415174711.72891-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250415_104932_944960_DD18BE3E 
X-CRM114-Status: UNSURE (   9.13  )
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

Make available HDMI audio for the HDMI0 port.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 4189a88ecf40..4ec7bc4a9e96 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -278,6 +278,10 @@ hdmi0_out_con: endpoint {
 	};
 };
 
+&hdmi0_sound {
+	status = "okay";
+};
+
 &hdptxphy0 {
 	status = "okay";
 };
@@ -449,6 +453,10 @@ i2s0_8ch_p0_0: endpoint {
 	};
 };
 
+&i2s5_8ch {
+	status = "okay";
+};
+
 &pcie2x1l2 {
 	pinctrl-0 = <&rtl8111_perstb>;
 	pinctrl-names = "default";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
