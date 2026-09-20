Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAA58C982EB
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Sep 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xusntvNr/hcKM5aKf09TkI8gQX+msDk5AkZ3I4MW0Mo=; b=Ci2wSwuJBbqxNz
	eSXH6GXyq1MRJYKR9hlEUZ6DhPg9LajEogXt7iyTRSnUp8ZCgmKQrOzGoDmf1JcM4wusxvB1xy+ul
	edLrID6VHF0OAMPfk1AzZFyh5vDNbrjAohlIMxc1MjVoz8obJup5Li51xuuAYIECRSzVgFpiu+YmJ
	hsEfZ5kyvugToou1Mj58dqvIj5aIKsPvQdwPvtVlIK8ngTvqpQbxFPfNejJu1NEgRwlG4hMDyLoz6
	Zh7UV4emr16bQMM21EGsnplD+Pqeo8YTgT6YHYka5I36orUa+p3jEN2AOw1CmMSTUB5u37uBObFE1
	9W7M3PzQ/kt6635/soAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8KxD-00000000A5R-2G1f;
	Sun, 20 Sep 2026 17:03:51 +0000
Received: from mail-pz2-x0b.google.com ([2607:f8b0:4864:3b::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Kx3-000000009tI-09jd
	for linux-rockchip@lists.infradead.org;
	Sun, 20 Sep 2026 17:03:44 +0000
Received: by mail-pz2-x0b.google.com with SMTP id 41be03b00d2f7-cc1631a57d2so1684809a12.0
        for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 10:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789923820; x=1790528620; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bdJAnLwrz+/OjIyJtnetxy2JKy8P0MsUYxFs2QuKaus=;
        b=XwKBcZLnXeDwcopeIYa/t0m9CS3MtAoIDuwJP+JCz55l0DSG1kmP5IfptskuyS5JYW
         p0C0aPV1McrJO6iQ51DucroDyVaTclxRqX6mvFG5rlm6h6P2LUi5osZFHVi/rtcRBvQa
         ESCZ0ax2KCsyyXfBb0OP3ArO0VPemh+KXOxrg7539s26fOfc62yXyIE4TdRCXcdmk50Y
         R4+MU+pD7DUndPA/3YgIvk9mrWr46S913voVQqzQqG2zxSIH+rSIWc9TWDGRQjmA2kUB
         WNwxJgNNesoYjPpDO5D/o+Yvbrd0XymbHJaKyy44X2TULP6xIMSD/brRcLdxPsxZJRsR
         q0yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789923820; x=1790528620;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=bdJAnLwrz+/OjIyJtnetxy2JKy8P0MsUYxFs2QuKaus=;
        b=TqsTbKLZ2kHn9L29BzDrxX+A6idcBsSkVmmQnKNp7hdCqJo9eShNXcctPI4dj7ZcmW
         QNsutYqZ18065IQKLwmhtrEts2yINpWyv15f7R+rlckmElSqL+U6loproeyYz3iUwqoA
         CiCbqgI4toEwzxevWVFPMlFDVzf7UD3wyYPX6jmn8i1XPRS7hHdpCJfkV/rCAvjN9oaE
         4dHN98hC+eEC4SIXUPh3xsKvvXpOub0XFk7SL8m7o9Nqsa73T06h2oXB4vzKEt2ZFVFz
         LDc6XXMKL4PZaLlMZ49NhtKedzU1N01LW0IUlzsGObbj3Gc+j2spatPHxIyv92p2o7iQ
         wk8Q==
X-Forwarded-Encrypted: i=1; AKwUvBzZDS2q700iFKRNY8oo19cerpoz7X+Es1uqVZMv5kkvKa72BFMMAWNjlvee4RrxI7xzXzWx8BUS6ObtV407iw==@lists.infradead.org
X-Gm-Message-State: AFuF++nm0hH6Xtr+LZ4DlpMaCLETb2ufJzb+7Z1Kdeozg2acqZlChnbh
	hxbPLpXDYiku3l7k54S2veXeCuf0Ydt3U86e1JHldYdPaPnFAKIjFMHY
X-Gm-Gg: AYBFou1qTr1iyVpbJminIKP7zXxgXAlG2QXMeWxPihQIKiXZeZ6oOrMvR7XYmlzVRJW
	TO4pLf9Nh/aDwoYbijHHlv2RCew26m8T8wMM5DWJmXDuhRd+n0I8oX8x9upgpN+4AETDdwweIWX
	f4JOEdG0rT2StjRENDbjkn3e8TTw+A/TYbir9x0TZQ4h8g8gP5ORHh1JTDdT6kjFg65x5MIAYU7
	R1J1EvllJYuPdWxAG0cyk0VoGksVsM9zKfUVif0khJVo7b03+N7aremg8g9U5TselqDeP+5sHZx
	8n2FxFJ1InPaR6Kp9Ay1VECi5nEz7ZfCw5vAMJC2TxU0wYBoxOrypuDNSrUenXivKACkcDmxN7v
	bIEN0QTVMiH/TAZQgm55X1L/b32jraGFGHWbLNK/EOr89f7pKBIxrx5oQql4BsVjovsmakkC2Ci
	XYHdoVsbrdoTuA0JGnWJHsfKDg8Us1AdwsYCXDxhoVf1GjIpRr1w5QTqWz4OLLuLApzXIV0Q==
X-Received: by 2002:aa7:88d0:0:b0:878:3538:8f80 with SMTP id d2e1a72fcca58-87835389b2bmr4633099b3a.46.1789923820049;
        Sun, 20 Sep 2026 10:03:40 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877a9d07425sm2140646b3a.42.2026.09.20.10.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 10:03:39 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v9 11/11] MAINTAINERS: add entry for Rockchip XPCS driver
Date: Mon, 21 Sep 2026 01:01:15 +0800
Message-ID: <20260920170116.3624104-12-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260920170116.3624104-1-coiaprant@gmail.com>
References: <20260920170116.3624104-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_100342_102989_633AB390 
X-CRM114-Status: GOOD (  10.35  )
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

Add a MAINTAINERS entry for the Rockchip RK3568 XPCS platform driver
and its device tree binding.

Include the relevant mailing lists (netdev and linux-rockchip) so that
future patches are properly distributed.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index cc3cae2e378b3..085589b8ba65e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23740,6 +23740,15 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/sound/rockchip,rk3576-sai.yaml
 F:	sound/soc/rockchip/rockchip_sai.*
 
+ROCKCHIP XPCS DRIVER
+M:	Coia Prant <coiaprant@gmail.com>
+L:	netdev@vger.kernel.org
+L:	linux-rockchip@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
+F:	drivers/net/pcs/pcs-xpcs-rk.c
+F:	include/linux/pcs/pcs-xpcs-rk.h
+
 ROCKER DRIVER
 M:	Jiri Pirko <jiri@resnulli.us>
 L:	netdev@vger.kernel.org
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
