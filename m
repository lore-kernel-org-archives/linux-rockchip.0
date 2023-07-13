Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83911C0015E
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jul 2023 14:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z0O5KDRVKIhb9U7x1iabYZfhAHzTfdod1wAtGoUR/2M=; b=XnPm0YJK1SkRiV
	aCoDoHWvTGWerBmm0MAb9w5fP75t4dG5vOmdnFxBGIcol2nCh71fWO70ZNDxj1/p0NiG13uStyT9R
	hT1ZAeJPw3a/TXvXHaS+ZEVys2JDFu8xqsHBQjpqVhCzKEWE6t36EzDaO2wX8bQ8hseYTS7BR5Wfc
	EWK32zhvEp8FCLSAH4jlhSiuBF0uAh2DVunjt4Bb2/lYYVRcLCYAts/fyyv6ei1dO1m49rB9Zgwrc
	dPb+DLCC0KxRYHBgOEsWtxRt6BRtoGK85N4tPr7WWMMDXqwSKFJS6JgTC8HLWQBmqIvy7YJ6p6oTy
	nXP+6tOddvztXUfRluGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJxUO-003ail-14;
	Thu, 13 Jul 2023 14:40:16 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJxUD-003abA-2A
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jul 2023 14:40:06 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-666ecf9a0ceso515499b3a.2
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Jul 2023 07:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1689259205; x=1691851205;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7FgQIEmSzQ4dFeEFG76qRf/jhDRaMc5SrZrSKL4bD1Y=;
        b=KTEmLT4F8Cah0ovXAWR3WZ+iIf5n88zvYx6AeJQpdfDQGPXSTGGMvHYv2c/+6nrJRP
         9l4h+HqU6yslx59r8zY8+3FL+8GVx3gmqft44V74DU9RCabgvFfGdOs6zI54tVHUFlS+
         UVhSALUdvxRZLShushRqNlDwCQVTJODQfYNhkHERV2vo9sVjLzg8oAQxCc4c8JR1tGCP
         5Ukb7NriUld+fbt71YSjdOVazfB7CkvdTfaYUPIWbZl3VrTEm5gyBnwYwiZOZac4k9jq
         n6j55WQYrlsUHz2xsIw/dHsoOQzrPuOIYg5LlQmwJ/cidUo2NhVZtksSDpq1Ul9lj9fN
         eU1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689259205; x=1691851205;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7FgQIEmSzQ4dFeEFG76qRf/jhDRaMc5SrZrSKL4bD1Y=;
        b=K/kb91cEK8Lk/0RRJWetwAiyiXkpouH+z6A99Mjl1hmySEvJItjKfhXsX+Ob4ikbQi
         pL7zaxOrctN+7jVEeBrFOiY0+3qSu/1r/+ukP3UVw97ACqvA6gxZr+mLhpMptcR8JsPh
         2MklA1Rt5wakSgf2JtnxywxN79F8pZy2IoEKte3zL+dSkdg2m/w3h/4DVM9JHBlVug+J
         bv3BcNLc0wYDnMH1OtS4tXDEeUDYdGFuZsCU+S7LDd4jt6/WK7v/FXI+mmG7q3ICBwl4
         Gt7bvlKsJlUi0NsviKQ8FiR9nZ4S6XypKAbfC1iuO+zXebhm7w+NZ6b+GpdU/H+/77VR
         5CuQ==
X-Gm-Message-State: ABy/qLaQ6a2T34FdXSDoo5nGSJrRJapjmGuZ+gPMMyJd4OstGkpH4XCT
	5VzeETC78HimNkA9n0agxYE2VQ==
X-Google-Smtp-Source: APBJJlEPTj0LTZ9j4HJ7wKnTjcCoEfBrmnuijG+9GGHwH7UEyrUfZvu2cVGcA2ICM7t3pGSIklBJqg==
X-Received: by 2002:aa7:88c3:0:b0:682:562a:39ae with SMTP id k3-20020aa788c3000000b00682562a39aemr1908978pff.32.1689259205162;
        Thu, 13 Jul 2023 07:40:05 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:4984:5087:308e:21ca])
        by smtp.gmail.com with ESMTPSA id d18-20020aa78692000000b0067a50223e44sm5565764pfo.74.2023.07.13.07.40.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 07:40:04 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 7/8] arm64: dts: rockchip: Enable RS232 for edgeble-neu6b
Date: Thu, 13 Jul 2023 20:09:40 +0530
Message-Id: <20230713143941.1756849-7-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230713143941.1756849-1-jagan@edgeble.ai>
References: <20230713143941.1756849-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_074005_734035_AC29DF65 
X-CRM114-Status: UNSURE (   9.55  )
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

Add RS232 support for Edgeble Neu6B NCM IO board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
index 7ce87366c16c..1bcd64680ff0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -77,3 +77,10 @@ &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";
 };
+
+/* RS232 */
+&uart6 {
+	pinctrl-0 = <&uart6m0_xfer>;
+	pinctrl-names = "default";
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
