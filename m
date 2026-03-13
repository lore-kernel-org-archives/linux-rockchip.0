Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7759106FD6B
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 02:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jlBc2BRfjPYPnU0ZhMuZ1XrGbOoaQYDh28Du78TyCHU=; b=B4iVfsep+8K3Ap
	B3JlCytU98Rw7/Y0MPRuAR6CliL2Q/EaJ5HFowEaBGYCjxAjhgbkJbA2YSzPnVaRI/GWWlzMfZKsK
	icvEtjKbqGIyk+bbfiTG93aw65aVi+2vy+w+2N180TfZMNNJgM6iW1EW0B8t5lorzOayZI42ig7KC
	9Cev/Wb5W4sXwIr0iBM+agqOJ0DRs5GfAVqKR/1vMX7LWLaF3qI/m1tEshG1DafPX14IHZvO9bcOR
	4l7tv/myVgAUlHYkcS8zaOgJ0HlVz0H1vKVonHnPJUEobDP0QL7nD195u5RtQnN48z2Tvulcxm01w
	YgIMthjQY3XfXuzNBXwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0sWT-0000000GHaK-2qQE;
	Fri, 13 Mar 2026 02:45:09 +0000
Received: from mail-dy1-x132e.google.com ([2607:f8b0:4864:20::132e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0sWO-0000000GHXb-1Rmb
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Mar 2026 02:45:08 +0000
Received: by mail-dy1-x132e.google.com with SMTP id 5a478bee46e88-2be06c02f66so3394890eec.1
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Mar 2026 19:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773369903; x=1773974703; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hoVNRCYACXUZYxUReRsznqMgq400FeHzmP65Ts9QAVk=;
        b=LRrr4hQJi7gvQbPJM028b5srDc8C5P02cdE+kzcnM2SMiqxRTiBNEDJq8cONaxg5VG
         ftkSPvQqc+c9ZePNzOE5kbdRfAnzpaRkvv+Pgxs4DQc4IYdpHN3cV7tVrbUIOc8gNZnF
         fuiGCWVHDWmoOX66vn2IHbH8VP1R8xF1xZ4AxDEop6p3NRynjdkY5adg+Fe3071m9iwV
         AixfVZa2/OkS5c7xzdfWrpnmQ7G9pvgTRIQtrlOVdpFPqKk6q/U95kH13D+yGFYr233Y
         +eXDYOgBkoCRRowPK5N+ei/VwTfmHsSn2X0qMz9JT0Hu64CKWms9zqFKKE7Tp7y4hNQj
         TxmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773369903; x=1773974703;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hoVNRCYACXUZYxUReRsznqMgq400FeHzmP65Ts9QAVk=;
        b=ck2QV5S79+u0gbMTiXOrko7/o0d7dQ5ZvcnQoj1aeUkC0nCcNRjYZrdE7Nzb6GyL4r
         boc5TA7I7DgrA5dowxORVNdAHweJu7b/2dTIR6OD95C5REb2a/jJRoQdlPVOqItnRvV4
         r3fz72Vxh+nKRPNCtQkmIJ3cUVenlfc8OQpZB/Hjjhp5TiHy7BlB+jGc8y9LWprCtEzT
         cboAqEInQm8TAgm3sBkI+kTUbFC68eNHOup78/YrJfZ3JVC9kJxSLXsoJcSZ+UVaQuTt
         On2RHDf8m37iDLqu34IM2RojiSbS44fIdOw5847L3kJzkf9qUPqo/yLce7X3iLzqCDw5
         0iaQ==
X-Forwarded-Encrypted: i=1; AJvYcCUTWCclc84Ne4+FxsVDktpfRDI+W6TlvFsELffE0bXzs2x6LhtF7VviKxsr3HNNeHO//BM1tbDjOHh0WLONzg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwgKu0VmTXH8GAZ9KtbFsQeh0UQSjqkG0zarNhVrUUVA+F0LQjf
	/mrHylcOIDLkw1xcgOXlzjEw1DPalJIG9u6AxA1E/WVOZ5ZkCtygh5Fe
X-Gm-Gg: ATEYQzyqF8J2cOx+lNdC1Zdt2cgjNYQgUZx0RBRfQJkyNIvmsVOIaGCJlpSNUBC9XnW
	il6Z3Xrx26mJORZr4IExGJ/aBkl11nn9O9TuuIAAKb+mdO+6oWW+xok5YK5Go7BOWUwk+bXJyAh
	VSZKOoa5zdNpxj3nEarzmsyZX3wUsTN5JBJmETFJknGw+4Ahw+5C/O64FvaTQwX5OCEQukl5dht
	MinmjjX1aAS/vZiMkF76d3CgVhM3EUXCk8kH58GwAi1EvRSVv9D3qNSdav4Av5viHhf6OzevPPn
	XW3EeCWZaOILYX6Pxo99/XUyPAjpLH71Cp3K2aaAZDeoeAJRKw6To4l+ssa+OJjnvwDU2BTuPD1
	oHe2+TyRjhQoaCSQBefDSVvagdFqndiIVd6SKCECeOtfym6PlWxosPzUmZQjPZ9wopbgzHpIsPF
	wTyXGlfDSI3uHTDLy/fumQge5VSMbYU4JncKa0tcecfkTDtOuEH7/sxloXrxcmxCBP2h5x
X-Received: by 2002:a05:7300:e887:b0:2b8:26b8:3444 with SMTP id 5a478bee46e88-2bea55561b2mr1021031eec.19.1773369902671;
        Thu, 12 Mar 2026 19:45:02 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:148f:62cd:a5bc:7e0f:18c])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab526db0sm947919eec.20.2026.03.12.19.44.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 19:45:02 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v6 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
Date: Thu, 12 Mar 2026 23:44:48 -0300
Message-ID: <20260313024452.625064-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_194504_385713_5F95ABD5 
X-CRM114-Status: UNSURE (   7.20  )
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

Add the PMU GRF and IOC compatible strings for the RV1103B SoC.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes since v5:
- None.

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 0b8e3294c83e..2cc43742b8e3 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -63,6 +63,7 @@ properties:
               - rockchip,rk3588-vo0-grf
               - rockchip,rk3588-vo1-grf
               - rockchip,rk3588-vop-grf
+              - rockchip,rv1103b-ioc
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
@@ -98,6 +99,7 @@ properties:
               - rockchip,rk3576-pmu0-grf
               - rockchip,rk3576-usb2phy-grf
               - rockchip,rk3588-usb2phy-grf
+              - rockchip,rv1103b-pmu-grf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
@@ -231,6 +233,7 @@ allOf:
               - rockchip,rk3036-grf
               - rockchip,rk3308-grf
               - rockchip,rk3368-pmugrf
+              - rockchip,rv1103b-pmu-grf
 
     then:
       properties:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
