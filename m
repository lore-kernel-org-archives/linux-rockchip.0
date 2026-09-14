Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97064C88E50
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2026 08:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RyoIVCvGqA9xtvrZCQpwrKqhQU+9QG4yzeUc181wQgM=; b=XTJg8ygZ1oFyZH
	VIoIJBT5L/4PSKTn65Lho9GYf0+aOL+7Cvkna+h9KCNGhwTI1NpTZYioa4bza5MP5iNQMxoylrG/E
	hpUrqXze/3XnK4KRbviuOXanLhAeF53j/+HofLBMpWJCVMUBy+08bV7GBuVAuynDsodaheHQhLlm0
	vXat+tGVApAQzjhedlmg6f/mbecfZaYy5ge8N1hGbFPbnRAC0C3Tx/+GJAT/eYY8afmi0vuY1IUCj
	36xa8bUyyEvLCodrHe1zJ3uONtP4J+mLBUkq9Ri5pcdjFB7LNiSIKafcIm1Pozx/DZCOm3TReZhi1
	mzvDMpoT423x8XnuziiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x62LQ-00000002olP-3dUh;
	Mon, 14 Sep 2026 08:47:20 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x62LO-00000002okL-3R8a
	for linux-rockchip@lists.infradead.org;
	Mon, 14 Sep 2026 08:47:20 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49cd38e0f79so8590515e9.3
        for <linux-rockchip@lists.infradead.org>; Mon, 14 Sep 2026 01:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1789375636; x=1789980436; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=BiGb6WiQWJmFrzRKswfmgWeyhlzVvwsEuctPqCr7l7Q=;
        b=6ep1CKuwdKRbmOik6UubsaZg8Zac1H7b/uMEN04qF8BlG6gyKDcR7WjRR58311mU1D
         Dq7z5018VoyCFJh0XocdbNce1TDoXJlLL0nl3J6nKUZ7tOB/CyzqMekP+nhyGBQwDVzB
         MC7roeyUSvP4wOcA/UGRvOfH/5gcARQaqQMkH0suMH8vww5VoDQRvgxoxv4WeiPqmnhI
         lgco4CdNq93W6iGdkg3z+T8KbM4fZisWzFbuuf/Qt5sj/lngeslgDG6Oth0Xo+8XLxpv
         cZg7pfysUHEaNFPUSLPMO/625kMp7uMAKq07X4upKy0z+mI2Jbti3pMn/O/pIu9+w0dR
         bPnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789375636; x=1789980436;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=BiGb6WiQWJmFrzRKswfmgWeyhlzVvwsEuctPqCr7l7Q=;
        b=d8KRXqeMJQlB+86AGJILhLojDwXFPJGEhe1xN8IcLyj6ttFRhz1IstRoK+eftKuC42
         mAg4d/ICrVdWeBA1LeIx2RQbQVTIaT7JZqVlyGJzbP76fVd8AD2VxWcN5etjDYBgWC5L
         vqI5Rpy3DYVwHIqIgZQrDiRJW1jfkbGLYIWALXKKUCGNuS7RG22+hJMzqAb/KF+aBol5
         Rw2x8Y62cXOCDS0+U30H790Y0Q8yl4qE8lngSIsmT6vR+DXcf1dGc6z+463HSp5syfp2
         /UvWXShI+DNI2F6RYe49Rd6fje0vLwBQ7o3pSVm941dOuBDYu8RB4mQPbT/HKwwzuizq
         e+rw==
X-Forwarded-Encrypted: i=1; AKwUvBzigmWVpwxMG4W0vs/8fBMJmj1vfZmFW+cqvoNy9d96a5j/NTZ5Tz91m+I3tu0N1jkO9W0XZIbXoGAZt/1dtQ==@lists.infradead.org
X-Gm-Message-State: AFuF++kXz/ZmWoEw7mpAhNFQwUxm3y5Yk96w6FTnrG6Jx43niNzdfSxl
	H6PbROWunuY/hHPUAdhcPUhdJLMRJeJwIiQKu8FkxgTQ3xoyHBJLZ6mxRzRDH52kRv5q60PEsWX
	k/xak33U=
