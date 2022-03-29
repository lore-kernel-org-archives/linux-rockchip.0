Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17745C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 11:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhmLAK7KlmkgL4rMxCRGjJpsQInS82eSuaLm6ZKCMRI=; b=BHA+C3sb4B1oh6
	Lj9kJqGstFOol2Iig01/qHoCUc/KeEyUz0YoWxWHi0eIRQugLBk71Dq06HwlJJna9IFE6EXeY+JLn
	HAJps83uT6YJwJRq4fzu5Z3twW11euEsiH7sxN+RgcJnFyHfoFHiMihQvkeyJCsNIkrpJPj+KIoBR
	35RiP+b9Kamjr7qCJnflvH0in/+ZsMj28ttf41opWo9IP7wY6ojCBv0s6Mrso7jQF0abFnKMGr3Q6
	vUNO6aT1vYZAxVeWImAJFX36TbgV1VqvbML/nkPZsoKgWjrBr6+J2UzOZQZBlPq6SPFZpJzebKYDW
	qw1348ND6oGxkmO4hU7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZ9no-00BwR7-BZ; Tue, 29 Mar 2022 11:14:20 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZ9nc-00BwO9-F3; Tue, 29 Mar 2022 11:14:09 +0000
Received: by mail-ed1-x534.google.com with SMTP id r23so20311626edb.0;
 Tue, 29 Mar 2022 04:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9VcDy2eNu6zj3ojAJOI8YY4Y8u6xcG4aGKHl4udgapM=;
 b=V5QsH+2onl3V2K7/qMMnP3xRE7D2OQSwXl+udTtOIeKGKu52DRJkFiQs9pRlTb9VXz
 MUIL91319MYihfoMWGVum2bYCPSgWBUy6xbVZ18NfDwN7VpUroxuxcFaxkO/ckvIxkkc
 LdbvnX1OrkJHaXzW4yscUl1oxvh9YvXS4Tu+hSRKa6kfy1iRouEfI/tB0n3IF8GYuUN9
 7Z09PAnMGQ6A3SIgNXVVsVSMrD6dqav7oCZQuNKV6BnnTkYo/cftyq9FxOPcxdqx6Qvb
 aUhj/8KducT6DxqRjlUUUbGdD4YqCUmisPnGr3DS5tTKFvx3WKTN4o61RoBngQOXEzr2
 np/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9VcDy2eNu6zj3ojAJOI8YY4Y8u6xcG4aGKHl4udgapM=;
 b=7oe3V/h7JInob8+yXmZA8ozfbd2ugxI1iaVtNYQ0eDpblYYziu1zKQ/Wg4iDhNbJl3
 i8V7/aCUAuqNaBxAS+cEyqmnV7a20okciD2leGKLAtGeCirLePMVCYj2W+Oxji6s4P8o
 OOseA7Ug9NzJJBLvC0JzCKvmjhqeCCwZB36Mr/9TxD1ECt6nVnXeImD5cieK55fhiUfy
 33/l1qSxk0ZP7vRrdBa9ofxI5N6/13CckzmoSwpgzpPlO0xYL83mo3KKd2HjkUDgOqNA
 lNr2S97PkpwvPcK0EeKxpDt926RAemdHz3H5BZQYiYOkb5MS0HS37VlinWQ1+P/u61RO
 54gQ==
X-Gm-Message-State: AOAM531iF9ESeu+hIsqJDZMmUFpQaN55EWQFF05kOId7L9ODBQkSRHu+
 64ytJg4IyH4f81EOTLjKFsQ=
X-Google-Smtp-Source: ABdhPJyGYRSeP/JOed6F3ZwWdEuBiK2pphyO1xSQQf4WX4orYSxfJ8d/HQYcUZ58o/BQHrXIji52Qg==
X-Received: by 2002:a50:bac3:0:b0:418:edb0:4ae8 with SMTP id
 x61-20020a50bac3000000b00418edb04ae8mr3749755ede.219.1648552446475; 
 Tue, 29 Mar 2022 04:14:06 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 u3-20020a17090657c300b006d01de78926sm7006844ejr.22.2022.03.29.04.14.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 04:14:06 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] ARM: dts: rockchip: add clocks property to cru node
 rk3066a/rk3188
Date: Tue, 29 Mar 2022 13:13:23 +0200
Message-Id: <20220329111323.3569-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220329111323.3569-1-jbx6244@gmail.com>
References: <20220329111323.3569-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_041408_554334_7303FA97 
X-CRM114-Status: GOOD (  11.18  )
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

Add clocks property to rk3066a/rk3188 cru node to fix warnings like:
'clocks' is a dependency of 'assigned-clocks'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 3 ++-
 arch/arm/boot/dts/rk3188.dtsi  | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index c25b9695d..de9915d94 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -202,8 +202,9 @@
 	cru: clock-controller@20000000 {
 		compatible = "rockchip,rk3066a-cru";
 		reg = <0x20000000 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
-
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 		assigned-clocks = <&cru PLL_CPLL>, <&cru PLL_GPLL>,
diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index a94321e90..cdd4a0bd5 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -195,8 +195,9 @@
 	cru: clock-controller@20000000 {
 		compatible = "rockchip,rk3188-cru";
 		reg = <0x20000000 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
-
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 	};
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
