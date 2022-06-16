Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AFBAC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 01:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NCB/Vip8vDgt7cC+XDOt/bz8nK/S7FU5rJlwT2Av8lk=; b=motJ93u6/7Hvyp
	oVUwG6NbXBbIiTg/kxSwuXUBMj6r7H2n28iqS8hNoe/FLfiZssePhBOZaZrEh2J75WCIF4kmTblxJ
	P7OFOevqiiKePc51bMbiikBrjcXppCtn2tmo4Co5aFF7I8spOQ/vywXJ3JwBT93QOowohnssM0vsW
	boXzbSLjX5lExN56DCmNqJfsry45PQjO4foDudY/KGNqII57vBeQ+vyWvQ0noFClk7WlPDl3VDFMI
	2SwsbqepQbF6Whyl1VRDqYyxYr5DvDWusXOdRxH2KE6vA5yZgaTYl7z2CZhYZhMzj95z5t6KjjN4+
	GCpN4oU+Qc+GoLTW4jyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1dww-00HICU-1J; Thu, 16 Jun 2022 01:05:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1dmg-00HDGj-AZ
	for linux-rockchip@bombadil.infradead.org; Thu, 16 Jun 2022 00:54:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=CXB5XzjU8LfwcLqwKO65LrYsijml7F+eyLiUznyo7HA=; b=eKEyQxR6mKABeorCVE3OAjAVR7
	RDMU9KVSzz6drVECuuJjgzvkDdbcN1nw7yC2mjaaUaOcOfREa3MgVtsKWoITW+iZQhcgRZTgc6RgS
	djL1ZGmbxx0TtaIZPg035Nj6GIUnVCLYJzGuGrWk0C37XHf1RXkG8s95952qtTMFjU5zU5AqO2Wl4
	enB0y7EHuJG2XE4+YkoNH+iMGytZgKlC87w/B18GdJiohVLzpgUzcF+qGZ/DQ2Kp2x3XcNDrZL2fY
	/RVHFRvZ33YB5cUGe3CEVcJgBxfyLJ1LvoZ3CIRE5JxQ80s5jrpIjdBIe6a8TawgNtRxKPmioNnyr
	uKRJwcCw==;
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1dmV-008HUB-1W
	for linux-rockchip@lists.infradead.org; Thu, 16 Jun 2022 00:54:45 +0000
Received: by mail-pl1-x633.google.com with SMTP id m14so19017plg.5
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jun 2022 17:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CXB5XzjU8LfwcLqwKO65LrYsijml7F+eyLiUznyo7HA=;
        b=VGry34Lsq0AAS5nS8T6G1tLJmFhnHD7ECJLqZEOUaJy7QdnDMbPqUOUZY6b0P6If+x
         3Uol647tBlTWP6/ZisPA7IHqknVh+L9peADwDRasaWhMrymZ41xMQwCp6s3Y4WwGB5pG
         Ds/a0MWQIUGMskAyAgZW3yACJAm/N0IzCY2sK5fuOPhKxxqhXCucmeW2oGgcCCuy8BxZ
         z+xri6fR8xTTHBaWhZj6XAfXbG8wl4u/ET6YjeKflaW24AurN7ZA/63448M5zw62FM3j
         +mRfFSzgTFX2ghXYud3l1uu4BGvm2tF6mzs61wuv5+waU2zF0CTi0+D8HNccvczicN5y
         e/qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CXB5XzjU8LfwcLqwKO65LrYsijml7F+eyLiUznyo7HA=;
        b=hUhI3W2SqzYeZatMFo9ObnPOXTRJ1nwfb0zciHhqxyaBoiY+n1mgRXFJPzE8vTXUxg
         ACP8SKd4Y1+M8JQfVmlYRUEIz8R9+2eEnDLonb9YIG/wO05waNnQgaJEVqYPrtI5pkYM
         SLhywTYTlRLThLpTAgj3GcIk8VMJqmCvTNrVAxIyIyIVI61KHApaJR1PZTF5PYbFyIeu
         IFqb4B95QsZWfvRJXo3/So1aQasSS+00c9wkReABPhkNunr1XJp209/TRvDf8mc6d2f5
         35hy0ELbiuBSv+QlURj+eqvY0hqgpnjmVIfAkgQVMyn2OSkpi/8QDeBia5ac8qTZQx/m
         Yu9Q==
X-Gm-Message-State: AJIora+hwznOY8pRVVUDY/AG4nkjkSt72ye8oR0J1QXTdp4hAN/94Sd0
	gnIo+LhIIstF1afHDiLzhe7h+g==
X-Google-Smtp-Source: AGRyM1tTJuVv6wY6oC6Dqloj1ueiXM7oVUn01PuF4hqwTjmcDmQnxyteBUfMI5SU0Y3/qkOFQiy+jw==
X-Received: by 2002:a17:902:f54c:b0:163:f64a:612c with SMTP id h12-20020a170902f54c00b00163f64a612cmr2228151plf.22.1655340876407;
        Wed, 15 Jun 2022 17:54:36 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id p4-20020a170902780400b0016760c06b76sm233660pll.194.2022.06.15.17.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 17:54:36 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: arm@kernel.org,
	soc@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 28/40] ARM: dts: rockchip: rk3288-tinker: correct gpio-keys properties
Date: Wed, 15 Jun 2022 17:53:21 -0700
Message-Id: <20220616005333.18491-28-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
References: <20220616005224.18391-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_015443_312654_2D64E06B 
X-CRM114-Status: GOOD (  10.15  )
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

gpio-keys children do not use unit addresses.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/rk3288-tinker.dtsi | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index 9c1e38c54eae..09618bb7d872 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -26,14 +26,12 @@ ext_gmac: external-gmac-clock {
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		autorepeat;
 
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwrbtn>;
 
-		button@0 {
+		button {
 			gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
 			linux,code = <KEY_POWER>;
 			label = "GPIO Key Power";
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
