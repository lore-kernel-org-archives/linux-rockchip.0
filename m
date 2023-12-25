Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F152C4706F
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Dec 2023 22:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxJkn/7ymk+wvh0RQO/1KrG+FmBT4y5qbvfF3Q8Ziho=; b=jQtm/SUcoMoJPY
	SFUhOClGRk9VBZntWdBcUQz+hEft7SMbJuLSHxLwi08eDfrm1XDXjvLo05Fri0uQkMX+MSEpIDug7
	c/nM9xOVst0Cy0qYA7oTPZ67YGgM8CNtM8pAUdCBLuCpNc9bhHZ5LkGktwBSmGSjlVO3fbhCPte4u
	pk4X9n7rM+tN6fS5u7GX1SvmnvsCQfCvzFBedIurWILgkef0skLj1HRCyIXCcC8YrN2k1JPLQqPru
	YvQZGuVJrBitGloyHr/cus/vfx3V9eIzJxLJmJBNxGt4kYEytLVK4H9LKiTu9/uLLweNKzDCl0s2f
	u9R2vUKQvjAbYxlQbsOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHtRm-00BKPm-0A;
	Mon, 25 Dec 2023 22:29:18 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHtRh-00BKOz-22;
	Mon, 25 Dec 2023 22:29:14 +0000
Received: by mail-qk1-x736.google.com with SMTP id af79cd13be357-78101108e3fso322713385a.1;
        Mon, 25 Dec 2023 14:29:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703543352; x=1704148152; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UBjIIiV/w0rycQ7ypCmDgdwnPkjj+juDPZk9jbDH0Jc=;
        b=ecr//E2FDRpPjA9U2u3IpCBZXdBYV5C8OwDzLvPohYKUACt10myO9TwGJQzOtwftBO
         S5H5uTEqbuAQ9EiF+64Bs/WLbL6ZzD3pNJwINz70gLkYr86fu90/yIgL6bqDBMXGMuB4
         nP5XiKahPJirrGcaeLWrS9ZoRKtV7KIq6rSyb4k0Lit+X5ugdVr7mj83ILHmbiMdqfYu
         Wbe9IqQ+BnqHcQzEnj6zP9FO8npxNIabiyeH1TXalX0PR4sMU1gnbezMjXnvagVlNCbz
         Ms+XJPxJMlzlBT5AWJRxpuGUl5nEWvBbWteT/s5w7l5SRaCnAV53dvYA/xTDWKVpW5Nq
         Dnsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703543352; x=1704148152;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UBjIIiV/w0rycQ7ypCmDgdwnPkjj+juDPZk9jbDH0Jc=;
        b=VqyDeZciN1Nfj18BYtfTMP5i7MfxDpX+xexJdYFjxKqLihf7g418xmbQS3h5aRioli
         ZeP84nPjUamEpt6Re8pHfIXuLff4OZZ6+3uIAcHMoSVZ9SwvcQVMSd19K8Ib/iViijTr
         8Ue1CorvTIbo2qiimXrAB1ZEVhS24JCcgwFj0SuO3Hv9gPpzYk3yb0gZso+DAzkeB0Vc
         erz9ZztuIkgmAC9DmxJAtxcmb8QZDBfFWRVjyz+qwqPSFjaXofuJaxUpA7qo/BQBn1OW
         1IKstOkURe/hzXS9Hhb7DO1Z9jdIO8+nXH+LsHDZF0V44LdmKtWR4SR14+sZaDmx56n/
         kkxw==
X-Gm-Message-State: AOJu0YxOkCRkppGwgaql/Nexny1d4nyyno2smfLikAK5RmCApxjR7eOj
	HAmBapi/1Qcf1S4JjgkxQeg=
X-Google-Smtp-Source: AGHT+IEq/qS6oCN+yyKq7dAPzoMeuKQ19G2WCt94dfb77pkr9X+bBLthS8GxgqrMi5vIWeihhcrsVA==
X-Received: by 2002:a05:620a:51cd:b0:77f:ad35:dc33 with SMTP id cx13-20020a05620a51cd00b0077fad35dc33mr7182979qkb.65.1703543351862;
        Mon, 25 Dec 2023 14:29:11 -0800 (PST)
Received: from localhost.localdomain (107-015-241-140.res.spectrum.com. [107.15.241.140])
        by smtp.gmail.com with ESMTPSA id ay8-20020a05620a178800b0077f15eb3528sm3881457qkb.70.2023.12.25.14.29.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 14:29:11 -0800 (PST)
From: John Clark <inindev@gmail.com>
To: "Rob Herring" <robh+dt@kernel.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: "Thomas McKahan" <tmckahan@singleboardsolutions.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	John Clark <inindev@gmail.com>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: correct gpio_pwrctrl1 typo
Date: Mon, 25 Dec 2023 22:28:20 +0000
Message-ID: <20231225222859.17153-2-inindev@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231225222859.17153-1-inindev@gmail.com>
References: <20231225222859.17153-1-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_142913_731854_9796FF3B 
X-CRM114-Status: GOOD (  10.86  )
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

Both rk806_dvs1_null and rk806_dvs2_null duplicate gpio_pwrctrl2 and
gpio_pwrctrl1 is not set. This patch sets gpio_pwrctrl1.

Signed-off-by: John Clark <inindev@gmail.com>
---
Changes since v1:
 - added commit message with additional patch detail

---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index dc7b88f29172..a0e303c3a1dc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -448,7 +448,7 @@ pmic@0 {
 		#gpio-cells = <2>;
 
 		rk806_dvs1_null: dvs1-null-pins {
-			pins = "gpio_pwrctrl2";
+			pins = "gpio_pwrctrl1";
 			function = "pin_fun0";
 		};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
