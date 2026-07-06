Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5E7FC43458
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 19:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gzGpQmLFA5VjDGJNaQiXfxzzX9XxPkNKCGgUq2e3r6E=; b=Hev2IXoAEnxDwE
	TPQhBzVtwB0k6Vm+yi0w5WVTiye3+be5f9jySmHE/KduIRFhZNPPCn7Q+s+xWF6+ofIEcRH6FYBe2
	vA55wHbn1e7ptlHAoIriHysio+TA4iGUx9BSdgzyXO74CFgoHCY8UQks2lCzo8W3tYoVqdOVL2T9r
	PoBhiA9u3lvmb5+8MO6rHxPwbikj5uGgyxtidwz9eZ/W5rv0ndFx0pp218WxyD+AxIrLCuZzUeEy7
	/zn39fC+VZUYn+ehG7fi9DtwCxcWuT6GvCcVMOkBS35mypWcZMMd9zEbIn+nwdgyil07ORjM6hZCp
	ZX5ZKz4USVDEdWADrnLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgpTa-0000000DVUF-1ZCx;
	Mon, 06 Jul 2026 19:59:36 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgpTS-0000000DVIl-0lff
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 19:59:32 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-7eb4d532e65so1011415a34.0
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 12:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1783367965; x=1783972765; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OhHQ34ucfgP3gbwbph5XNn7ZzhoehEkZZGHdIdb2gNk=;
        b=BleXgbd5h1e3xQuGEajnFF8Y2bJNerdhmPqntUmbeO83FWUEkJ4OYGThV8/Kc66A+Z
         9nhPQ/ugkFeJZoPkO8Y3ptOsGZCHSvcPxPNWYAgoJnraotQPI64+ZvwXAPmFBAkCUFQP
         XNWiklYeTi4HWoWt92vVCVo3alsBzEUGO1kQU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783367965; x=1783972765;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OhHQ34ucfgP3gbwbph5XNn7ZzhoehEkZZGHdIdb2gNk=;
        b=IM3JfQjD6TVIp4huk+FsCc1mcKQv0nV2aGq9fkfXy4ojFVp5eFQ2ncE0PTYMp+sbeb
         JoKR9nCs8b7o/d39Me3q4BpL1z/XfobxnujadEsWrKfMwd7wXe8mClq2hDSdKXzKz0Gr
         nbw00AgSQo+ZLhba5vC1xjzvctHcv/oP4gyCQjXJz65ELpgy4b4m/joukExaYwVUk1PT
         ugFGzixiiyUvJMHmeZH40PowDme9qbMzhgLSFPbAV60MC8kSPXEhXjr+WVKZD41uj2r8
         DQ719TZGXWlgwmBjVxJoGt99iwSRjBtCWDCDlB4ADWXb12coR+if+3mIVo3Q7881SMnQ
         zH7A==
X-Gm-Message-State: AOJu0Yyf+MGKYnfTM0R9llfX4B+UFKFMF7Zc5ZWoA2LML6KAX5MeiKrK
	kK1g5uKT7aKfrukR1wvobflfWXPfRs1iXayXWSoxAP3MvqqvyBDmF3/dubAJJslDWA==
X-Gm-Gg: AfdE7ckCFABj4NhujXjc2K62ex4j4R6pEVypkL+yrHI84OuW7rHXtGuxe4Y5mbhbMrm
	bYloNppTrUDOVp3m/CpqVsAdGxi/uBUlwdSGTd7Zo0s5Zy6yqVjft+H6yUFV+E70GKM1545L1tE
	mW64ybsuZqC777lBytJ/iTsQoxFCnKBupTEBSG6+vnVdvQe9m6bKv1zk832EKpZ0aMqsLM/88zd
	EKKBSPXvDyKGyPK3ZjF5Ng2E0VRScMpUmwdOBkliOqo7AwYE7KrYrzWSsLaT10LrFpbS8TECLvK
	wfO/9EcNq5oLsEorEmDqp0NKO6NbvvpQogVFo9StpSvVN2MZaix8PoM5BMYzA3WTNLpe/74Y4L5
	+yRwZTHl9h9wp4vxE9oG7j1EjtiRTWGS3xbhE4Q/C+5XXWFMO+aYd6HBi0NQQfL1y0ndEIgD6KD
	J4e1he0lc=
X-Received: by 2002:a05:6830:82c4:b0:7e9:fc62:1e0d with SMTP id 46e09a7af769-7ebb233afd1mr1278586a34.18.1783367965005;
        Mon, 06 Jul 2026 12:59:25 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7eb542d017csm12161834a34.8.2026.07.06.12.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 12:59:23 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>,
	linux-arm-kernel@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Subject: [PATCH 06/12] dt-bindings: serial: snps-dw-apb-uart: Add RV1106 compatible
Date: Mon,  6 Jul 2026 13:58:02 -0600
Message-ID: <20260706195818.3906949-7-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260706195818.3906949-1-sjg@chromium.org>
References: <20260706195818.3906949-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_125927_994083_0C12BD74 
X-CRM114-Status: UNSURE (   9.43  )
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

Add the compatible for the UARTs of the Rockchip RV1106, which are
compatible with the Synopsys DesignWare APB UART.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 49f51b002879..c0d0524458c1 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -72,6 +72,7 @@ properties:
               - rockchip,rk3576-uart
               - rockchip,rk3588-uart
               - rockchip,rv1103b-uart
+              - rockchip,rv1106-uart
               - rockchip,rv1108-uart
               - rockchip,rv1126-uart
               - sophgo,sg2044-uart
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
