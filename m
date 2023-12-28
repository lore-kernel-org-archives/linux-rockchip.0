Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E12EC47073
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Dec 2023 13:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5PIh9CGcrXEBL5E5GTcq8PmKi70XRXePE8vdkmWHoA=; b=ki1dbugFRbklX0
	rn6GiTUzzc63LoW0/G6Y7HDGXv+Rd9aXeYy/VG6tGCK1+SRKf8903QLwbV/JPaVbxlSeEKr4LU3OM
	KM5ybrPIsFTggg6uBhZ6tnCxPEU9V6jMjd16yldwOk8YQY0ylWOkfWp7ckOhvaZzwGFDEcDTIx82J
	LdFMVyphdlB1KEcJ1lJX0p9foc35v8t4p00hzko69ET/G2jVj6kehr/PUIVh2HarSU80LzSXlDsAD
	hzt5CdlJGlxAmKe4Q/a1Q2iz30NEW6iTL3eWJ57KORtnl7cfMH26pLgW+OQczEQVsryEi4C4wyzaT
	0EpQS4m0uvbmx41lBRCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIqG9-00GuDL-0g;
	Thu, 28 Dec 2023 13:17:13 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIqG6-00GuAd-1r;
	Thu, 28 Dec 2023 13:17:11 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1d427518d52so28818655ad.0;
        Thu, 28 Dec 2023 05:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703769428; x=1704374228; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yN/BwR58sjs6Z6HNo7x/JKwvYgjONzYk0BGkAM4zBTw=;
        b=cLVKiqY0VLQI85OYM/ZVmveoO6G/xPEL8hloi9IzE1MVa4LjIriSnvCHlrrlyOD428
         zJBKpuHuQvNDgL3ApOBjq6AK0PItYbmMWpZBQAZ7T+z0rBJjXjIKrP/he7Crr20C2X0Q
         ogtpMWAkOrqDYQOEcX56aSoJdTIJSFGv9iSlkE/NikmJPAaUIwGuqmJR6foAG3KXxDAo
         RPzal1eSy5jghleCYQryLmhF/4TLMwPjO0ZPmEInzJqrWX8u/3rVaYc0K5m+sbsOdZzk
         l/+BGOcG03mUuZ2f7DalQsOWcEKEaKmI7WHQJh13LzFlfOOqGQY3dPsBXsdIhmFytFlz
         4VOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703769428; x=1704374228;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yN/BwR58sjs6Z6HNo7x/JKwvYgjONzYk0BGkAM4zBTw=;
        b=DQeRKXE3f0y0aMXOrBtEjdweOcsVcngPlDEQmYCXMf5jIBjcK3ka+goJiUEOV9tvI4
         nFXHiY/qsnn+QP1Ugyh5JyJAobXlGFIZimxfTWP7JL8pGNUfwFQdfNXBIsmxndvqyeSn
         Nt+DFDl04PKMVXimp3Ff9YOlEgHKWwuQaxzr7PJgZjXoWuCJx7UxwzQ3ub/QNA8I00I7
         lOpSeXON0I9+QzxgiDHFS2e8QWkxzkaAv8hCPv0ZWzCMDRWxA2B3g8MFj80/Wozrkn0u
         DRDZp3TkFtT61Er8q1rI2+b/4ruVtjUOzY6lQKoUjI5PY81DftacSEOPRKTjeS2hYXLm
         THow==
X-Gm-Message-State: AOJu0YyH+w7aQeXYet1WO5vj6MCj8CgX083RZw4sz4vuKFQ0Qe1jUJJl
	a5ZfMWqJsC8KPT2+KZAarGU=
X-Google-Smtp-Source: AGHT+IF+99H9vFulPcHP15rmUhxkM0gfuVWxtxhJUptQjIgcwPzGk7WYL5NXp8Vf+AEfz6qattXg1g==
X-Received: by 2002:a17:902:784c:b0:1d4:7855:cdf6 with SMTP id e12-20020a170902784c00b001d47855cdf6mr3456088pln.30.1703769428408;
        Thu, 28 Dec 2023 05:17:08 -0800 (PST)
Received: from localhost.localdomain ([2408:8207:2540:8c00:3708:559:ea20:9883])
        by smtp.gmail.com with ESMTPSA id m10-20020a170902db0a00b001d0b4693539sm13864221plx.189.2023.12.28.05.17.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Dec 2023 05:17:08 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sfr@canb.auug.org.au
Cc: liujianfeng1994@gmail.com,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/3] dt-bindings: media: rockchip-vpu: Add RK3588 compatible
Date: Thu, 28 Dec 2023 21:16:17 +0800
Message-Id: <20231228131617.3411561-4-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231228131617.3411561-1-liujianfeng1994@gmail.com>
References: <20231228131617.3411561-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231228_051710_614751_22070B20 
X-CRM114-Status: UNSURE (   7.78  )
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

Add compatible for rk3588 Hantro G1 vpu decoder.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---
 Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index c57e1f488..ba41446f6 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -25,6 +25,7 @@ properties:
           - rockchip,px30-vpu
           - rockchip,rk3568-vpu
           - rockchip,rk3588-av1-vpu
+          - rockchip,rk3588-vpu
       - items:
           - const: rockchip,rk3188-vpu
           - const: rockchip,rk3066-vpu
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
