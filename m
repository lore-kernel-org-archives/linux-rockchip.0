Return-Path: <SRS0=3L0h=CL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 696C4C433E7
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 18:13:10 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 29968206EB
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 18:13:10 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="KNeU+520";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aFaTkRn3"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 29968206EB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I8ATJmx4Jab1BnkjXvQLM1ezzBHLGeS7kTGxTlfCUmk=; b=KNeU+520lbJhly/fvMsotdDnB
	PGEIrorGgOmnn4zbXz3+ti2ecJtkFrfjgTNAvkW+vZ4YEATFJLaqvpcgpQitnVjOwXiV1aMeKHEcm
	o0Nesg+tnH7sHl5k5nJbX6lZwgyZD6RJz9iB6TB/eL1Fwc0+a6LXRJA8ePrXdwFf2NdStsqu+cjY4
	k9lCXON5CWi5Pn/ZiYBWeCCf2E7U5NG3aZAxX/T3feQ8TFkG+PDO8liZ6EdImYGYAQf4hnLRoENJG
	iR0IR05Xxudh5fpEhNv1de7sF69omYR4X9Eao1CMCtUjMO1hprxqksxUuyugiDiKht2OiyaSI9loJ
	9/oXq9yaw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDXFp-0006t4-U0; Wed, 02 Sep 2020 18:13:06 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDXFY-0006lh-J4; Wed, 02 Sep 2020 18:12:49 +0000
Received: by mail-pf1-x444.google.com with SMTP id f18so74613pfa.10;
 Wed, 02 Sep 2020 11:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fbE2EUKf0dDLSVGA9OtlMJM3jKWz2OtHZG+cbWW1EL4=;
 b=aFaTkRn3zQxjMusTi+ps6zxErseC+lODmABkMhmreSjKkO+Q0RTfSjbysZ76viWYw9
 1ifooaitbz0ScX9rJZ8O7BHLglA+i4SF95xhL0HcBnCJV67Wnxmv2IBQQYNcyhVzEK2j
 ldwRgLblDjwmQafROVxYajTOSA7B7OAIHHtvQBIENAxOVC7NU/olpFo+qWKXd0zNL/w1
 ZITuUNbLYODeREV0JG+T93B5p/f+WdXVueyFslItxdwareKCmwwPraCgAdkiOyzRSgA/
 q7ZMsRpltne8yvmRjcA3Aj4WH7x/uj8qz5bWtvT+FAxHTTB/nUFA6LJ3vbuTw//dyDO+
 tRqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fbE2EUKf0dDLSVGA9OtlMJM3jKWz2OtHZG+cbWW1EL4=;
 b=HQhrgfoE6MVuI7BEkQ7Zuw/6gWAayD0xAjNczZWNT6cPyq98YSABkN52XjujY0fTon
 abrTHOnXDxagjVeVwHjNCzyq1cyS7+bXxPrL0epN6Miu80TK39aEJkLqwyr6Zc8i2rTL
 pHzGWA3OZXUnI18YJODs9Fpn6I7f5XcMjlS93THUTwucw0Fh4rbcDBf/SPv8yTguvMRZ
 DdN4zno8MJYP6wqgkJCmTcAinRotjmfIaPsQdx2Qov46uDoSkpv1jDbtdEtmDFg3Y89d
 vN5iELa8EegEz8HgP5uLfhnPb3vHZ7D6/ZAjz3bCEh87NdOE95sjWzdo85OAswwUzQ/Z
 N1fg==
X-Gm-Message-State: AOAM532xFqNWVeZOXT6wLlVKi6+zKqsgTDeCwWJh9vVJTY/tw/XmDtFm
 tf6YnN7yHki0zUei9Wk/A90=
X-Google-Smtp-Source: ABdhPJwmA4fxLfM8pxgx4LqnAQ1g0nJtb0xAFYxTvFhDlnWTdFtJqRHDCGzaD4UVPJyph4XlEMIYIw==
X-Received: by 2002:a62:7551:: with SMTP id q78mr4415121pfc.140.1599070366505; 
 Wed, 02 Sep 2020 11:12:46 -0700 (PDT)
Received: from localhost.localdomain (cpe-172-112-234-200.socal.res.rr.com.
 [172.112.234.200])
 by smtp.gmail.com with ESMTPSA id u123sm148993pfb.209.2020.09.02.11.12.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 02 Sep 2020 11:12:46 -0700 (PDT)
From: lindsey.stanpoor@gmail.com
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v4 4/4] arm64: dts: rockchip: enable rk3328-rock64 usb3 nodes
Date: Wed,  2 Sep 2020 11:12:34 -0700
Message-Id: <20200902181234.13955-4-lindsey.stanpoor@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200902181234.13955-1-lindsey.stanpoor@gmail.com>
References: <20200902181234.13955-1-lindsey.stanpoor@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200902_141248_691679_0D1FB649 
X-CRM114-Status: GOOD (  12.53  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: gregkh@linuxfoundation.org, cnemo@tutanota.com, robh+dt@kernel.org,
 heiko@sntech.de, balbi@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Cameron Nemo <cnemo@tutanota.com>

Enable USB3 nodes for the rk3328-based PINE Rock64 board.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 86cfb5c50a94..0cbf59efcef0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -384,6 +384,15 @@ &usb20_otg {
 	status = "okay";
 };
 
+&usbdrd3 {
+	status = "okay";
+};
+
+&usbdrd_dwc3 {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
