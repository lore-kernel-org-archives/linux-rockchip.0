Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94493CA0EED
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Aug 2025 08:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4HdG+3tDthMoaAK/NpN1pTpA4MdFqlDQtpWwZhu5NNA=; b=jeR4woluszk0Us
	MYLWJncZ5Hnwi2NAkOrxd2YVygh/vcnB023B+jjm5zrc2lJUf7dAFScqzjGVF7uHIuX7fgFZwoVdn
	TzIH1zxv0FjxUPDfkrd1SYabJVZeoQcsZ/PnhwjKZ2b+l2OH30aAEUTsieC6D20PQn5DHAQ1KgTws
	fSexwiI9L2j72m9+bxUiIpPFn6s37KL9X0EQf65RZJH270msOHl8H+cPiwHd2Cp+uSrDkCbRsER+F
	zxAF7OAgdJpewNs7yVRBUj4tuhVVUM9sAINBk/0GIUJq1iQLu50Jo5t/Hz9a/bZGmrDCxsRuT6l/r
	L2LcJtxFoIAlZ06BP0mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoHqj-00000009pIt-1Gvn;
	Tue, 19 Aug 2025 08:37:45 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoHBp-00000009jrS-0F7X;
	Tue, 19 Aug 2025 07:55:30 +0000
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-32326e06496so5562345a91.2;
        Tue, 19 Aug 2025 00:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755590128; x=1756194928; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N5Aq+ST5cYyv8tlu5A5YNOSa76L+WIXOA4kn5tBLtHw=;
        b=HD9RfhX+MsPOz1i3fr8Ac8WfXNYzU9t2g7qYJAiuXWlMkO+1KURAim9so3fEPOgz6y
         zCpjEjXae/PEcKrYfstXRCWPJ1wroUHfGgelvNLA5IAj3wVK4o3+Ey8khD2k8diX6FAJ
         OMYMkOxxOoSLWAy8sLjRU40KkUqGbeFm1exOzX6BAqqizgAdIPcf39ZMvkbS7qGya9UK
         jf1SPlnPaN0f3HD2wzwCfNZ/CzctQuE5eQY/ZAk2vqsAGjRox8LN//xltvIoy6Z/HSur
         FoGhsoh8NG1HHp3Ec6/4p15l5+Rg2yxfygzj9qDbUgH4+SWpl/tUiVWTu/0IbvU/JzO+
         QQHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755590128; x=1756194928;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N5Aq+ST5cYyv8tlu5A5YNOSa76L+WIXOA4kn5tBLtHw=;
        b=vSCrhAzwxmwbISawUeqDkhLauqOqLh9SVGYoeRn2G1k30+eRL7rgq30uXWOeJNlA7D
         N21aLcXRw65wzZgKM1UhmnG68WrxTM95ARxcc+dqFiEiEYfmKklMl58fSK2bj9CgdunL
         b1/y3p+TBc+UdOA4hYsPGjuyE4JFGDEHj5b95oqmhRXgZ87FH7mHDhLJDAhsITH/1iZR
         qTph1nSs8vRb1qVJpff/6C+khqi+2tLflffN2YILJtt7tXkQuZ+OiGwEus6l+y7UsKaE
         Iu9aZY4f0sUj72FgtB9IGDv3mptarINCbd69mQumJKI394DxouNwZpYhDOlPInbWgs2i
         SNTA==
X-Forwarded-Encrypted: i=1; AJvYcCU2CquuX3ylW8yfMrQsUHz950sflesykf9ntO1Xj/uIJUxLqMtiS/auIqbQ7LWKcWZsGTRbCqun3BpwQG00fv7w@lists.infradead.org, AJvYcCWYZxQ2JRYNOLIycRDGDgr/HNha7jRTrKbqP1jQ8s0hTDzJri42kfrW4blQE99yKADldEI9mw6f0HD10zYTuq4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8xN1fuq+7y7xYqMG7Ajsb+OKakSixQfoLYVM1dR1Z85sg80xP
	Gz8txVs/puZOq88THH3/2huTRk4H8r/AlsRgu6ztr3uDWv2DXjZK9zoD
X-Gm-Gg: ASbGncuYfJZlscSY/sFjjq3ZC9jX1rKV2l7QhNd/kVSR38HWCths+5RXVonQ6LI/ybv
	t3l8qDSbJKm+1AeMZPXwWSb0XxMWvVTc3mbpM80pemOEp4AuaytaM6WCQuGKRoKfJeuVwAk0Gxc
	iv+7iP5SKl3FNhFqDhCzJWQrnoaq0y81hrduRGyVg08+u0jUD27JL0lmRG+pmhCbs1xZ4gBSecD
	sX2dLQgm9ntyu3rFiUoLZCIyQBUQcLinWxNp4Sw1/gJi/687oK6eM7yc7Uk7ABnSHVNBcaoV704
	nh/rx/p5PSWqImC5+ycBeLY3OE0orA8BO2YHbV6bYFtyrdBDnWjHjoOA1qBeFm3oqlaZqQk1U/u
	DrMSbSJEMVOC7VAwxeQ==
X-Google-Smtp-Source: AGHT+IF1CAYew4CGA4v+u7+nVAa0yl7ZMPkqTWB83cnzs2wUTgdyhQO16uHY7uws+QlbrVRoF6b+qg==
X-Received: by 2002:a17:90b:39cd:b0:31e:d929:5ca5 with SMTP id 98e67ed59e1d1-32476a132fbmr2297388a91.1.1755590128116;
        Tue, 19 Aug 2025 00:55:28 -0700 (PDT)
Received: from anyang.. ([106.250.177.234])
        by smtp.googlemail.com with ESMTPSA id 98e67ed59e1d1-32330f8309asm13542871a91.4.2025.08.19.00.55.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 00:55:27 -0700 (PDT)
From: Dongjin Kim <tobetter@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: Change ethernet TXD timing delay value
Date: Tue, 19 Aug 2025 16:55:21 +0900
Message-Id: <20250819075522.2238643-1-tobetter@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_005529_110728_F1FB9B67 
X-CRM114-Status: GOOD (  11.89  )
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

Very poor network performance is observed on the ODROID-M1 Board
(REV 1.0 20220613) when running iperf3 (under 200Mbits/sec), and
this problem can be resolved after changing the value of TXD
timing to 0x35 from 0x4f.

Signed-off-by: Dongjin Kim <tobetter@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
index 0f844806ec542..e1a550a04498e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
@@ -210,7 +210,7 @@ &gmac0_rgmii_clk
 		     &gmac0_rgmii_bus>;
 	status = "okay";
 
-	tx_delay = <0x4f>;
+	tx_delay = <0x35>;
 	rx_delay = <0x2d>;
 };
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
