Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D90FC433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Mar 2022 10:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RtRlRhmX4t7kvTjkd4rTIu0Bx7QnMmOq9lzmeLVc7fk=; b=N6cjmnzkxyP7t9
	EilQK/6KH3kkgInuioA1GoBazc4GnYR3/CrzlH/EWxt9r20fMiQ7VoGZgxngrM+Q8tE3M77K06agV
	bIvBFoU+qypLc7ZIr+PszcBSS1rqcBjbcBLzltMgVaas8fI4dnqkRJ50FGbfQ8o3k7djrtpEVIdwc
	Ad2jcIP0COM9jaAoZSm0lMr0CuPfCWWkmqzQmFhV/DfYNbHg9wW8f6+QzonUx7gotfGdeD8ed9cgJ
	zcN12vQXoXK65LWY1s4omOAohu4sG+1YnSW+W+lyfzLliJlgt/D/h1+qDFxFyKt+cIueQNwn9YRA2
	wcKsSbWu8X9biHTFbZ5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nY3eE-0049Bz-VF; Sat, 26 Mar 2022 10:27:54 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nY3dk-0048xy-3h; Sat, 26 Mar 2022 10:27:26 +0000
Received: by mail-ej1-x633.google.com with SMTP id dr20so19722305ejc.6;
 Sat, 26 Mar 2022 03:27:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gJNCNvpGXaKqAIHCO4xhB5jgrMlxJtcGqvg3RJwepb0=;
 b=e5zTOtzJnmdhJkaAaFuUx/AE7i2r+pjg25hvt7Q9BAm0aLXz+Pya5CERaYqqHGe/U4
 m33dcJci2qtdSm06qzqu2A7KnvKd6A3hVj6+orDhWN3ZS3hZ/vhSMy7ZkB/ICDhdYBel
 e54GubObSnz6MFNTiIs7JBh9Tycvf0LKiLvVTn/cPvyM762L6vTf5EOi02nTcy4cb/ys
 qdESkukJXCQjvSWoRkb32/ZQHb6geFATHurqumVCr+iIMUrBbyVOdePlFA17WpUgc2HH
 0FtsX4YWiokgo/+1qArfyU1pdMeMbozO/pOIPV1kB+m3KNfMa71XiBJwMbyYuSRiuo+x
 8lDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gJNCNvpGXaKqAIHCO4xhB5jgrMlxJtcGqvg3RJwepb0=;
 b=N0baxQrux6R0TKbMOGejX3hCnO/b7zx7l9g1UOxh3tgqln3Gx4Yfs3TtSgXKL+bYVo
 kM2+R8dI+s64O5UchPJHKfZh1Tc1fjEdT78dx1H1B1c2JYhLIEwCU+MJJ2P9FeP5lUi8
 f903QsOz7o6zW4yw7x0jHc5cPkQMEEr/7rLK5Ypl6mPk9oaL/OHJMfswmqKE22Tu1Idb
 CGo7LH5qkh48/MLTW0BKsy/W2emHBicIKejNuITfmSxEc0rEVaeBSihsoos7Dc5CTl0f
 8HdRLW6P3EMqV9YZzqbd8RQHBdCEZ5Zai6MZqYU7o0m/+LrRyCav7TtpFnxq3DoFdxYw
 n9Qw==
X-Gm-Message-State: AOAM532W0PuuxWqPeiw1izOnAbUECuMROCIayoFha9qSUtVnFxQWYA/i
 wySmxeFOk9TYhq+nP18j/Gkdo4y6Gf8=
X-Google-Smtp-Source: ABdhPJy0S/ltddHS/J3q+F7pW5ZG5TpKypxxoNl0N8StWaIdHuTYgh2FBFDRufdwyts3L1HsOZiD8A==
X-Received: by 2002:a17:907:1c10:b0:6da:6316:d009 with SMTP id
 nc16-20020a1709071c1000b006da6316d009mr16427209ejc.621.1648290442568; 
 Sat, 26 Mar 2022 03:27:22 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 g23-20020a17090670d700b006ccfd4163f7sm3209021ejk.206.2022.03.26.03.27.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Mar 2022 03:27:22 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/3] arm64: dts: rockchip: add clocks property to cru node
 rk3399
Date: Sat, 26 Mar 2022 11:27:12 +0100
Message-Id: <20220326102712.20906-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220326102712.20906-1-jbx6244@gmail.com>
References: <20220326102712.20906-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220326_032724_171252_AEA9D150 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Add clocks property to rk3399 cru node to fix warnings like:
'clocks' is a dependency of 'assigned-clocks'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 01c08a2aa..16fc6e5f1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1426,6 +1426,8 @@
 	cru: clock-controller@ff760000 {
 		compatible = "rockchip,rk3399-cru";
 		reg = <0x0 0xff760000 0x0 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
