Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C737AC88E72
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2026 14:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zcRbgVB2Wi5fdrBbuw0EwFH8bSyIui+b7BVcd5/TImU=; b=z8z3r12innvfuQ
	/HG+bI3Djhbvw6wdIch6YfvBZC5ty0saicuR9D5x3Vg2Dxh2fmLgwANinCjiNc8gNgwayguftddqp
	GJIXI5lcg37cdQX9y6crAzKbwLXLTfA0RmlRP3tzqYB2fqL5wbbOAb7DtTGhXK+U4qhvqOFKuD5ee
	XYaQWpGR/SHxzJJhcd94HFli4Lj4ihwueYTsxOaKSjnOkvKNT/fTbltEMKE7c6bVblKv48N2zOYGG
	zdtt3x1H3BO/MD8t4Dkcbj2KI4ahK0uUdgkCfMys5fVOT6SQ9UhApOTyrhdtCp4rCyNCuJpU8/fm1
	5TRSGVWtJj9Pz/BQW9WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x67cu-00000003yet-3Mbc;
	Mon, 14 Sep 2026 14:25:44 +0000
Received: from mail-lf2-x10.google.com ([2a00:1450:4864:36::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x67ct-00000003ydt-0h0b
	for linux-rockchip@lists.infradead.org;
	Mon, 14 Sep 2026 14:25:44 +0000
Received: by mail-lf2-x10.google.com with SMTP id 2adb3069b0e04-5b899413537so3454547e87.1
        for <linux-rockchip@lists.infradead.org>; Mon, 14 Sep 2026 07:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789395940; x=1790000740; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=yWBz2u9MZyDcGdapPsHVrPMmzYjBtuHU9QqFvO4VM2Q=;
        b=RiF2d1bzw4KVXj5CAtFVpmNCaCgxA35f41mYsrihbPTQg1zTzPixLkGvKf9UIND0ny
         P3BDH3QmNGMqgAEKMpRgS518mB0k4pA9xz0HBG7oE9b4D8a8qFQc04+1OMnZ8g1j++7J
         y2hU05JYP8W5yiMQoaD0I+sY5IYZqtELkdPZD2+gckBcx+FNg5QJNxXmsLIcAmVzsvYH
         wJi246CRuRjaBlDqXBD9Si79qGAC94lKy722/LQJZvSFeR7ur2Sn46lQTZuhDB+FOSBV
         xh+FpMHjtp2SZ8bgZyzRLYpcgXmAX67l51BHjOiTo7XlvVpSrS2nW872FKIwc+GTysfq
         BjEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789395940; x=1790000740;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yWBz2u9MZyDcGdapPsHVrPMmzYjBtuHU9QqFvO4VM2Q=;
        b=phK8SZl4u4pqtSFAA7Dp8pYIvX6uPIymM8vc4divkDVxCd1OV9V9Swa5yXuToPw1p3
         qXZJfLZOiBfdjkDRG5h9IQt668hlAhucmQOsdOa2MFgoRge9Mhi4ShfVUEZFN6UZmYI9
         J6jPwD0T1HqFEUFFHmz+589CGPG6GfTsK/OOnHSufidVHdjKY/w7/fLtnpr3eBJ0AXwO
         PiE1+F7VYnvWGDhd67xkCbUWHLuzUkIo0Lgu4ATkRVjKva5jii5Fs8CkUxWA9J6oFAT/
         LaImPwu5YQFqlW2ruNGrNRWKsa9PzagiSeMUEcn4vQI1iduNtOOBLjRzQv8tbfKRir3X
         eIig==
X-Forwarded-Encrypted: i=1; AKwUvBwxbaWJvfrkuyM32g3IhLjHvrgz/SGea/4rz+wqhSMSdaPn2J8BpfznNMqNgqouSCVo6XSNapsRVzghM3QliA==@lists.infradead.org
X-Gm-Message-State: AFuF++n7hv79QX1CzKRYfMpI2biRQqRT6ljASfBrk+DZSYDwMCqmsTV1
	fwAjv0MjgmVF4TXMcwC9ZgkTaPnCoBkY9Eklen2+Ee5jU2Y0cEjXVe8U
X-Gm-Gg: AYBFou1P8XyUXETeZjtiFVqKS9lkliYPA+cEi9Ubu7gMno2JERxHTTCOqDJ5qGDJEkf
	UDCQR1phICm7omyVTHUOtmkGQQJcBBy9vXv5UeGxpbCbl5gPS+cPznQIv357uwMxDzQAiJbPBdH
	fBdUHeDHO7V33ugfGMQcq21bq3Wu8tPYd3HqJ1mz4uTVSr+rzAmv50T+dipvzclvPLVH2qkqtTP
	V35THRCBStyYAljEuFyatLwYzKj188cC76pnUcIyAd/NoaWNfJ8fl1ovpCGV5Iw6g3yLGbqH6ov
	iYRLzixu5oQDUbqAL05jp4P8O/W1DiiWSU39mC311Il4QWwpBlog10SaVG7zwvFzaxzELuuYatR
	A2jjc1Afn+aynz8yUVe/XaGU9/CFJy0F38SjUyS7q9YegpB3GwuxJaUKKHtAAm+f6mMzx2us1V0
	LdYu8r6BbxAw2G2V02am91V/mZKr5zCn1njnRALTaA1gzfL0WWbQ6Izux7hf2NmtdXTWZGepaWo
	NoEy6raes5Big==
X-Received: by 2002:a05:6512:2511:b0:5b6:183b:d202 with SMTP id 2adb3069b0e04-5b8ae69ca27mr768798e87.41.1789395940103;
        Mon, 14 Sep 2026 07:25:40 -0700 (PDT)
Received: from KAS (94-29-32-34.dynamic.spd-mgts.ru. [94.29.32.34])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b8a04798d2sm2492509e87.69.2026.09.14.07.25.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2026 07:25:39 -0700 (PDT)
From: Andrey Korshunov <razor1702@gmail.com>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add MangoPi M28K
Date: Mon, 14 Sep 2026 17:25:32 +0300
Message-ID: <20260914142532.1997-1-razor1702@gmail.com>
X-Mailer: git-send-email 2.54.0.windows.1
In-Reply-To: <20260801080018.3220034-3-amadeus@jmu.edu.cn>
References: <20260801080018.3220034-1-amadeus@jmu.edu.cn> <20260801080018.3220034-3-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260914_072543_204748_BE69E465 
X-CRM114-Status: GOOD (  10.19  )
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

On Sat, 1 Aug 2026 16:00:18 +0800, Chukun Pan wrote:
> The MangoPi M28K is a development board with the
> Rockchip RK3528 SoC. It has the following features:

Tested on a MangoPi M28K v1.1 (non-Pro, 4 GB, no eMMC module) booting
from microSD, with this patch applied to OpenWrt's 6.18.44 kernel and
U-Boot 2026.07 built with a board target for the M28K.

Both GbE ports work (RTL8211F on gmac1, RTL8111H on PCIe), as do the
LAN and WAN LEDs and both USB 2.0 ports. With the same devicetree on a
6.12 kernel, the AIC8800D80 on sdio0 also comes up with the out-of-tree
driver.

Tested-by: Andrey Korshunov <razor1702@gmail.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
