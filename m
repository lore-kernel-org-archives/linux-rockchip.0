Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41EC6EE6B48
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Feb 2026 18:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRrQq8ojChrE9zUpQZZFAFsJtz4SOhQ+n8/RyGYHQFA=; b=NwHOjbMotZOchV
	KYednNdaoG+gqqvgrKz3vz2L8KJFeF8kxj2jC4ioAXcCRAH/FwT9u++p8/ACzj4iPfTO5R0Mf/TF6
	ChXSro7s0K5ZgK+al3yCL6pS+VfP6xUjbObt3mAsIIXIIODQqIM6+1J/RbC1hAI6Vx0iOtuDBO/eo
	fXULBttyMW6DL/HJV1ZWppnoqdMDdGl9/7/TiwKX9NiY3Bn75WBlajhezNz1ZfylbCg0cCaw6luqj
	4vtwsTYEMAB1lmg6zbIId4KJXQru/0C+mV6Nd85Y+p0gCQHpjTdiZVo+XlxoYHWrLxAaBROteOuTx
	P+5AKBMzR75MFQoogjJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voQKz-0000000BfAg-2e8E;
	Fri, 06 Feb 2026 18:13:49 +0000
Received: from mail-dl1-x122a.google.com ([2607:f8b0:4864:20::122a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voQKt-0000000Bf0F-2hzo
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Feb 2026 18:13:47 +0000
Received: by mail-dl1-x122a.google.com with SMTP id a92af1059eb24-1270adc5121so643477c88.0
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Feb 2026 10:13:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770401623; x=1771006423; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tgXGBSZoBFQqX1EttjH60dA2QMgCjVJpHFXppYJ+DT0=;
        b=QYHDkZB1tGT68fXm/AnZV1ATCrrRLQJHjX77hkIT9DM0s0JeJRJJZX5Grf17hG8iND
         ZUR+wQt1mdVM7T6+oMgCYCbANa6QGfXskE8lnY/slFRuB4L65/Ki9sHM2zyvWAV6jcxL
         wxAgaNUOToGMn+CCe+53il5j6i4lEUAzticRgYA408laelRKaDgZCiFOXRhqA74LlEi8
         hn7lTsask0ixH2184VT+lRGAohXyiilAZAKSkHE3Jtflb0+3fZ8uCULlZX3B3kBHBp0C
         uIg6PLdUQj/1uVDb3Q+TV6xMuB1kjVF7sg9o4RbiK4TgGxPt+OGqNrIhaeuX1r9fJKvQ
         +AjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770401623; x=1771006423;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tgXGBSZoBFQqX1EttjH60dA2QMgCjVJpHFXppYJ+DT0=;
        b=DL6dFsBM/HAxEpSbA9/ZcQvaOj6njnV+IGIJShb2RvxNzf2kl4U6li3mTJcIhbD4h7
         gaBnk0P58/eFpYab2TrqoTMxMQejOMKy6wCVK1Yzz0zf0JH3w4LiN+pgjkXdnqvnbHdY
         2x/vO2WHpPYKRBPF6tPKc3kKac6eCe84XSXrbM/LeYIMj6p7hfPjjAmV4HRvJIuDg3UA
         +/6DUbhCOXnNW4aadan6jp8Ueml5oszWHFeo7aiMCeVN6oM6pOoSJUp4rv6+GpAtxy/p
         m3LWqVTzFI6VL6p8MjM1qx7G9Rj+yezef6i4WigsN/EzN3sBztU/9cw/fckZ6o1lUzay
         tB2w==
X-Forwarded-Encrypted: i=1; AJvYcCUsqdE27yuKFC5rZU/rkQaxAWHu+/HpwV9hzjbwk6H/8V2wjIbEa05Y0o3UuI3943BmmAfXzj7wR5M2iM/+tA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxalLvAAAkHIrwVtsWCFBF4QZAyMiYLADD86IMv3Tbs775ufw66
	MblO3CgsMv6lWvBkRt8jb8PoBwKCCVloAbPeoqaYRX43MDEMefjptrbV
X-Gm-Gg: AZuq6aJFPtVK8x+46rYBGet2AgosBTCccOekQ2Z33t+BmYSSxqTBgfTOIfe9ULrT+Lu
	ZQOvyNIVKaPZpOmihVKifwvVN6RE4ICsdu4e00YlQp6gLVGIQfzND4go6XYCVtoqx5UieWqVLwU
	0tqbzTVYwP0PCWfi1EsTg389tYSBrLXBVaZwk8njsRS8ad3s6wsSwIrj9voIjxofhS9ag5YEZnj
	5YfWaPnAY21E8njP8nrAEpcd63Ns0AyxF9UayhYEEOGJdQJ66yxFtxstgDl/XVB4awxFOJbtjEi
	0cKOnKh0tFKB7g94r1Cga41JvIh7987Aa5XIxxhWKOGbB6BTy7U1n1b2Pr+AfVgsBofDKzK8RTD
	DdNrQ+XjeipqIOfJg23Y0RCiCfT8W8eRBqzuYcPxmWmiwqAnPif5ivv4tf6T7nc7kHug3RTPxjA
	v2gcb8vAEOCdKgoPxuog8CO355X/9cybR1V3o=
X-Received: by 2002:a05:7022:49a:b0:119:e56b:98b9 with SMTP id a92af1059eb24-12704048c3bmr1984751c88.32.1770401622642;
        Fri, 06 Feb 2026 10:13:42 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:44a3:2bb7:a035:fd7e])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1270433ab31sm2782500c88.11.2026.02.06.10.13.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:13:42 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-serial@vger.kernel.org
Subject: [PATCH 07/11] dt-bindings: serial: snps-dw-apb-uart: Add support for RV1103B
Date: Fri,  6 Feb 2026 15:13:05 -0300
Message-Id: <20260206181309.2696095-8-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206181309.2696095-1-festevam@gmail.com>
References: <20260206181309.2696095-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_101343_683794_BA4F7E57 
X-CRM114-Status: GOOD (  10.11  )
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

From: Fabio Estevam <festevam@nabladev.com>

The UART used in the RV1103B SoC is still the same dw-apb-uart compatible
type as on the SoCs that came before, so add the RV1103B to the list
of variants.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-serial@vger.kernel.org
Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 6efe43089a74..685c1eceb782 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -71,6 +71,7 @@ properties:
               - rockchip,rk3568-uart
               - rockchip,rk3576-uart
               - rockchip,rk3588-uart
+              - rockchip,rv1103b-uart
               - rockchip,rv1108-uart
               - rockchip,rv1126-uart
               - sophgo,sg2044-uart
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