X-Gm-Gg: AYBFou2cFuHl26d3ieCLSoFN0UzVc0qSdlFRV40/nFyQigBhMGCNObj7aT0fHFIY7Mu
	vlQwAiKpR6wNfqcStoodvFOs67ysoCy7RAZ+8kHtPsK5FoRascjE0u36ZrBXeuSb7pp0x6ID0vL
	Cmb8Woz3TdyG7AE47EjeRHuseskQnniELNOBJ6rhpMhgGndWxEfL4JzB9F3ZZk4N13mvWl64jYM
	TlFkqqUvO5U9Cqn1U44XxiAB94TbzJ+pfLQThe+gz0ku7uFGrKH2Bsc942fqga9E00tHNdxOY7V
	3zzMUaHBSzoQeCJCjG0T7bdjDNrrDwDv1haBJW7xH0gbUbI75KHnF1myR04OGFl1Krn66n2tstH
	7Kzn8GQnLyQ3j5BbpS5fKc6tDoQ703Ji7TOGmqtc3AQ55/mC6AAhrBQa2SSC6kqkMQPtxunql7r
	Jolr8ySCGTlxwLwsaFBSyXCtkQFoE7JrIWXtPtOf1obvqHmq+FTXl8/922XIryfMRLkS5GJfewI
	atuZc+D9rBhsxaUSgCV
X-Received: by 2002:a05:600c:19cf:b0:49c:ed94:cdd8 with SMTP id 5b1f17b1804b1-49e7a663d35mr22293075e9.6.1789375636366;
        Mon, 14 Sep 2026 01:47:16 -0700 (PDT)
Received: from alchark-surface.localdomain ([146.70.184.81])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e6cc11607sm199520805e9.12.2026.09.14.01.47.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Sep 2026 01:47:15 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Mon, 14 Sep 2026 12:47:15 +0400
Subject: [PATCH] arm64: dts: rockchip: Set gpioN aliases on RK3576
MIME-Version: 1.0
Message-Id: <20260914-rk3576-gpio-aliases-v1-1-ce5f86f9ae0e@flipper.net>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQqDMBBA0avIrB2IWqPxKuIipqOOLRoyKgXx7
 k3r8i3+P0EoMAk0yQmBDhZel4gsTcBNdhkJ+RkNucq1MtkDw6soK42j5xXtm62QoHHKalXXfWk
 GiKUPNPDnf22727L3M7ntt4Lr+gIIVSeBdwAAAA==
X-Change-ID: 20260914-rk3576-gpio-aliases-9c0a6088b59f
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1143; i=alchark@flipper.net;
 h=from:subject:message-id; bh=xSsTA1+Iig8rnrr46UdcEnmTqyfP4pnCIpRKT/lZv4s=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQt3zKl493uJBmRTYsfxiasex+ntehC9OljXSWFERvsA
 mfd/1JyoWMiC4MYF4OlmCLL3G9LbKca8c3a5eHxFWYOKxPIEGmRBgYgYGHgy03MKzXSMdIz1TbU
 MzTSMdYxYuDiFICpblZkZPgc/9Zs9pLzqxY/nhGV8HvV+a4TP/0nLDXQdtWPW3FtodMhhv+lMQ1
 7JS9MP6Y6Ke9bbihns0MOn+PB0x+cbJRm7zq7/DcnAA==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260914_014718_874486_A129B1DD 
X-CRM114-Status: UNSURE (   9.67  )
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

With no alias, the OS is free to number the GPIO chips arbitrarily, such
as in probe order, which is what Linux kernel's rockchip_gpio_probe() does
if its of_alias_get_id(np, "gpio") fails.

This results in GPIO chip numbers arbitrarily shuffled in userspace,
causing confusion and pain.

Set gpioN aliases in the SoC .dtsi, just like other SoC versions do.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index d418bfc04097..e87ace5d05e6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -21,6 +21,11 @@ / {
 	#size-cells = <2>;
 
 	aliases {
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+		gpio3 = &gpio3;
+		gpio4 = &gpio4;
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;

---
base-commit: 68142f986ff04b2b70b31db00f719bf690f64a9a
change-id: 20260914-rk3576-gpio-aliases-9c0a6088b59f

Best regards,
--  
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
