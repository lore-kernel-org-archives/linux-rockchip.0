Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFB50CEB2C2
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 21:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Ch9m3aQ49nbJzEPZBZTEEC7MAIM778Zlqy1whXcsdE=; b=293MmLw7Aj+azF
	JXTrB/4ti5wMeQCwiiECOlAAY8nb/ghaZUHTj8DoSr4Qc7FFrThD028ocktAKpjX6TTMSw2vc5oYj
	6at/GDMJqfJJweN3Y7XalIx8hdI8BU/Q3dDmVH+B6oSBI6jAd0XMd0znr5NHOozs8nSe65X36uAkG
	LYCKZAB6zgX3IkjPxff3H8+uQ4RBNHCmfSJPCzmc0KIPhmNi+JmYsr6NMAT3cbTRvO5m8zumOAXYA
	E4ZEiZzZGs4OP0E+/Tys9j7zQX1IQCaL/bykeKOcs6Dkgs/orNiW6i7hVfMHhrHUYIeLv3gpYYVqT
	cLQ2bfLrmCtY3bKeM6Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svNZm-00000000qn7-300f;
	Mon, 30 Sep 2024 21:05:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svNWL-00000000qN3-1EEw;
	Mon, 30 Sep 2024 21:01:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=UWYPb9aYNvYbL5G5aJZMsIXhcXu36US452m2eFrHSwg=; b=H1uWZAEp2uv9evtXo+HiJgXk5K
	xJ/6twiZIjLWnwdH2SbK1UlzUT/A8ONi6KnOqrWiztNZKVGcndFl8KL8Cf3N6QmWsxF8two/NY1cv
	YUVfvRKblJRfjg8O8zsBWdrg1PgBnAw+y1OteKrvF6+1n4es/okFrhv91xc3elAEnePpKUJzPdPoH
	+HgC+YaXnp8fr2W9svaToZWBjA/xmyQguPlEqHl8TsFggc0io+Vrv/fMDjoLV1RzHlmZ1BlyF5Q7o
	yr2jygovefQ9R//Q4I3gWSH7+RxxN+kWIw6itPv4YKMGCscgv3lQQRVEjPlrzj6ceuMWk/CJm5jaX
	t991YeJQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svNWH-00000002vCb-1nny;
	Mon, 30 Sep 2024 21:01:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=UWYPb9aYNvYbL5G5aJZMsIXhcXu36US452m2eFrHSwg=; b=w9Lsls3h02AFnLSlqM/BMTPvme
	BEvTCxNVSsKmaqIEcSoTBZpg4azMrtf5hGHFVVZfAhTWs8NdDA/kUVFOxIF2tP6rKvCcnmhGfPlXM
	HBM7JrwVetOIBwyCDHGcpw22zztzYUUD9R0DA3AtxhSyaHE+QYjU4Yf8oKeDDUOckzCk6CpGVjlzU
	lvgJKxaliCsVooW+jHYqoydGMHF26Lbihbw3z48pO2fVwcrzfRw3ZamQqecLlEjTEXoHhdGT0/03V
	egyEESvlSdxHv4IbIb/A0z7u0U983Jzbz1Qtzo91qkC2bXnb+2AvAsENxQLx9XVN/XMDWzmaV7UGe
	5ZcByXSQ==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svNWC-00087h-5W; Mon, 30 Sep 2024 23:01:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/8] arm64: dts: rockchip: fix i2c2 pinctrl-names property on anbernic-rg353v
Date: Mon, 30 Sep 2024 23:01:06 +0200
Message-ID: <20240930210112.1993625-3-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240930210112.1993625-1-heiko@sntech.de>
References: <20240930210112.1993625-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_220125_770921_3D4F08E0 
X-CRM114-Status: GOOD (  12.11  )
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

We want to control pins, not beer mugs, so rename pintctrl-names to the
expected inctrl-names.

This was not affecting functionality, because the i2c2 controller
already had a set of pinctrl properties.

Fixes: 1e141cf12726 ("arm64: dts: rockchip: add Anbernic RG353V and RG353VS")
Cc: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
index e9954a33e8cd..a79a5614bcc8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
@@ -79,7 +79,7 @@ button-r2 {
 };
 
 &i2c2 {
-	pintctrl-names = "default";
+	pinctrl-names = "default";
 	pinctrl-0 = <&i2c2m1_xfer>;
 	status = "okay";
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
