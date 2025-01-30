Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87A36C0218A
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jan 2025 18:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/rYHpdlftqj7shcWhOXy4WVK8+oaQyghDa9obZuVr5M=; b=AHLgUuLsn4bhUe
	d2vvxKC3FbciUh6+y8apb+FeAeVxE+CjUgQBKZ0qwawhhyZmSUOUIYmEdmjl32lFXfj9fqs581MKH
	9K0PpK8f+pgILQrbfp7emqVGxITes7yZDR0sAFMLzU6KW0xmUDdRK+SLJNkOJxChBisdWV3AyjRt7
	R8uMH6a06jTWTH5x0TgVLEepSKWt4dqoVrVh5lQPeOmXsboj0Cqzye9EbPlAlQCmGMf8UDUBlzL2U
	R/KTKY7P42+B0B5GoIMS8Q8iOSpfr0hJKfsSIQ+xFE4ju2jY/5Q/NEcHdre9hq1nDsT+fk6mIf4pp
	w4RyAIR1Pset9mzOHq9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdZ1r-00000009Moj-1UBe;
	Thu, 30 Jan 2025 18:12:39 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdZ1o-00000009MoP-2IZM
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jan 2025 18:12:37 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3eb7edfa42dso601140b6e.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jan 2025 10:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738260755; x=1738865555; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YdgoRXrSyl0SwNYeJOkfBySm6H0lmfcmHgCdqCIPMvc=;
        b=M12zw8TKm8mWGgSn3dSljgfrQkiU6PwqX9lcV94Ghb0clcf3MH790AwCPMZNTwJA57
         iPeXDoHmN+Lo7S811hGn9G3WN4+K/P4jTk/EZHSyQCcew8SgGz3xly6k19tb+hA0mvFu
         OSoQQEl+jbAh2s6kBBR2rmkRsNDclBX9/4BVxC4M7qtE/uTs6gobMvEDlYNxLNcO1JPX
         EF+C6rDgiz/w5+qfqHiQon1zNdxfOW9NA6Srk+KCgiXIVQh9Xm7tNZE3z36wd0Yrk2uy
         IhM/XqNZ7aA3iqYorv7vQ6wnFva4nTFyTsHibN9hDO+7N8gEh+AE+QHO/U2j8BXfu/YU
         nDHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738260755; x=1738865555;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YdgoRXrSyl0SwNYeJOkfBySm6H0lmfcmHgCdqCIPMvc=;
        b=EMCTa1LM0eteBMtjqFEf8Mbv8EuAuJbTCQiu7bLQW1lNt1wpgeqALvcQlhzOm1kh3u
         G8Z0kW3Dfzg8Ynx6vo374Q0x3WvLk4uW1ahSrpWbb3I0FYxewom4M2DVQq2q+Gz1WIVK
         kLF8xBrZbng8GFNUpYOSYOUt+7ZrbqY2EgXcUQeS5nfVGMwVaGSfOx2YjUi2lDaDT7TN
         k3ll5knZolPd+x0W5UV2ofpj0ORDel2XyFLmRKQHzKbiP9qTEBl3xSMUunffY8mQhTaV
         VrZIgbpBUKmzq1TYMsx12y1sc+pwXHw/DjSzOgTEqiBiYy7HTCaLXux/1eckMvgeafNk
         oqDw==
X-Gm-Message-State: AOJu0YwPVwT3STbIvwz9rHBKSP1asZqua2u328B4siEgPxNKk+tcKnot
	K9fLl5jzYUSVK4MU5GhWNh6wsxYivn6ZupfGeyAD+bQECn/vyO2FcmaOLA==
X-Gm-Gg: ASbGncuQ8ORYipUrbNsidvcyjNcLDcpMOWBEC/Z4sImAbUiQZUuI5J8mYumfh24jwox
	eLp2FpDH8AN+RwYw7LlCRFjRe7obbNyzMzfYuhe/OaIj0DT9HHpinFjjkgE3Sxvn41ZVThtmZd9
	iQfnMbEUFJgbNrNQEhMdR86xC6itSGpBCTDkGjm+fh91r6v3CiJoI+yjmxY/r9v0qTPpsJ8KTly
	JI3WzLaxyxqtMejjSbChJyC/Texig8GhAYbCnUxlYN8jd9mEYVzsCYH5ArZi3fS9mSWb8YPU2JC
	P6CT7Gfydhs6VTTmNiNw4W6w0wWdEwCRIQ==
X-Google-Smtp-Source: AGHT+IG3X476Qe4ZhR3dKakKXmR/cepO4ChjuYZ8JVda/dOuLlEJ7k2TmI4+KjouWgpNJD/6WhP1bw==
X-Received: by 2002:a05:6808:3307:b0:3eb:6dd3:12bf with SMTP id 5614622812f47-3f323aefb5amr5504069b6e.28.1738260754990;
        Thu, 30 Jan 2025 10:12:34 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:7478:d882:8d68:2fb])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-726617eb233sm427110a34.35.2025.01.30.10.12.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2025 10:12:34 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: remove rk3588 optee node
Date: Thu, 30 Jan 2025 12:10:04 -0600
Message-ID: <20250130181005.6319-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250130_101236_610308_702490F4 
X-CRM114-Status: UNSURE (   9.84  )
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

Remove Optee node from rk3588 devicetree. When Optee is present and
used the node will be added automatically by U-Boot when
CONFIG_OPTEE_LIB=y and CONFIG_SPL_ATF_NO_PLATFORM_PARAM is not set.
When Optee is not present or used, the node will trigger a probe
that generates a (harmless) message on the kernel log.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 8cfa30837ce7..245a6cabdc8e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -358,11 +358,6 @@ display_subsystem: display-subsystem {
 	};
 
 	firmware {
-		optee: optee {
-			compatible = "linaro,optee-tz";
-			method = "smc";
-		};
-
 		scmi: scmi {
 			compatible = "arm,scmi-smc";
 			arm,smc-id = <0x82000010>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
