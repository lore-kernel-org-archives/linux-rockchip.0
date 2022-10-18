Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E280C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Oct 2022 07:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7VVObeiDjGQltNDwiusRRdtRvPgkw8LDaE87TFGXbGk=; b=khrQX6YgZN39c+
	KVDDqTYWDilpeM3VJ91VtTaaRGEsbace7y3AhgpnS7oAcgrtE+IqtnmFWQgM+AbWEyXmzxwpYBej9
	ysjTeyt75JqVNwcmMb/KlErlFFzLyClPyApViSALoe5ep3WaIKUWbGsakqQhzHTmL7MkUhxMRXEPs
	qEjIR4/FGNQiAC2QWV1OqRFdPgggGgSKhPSyQwRBUcau35Eb2C55pXqPc3njvgtmgD1rHIov+VX5/
	SBGZS+d0IaPPcxP9/20XuXT5z6+ZxjL/gFIxjdnU7yBvo808u7h3VDxR2EREBi34c/d3Ka97usfs8
	FPPFOK3wyhZjmM4xhqwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okh1G-003orH-6h; Tue, 18 Oct 2022 07:28:10 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okgzp-003o8t-AV; Tue, 18 Oct 2022 07:26:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=j2x/tukiTdgK7QI1z5/TEZ5O0oUzKNoDQjvjoeexNhA=; b=G16NfY/nvw6dIjAL12LRhjM7KC
	ZIHJGy3yYaafQ2/Xb5ohr5cNsoi47QVxhu/pXbvV37zhlYrPsVU93oA5OL2OwaF/GM8lNzV5qBbDJ
	eHi5HnqRqCnHmQOdjQZzMYj63J7gr+ITecS01RtNq4hgv2jllrROcVqz2n8LtuVoNebRDiIXcAaYD
	iNOPrnhOPsz47HL05NItDskaQ2EcBXgQrDog6/8zNOu0nrSNYZIr8VvgwvJKv9tzCLVp/uUuzioA9
	CPUpWvK/1dVYgvhrOfLJ33WroScnxmywm4XfT9Pj9dei+bB3ObgGuQqiRamNZjECE6pA82RMc+Cfw
	fMcLFm4Q==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okgzn-00ASgr-ID; Tue, 18 Oct 2022 07:26:43 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 29I7N8bU032567;
	Tue, 18 Oct 2022 16:23:09 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: enable tsadc for ROCK 4C+
Date: Tue, 18 Oct 2022 07:22:42 +0000
Message-Id: <20221018072242.2348995-1-naoki@radxa.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_082640_208118_5FA47CD5 
X-CRM114-Status: UNSURE (   6.90  )
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

add and enable Temperature Sensor ADC for Radxa ROCK 4C+

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index f9884902f874..309c35d7fca8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -601,6 +601,12 @@ &tcphy1 {
 	status = "okay";
 };
 
+&tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <1>;
+	status = "okay";
+};
+
 &u2phy0 {
 	status = "okay";
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
