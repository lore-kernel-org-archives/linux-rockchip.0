Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CF69C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 21:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2IDl2FkjZEBPwQ5pHswXc8ubhUpS4UE95Fg6g0YhE5E=; b=jD0VE9QM8G8pXI
	41IhOGI92G7dQySFwgidK76idoj9qXdJkub2rafGTTuI06FBrtdKxCTSfiv/YfiQE6woulv0XN1Rl
	0aKfZsonYnVu3lIUjGKhVLV1AJDMz1wWpxPrDCJgcZb+iFCe75CTWIFFXI22Ptbk38mGqi1PPXxtB
	RfSZCz1Mxv5rE884o+I5OCEu8CtfdlOzHaB3B1TlsHUogNdLRt77500q/sLg6FpLn9dUi7NJauJjT
	JHpfIUpVpTSXNS1Zzp9M8O8Cew4i7tWmo2+nh9BsRzf6gu08vEu28EnqCttrhMdvEL4oHRxEEoBpZ
	XkDh41PS/GNEbXRbHMhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Cus-007I3P-15;
	Thu, 09 Nov 2023 21:50:22 +0000
Received: from mail-oo1-xc2e.google.com ([2607:f8b0:4864:20::c2e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Cuo-007I1y-0H
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Nov 2023 21:50:19 +0000
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-5844bc378feso740173eaf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Nov 2023 13:50:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699566616; x=1700171416; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qOIInztUelC8mrrk/uWmLptClIvVfVoKK3NnyJG316E=;
        b=J+3UbNRm88LmpMva6sEmnK4rQimi9ux2KZ8s8hzD2b67EyDhXlJEnUdbl1dw855f5T
         jj2YXmzYX/NlJ873MIpHbcSL36kzdySGXWTXLMqKoMANrb3aJTqJgC/jsRyECOKZlEfa
         8aXzVq5RE23shkiHCFvqfP8+eLtAAlL0JrzZgIesOZJV5lGyaakD54/RBqKdCC4lXLEb
         3+u/PpS5kjeqwBMKu7/1ZsaP0br6wEcoWckgR0s8TeCjgkEyjE4X4S+CtRxt7bp4EbiA
         Pt5LVROXHSjFJMEfvMOUzXUvT7tKb7WEHrjOmOxCfueXgKo+Vu/t0wH6O7EcBYgrxeqq
         444A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699566616; x=1700171416;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qOIInztUelC8mrrk/uWmLptClIvVfVoKK3NnyJG316E=;
        b=c7fCAbhCYttoFMxk13DLHAXnxJGQGBjomfJ0etdsry37IaObmvsXI4A6cWq7YmBND2
         r/QDQOKN6AVfRrGToSh02fuVuFjg1ueJVY0+Hg8APAnlGf6JheD37wqUo00IKc/5l2dE
         MPrk+GO61Wm5R6wzPZ8FwbvDB497ksZxnbTbc+7bPehC3D10ZS2hz2G7hFSPBF7hnZnx
         Jy8FfVTrVrSjh12QrHpooFCW1ghhaE8NuYF/eMH10bDIX/6YAbQhFgX+I4+j1ZZ1SQsT
         Q7u4lLDDORYuFQVR6L9M6+KTLK10e+wWHDBKHlEcb6pmqz2Kipeqlj0nP58xaELVs4Bs
         1Pig==
X-Gm-Message-State: AOJu0Yzw3anQs/fEVWNXoWMVLjd/RXWd5lXxLc0fp4qQUK6veSYKDmHq
	QRHfWBe0jD5jlc1WKThx2wogbONOar8=
X-Google-Smtp-Source: AGHT+IHkwhRJa6UQv0a+N/kr01xqCaRwiUsLDnT12DrqEx72ojhNPbns7tXYrlhU6YlgyYlLVsA/qQ==
X-Received: by 2002:a05:6870:72d1:b0:1e9:bd5c:ae38 with SMTP id o17-20020a05687072d100b001e9bd5cae38mr6871083oak.2.1699566616706;
        Thu, 09 Nov 2023 13:50:16 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id tp22-20020a0568718b9600b001d4d8efa7f9sm864003oab.4.2023.11.09.13.50.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 13:50:16 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 3/4] dt-bindings: arm: rockchip: Add Powkiddy RK2023
Date: Thu,  9 Nov 2023 15:50:06 -0600
Message-Id: <20231109215007.66826-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231109215007.66826-1-macroalpha82@gmail.com>
References: <20231109215007.66826-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_135018_123909_C7996397 
X-CRM114-Status: UNSURE (   8.83  )
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

The Powkiddy RK2023 is a handheld gaming device made by Powkiddy and
powered by the Rockchip RK3566 SoC. Group the Powkiddy RK3566 based
devices together as they are both extremely similar.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5f7c6c4aad8f..5b015c4ed775 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -674,9 +674,11 @@ properties:
           - const: pine64,soquartz
           - const: rockchip,rk3566
 
-      - description: Powkiddy RGB30
+      - description: Powkiddy RK3566 Handheld Gaming Console
         items:
-          - const: powkiddy,rgb30
+          - enum:
+              - powkiddy,rgb30
+              - powkiddy,rk2023
           - const: rockchip,rk3566
 
       - description: Radxa Compute Module 3(CM3)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
