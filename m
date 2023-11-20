Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC3B4C2BB3F
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 23:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sQRfhvRGEOL6HQ60S8rUJkBwp3El/WhbOvetqc9U7o4=; b=yQTyRv0rTyNILR
	SqUf7t7tHXYZYjSgaVWcuqu0C5FDdQLGjMzOfjecMeiwSIqLAJDXYn/xaOYn/Fo3floaM4ixtN0Bh
	wKvKPAhm4HeKje/q+pcNfJ72hthP0WrYiDfrxFnUbsGWP7w1nGveLBpkhMl7jV1fCJUx9zm0hBAuA
	S6bJtDsMHL/HVJa4FPo7+9yKkpnItzhqXzhsCF4nR9ScqSOueXbcf6m3rdYZxZb/Dfx0bq6b7KQGg
	DMU9A7fVZynSl6wQd1cm4+W5OlDQMH14bRL1yvEzBQqmxa7pztemRpUk3Lb5hcWkp/OPhWTkMy18G
	thFt51jHxptDr+qb+2oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5DGx-00F1j6-2p;
	Mon, 20 Nov 2023 23:01:43 +0000
Received: from mail-oo1-xc34.google.com ([2607:f8b0:4864:20::c34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5DGt-00F1hZ-2x
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Nov 2023 23:01:41 +0000
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-58cdc801f69so443396eaf.3
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Nov 2023 15:01:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700521297; x=1701126097; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5M7lYo4Yr50jb2FRZKTz2v0y4dLmO/a9d97S8ykJeVQ=;
        b=BOLPmOOOmneEJE+1NtIV87rbX34HHGNzAWT7xo979blwKV3oFyJJYwgTAG6B9Q2uD2
         dnO0Q9wt92UNhx3DzdSxKkqUUW7HINgPnmPj1e1LM6SVcZnL4GTncfiRn0pm68MjKA1K
         mPYFDvEpyHsSUf6zNJQOtjHRPjwuMeAHxx/6rK+n+gN2l7RY0IT5thoUvLPJTaeSj3wh
         u0+dCCcog71dFfPBhU4bXEcMU3Nx5LO69z61nn4YT5a6ZIwPWdXddDFJEiEPb/MfIw9K
         qpwdOX1eZ+Iu5sYY5KNwRnj/YakIDrAVi8wh9dl7zmY4I6vo+hOIn+aeRKViKYziy2k6
         EH4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700521297; x=1701126097;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5M7lYo4Yr50jb2FRZKTz2v0y4dLmO/a9d97S8ykJeVQ=;
        b=IWBbsxuf68Tnbe4LJPl8hvJ0596vAyv5PbD42/KTpwyDH5w56x3vJwp3ShVpjYVhrn
         jpJo2YAjdBFypCyJpO8jY51zxwZUsxlq0j4y7uQh9vXzMVFiIVfChCw4IVGyku8WMVn/
         nK6gZ9eNUVfM911TL33dMvUcS/aVwEOb8deRBuvtvFaN2ne4LmOaup/bfSUnkDoQGRDI
         byPJcZt6f8E2Y3XYeLYlxPDSEdNvNk7+qzjoyerR8/tUtVLN92DTga+Reo6C/LAjFHGo
         gra4o09SY0k39g0bTBLpxDOfal2Sh0MfwAxlNJMLWStS1Lj7BPFvatFKdoGoe76Gu65e
         SU8g==
X-Gm-Message-State: AOJu0Yx9YcA0BzpWbbtksXCitlsX1QkWbCrz6+hEl1ijN46s9GGeW24D
	SNfFPDEti6uCTLXX/r6UkyM=
X-Google-Smtp-Source: AGHT+IFAinXOF4aJTKmIDFsYA1QFr3uwwKqd2JUD66a3fihV7RqOl5glbl1pCVqe3tP02idp9PDdsw==
X-Received: by 2002:a05:6820:2217:b0:581:e750:9995 with SMTP id cj23-20020a056820221700b00581e7509995mr10173747oob.3.1700521297284;
        Mon, 20 Nov 2023 15:01:37 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id g10-20020a4ab04a000000b00587aaf6add7sm1545117oon.9.2023.11.20.15.01.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 15:01:36 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	maccraft123mc@gmail.com,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/3] Add Support for Anbernic RG351V
Date: Mon, 20 Nov 2023 17:01:28 -0600
Message-Id: <20231120230131.57705-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_150139_970086_915512CE 
X-CRM114-Status: UNSURE (   9.11  )
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

Add support for the Anbernic RG351V handheld gaming console.

Chris Morgan (3):
  dt-bindings: arm: rockchip: Add Anbernic RG351V
  arm64: dts: rockchip: Split RG351M from Odroid Go Advance
  arm64: dts: rockchip: Add Anbernic RG351V

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3326-anbernic-rg351m.dts   |  18 +-
 .../dts/rockchip/rk3326-anbernic-rg351m.dtsi  | 478 ++++++++++++++++++
 .../dts/rockchip/rk3326-anbernic-rg351v.dts   |  44 ++
 5 files changed, 529 insertions(+), 18 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351m.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326-anbernic-rg351v.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
