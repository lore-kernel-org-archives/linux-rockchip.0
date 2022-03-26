Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 773C1C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Mar 2022 10:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oX4UsNlNSQ9iHsd1zkPJrjEhvYDUSAyoFenuIAHTTf0=; b=te8bQGWfS2mh9B
	n8UU39+SbTz6GQmoNWHvV+j0+Pq+dxepZexyIJWDhMHUIkyDJmIk+mkQkwApYp6q/NClFodCxs+aA
	rzoEI3J/xYQi4nUmuwgACfqOISOdCAWiwpvS3eLbL0pomW7Ihh5wf7P5KLL8aZaXa8PkKdL91gPab
	NGLtCLmF6VooMUeb0+TfQWhnlN6jQL/frDKIFSG6ZDF3Li18xpHPghGOHNokWaywXbICB444WFfLb
	k1okkYdarXXP++xyq10nIUvs+6NErkaCGBAonjFOt793pxrqID7n8aqAjmPUFCMkmBEPs5kQW1vLG
	EHoRB927lcanMx0R0rCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nY3eF-0049C8-OQ; Sat, 26 Mar 2022 10:27:55 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nY3dj-0048xj-8x; Sat, 26 Mar 2022 10:27:26 +0000
Received: by mail-ej1-x634.google.com with SMTP id qa43so19693370ejc.12;
 Sat, 26 Mar 2022 03:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OfRX7xUCz0VHclcUMj2G1rk65qDiyF54u2Cxho1r1WM=;
 b=SONsoAOtA4moNtv+X/3zVHRVaXMg1KRgwt6swuWcVD2Qr27LFycDzSiPrH7kfDe1fD
 OdD+m4gJi8YvSiYqL276hH5LMEjZS7ZHcrvmq6rfPOEMuvwt+oBBPsssG68BfR5bvGPR
 Fz6NEj7K1JIdoPs43uF0yLEn27b1l1bqErygBUSel3YrskZOKKgKl7aQsIDlgkWIq7f2
 i18L1UiwLdYtdEpcpBHpwc6zpXioWjLY7Aeygpvo9BNmxFChpBkJrEAJRq4sksXVeSh8
 w0oBDqwJPU1rb0dpHnbaWZd7tHXBqywFiEg0Q20OWIiAgmlJ95s1/Mgt6Hplkel10/oG
 fbJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OfRX7xUCz0VHclcUMj2G1rk65qDiyF54u2Cxho1r1WM=;
 b=pluQz5CHUGqE7T6bnohEJytS3ILwKzcjZLlooWhxnz+b26RYdKja2nkErlxO9RStwN
 x0QAHqb9k0QCV007dk5PbFP4s25kKdG4mIMj2Xj3ZUMI3oHOfv9Ni76eNEukr6hASynw
 yUJNX5EDn4GGpj5TsmtQc8VEq8mQj3SOreVVoqtOP7ndXPPXHU+5uAQ3XLlDlWED+u+1
 0P0Fi5gKN3/Gzm0MsnUc9VatZxnZmSd6qlbi7D9VTmrMme2TIwJbNtKB1E69vur1h8W0
 vP1CMeS3Mg3+8DG4dX/ZDFDuZhtYeiDHMjCvKeeNc9nrOYsjnBmadqv8P77BaumORXA+
 KO8A==
X-Gm-Message-State: AOAM531NgblKPXh5qsBwKGtjssq2ZB4irh8LSIL9PkG52h5p54DgVrrb
 bLXVOajhmSmET+PJf6g7va4=
X-Google-Smtp-Source: ABdhPJzqvyfol6yYH7+6ZqbdIgJabDs9fjQ/2LVQ8vNQd2m0HWx7rZbIYE5FigCYfqLSKN4IUexg3w==
X-Received: by 2002:a17:907:d28:b0:6e0:996c:7e53 with SMTP id
 gn40-20020a1709070d2800b006e0996c7e53mr9443800ejc.658.1648290441785; 
 Sat, 26 Mar 2022 03:27:21 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 g23-20020a17090670d700b006ccfd4163f7sm3209021ejk.206.2022.03.26.03.27.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Mar 2022 03:27:21 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/3] arm64: dts: rockchip: rk3399: use generic pmucru
 nodename
Date: Sat, 26 Mar 2022 11:27:11 +0100
Message-Id: <20220326102712.20906-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220326102712.20906-1-jbx6244@gmail.com>
References: <20220326102712.20906-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220326_032723_334934_6F59883C 
X-CRM114-Status: GOOD (  11.15  )
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

The cru nodenames should be generic,
so fix this for the pmucru node.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 88f26d89e..01c08a2aa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1413,7 +1413,7 @@
 		clock-names = "apb_pclk";
 	};
 
-	pmucru: pmu-clock-controller@ff750000 {
+	pmucru: clock-controller@ff750000 {
 		compatible = "rockchip,rk3399-pmucru";
 		reg = <0x0 0xff750000 0x0 0x1000>;
 		rockchip,grf = <&pmugrf>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
