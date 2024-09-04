Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EF14CD4849
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 12:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGyE/iWM/kp0at4c/mTGDBvD0oeY/3u4InqnHwMdIQA=; b=U1KU8Kzuha1/Vp
	VH1DP8IGHcHb5sJgEUBG2oYN/e5VwJ9wzHxOOG7vKg2nK+bYtmZ9xi/IDD7sKcoZrn/G/nIBsSDRM
	Xe5Tn7lrm3myg9G5RY5RVILdqAmfTjpXecgxF4Xa9tklehEMnWhZekDpi8XwzpJguJVIDxc2P4a3o
	941pRfYCKPKnlPzchmVeedlWX+w3iNVkKizqn9n3WKgf+DwGxZW1V8Z1M9b7U+eYSQukdH5o0ls5n
	6fIxl//pzg0OqXQwlNdw3QlFG2rjxCEOOILeogwI4U8cS6Mx/amdVX5wY/zrUiRDEbEKjjMAuP+y4
	vFR0K+UpUz7+SpTchTzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slolQ-00000004HPu-3T1l;
	Wed, 04 Sep 2024 12:05:32 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slojE-00000004GZS-0qrW
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Sep 2024 12:03:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=N/7uy
	jrB7KGGQTklpL1mV9iDvL5KrMqFqDQRAvh4XYM=; b=lHwQJHG1UBk4qFhgJ2PyF
	WGfy5bAlcr6mEF8JLqo2YISbqqDyNddWLAGiGbO9ZICh4DO2d/ocMwLlb7juwQeU
	RvuB5wv1IIbuhUz2P4lTHS2nfBvAUSsY1jdl50sYd4OTVKYAFOUt623xrOBsFYkp
	byjVP3Ik23xQ0SAcDg8RlU=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g3-0 (Coremail) with SMTP id _____wA3HxFgTNhmiRMZCA--.50872S11;
	Wed, 04 Sep 2024 20:02:53 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: detlev.casanova@collabora.com
Subject: [PATCH v2 09/11] dt-bindings: display: vop2: Add rk3576 support
Date: Wed,  4 Sep 2024 20:02:36 +0800
Message-Id: <20240904120238.3856782-10-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240904120238.3856782-1-andyshrk@163.com>
References: <20240904120238.3856782-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wA3HxFgTNhmiRMZCA--.50872S11
X-Coremail-Antispam: 1Uf129KBjvdXoW7XFyrWrWUKFy7ZF1DAw48Crg_yoW3trbEqa
	yxZwn8XF4kXr1Yqw1DJ3yxGw15Xa12kF1kCa1jyF4qya4kG348tF95Jw15Gr1UuF47uF4f
	uFnYqrW7WanxGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU873ktUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqRJQXmVOCpvz-gAAsC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_050316_801492_6D18DFE8 
X-CRM114-Status: UNSURE (   7.56  )
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, robh@kernel.org, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, mripard@kernel.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, sjoerd@collabora.com, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Yan <andy.yan@rock-chips.com>

Add vop found on rk3576.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v2:
- Add dt bindings

 .../devicetree/bindings/display/rockchip/rockchip-vop2.yaml      | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index 2531726af306..23b2371aea46 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -21,6 +21,7 @@ properties:
       - rockchip,rk3566-vop
       - rockchip,rk3568-vop
       - rockchip,rk3588-vop
+      - rockchip,rk3576-vop
 
   reg:
     items:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
