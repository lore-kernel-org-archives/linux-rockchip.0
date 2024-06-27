Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E418BC2BD09
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 21:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EXgcvSpc4x58nrysdBzmV8AVz9SVZ/qWi91+WWRG7cw=; b=LNgggSn9jNbJf7
	9jZjjWnaKISJb2lgkGYEVFP479tBYZUggHv7YVxtSyZ7M4bUcMUVT6cjE30w/K667O+rHGcBh09tA
	VgnKp4Gxk37aWtmmwC8T6J66FHGI80DBwN0e/XZsvnhEK8RK9ERf2mGrJ0MkTh2h8kHq2un6TjCfg
	c2+wnRnnmjAqtDaRozjgFSJZqJilxqDvV1TwcFzMxE30BXLoOyHEyFwnmW2ZAhRFtfaNKMQY4stjP
	LxDKqUTekPVIxTq+E0Yfm8rL4D6XIu50JHKdSOjofcUM90SKGfAFSx4hQPGlo19+7xv1X2Uh1CCjZ
	YJKFMSyCLnnV5qHCeJOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMwVD-0000000Bjq0-0PEv;
	Thu, 27 Jun 2024 21:17:59 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMwV3-0000000BjnI-0e2o;
	Thu, 27 Jun 2024 21:17:50 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-57d07464aa9so2314096a12.2;
        Thu, 27 Jun 2024 14:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719523067; x=1720127867; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xnk9uIadAbA+bBaIfSx2BcakWTRFKYQJDJDqca2A88I=;
        b=ZI07PDjdPypY0jnBw5RhRKNxVx+Fwm67SdOcduUjJEW/A5fSCgkwcKQrjfoFSV8FG4
         iRLChwLG51KBxoDXfLRXlOl14VqGzivMLtDOYj26HcEA11J6izuDxR8wPxIWhGrhvHT4
         co57rH//NIuISk3lktHGe/OaNj73anofRz2gcHphTudkJKQaq+YMToZlh3DWUQoWLVPh
         3DnKsLIRGyE8ZMMrtVXXBtfS9OLOFHw07jxYhdDuz4jtiPDCfoXGTkBJWAGikWMRzUnu
         zYepOQ9jyDXvEAxj5klBUIctNHnpddOiPR5AE+3p+QmT0zMpYifQt6Rbz0mv2tLSrx1+
         kxsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719523067; x=1720127867;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Xnk9uIadAbA+bBaIfSx2BcakWTRFKYQJDJDqca2A88I=;
        b=ZK6oKtmN8XSMZgGs36N0UY1yC35jcNElGNOmDTIjr469jZaHitu20rI3zDU7KElW58
         prQ0JtA3cjeaDDf3l6xmzea/vNvejNhF/dGmq97F5ekuKcG3/r4Z1hf+A0I1xeH2TODD
         yWe2FDoscn7b9KHnuUPf04uyMfSXOTBKvG4ZKhRfesDtzc3XURpgINzaV4J8qCA1NRaJ
         kvUCootFMeAPro1SXKwwhPZfoCJRjnc7kGoBm7Pu7cpHd07Qnx7W1MRbQ830rJfkSrCH
         4u3qiob1NRPvwM5SYSIEGMT1X1hUYEJm3hCUWerE5KuB9/QO3DcmsQDisocb2coLaXT3
         +Z+Q==
X-Forwarded-Encrypted: i=1; AJvYcCX76/UwpWieyqYnxrLHIfXeNvmvdibq5xxcDJx8pc46SaJA1jCzHM7g4CGKckbr/AFk5L25WdAV8LEjb/dkNi6iapwLyOWfrxmsromm0CfO+obUO1C/eChRijg+atfWmQTu73LfNsgBTxXMGaOqunf2++qIitjc1Qg=
X-Gm-Message-State: AOJu0YxIa8fDHrc2kln727d5CDK4dLSCG5QZ6v4WsCtmRLvIJYHplX8n
	5iTSHlUfB9OoUfU2Gp9SypwgaEvk07cMuiPEAfQdmLa0RmlibHNx
X-Google-Smtp-Source: AGHT+IFbtDNlgX18BHhhHB676dlMxYpxY2uD0IhAomzWeFynNtXKV2BsDI/Li5O2s/tR5bnwCUFTRA==
X-Received: by 2002:a17:906:c309:b0:a6f:64cc:ca2e with SMTP id a640c23a62f3a-a7245b88e46mr977230466b.44.1719523067016;
        Thu, 27 Jun 2024 14:17:47 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? (2a02-a449-4071-1-32d0-42ff-fe10-6983.fixed6.kpn.net. [2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a72aaf1843fsm12647866b.39.2024.06.27.14.17.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jun 2024 14:17:46 -0700 (PDT)
Message-ID: <6f21c09b-e8d2-4749-aca6-572c79df775d@gmail.com>
Date: Thu, 27 Jun 2024 23:17:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] dt-bindings: clock: rk3188-cru-common: remove CLK_NR_CLKS
To: heiko@sntech.de
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_141749_227562_7AFB3CB9 
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

CLK_NR_CLKS should not be part of the binding.
Remove since the kernel code no longer uses it.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 include/dt-bindings/clock/rk3188-cru-common.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/dt-bindings/clock/rk3188-cru-common.h b/include/dt-bindings/clock/rk3188-cru-common.h
index afad90680fce..01e14ab252a7 100644
--- a/include/dt-bindings/clock/rk3188-cru-common.h
+++ b/include/dt-bindings/clock/rk3188-cru-common.h
@@ -132,8 +132,6 @@
 #define HCLK_VDPU		472
 #define HCLK_HDMI		473

-#define CLK_NR_CLKS		(HCLK_HDMI + 1)
-
 /* soft-reset indices */
 #define SRST_MCORE		2
 #define SRST_CORE0		3
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
