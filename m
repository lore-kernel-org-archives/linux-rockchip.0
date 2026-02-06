Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3E15EE6B46
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Feb 2026 18:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l92fYaMlZbGmggtDY6qpW0gQSSUBerSmX1ZeyRm+1sg=; b=Ee8uD/ID5gw0vo
	u2b0k6RnWcmLOOXWuPtEbnmvUdx8g/7uBy4wvjLwOPnSSlTkF0+GSjbEsgr50F0ZQaLEiHTZzTR4o
	gfqfEEz7HLittF8W0sv3VfCYYY6wb/rWytI/QW4fumfc7hGzFqFn8voHuzTc7X8IH8FLx3q9vUPjQ
	EtFc1cdFQ7YnAIbmg6J4V+QFVgVp6FRLPwwSJQ6Gkud49WZYrN9CSRjhGa/uxXdRgUDrb79A55NWp
	XD8oooRGZPNDmz7LAAuwzatAkGcRvRTr0WHO1p6kZwlkVYWKhBy/58iWorwiroQb77KaIz2iv3K7f
	WwOjM7CPKaU5D0YilPwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voQLC-0000000BfSw-31GU;
	Fri, 06 Feb 2026 18:14:02 +0000
Received: from mail-dl1-x1235.google.com ([2607:f8b0:4864:20::1235])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voQL2-0000000BfDo-19dY
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Feb 2026 18:13:57 +0000
Received: by mail-dl1-x1235.google.com with SMTP id a92af1059eb24-1248d27f2b9so2895353c88.0
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Feb 2026 10:13:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770401631; x=1771006431; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZoltbQKyGec+ucA9n8ImzXdn4Jsneih4XM+AaFlZmww=;
        b=kAUFp2icqsm5/stafbY+7O1JmHace4tIeWiG1e4H48txNNWABVCLfDlMfvGvo5unEC
         PLXYwsDOI42bjCuouTvZjCN1I1LErlG/5TFy5l1qf0WkOmKcPCs/GjBPbwFEpPOmWcPn
         INScFwjPAjhBn4tskOqfOig2MfMlHutM5mhfueZXuGmXZ1SXfZIbaPf0QpOKJLNaMaur
         r8HoMVPv43p0/mGxrL4/VRGUkck/2yAgWma5079uwtJ++cTwmsst0Bmh7thohjJvEvSE
         ZoBIK6yrpQA3u/3W87UFAgX/e0EYZ2Ub0A2YBgJH/WKee39/84kd3uiTUFIU2ss0YtXE
         W4vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770401631; x=1771006431;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZoltbQKyGec+ucA9n8ImzXdn4Jsneih4XM+AaFlZmww=;
        b=GX3UoZguRRcCELpCqdcM3X8P/Qk0qcXRAGUZ5/+4IZLopSEgfeEAXRdcV08kWchWgZ
         7h9X5pVmGkjbLE69jFvcbutTSzGewm91lBKqcbHi5PN1gvyIT1OoEwDMrdvYKlb1TOaS
         B9StOowyZuZIJgWDuC8E869FqYjGcgbiPyJnKFs2URbqGsBrppELRiSqvs6Agsn/dKxP
         AwDFRICJDhnd2ItMs3uMKpV8wBYh83uW6m9RTdnl/ILZFU9P7dDD57i4EUrJGC9p7Dgf
         2xeidNcPxDGnlTgf/PE0jn2qYq+C5c6lMUql0Pf5gZTve1l+UTdPYOyFcTf/Op4dzWw7
         7ZoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNV5VBKYyagxm8dLZ9GA9HRQ+I9ET+ZjOKhmKHf9fIpojJmDumwXrHjR45J/cyx2EUObLI3MEEzUafmabPEw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+mO8GYJ0XAxg2kJOloAVV5ah2YN8TTfdJM9b/A50TSpcvqMJ6
	QDNX8xba//Pl7hyBWlf6bipwTSmoOzS84MLk9r2pi50p+cbeBG4zDAj5
X-Gm-Gg: AZuq6aLRIpV9cTeD/Q7lCvX1sNTGblFDV9PloKk0RreKqV+qwhrgmTXWH1ub43IAzd0
	09by9K+csHEgHFjzyhAK+epfyi/Pi+oBR3nF/nec4xQLGKrDWmW2eq2TtisTVFkF7pzlD1uRoHr
	UtJHgY7DUb5ThDS9uPoEzOgOXWpzojDjmQAVbuv1/8Zf/Qlcj0KMeBdNO6Oo+aPHdIvA+qpKYCC
	vMUGsf60xIogaqaVn/jR1PKjfSF86AH/hSD71rI62rNliUn/tf58tlQ0LrlomoMvgt4z39Kr7W+
	aPbB1CqqbPeATpaoElptFkP5/pr4Ajt1F4HB9LFK3J3YQ/DaHqedc+a2+W3nqpFALzVV7wHWO5E
	QRqi7DncRo7tXmsNhrn0KSWp6l9pfSaluwiQ8uPdq3CseWGhK+cBHpEHDMh74vT9YWjYeNRDfTE
	gUoNaVnCITBlhHOn14AqYNmyzA
X-Received: by 2002:a05:7022:92c:b0:126:fddf:3d86 with SMTP id a92af1059eb24-1270401f386mr1395195c88.39.1770401631027;
        Fri, 06 Feb 2026 10:13:51 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:44a3:2bb7:a035:fd7e])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1270433ab31sm2782500c88.11.2026.02.06.10.13.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:13:50 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH 10/11] dt-bindings: arm: rockchip: Add Onion RV1103B Omega4
Date: Fri,  6 Feb 2026 15:13:08 -0300
Message-Id: <20260206181309.2696095-11-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206181309.2696095-1-festevam@gmail.com>
References: <20260206181309.2696095-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_101352_403233_904CB7C4 
X-CRM114-Status: UNSURE (   8.58  )
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

From: Fabio Estevam <festevam@nabladev.com>

Onion Omega4 board is a board based on the RV1103B SoC.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ae77ded9fe47..40c6f7f90755 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -793,6 +793,11 @@ properties:
               - lunzn,fastrhino-r68s
           - const: rockchip,rk3568
 
+      - description: Onion RV1103B Omega4 board
+        items:
+          - const: onion,rv1103b-omega4
+          - const: rockchip,rv1103b
+
       - description: mqmaker MiQi
         items:
           - const: mqmaker,miqi
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
