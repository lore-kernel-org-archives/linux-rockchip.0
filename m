Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D61ADC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 12:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m3e16C013s0dejEDEI6sLyJmnLks3Er+Oa1lYNN66lc=; b=MZ/9PNZxF3eenL
	K60v+yTd0xIqhUL4ObKwvOoe8pZ2Whl2ckLLyB4UWwgYRXCRkCSZQIjrGgQHhj5XN5QY2x/1G2aIK
	HTSKxjU713L1NH9D9LuLfjZkQCAB20zA9d1lCrJXnJyPoTP3p2/tb45C+buYLmXdNpUO/tHEaQjz5
	TJKhIFEm7EG+8CeNlGbxhB/kOR1SjDU+IJKSxIwsW9158qzb7ApFlVQRCEfUDr0ZIsPfrnBfUQtBy
	/ys+x2EADpEUR0xqtC04j2nbsIxbq6KnzPna0hV37X2MAr/b+zwj7+ROK2JeaNle6YPIDCbToJMUW
	c5+5tmg3d1xbanlGHAYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PK7-00FhHT-1v;
	Sat, 02 Dec 2023 12:42:19 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PK4-00FhE4-1d;
	Sat, 02 Dec 2023 12:42:17 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a185fb3aa18so558966866b.1;
        Sat, 02 Dec 2023 04:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701520925; x=1702125725; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TrbLqLr6+RIrfdx9hRSNIeKennbFVuSCmM6g07Rq12g=;
        b=NGqNn+EfvMCJrlWzKEVNmuoodI/ILt7yOOTq3ykQ+qBVEI4KM1nGIkLP9NxvA00Ca+
         4GLg49fC67pndzGy5y0n0A69lOGPvwpMg49ek/U+BExnf8qGNJ75seKlsts3+Xt2CJqY
         c423h6WIMp/Vu80jrH4V3SQQcVax9jXPVF/3ExgxlwQYEXAX1ybRVjxJlYjeYoWk/mkl
         6hPWd1D+AnGzlFDr4Vgp1vsGZQ+sprZ7zw3yWlW9IL/Z+ViPWhKsSZ/RLLdOVw9o/y49
         +l9PByVmvzPJ1C0ZktgPGoF3Az9w0pX3KRN1JAEKtZolryE55LGiVzaKn/GP0FMupIzY
         d9Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701520925; x=1702125725;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TrbLqLr6+RIrfdx9hRSNIeKennbFVuSCmM6g07Rq12g=;
        b=rtJeX+AA00bk0ijnRIhkRvdAtzeNMkXOLdMC42vhlQpj9uEEDc7NWauM61DLlaQO+U
         NQV432vtfLvGpDatrP99D0m8DJD6EIIOiiEjZ9RzrLPVOvXcdvUeMFIlIaWF6Dr6RmNF
         94KuiU+eGvfI85bIlOpMswY/BaInFEFF50IhAvQ/yuUrwN0P/lr+wIYFh8Rg9RYuvDZr
         muaDLlt076oMgB7n+xQwJeaiawwv4OTWArCF3G7K+kUj3ZL/aP8Qqps4F9u7jVc4NCSo
         raAR8ZRQ9H0QOXqYOkXWXhZDIhYyiBbroEWTkQryVqWvhjthOU57jPKDcBdrRKsvT4IW
         ppIA==
X-Gm-Message-State: AOJu0YxZcNWSvxX15BYlxvDaP5DDw6cPLtAi5vyjOEnroLVkTtndQuS1
	MVEAH6Fbx94bP17NKmwpKQ==
X-Google-Smtp-Source: AGHT+IGl1ks4h+edw4TgH0EWvsVT5wHukbcnyWRKAZa7Pi6lB4jPRIW6GjJmFSY2FPAI7hOugtYJTA==
X-Received: by 2002:a17:906:5193:b0:a1a:5cbf:4b5c with SMTP id y19-20020a170906519300b00a1a5cbf4b5cmr1054740ejk.15.1701520925097;
        Sat, 02 Dec 2023 04:42:05 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:908e:b829:354b:f8ee])
        by smtp.gmail.com with ESMTPSA id q19-20020a1709060e5300b009a19701e7b5sm3009602eji.96.2023.12.02.04.42.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Dec 2023 04:42:04 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 0/2] Add GMAC for RK3128
Date: Sat,  2 Dec 2023 13:41:57 +0100
Message-ID: <20231202124158.65615-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_044216_546715_F4A086C8 
X-CRM114-Status: GOOD (  10.96  )
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

RK3128's GMAC is already supported by the Rockchip's glue for dwmac
driver, so this series basically adds the respective nodes in the SoC DT
and the enablements for XPI-3128 board.

Note: These patches are based on maintainers repo.

Changes in v2:
 - use phy reset-timings according to the datasheet
 - added rx-fifo-depth and rx-fifo-depth for gmac

Alex Bee (2):
  ARM: dts: rockchip: Add gmac node for RK3128
  ARM: dts: rockchip: Enable gmac for XPI-3128

 .../arm/boot/dts/rockchip/rk3128-xpi-3128.dts | 28 +++++++++++++++++++
 arch/arm/boot/dts/rockchip/rk3128.dtsi        | 28 +++++++++++++++++++
 2 files changed, 56 insertions(+)


base-commit: fd610e604837936440ef7c64ab6998b004631647
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
