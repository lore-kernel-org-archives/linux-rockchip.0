Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DFB9C61DB9
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Aug 2026 11:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKPdmVb1OhXtyPMi9bPCv8lG1tXqeX7x6yCIrGmvN9E=; b=yfZQeTGhoQ6zOb
	WyIpYuKp5vTzbGNXLxwSpUepc08K4Hc6NzscJvoRw/D0Pk61v3rYr8MmaPon3ignSTIff05T+VZ2v
	Gj8iyJu7y2XioofBd0FHq6ibQrkFhgG1NX/cj49LoPr9PONws/Fl6io06/MFQdq7l0vztmKNmygg8
	YT973TpGUcNeAGca7JrJQZqsYHkA9gCPnqGInN88B6X47ZXswYRl9tRVTjCfPoYWy7mQJBa1UNV9e
	mfhzEQNUdMTRliVF8fIpa6Kx54HU+D9I6HNcl8E9I1UDUt99+r+5XRUdipSRhuXzLq/UXJ2Zgz+ax
	n5u0ywUjk0IGNiqM/NYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzv2e-00000005g53-1BD5;
	Fri, 28 Aug 2026 11:46:40 +0000
Received: from out-95.mta0.migadu.com ([2001:41d0:1004:224b::5f] helo=mta0.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzv2B-00000005flz-37XR
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Aug 2026 11:46:15 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=BpRbhcfD3eD4hwtFOUCZCY+oZfkOOf6n1IZQcrr6kRM=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1787917569; v=1; x=1788522369;
 b=M0LXgUrimLoHl4mthzCHn68oHHEoJpzW17GS+4Y7K36pgYhhzduGEjwSy+1qpHQY7Tb3K8BI
 uhse3lRKtZ6mAFhem1jGqzI4RpbPelQ3HaP78qgbTMH8boaXa5PmJ1SQomGV+m0R0RmAfg9N+Ep
 1um6zy/hsLc6i+7s3rvw8Vepgh2lqnICaMttF8INaemSp7k3kbxIwx6VoZAHZFc+vvdzGgBMJ26
 qbUwc4Lop61E3ejTOV78hEztaXqiKoU7JBwn9UIpFa8fAE/4Or31eG0AzCgw+Wzrs8DUZ8pYnY8
 nLDyx8uq6lg3fPTD4fqOJlUtcREqiHiwwpsQrMizzgtKQ==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 5e7500bbdfa4c39b;
	Fri, 28 Aug 2026 11:46:09 +0000
X-Mizu-Trace-ID: 5e7500bbdfa4c39b
X-Migadu-Flow: FLOW_OUT
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ricardo Pardini <ricardo@pardini.net>,
	Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>,
	Daniele Briguglio <hello@superkali.me>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH 7/7] arm64: dts: rockchip: Drop duplicate USB nodes on NanoPC-T6 LTS
Date: Fri, 28 Aug 2026 13:43:07 +0200
Message-ID: <20260828114530.1315798-8-diederik@cknow-tech.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260828114530.1315798-1-diederik@cknow-tech.com>
References: <20260828114530.1315798-1-diederik@cknow-tech.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_044614_847810_33EC407E 
X-CRM114-Status: UNSURE (   7.10  )
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

Several USB nodes were enabled/configured on the NanoPC-T6 LTS first. Then
those same nodes were enabled/configured in the NanoPC-T6 dtsi file, but
the ones in the LTS dts file were not removed, so do that now.

Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts  | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
index ff855064be08..0ee67ee24f3c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
@@ -38,23 +38,6 @@ usb20_host_pwren: usb20-host-pwren {
 	};
 };
 
-&u2phy1 {
-	status = "okay";
-};
-
-&u2phy1_otg {
-	status = "okay";
-};
-
 &u2phy2_host {
 	phy-supply = <&vcc5v0_usb20_host>;
 };
-
-&usbdp_phy1 {
-	status = "okay";
-};
-
-&usb_host1_xhci {
-	dr_mode = "host";
-	status = "okay";
-};
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
