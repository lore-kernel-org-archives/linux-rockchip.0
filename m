Return-Path: <SRS0=BK0I=JK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28EAAC433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 14:18:34 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 956BF61242
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 14:18:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 956BF61242
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+us5hp3lde1TCf7knaIduSjGvd2KA0eHlcGQZtp89Vg=; b=CjaiX/XBqcLhd/oapmgLBWhZx8
	UX6TyRtIwnMeQ1MSc82p/42gVD7etxEpIpi/xXtyxQBBzSzdjGqIxD/OMEIEISc8g/9VRdPlMD3qO
	ZeuW45kDZ46yP4+0qRrvYCNI84FnrcWadfPU0VrAKjVu9DXa9JGi4yCkcAxM0jjVirea7n4Y+iWPb
	VrgnsOcJjoL0bHmSXBeMs2taTQn11VfkUAsu8w8T8OX1g5kAfEQWhTu8wmBtuCj7HncSwHKBDPv7P
	gtEsDGerNh1gEHi0Yzx3wAs8nFZz+6z1GosFrOyZdFyRBvcy3682ef3qppA5joLLvqlpWGMpp3kER
	cdDd/7Gg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWJrp-009UGb-3u; Tue, 13 Apr 2021 14:18:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWJqw-009U67-Kv; Tue, 13 Apr 2021 14:17:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=sTPgu2ln3DAEveWEwhH+YqI8CVJ5S7C9xofYCriC2bA=; b=f3ONEIyFo5DYg7kWLawJKsU2fk
 Y8HMTdxmljnisWuPpmW4A3fR7qxSl5n0KqXcb/v24inlvuj5gXaNXtOUpF9RyDZW6npzD14rUyKh1
 BUEoe7JcwcHPzrA6O1mSd18Q+fAQAn5bu8YRcqDPBOHlm3mOEgfzSIV0XNkBO2VprEBtpBidN06Cz
 MAZVUDFoVkEKe0/abaPg1m3t5pQznkA1Qey3XKEvM6ZhBjjaN2P/emwLuVLHnAy/RWLHcakROqxMr
 ULclO2JFOEmQzv5Fhe5tWJ6iLTMfuontoYhzoFHCA8mMDii6I4GMGeI8YIEEHSM/qWfQj/hyLQfFg
 IMbcauiQ==;
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWJqt-0075io-R7; Tue, 13 Apr 2021 14:17:17 +0000
Received: by mail-wm1-x336.google.com with SMTP id
 o20-20020a05600c4fd4b0290114265518afso8836472wmq.4; 
 Tue, 13 Apr 2021 07:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sTPgu2ln3DAEveWEwhH+YqI8CVJ5S7C9xofYCriC2bA=;
 b=SFVvy2bgvPMkwlUk92GOdWjQ+woY7772qpSB6rF+GCQx2UlZR1KsYw77QqbO3yRNyo
 HtPFsc1PlQElXgO1R3/Uqithz1xgqGTt3hgMVce0Ol++7GKdjT0XwQwt1ZRl5h4gwkj3
 c03gXdQateAyQhgIKYAJvVRbr4ImuzlhblCiNwpbPA7T1hV1sj4/MEwGPdvJyfTkTGdy
 3Oz3zI3fIT0URG/G/LtqMATbdMUty+EAzlSV4bMgmPqYSfaCP/xGcY9H4OMeBq4IBp37
 fJYCa+swggOnaTt+y+q2cA6GzC+V/3EvdvR+dCvwAyKWRMygg0KsO8gekHgKOYE2UGkf
 SRbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sTPgu2ln3DAEveWEwhH+YqI8CVJ5S7C9xofYCriC2bA=;
 b=j6/YEmXfNCg+PM2bwzgKHoDZUAwo17AL5dP9zV8ZXK4bHqAnibiGKY1Lo0RZ5htrYI
 R3lK4pF+7nmHmgdVB+OWVpYTbJaeI2IJqCTmsV59zgRBEdOWzTmfHZSByh+aFuwPyl9y
 JZNt3isEH9R0PQrVkx3yfoi5yBivfrcssrVG7ng53Fd/lVz7Zom1WA0SZ3Bk+K7PF++q
 cqFnhD7aNqCUpHt3mWL9t/6ShSCr5mJVJmqrP5KrzMVJcz7+yZAeuFholRCmGbYmhThu
 Wc2S4xYBzrDv0D/Ti90vhlMkkKlxZ4ue/ho4HkSn1xqyt1TweP3LmQqVR7YcjifWdH4Z
 RAvw==
X-Gm-Message-State: AOAM530rXfuDI9rtookfSMNviidU0ywuwFT8gEPIrCMJWwyvg0lGJDDW
 RUxsr5JqlNHOdiYGRHbkTBg=
X-Google-Smtp-Source: ABdhPJzAKVUOboQWMYXxUQn1mTqBTg7RLNTVO2WgRlp1RA00Ubazj/qOzZ5+JLFsmPwM/a+bVwP83A==
X-Received: by 2002:a1c:7315:: with SMTP id d21mr214702wmb.155.1618323432732; 
 Tue, 13 Apr 2021 07:17:12 -0700 (PDT)
Received: from morpheus.home.roving-it.com
 (f.c.9.1.f.e.c.d.1.e.0.0.2.b.5.5.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:fb11:2681:55b2:e1:dcef:19cf])
 by smtp.googlemail.com with ESMTPSA id u8sm5469003wrp.66.2021.04.13.07.17.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 07:17:12 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Use only supported PCIe link speed on
 rk3399
Date: Tue, 13 Apr 2021 15:17:09 +0100
Message-Id: <20210413141709.845592-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_071715_894504_95E73693 
X-CRM114-Status: GOOD (  11.66  )
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

The max link speed supported by the rk3399 is already set in the
rk3399.dtsi file so don't set unsupported link speeds in device
specific DTs. This is the same fix as 642fb27.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi      | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi    | 1 -
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi | 1 -
 3 files changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 48ed4aaa37f3..476787027e03 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -504,7 +504,6 @@ &pcie_phy {
 };
 
 &pcie0 {
-	max-link-speed = <2>;
 	num-lanes = <2>;
 	vpcie0v9-supply = <&vcca0v9_s3>;
 	vpcie1v8-supply = <&vcca1v8_s3>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index fb7599f07af4..17ba7c3d9a9c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -469,7 +469,6 @@ &pcie_phy {
 
 &pcie0 {
 	ep-gpios = <&gpio4 RK_PD3 GPIO_ACTIVE_HIGH>;
-	max-link-speed = <2>;
 	num-lanes = <4>;
 	pinctrl-0 = <&pcie_clkreqnb_cpm>;
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index 7257494d2831..bc385ad45a13 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -324,7 +324,6 @@ &pcie_phy {
 
 &pcie0 {
 	ep-gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
-	max-link-speed = <2>;
 	num-lanes = <4>;
 	pinctrl-0 = <&pcie_clkreqnb_cpm>;
 	pinctrl-names = "default";
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
