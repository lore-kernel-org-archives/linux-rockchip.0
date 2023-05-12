Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F98DC77B7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 May 2023 16:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JvrFw2qRhwlZlsGf2I6RS8sFCxupXjJocxfzywp0hoo=; b=OLPOAlQzit3yXz
	BYXWtq8wal9AuWed9CUzeBA3j6Nw9YTxlDwNg8jCjQAnby7x/a89ct3OLGsrieE/UOzUhZdQf4Pem
	BzfQU4SxymUUYDL4lCFy5HacX74VaEpoCnq2LJoHzCeC2iUqq9ucZ22We38vOtRfCbxYrgnQDcNLB
	eV69KGDYuQ0DtfmqUa4dSefwcHxINHApPj5PI5+GQ/hP0d1+vBSZk0TNxK6vKnTWmMZyapu7l2o4U
	9M7ElBAAz6aDqOvKcAbl1HxlqmpWOAq6YHONVUqHhmSnKUzGBV2A5Qkogb9Ic5mLohmNK5S2JpYor
	YmzF0dzh0SUL7TX7ZjUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxVVn-00CTMm-2n;
	Fri, 12 May 2023 16:20:55 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxVVk-00CTLW-2j
	for linux-rockchip@lists.infradead.org;
	Fri, 12 May 2023 16:20:54 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-ba716790926so1241621276.2
        for <linux-rockchip@lists.infradead.org>; Fri, 12 May 2023 09:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683908449; x=1686500449;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MMVTnr8Vefnpi5C8EzpY/O3BecS6QP6Gaw9C1p/VYIs=;
        b=qwX63S8xTYoMdnB2iIIxSqGk3GwAWs/li2a+p8Df+ITO+547+aXtFfzBCqWwzTjsOv
         xdI0rbvR9RplkWWhwP+W6wORl8JWcTUyQYZ7534Qq5Q36dPtFplKujdZkQwm8hSF7aZi
         HAXoQhT4J5vme6F3R85x5aScax/hKBZ2iqF8g4CvTiWGO/SFslvHddDUmqaCgl8T75Oy
         8MKA+UcAUkbtFcJrmEykBKKTrIy2WRiZhneGYcpUrkRBSP68WXWxADuCCqel/V5cZR5M
         eFRwFKRNyHfx8l0OsWLif/WNDkD1IZG/i1hXBRLucJgThUMgFlvk8DDNtbIo1nBzhi+2
         POiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683908449; x=1686500449;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MMVTnr8Vefnpi5C8EzpY/O3BecS6QP6Gaw9C1p/VYIs=;
        b=bntci8l+DuvrZrUEzHKPTE7vnmDisa3DSOmg/y/J0au7VtHaxYRtP7zghIadIqqL/a
         eMMqYze8OhDjB7F0k9st/IAsgVP67OQzfTZZw8GboRoX98nztuw0KnpSpCooMMea5Gvx
         Z/KWeJLj7O9f3WA4Lfc9QwL5NJgl+NOPOPD5Q91EqD0ECO1yuuDGBoA71kaUCySvs5Wy
         ylYG8OBUt5uY/TamhRUhbpJrH0imrJod4G1QYmVhJKdLM+Gdi3IPHncf5RMbNutVG0H7
         FGZFLghuH8uSXmfsIBwtwc1diA+0v5UCzQ7dW5NS6WqEhBVZAUbxJeoFHl7rI0tWcA74
         bNTQ==
X-Gm-Message-State: AC+VfDy8GyTWjyPK0CfRMnH3muN56PUTtjlg329C+uKELrPLcF1amLNe
	9fWJFBr9t+D9Jy30DCFkQq1ih87gWd04Hg==
X-Google-Smtp-Source: ACHHUZ5lleiTBEjcTQkLpcX0fx6sBkIMc8ts+CFvVp8q6vyGmE2vokPM/dQuFAg0LlsFG13YPu0RyA==
X-Received: by 2002:a25:1542:0:b0:b9e:84b0:bfa6 with SMTP id 63-20020a251542000000b00b9e84b0bfa6mr21839025ybv.25.1683908449221;
        Fri, 12 May 2023 09:20:49 -0700 (PDT)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id s19-20020a257713000000b00ba71e594cafsm340129ybc.62.2023.05.12.09.20.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 09:20:48 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	maccraft123mc@gmail.com,
	sebastian.reichel@collabora.com,
	jagan@amarulasolutions.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/2] rockchip: Add Anbernic RG353PS
Date: Fri, 12 May 2023 11:20:37 -0500
Message-Id: <20230512162039.31132-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_092052_903341_9C3F042B 
X-CRM114-Status: UNSURE (   8.64  )
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

Add support for the Anbernic RG353PS, which is a cheaper variant of the
Anbernic RG353P.

Chris Morgan (2):
  dt-bindings: arm: rockchip: add Anbernic RG353PS
  arm64: dts: rockchip: add Anbernic RG353PS

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3566-anbernic-rg353ps.dts  | 116 ++++++++++++++++++
 3 files changed, 122 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
