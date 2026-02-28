Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90EB61048922
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Feb 2026 01:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NKW33QQGp1J3hRIFLpv7y972cgVUq4a8B8X8I1D0fgc=; b=DZ3xZRPY4uEsfH
	AvXU7d3VC3/xSQbQlJqXhwwwItgIKJiizauiqvcSkb71s7oQCJlC+JratVydzrte1T4zQ7UYLlMy4
	eunbyq5ERyc2hFU489jlgjSpdJXMCC2VAjDJf8myxtpDOu2DabWHSySbXdD07+P4vFipHvjvBqQ0N
	3VZRuzwhjSHFmt0YR0V1gfGs/Hrg6h/q7ccY6HDizlF9LaViKjwUFkytpI1OreRqR1I47z6w15rJc
	8I/49G1NF2ozRtdH/zsvdxgu6xUPj/rWXzOZQH0z7G1SA05VwgD410P3JsjB+rqcB3a1jAkum7w2Q
	jJv6YeNAKmLk1iuKQ6ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw9Cl-00000009OWd-0BOQ;
	Sat, 28 Feb 2026 01:33:15 +0000
Received: from mail-vk1-xa2e.google.com ([2607:f8b0:4864:20::a2e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw9Ci-00000009OV1-2oB8
	for linux-rockchip@lists.infradead.org;
	Sat, 28 Feb 2026 01:33:13 +0000
Received: by mail-vk1-xa2e.google.com with SMTP id 71dfb90a1353d-56a9a7e762bso1972898e0c.3
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Feb 2026 17:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772242391; x=1772847191; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yacvo8FTXmtUK6kvMPHtNgDomN8fLaxrnZj3UqvDkYk=;
        b=bMPFuyl7MuDvLFgD7ZKxjb19ja1zz9O/0/3yDrq821T/I83g1VhWta5EUymjpGo6PM
         JQ9JOlOfxQxr/hOzXHzg5Rwq5Iv/ltdEbxIO8KkbXDYS+qnzBM85MsuOVYVGyC6GB7f/
         jMwRH22W9DxqZYCMFvNMGLa7DK6iWQjvjpZls8hYxTzUs+T57cLNzmnC7I81GyqLriao
         +wGL5hab8uPBl1lRPxytv3InFxtnWYF5V/Hw1ZL5PS2tfKA4ZQ+cUOfnKXNINd15QQj/
         ViJLFMeuJ30a/eG2x7p9qp8nLwBBWXQTer1vCOKGJCTEwiW9wQ2GdX/yVsQF4rZjrfwP
         rq+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772242391; x=1772847191;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yacvo8FTXmtUK6kvMPHtNgDomN8fLaxrnZj3UqvDkYk=;
        b=hMQfZN5uee36mKNOrPS4QL+i4mLbimWqJngnswHueRpFIZbKL4N34EEwR8imhbtGJw
         uPqTtq9kd2tYY1o/1dC6Jr9mAW77MkgY72sbnvDKgHVkEBHmpXu0GrKhmN5angLFrd+R
         t+SVfl8ckGhmwcctwkm/on1kKYoASabuX7U2Dl5hy5CRRzLSs2gCZmP/vEmkvdgkJp+I
         vnRQ5o1t7tsxQiyIznPHSCHWGsqtM5uUcNJ9NbJJaho9P9IL/srOSZiM7izCfSBIW/r7
         OWc65ro3CpRAB3HqeQ42bZyjUZyGIeki3InIvJQ07MOOkKB0Z178SkCwcYtsOWLRwNvB
         A4wQ==
X-Forwarded-Encrypted: i=1; AJvYcCU/Hos4rZ9ANzmLvgf/+R4Go+Bbq7OeR2/zCsPASYnMTScqnhgbpu6elG+5RZgY2Ec/kPiCZRNjb+CCAsE2BA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwKcSWgx7WlnS4jXLgr9N1x2/1eNVjUELxC+6nruG7nJNe9IsBz
	YbmCYc2scvNQ86Ps/OM2vQiEm7rUtshvxGg1MhlhqRDH4IIQ28NXgl3i
X-Gm-Gg: ATEYQzzTMXm9dovuacshrNbIv/58h9J1QG4v961hlhFzxtfCxe8rfWIxVnAvk+aZLfK
	tVeZDPXTVbJkqsdzby5u4jSVAdOb7HCC/PbPoGwVzT66o29JKBSyoPTy7bZROZ/lmJtr5bHmBph
	WioNAhhu1ta5K+Xx/TtUIbfQzzTUvK+0YWbmxK+jY2V3xtQwlYNsv53X5ptGn/NlAWclFg3sAO1
	5vBxJOm/5hDX7rFxGKBNUznb5vAhtU9cu2fVsL1vBPiW1C6eNWfO5Bm/M4l6gSnuK6QzMQjpYPe
	oF3j59EusSv2ggkKv0699z2v99obr2ms6MQjTuZo2B6ZoX8bEnpZHFjbvWTggaNmH5ubp3Nwwqi
	l4+cF9+cYbsx9OgqI/QuF5zi+dbFPpkFJ2Pyjpjdi2/hE1oKFPppbKEXQ8vYCAaXblYfmRH41mU
	hobOaqJYWKe4BIfnhptFaJPM6wqZPRPmsBOXdesTSXplmj2/X4KJvTt9fNx2phXFG8XAPo
X-Received: by 2002:a05:6122:4d85:b0:56a:8c20:2d9b with SMTP id 71dfb90a1353d-56aa08dabd3mr2771676e0c.0.1772242391379;
        Fri, 27 Feb 2026 17:33:11 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:1b3:a802:8875:2e2b:437e:ccf6:b644])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91b8c7a8sm8950597e0c.4.2026.02.27.17.33.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 17:33:10 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 2/2] ARM: dts: rockchip: rk3288: Remove rockchip,grf from tsadc
Date: Fri, 27 Feb 2026 22:32:57 -0300
Message-Id: <20260228013257.256973-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260228013257.256973-1-festevam@gmail.com>
References: <20260228013257.256973-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_173312_715699_21AB50E6 
X-CRM114-Status: GOOD (  10.39  )
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

According to rockchip-thermal.yaml, RK3288 does not require rockchip,grf,
so remove this invalid property.

This fixes the following dt-schema warning:

tsadc@ff280000 (rockchip,rk3288-tsadc): False schema does not allow [[53]]

The rockchip_thermal driver also confirms that grf is not needed as
the rk3288_tsadc_data contains:
 .grf_required = false,

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288.dtsi b/arch/arm/boot/dts/rockchip/rk3288.dtsi
index 4e5e7509de48..4f2c048aee54 100644
--- a/arch/arm/boot/dts/rockchip/rk3288.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288.dtsi
@@ -551,7 +551,6 @@ tsadc: tsadc@ff280000 {
 		pinctrl-1 = <&otp_out>;
 		pinctrl-2 = <&otp_pin>;
 		#thermal-sensor-cells = <1>;
-		rockchip,grf = <&grf>;
 		rockchip,hw-tshut-temp = <95000>;
 		status = "disabled";
 	};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
