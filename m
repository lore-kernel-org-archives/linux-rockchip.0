Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEAB4C98314
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 07:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4H7WlK3gNKMBN2LhMPH6LMdB/qNM5cnkSwW24+akOM=; b=wpCxH6w3kDZNQh
	21LjF0b/z0VJhLCpKCB1s264ompIMsHpgonhp6ybN/ANRZufZY+JR0sv+5JNTcvn5Yb3dG24keX0P
	5FrnLwXiwRCAUc7goi/sMhs8/pk6FWsa2fk6ISxq+PdYOqFFoUz2Ft67pTFgw7y85aN/EuBSa7kSu
	zK42qmMI2XPtTCXQj4uJ2o+25SgeJC3Aj1P1EbRhE1aspflDA+lxR2WHhc7Nk74bkXt533wBcZwsH
	XoMyFCsYcEeyn1Vx6mLGeogoHSwl2YWQeHs7Q70hat0Bpt0vVsGZVk/CmQ02CXbRpM1xcBPO9WwFn
	1A/a8X/be5VuRPrFLpxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9dfc-0000000AFVs-3SZL;
	Thu, 24 Sep 2026 07:15:04 +0000
Received: from mail-ed2-x0e.google.com ([2a00:1450:4864:33::e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9dfR-0000000AFPN-2LA4
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 07:14:55 +0000
Received: by mail-ed2-x0e.google.com with SMTP id 4fb4d7f45d1cf-6a9dfe4dfc0so2852881a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 00:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wermuth-pl.20251104.gappssmtp.com; s=20251104; t=1790234092; x=1790838892; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=W/q4IHYKCy6ATe5C6R4o2zyKGD60s2UPYSeHPBkDVEs=;
        b=kclWb8x9/bGGZomPAwVMgKKS/obKK6w/Ck+eP6q0n9NQw5rkJ82P70o2f6OPAiRI5j
         zS/5erLtltJSJGubogbaylI7RF56BaWjg2U0kMNNSb17Lgf3Sehdt98IG0fV+Gn97Zo/
         bsLUAPFILWovWe7YrcNgp6fud1zCOHzQmdf2c+PWryNYqwmujxVtjprSieXeUeRJkVMf
         oGl3hmSA04KSgxpvFQyT6Ll5Co8PPEecwCrNRmqQuFTSwPi3jfXNpkV/ZAJ0ATsgM51Y
         XogAMVdUX9WDvr8F8D9P2bogC8cl1MlLY1Jb8H1ikggZvVmeFtSG8Eu5hH9K7P+zf3GS
         UsRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790234092; x=1790838892;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=W/q4IHYKCy6ATe5C6R4o2zyKGD60s2UPYSeHPBkDVEs=;
        b=RlEOI9fZiCEIc66M8oVj+ALpQuQCk+MvhGjdzs3ER7qINwlh8GqJFndzbKYydKVf8x
         2l9xfCAlXcEexwFPUROhrbcXYsFA8V19OHETLTvrJMmC9UIBlqkpHnc7/rlpoty8DlhW
         zl/Sw0iHEyB0IGzdgdsR6Mxl9+LqybGweiADbTmdGLKAiBLrKY9nrFioEAkBZOwjDWht
         be7cPdrM9yU88nWG4cvL9e/2H+QxI7n0Ga938N8CYj7L5S8fjLDoVPg5jRsK/7VWUJbP
         ZOgnFNH8D1H5qJCr3CJHmVnKzuExAEvdq1Qw6VsmprZXLqBvzsh5vtU+rTQffNKnK8gQ
         NdAA==
X-Forwarded-Encrypted: i=1; AKwUvBwnAaIw6KhcOB6tF9zrqwiXcNhRF2KqleBgp1iESlNxLtP+Y9G6KmyRvd7KbxgYNI4Xw/5v7SBLWww8isSkZA==@lists.infradead.org
X-Gm-Message-State: AFuF++lDumss9ftzMkXWyI4mUuhcd5VAi8L5UQhNXwY5Bym6DwjH3C2w
	RX/vCfLGZD+ddFq2ozujBCLWueVBXskkdTRMzrIm5ok0iCdkuJiNLNEZJJtl4st56ac=
X-Gm-Gg: AYBFou3yh46WeYS9DbexNfTTx6QDFtl31H352gp/lBNDBDQCTQy1wzVgxSGzFbY9gpA
	kw/FfwNQ5kNZuwc5P//4y4e3f6WkJQQwQBUiWuA1Cxt5sCwbGxVp8cIwEDLb3IkZVyCrSgr602m
	cQnSTHBdgEVZ0VKpKi53uHmYzB3jcwITMeEFWfcUV/+3R2SZr3nOXNjWU34mC4XOCRjQQ+eiNZD
	pcQ8rsz9XgKV6zwTqkU7ol99+KEV8n3H7G3Iy8Nxl8tenjcOOpoW9t6KEpp61dQJq8K9Fw6qFCV
	nvzLKvTh1RXhLG+FDGgKLhdeaaqAsBImuz8WdI9p6mzkRslXNhULPAaxd54tF4AFE2llLqnJwoL
	8yylmm77XQYHX8qIz1t0iM3uJ4SZIXcSvJKaM7+bFcyEXZDjOIAMhjXNhzzg3osUcOpkvXmYX7r
	AmXUwrXj8lwj61ox0UC96OnI25uERz05WEaIua5WmJKoZMUDZjKFcUYDsyit26wM01+I3rOOEv0
	OucS8hBQoUH50i/zeOzXw/eI5B22tum2L3Isxx4uj39s/s=
X-Received: by 2002:a05:6402:5385:b0:6aa:aaf2:f6a0 with SMTP id 4fb4d7f45d1cf-6aac8ecf65bmr1299955a12.1.1790234091341;
        Thu, 24 Sep 2026 00:14:51 -0700 (PDT)
Received: from janlin-02.home.wermuth.pl (109-206-198-27.host.skynet.net.pl. [109.206.198.27])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aab38a9756sm3306589a12.25.2026.09.24.00.14.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2026 00:14:50 -0700 (PDT)
From: Adam Wermuth <adam@wermuth.pl>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Adam Wermuth <adam@wermuth.pl>
Subject: [PATCH 1/3] arm64: dts: rockchip: Enable USB 2.0 host1 on Radxa ROCK 3B
Date: Thu, 24 Sep 2026 09:14:43 +0200
Message-ID: <20260924071445.441822-2-adam@wermuth.pl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260924071445.441822-1-adam@wermuth.pl>
References: <20260924071445.441822-1-adam@wermuth.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_001453_600259_24F37851 
X-CRM114-Status: GOOD (  11.16  )
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

The USB 2.0 data lines of the M.2 B-key slot are routed to USB2_HOST3,
which is served by usb_host1_ehci/ohci through the host port of
usb2phy1. Enable the controllers and the PHY port so that modules in
the B-key slot, such as LTE modems, can enumerate.

Signed-off-by: Adam Wermuth <adam@wermuth.pl>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
index 149a5306bb03..ad9a91c0d0d0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
@@ -758,6 +758,14 @@ &usb_host0_xhci {
 	status = "okay";
 };
 
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
+
 &usb_host1_xhci {
 	status = "okay";
 };
@@ -780,6 +788,11 @@ &usb2phy1 {
 	status = "okay";
 };
 
+&usb2phy1_host {
+	phy-supply = <&vcc5v0_usb_host>;
+	status = "okay";
+};
+
 &usb2phy1_otg {
 	phy-supply = <&vcc5v0_usb_host>;
 	status = "okay";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
