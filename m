Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4ACAEF99F0
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Feb 2026 02:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eAIFw44SI5uW12MHtdhs1cetLGD3bbfolGJhEEUxZkM=; b=Zhg/nhfitdOHFp
	wHU9Z8YiXw0mOgQuLxTbD62jW9aQpuQ2k5KXm5SEflmfWL39qVSSsFPncTpgh/kXvLWxftawCron0
	3JW/OfZxOjYbRNpwapBy3GSlccso4Re/O6F1vnPtRL4izQaO5LLFS1lAwpUW2FpiQ99ndeZPDI6p/
	TIuLp694+dX1ePbNlU9KLhtUiUul/7/LOfV2xR9R4408c5Tua/LVES7UNdzNK63Ac4+1uOp9DiyWq
	PMpgQ3Sf25G6mU5DDgwAHdyCFbGCXH7zK7yt5Qr7DynOUKZt2+17JYg1gd/jlMH2/smDBLT75NNN4
	AzQctbmqPV2vwB+ItPEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vr5EI-000000049Zj-3qEj;
	Sat, 14 Feb 2026 02:17:54 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vr5EG-000000049Ws-0RKp
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Feb 2026 02:17:53 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-482f454be5bso34271525e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Feb 2026 18:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771035470; x=1771640270; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hpkCPnIPCeuJ8T3n0TK0PZKz3qkGjDrlXnOs3V5iLkA=;
        b=GL7Wp8FSKfx0EIB6LOMbOFE8qiO1U8dPSYHD2nkcc+Q9YhBLNxueIUxouRigDMjMA8
         duoR3Imkp+3Yz3xrceBWBLyIQYrZFTj9alYCKPOgffgQJKo41PaFV3IIfYL3wLvF7md2
         fWN6UeBC8XIpO0ALBzHomIMa5UP3kqVJo1keRa7/yfBiErg9b4uNL1y0lDeV6PA1T6zp
         1vVBFH5eCtiWQ+YK1PuvZSbEzD5UZ6Ajgg0ZIIngf24P6qPNsjpaOx7fFaaSLfzC/gO/
         S89BJQoSGohaYN0GvY0+akLtqHl95WMzOD5p3c1G1s6o+4s0YrvCrXF2nEzF6nLeH5Dz
         hL+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771035470; x=1771640270;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hpkCPnIPCeuJ8T3n0TK0PZKz3qkGjDrlXnOs3V5iLkA=;
        b=JJSTVGImTuSwdwDo01P+M6mDsO8APbOThmchViRfK7Wlmv4MzQxs93elZEmPNddnK2
         P4uuRhkHLne+ZiFKI97ZPfcuxA3fgPCPLhoVndsu35/GlGU2E3k5KWIFWrUFtoptFV47
         JS8+rxoS4MQCrJa36W0BGGwp2LmJrASla2WwFhthu9M+IJhoJKhRPkocyuyHOVsxpwxb
         An9rmIvn98riSQR7pLyo4d67mdzOD9xDBqjks2SnXX7gWgTO58CJQRi7Povmyx9fx4rp
         +q2oeSe5uyWnqzk2lZWbrqMY27NkeIlX0cUpgihaBdLN0K2uQ/tA4R4aeou7Dkecivel
         n+cA==
X-Forwarded-Encrypted: i=1; AJvYcCX2SrnwdD6v93aXKYu2vDOY8Nr4/QE9Wpb6kPK25d0Xfdt9CSNBt8jns3pPKyksI/YS+TOVbtvKmsXPVBOhiA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4s2fbDs5vIdFLmPeZEShCN1/jU8K1RWdbepAqWJrSQOBJBpyd
	zJ39mpiy7XTIy+hwWZnJWbsb6pp5rByMD5/IVYj7hOzxBZy6GdPemBk5
X-Gm-Gg: AZuq6aIJSkx7KzvgMZKd1KKkM9FU0mDwc7R5WV8y6f9k4SytqXAmuf2TS1xcnv01TPh
	HHUKyUZDq+wbJz01f0X1L4mVaJgFQBZwQ18MO0BCNt7ks7EiQ+VgYfFeO3rndbvOmOZZa9Ctta8
	+Eno4O5DH+mkMifnUUm55yU3QHfqPr5mUfOpxOAimHx6PjcpiZV9rYuOGFIzcAVpOnceZr7hxyl
	UN5MzKfUfQagVCEcbaD8sSBcBshxYGU9ulodQ1EI1zdyZvRbzbiGiWPlSzC306ysg7DzJ2fCnGW
	fTnmi2TZOC9tvoS1d3f/P0Lu8tUjA75ANSAphEEIrzcBJHzPCh09kWb2wQse4ey3Jr+jdDiG8bL
	ZY/EyqGFcJOl2qmz1R2e6JLtyrFwtxh2zAWGttHWI/fSCh6uZnHXutswYtnYQo5IxaL/oTtdCah
	mzDGqMxy9vPWSNYRN7mVsg
X-Received: by 2002:a05:600c:5251:b0:47e:e2b8:66e6 with SMTP id 5b1f17b1804b1-48378da3e01mr31119965e9.14.1771035470027;
        Fri, 13 Feb 2026 18:17:50 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a53:6b71::1002])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796acffcesm8608308f8f.37.2026.02.13.18.17.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 18:17:49 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	andyshrk@163.com,
	jonas@kwiboo.se,
	Jun Yan <jerrysteve1101@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 2/3] dt-bindings: arm: rockchip: Add OneThing Edge Cube series
Date: Sat, 14 Feb 2026 10:17:15 +0800
Message-ID: <20260214021719.620752-3-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260214021719.620752-1-jerrysteve1101@gmail.com>
References: <20260214021719.620752-1-jerrysteve1101@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_181752_162594_40F617FC 
X-CRM114-Status: UNSURE (   7.37  )
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

Add devicetree binding for the OneThing OEC and OEC-turbo

The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
eMMC storage, and supports one SATA interface, one Gigabit Ethernet
port, and one USB 3.0 port.
Among the lineup, the standard OEC model comes with 2GB of RAM, while
the OEC-turbo features 4GB of RAM; The rest of the specifications are
identical.

The OneThing Edge Cube series (shipping with the vendor firmware) is
originally designed as a PCDN (P2P Content Delivery Network) device.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ae77ded9fe47..292fa0bbec93 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -813,6 +813,11 @@ properties:
           - const: openailab,eaidk-610
           - const: rockchip,rk3399
 
+      - description: OneThing Edge Cube series
+        items:
+          - const: onething,edge-cube
+          - const: rockchip,rk3566
+
       - description: Xunlong Orange Pi RK3399 board
         items:
           - const: xunlong,rk3399-orangepi
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
