Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96BC9C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jun 2022 16:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CH/iQLOoxOQVgouosLyc02Am6LzDRwxhIObTmCo8MvQ=; b=EBkRAvkH4hB9CZ
	F01y4V5AEGX/lQ3iL/HpsNnJdJwMCOHm5Du2xsbwTdxyv+FhY5QRQbgAnYw+RgwjZxewrn0zbxcjg
	s/qE3N/Q/Rls1qGTyVsFXhyUHHgJ90FyRxJbEZSp639edJ67IMtD02fb/Fs+yCb46MTbXnJXMNbbt
	VcWWtxcLFVBgF7k8gpHU7UZ80wKLLggcpLoVqaHcNgtrsb5IpAt9/kJMDxdQmwmbNXAsOkP5t61Z6
	XAOXID44+61ABJmsIe8RKE+HXGG7wjIoXYUfS6oM5OT5COBrojh/LsXp25ktmtjkWXyaaga5Q8tOU
	vlMhT4oh4KzMTNymU49g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyFeG-00240C-9b; Mon, 06 Jun 2022 16:32:12 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyFca-00235c-Qk; Mon, 06 Jun 2022 16:30:30 +0000
Received: by mail-qv1-xf31.google.com with SMTP id j2so10541183qvp.9;
        Mon, 06 Jun 2022 09:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Uj9IThCIXw7MmlitWv/kpBQW2fnYrdG6q6L4yRpNXrU=;
        b=WSVHIJ2V4JVxNIpNbF02Y5N3cY/ORPB5W+ELXtMq3RlArA3/Ww9ebxkySarX1fiif+
         7yylsTlypXMbeWEGDFghk6egHH7zdc0OSmIbakyDwbdrr0kSeE3J050dxn/5Kur9zZRt
         y2TsdrprBjIMiRcfbB9oe5yDSxWx4FtJwu5CF0zhY0k+Swv1Aerdlbsv08r3KYZ/yA5f
         IkdhXVaBROswnx1lMCPn1CESZ1ISHWOMpGlGFhA0h7j+pZ63oddoVWlpt77GshKpVGyq
         OMzQfS+8rqs5+2bKTe0vPAGKeToLstintiQMRgdM1yGz+KoP53W4U4LU6gqxghhjkqk7
         kPqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Uj9IThCIXw7MmlitWv/kpBQW2fnYrdG6q6L4yRpNXrU=;
        b=cTloOXnKIfItya4ibEH/06U71hZU99Sfroj41/T4pRdZV3CjlZwY4ZTLiz/DQYVE2e
         GPgc7RVUx+uRooLpuiN3yANaRzHQdcfN4uTauT6pWXsLkXmUSpiSILor1Pzdf32KE7Th
         hGd/tBZBYGwxSdm0/0ubW5ZiGAzBM/VGgYsIZJ8H5kg7rp3PXxax52Hx+haPc1M3DcAD
         K3TKURnoEqaFGbHhB/faz6og0HDRR1WM9DNPSkFwB2IxLiVw1eCMLtUwOqRp3iAlT5WC
         59Wsgy1y5a9olPumJtY/fY8fz65pHl2ZWfiqRGxXmejUX+UzJvqrL2W70KHJZEGIiAui
         hBAQ==
X-Gm-Message-State: AOAM530xXryV1XNMWv/Zz4Lqmn7C/3O+xEZWHF2GA7YT1NGadKJYK/Bq
	JeJa56RUEKKRdrdg6Y+H5bwfCQtS6jw=
X-Google-Smtp-Source: ABdhPJx8DcER+KpdwW/dNyTBFgzXFRCtviHEu5OoAfCgnM6qWGz9mtUpn4YaL1thxkL4dgUTEWOY0g==
X-Received: by 2002:ad4:5fcf:0:b0:467:dc87:82ff with SMTP id jq15-20020ad45fcf000000b00467dc8782ffmr13728091qvb.14.1654533026466;
        Mon, 06 Jun 2022 09:30:26 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
        by smtp.gmail.com with ESMTPSA id bk3-20020a05620a1a0300b006a6ba92d852sm3329789qkb.83.2022.06.06.09.30.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jun 2022 09:30:25 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Peter Geis <pgwipeout@gmail.com>
Cc: Frank Mankel <frank.mankel@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Fix ethernet on production Quartz64-B
Date: Mon,  6 Jun 2022 12:30:23 -0400
Message-Id: <20220606163023.3677147-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_093028_899143_21BFB796 
X-CRM114-Status: GOOD (  11.49  )
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

The production Quartz64 Model B has compatibility issues when using
rgmii-id mode. Switch to rgmii mode and use the SoC's delays to ensure
full compatibility.

Reported-by: Frank Mankel <frank.mankel@gmail.com>
Fixes: dcc8c66bef79 ("arm64: dts: rockchip: add Pine64 Quartz64-B device
tree")
Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Tested-by: Frank Mankel <frank.mankel@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
index 7bdcecc0dfe4..02d5f5a8ca03 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
@@ -133,7 +133,7 @@ &gmac1 {
 	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>;
 	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>, <&gmac1_clkin>;
 	clock_in_out = "input";
-	phy-mode = "rgmii-id";
+	phy-mode = "rgmii";
 	phy-supply = <&vcc_3v3>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac1m1_miim
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
