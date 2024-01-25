Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E56B9C47258
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 20:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IiOux65BrOG4hfK8WIDqq2Bb5aV+/j9jSfIc5DpH3ZM=; b=2q0tVD9Reo1V04
	nl1RLpBIuHjNsWBkDh+jaXIDs7FCeno8jx74K2V6V7m0GykofETDJLDzJJFMixWouuXVEoU3g5pV8
	xppm+xl88P6C0dLOYjLBj/Vd/ksJ60DR96WyUoFlaGKbE4EuYZ8LhmJ1qDfd+V68E89JfhNQS5hIn
	barQ8Q2QBToqhTSBizU82i1ZNaZJzkre2xQZJVmOVgPX6GcbgWtSm/Ff0kF3PnJnbsmVUG7/vqCDj
	691CQpQoIzVUBjhklcVwc09PMt+BLPCxtdjZrPwwJTx9KDTh3twL8DKcoD1iINdcDJNndgRIN5yTk
	aoeKPOU8OIxEiYr26r9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT6Cd-00000001l72-0dpb;
	Thu, 25 Jan 2024 20:19:59 +0000
Received: from mail-oa1-x2b.google.com ([2001:4860:4864:20::2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT6CX-00000001l30-33P8
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Jan 2024 20:19:55 +0000
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-2142ef4a7feso3167253fac.0
        for <linux-rockchip@lists.infradead.org>; Thu, 25 Jan 2024 12:19:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706213991; x=1706818791; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NIswtFjpTHkt28ZzGGuiAiEl1xXsySXj+yOH1B9fU/0=;
        b=muvTF/EPQJfa1DeJZcoHZqupRwvPGda+RM7suMoZmJY4yIhhGw0oNOoN4c4ucrwGSy
         VaxF92Zjd+adcgfWByZ+Rvk/p11vZf7N8J7IGVl8aANYI64jsekgKjXIHQrXQeVA3GOo
         13tqKkBLGtUqm1Hsripz/79R0ZkkLkoYmePbl3vcc42Puk6Z4EKSco2be4Z0MFBR1m3w
         eB6PwKrqly44m9rXnRGBMhyrZNEM8jVwVHG/KI5sJJmTHo+uuNwkTSjxwld6EUiY62Ii
         g926ULv1F+kJqUgeckgtYofmWKa1ZcmeiddZ/H/cp/zXCFxgpN3aPHbBP4umHV/49S6L
         X9zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706213991; x=1706818791;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NIswtFjpTHkt28ZzGGuiAiEl1xXsySXj+yOH1B9fU/0=;
        b=xBa4VD7J3ih+aF/qXDUlT+V69ahXDUDXow3yALbtYVBJflcjISaXc59wWs1ASMY/1T
         4QDs07an336xeWoi0YERQyFWmNQqEDwonwwL6N++jhcnSXEzmttU00FJwHWQV3w7iEA6
         xyAOLx9rYMIDOVSRVL74KIisgbM8BC1xBDcr51XDviyh730H1tf1Np7VNpNEU1i/7Cjf
         Ltyv1gyx2M198axaXBSLVd8EdN25U6gw5lD3gShLjp2Xj2ZzLLFQFjFjR052OboOnrFk
         60V0AG8HcWkDu+o7wXPIZlL39qxEbFWtlnHDaQyVimA2uLpBMkl9slI9sdIS74/rFwY2
         Y2+g==
X-Gm-Message-State: AOJu0Yynb1aUDuKqFXqlteNVfHkpn5rIevVczTa9Ib7/5lpqa+Dcn007
	4hrSkaacP/gULBuu3aMenSTOZXOipTccJcJ5YmMBqPU0MqjvCps++B4WVEvU
X-Google-Smtp-Source: AGHT+IF/OoKX+Hp19TnvIEuqKhNMvvPVJxKVbybIu6KrpTO+4C46554d0JIZV6alhSS3juE3Z2rDQQ==
X-Received: by 2002:a05:6870:f690:b0:210:e117:df8e with SMTP id el16-20020a056870f69000b00210e117df8emr212985oab.47.1706213991489;
        Thu, 25 Jan 2024 12:19:51 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id gx11-20020a056870b90b00b00210cc6cc9eesm3610024oab.33.2024.01.25.12.19.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 12:19:51 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Add USB3.0 to Indiedroid Nova
Date: Thu, 25 Jan 2024 14:19:43 -0600
Message-Id: <20240125201943.90476-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240125201943.90476-1-macroalpha82@gmail.com>
References: <20240125201943.90476-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_121953_821444_9C135DB4 
X-CRM114-Status: GOOD (  10.38  )
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

Add the proper nodes to activate the USB 3.0 ports on the Indiedroid
Nova.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 3c2278886851..ce8119cbb824 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -141,6 +141,10 @@ &combphy0_ps {
 	status = "okay";
 };
 
+&combphy2_psu {
+	status = "okay";
+};
+
 &cpu_l0 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
@@ -842,3 +846,7 @@ &usb_host1_ehci {
 &usb_host1_ohci {
 	status = "okay";
 };
+
+&usb_host2_xhci {
+	status = "okay";
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
