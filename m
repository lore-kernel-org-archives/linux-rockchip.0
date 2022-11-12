Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11C9FC4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Nov 2022 16:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t0ekTSLSpXjTNWnWj6/aloULPBPYn0WXHl8vUmEB9Ks=; b=gKVPE3W1YKS8Tg
	PwMn5rbkrEYT8uNNjvwXmsJK/Y04o6Pg9VgVAB20AE/P23upr8dMzYnM/re9azen7SZdiZDpGlSUh
	ecRGiDfR/uhuTUkYTWHyDDbwRW3YnCG9ofZDg6Re6FpSUMM8vQXWNbjR44LTuzLHXJO9Z6OcV2JD0
	1ycH2Y01pO/pZVuIETOrws4j6EzT9ib3bjBEdrLYXJEPw0bMtXMQilcJecoE4mrQFXMHVV1co8uZd
	6finLt0qX9i687y1d6738LSQc/vkVF2wHvqcJoL9ZV4aEHmXT2h+q9RNbwHSXO4NS44Oj3K6F9VQg
	4bl5jRSAeMLR0iRpkMwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ott0d-006dLL-8D; Sat, 12 Nov 2022 16:05:31 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otszi-006ckf-CL; Sat, 12 Nov 2022 16:04:35 +0000
Received: by mail-wr1-x434.google.com with SMTP id l14so10190799wrw.2;
        Sat, 12 Nov 2022 08:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ijKNfiunV63AFU9RzYinLsQfMGW1tKqr0LKOgrxroKY=;
        b=HH+eoyr8wWz+PKf3eTxeIrPtgd+VdxvgSfFjHy3RdnzKHzXvFhUscCZ8oBFmTOtyOV
         +itCm1tI1JznZHo0CX+0nf+J8urzmatqkiF+mF9rKFLNYMjTbheGHW4U/E+CqtFePiWE
         tqfkb/yWDzao3xg0A+DgJ93jGHsSEiW8dc0Ha1YfwQpTQ+osNVt59Wj53xotk3VATra8
         6okQ4A1FUnSULA/EW9Inh5ff24nvOqJ8Xw4kbB/b5f1N8lIImEVt3bB9B1BjyZG5a6dA
         Z+QvMK8IB132LL6pQTOrVLfZBlGmz3MTsmfbWMn7n7ZvgnyasPC5WIgr8IyP7SMX3hbZ
         6UsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ijKNfiunV63AFU9RzYinLsQfMGW1tKqr0LKOgrxroKY=;
        b=zGq566joSpcZG4CcmumxhWVZQ4dC7lFa5cb0APq9+DF4kJyYywv/NAiMvGm+ulWYtW
         UnndSjW5E5VePjVAtSyV+GC7VBeyt6SmibG/NR80iRoZKWDyz7kfz2/RlMK2LoBk9o7z
         nSc+3sDF64BVyr7hsMHJYJexyjdEMKXuF33J+F6r13Gau87L3AzQjvIVsCAPjjiRoPDP
         YYclzR3nWZmJHczumKUz6blC+vHcgJgT0fGv3quFqsYPme2A4B+bIFIsFh0K4OGQPjIn
         VQLrkaUbPU/jlgCa68HrZisBUbEZpSg39vqPxq3gNJ2FsBLfLXwlKTxkKwqntcMWVOIP
         8sAQ==
X-Gm-Message-State: ANoB5pkSppSHHayvgTQQT9IgF2df4YAutrNSn9QduWCLef04bD2qrlOL
	6Et+cX/LUGpEY4NTEYL0Nnc=
X-Google-Smtp-Source: AA0mqf5rGZgCxdHJ6sUSJMm0IUngegN+ozLvYpNtMPG23JIot08oGXa88eYC1GzUoEmMHusXvXgh2Q==
X-Received: by 2002:adf:fbc6:0:b0:22e:3392:fb46 with SMTP id d6-20020adffbc6000000b0022e3392fb46mr3627992wrs.706.1668269070882;
        Sat, 12 Nov 2022 08:04:30 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id iv16-20020a05600c549000b003cf87623c16sm14605752wmb.4.2022.11.12.08.04.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Nov 2022 08:04:30 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/6] arm64: dts: rockchip: Enable HDMI sound on SOQuartz
Date: Sat, 12 Nov 2022 17:04:00 +0100
Message-Id: <20221112160404.70868-4-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221112160404.70868-1-frattaroli.nicolas@gmail.com>
References: <20221112160404.70868-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_080434_504845_7E73C63B 
X-CRM114-Status: GOOD (  11.40  )
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

This patch enables the i2s0 node on SOQuartz, which is responsible
for hdmi audio, and adds an hdmi-sound node to enable said audio.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
index 0bfb0cea7d6b..1b975822effa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
@@ -178,6 +178,10 @@ hdmi_out_con: endpoint {
 	};
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -446,6 +450,10 @@ &i2c4 {
 	status = "disabled";
 };
 
+&i2s0_8ch {
+	status = "okay";
+};
+
 /*
  * i2s1_8ch is exposed on CM1 / Module1A
  * pin 24 - i2s1_sdi1_m1
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
