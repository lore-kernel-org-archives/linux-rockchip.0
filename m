Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B0B1C52D7D
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 22:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ny2Hv5nEqvJlSZI9lDK1f5XSnIENMs4WW2bBJkj2WXw=; b=Q3zKHW9NdF2Wvn
	IKZUwci2xLuICn2yMwx6vihGXY+hSMdI9MBnHnz38vC/zNPqqLNsVz6R8cBoFt7Ze0jK/JhwxPUfP
	VelVFB7x/gbMROrl7njSKc8zAaUMgseidvWJAKjAjOfYWIMy/jHmrCYin2MEn9+wm70Elt1tLycWS
	l7j1tYJxWWLAdEq1x5FKSMShZ0SZ8myORPjaJOVm7mHl9coUAxnxBrTWuGUtM1BGCwmjwb3AJZZ4A
	Rsk4oMZ4L+crPE+eQth/cdHoo8bnC1B1ryIoG5+6aRfYT4oxhdKsA6f7PutGg0r8ZvplEQ0mBPK91
	VBQPcGwL0yyu9PDoUQvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seMZs-00000008TCq-2LcO;
	Wed, 14 Aug 2024 22:34:48 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seMZl-00000008TA6-1VxV;
	Wed, 14 Aug 2024 22:34:45 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723674873; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=m+gxuBxL93V2w2FaeUDTNPqOW67udRhfp13f7QDLVZgO3OvLZMdgJ3ZAcpVaN9ZRAHmmYDjQmYnpWHPqKz//7Ae3+ZiDalDSQzA/gcJ+jDt81XXAZxJEPhPLr5WUgcVOK3/enFhzeBPqULLoDa4uPC8/+Amr9NBHdA6aCxdHkcg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723674873; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=uPjIlCVjNS1SPYz3xZ15gnUbSmsTQcJDu97RCeUrTJc=; 
	b=jBpooI16vFUVjCiOd27Ak6yHID24vINzebbpFz3t1/R93rFeOHnmM2Qgb3zVne1XoUJetdRBchaDwyxlyAmnI4mblYQmZMCuYFOyJHaMvN/6TxKfBzpVTj35Y3k7FmURuqaqat5IWI4TF62oJa+cqvBSMYheJMIFD5AsBlBPbTg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723674873;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=uPjIlCVjNS1SPYz3xZ15gnUbSmsTQcJDu97RCeUrTJc=;
	b=jCX0mOKl1LCnbqr7VXuiOpyQmqHIcCwltYwJlIjk1Nt0XPNL5SqDXUifOIKenQkc
	yeq+hepHVneX7mgYtgjF3hfn0A2Y/B4d/5BBu0qiyRUp9vyEBEHMYE9uqy6AEcuNJgV
	4+imI+Og7Xm9i/BYgK0prPVb/sb0DIe7J4tnxaWY=
Received: by mx.zohomail.com with SMTPS id 1723674871779907.7332155073681;
	Wed, 14 Aug 2024 15:34:31 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v3 1/3] dt-bindings: mmc: Add support for rk3576 dw-mshc
Date: Wed, 14 Aug 2024 18:34:00 -0400
Message-ID: <20240814223555.3695-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240814223555.3695-1-detlev.casanova@collabora.com>
References: <20240814223555.3695-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_153441_571184_EA2AF02A 
X-CRM114-Status: GOOD (  11.12  )
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

Add the compatible string for rockchip,rk3576-dw-mshc and add support
for the rockchip,v2-tuning flag, a new feature of this core.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index 211cd0b0bc5f3..0543cdb51c657 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -39,6 +39,7 @@ properties:
               - rockchip,rk3368-dw-mshc
               - rockchip,rk3399-dw-mshc
               - rockchip,rk3568-dw-mshc
+              - rockchip,rk3576-dw-mshc
               - rockchip,rk3588-dw-mshc
               - rockchip,rv1108-dw-mshc
               - rockchip,rv1126-dw-mshc
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
