Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E35C7C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 19:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jMLu4WJV8as8at1RQxrv3ML8YTJ/YniPlK3XNABaA+c=; b=F9by7pCV9GqHrK
	Y5kopZ+Zbt+k2phq7HbjAxCxgzcOz9gwM1UTMjhtacoscRyCqtjnAaXIkRTzEm595VAb7t4BDZaJ3
	j9o1Hr3+7yYQooYZTuXHBnA2lcWiyil9OUSXwq5/hmtLjRKe9VoupcxKZwqLytDVohy04exoPqzVX
	q0FKOyUfoSQm3QPjxKJNqTNGHIgF4Wp3YKcIOj81O0iDF+8RH62ARX8U2GjAkivyphE7GInubFifc
	JLmNGI4y6PGEvcVJWl4NkTntahgtjIMjj98SE7rL6iJgSfZNCORXq1kqw1KJeQWbuJL2PLYxQK7q5
	kHPh1YgTOAujfUFEVClg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shDw4-0000000EABA-0F9H;
	Thu, 22 Aug 2024 19:57:32 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shDvz-0000000EA9w-48if;
	Thu, 22 Aug 2024 19:57:29 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724356642; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=dOQG379/jVTi2dNGxoDkn6HXO80ZsClGEZ1qe+xZMwWVCXsZm3/2LfeT+eU6EvsRRNsPsIW4BhuPHz52lqXKM0Yz6CloIMTkIqdaHQlyiwdU9I7wZmDR4oJnu+B51ZTfipjv0bpiNqaU8/p6GJsdZBB7tPccDT/HfsoTIBN3nGM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724356642; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=5H+Ta+1pr9NtfEOdpaRVmvlyf6UnmYB8Nq+4H/8l53I=; 
	b=V3Ki9/quUhejKnYlOBkk6BR0wsopNQ1UKNMZEoi+I0ICQBT+o5jK6jNWXaHqCv9NrLARQAHXkgJFSfZHS3L/2EM7dYLtuNAvm/20e6SJSubAG9ttzE9an2EeqLEKOl8cSPHoVFNRK0LF8Nt8ae76BbsWaCK6aNgxBFJxfFvTbaQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724356642;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=5H+Ta+1pr9NtfEOdpaRVmvlyf6UnmYB8Nq+4H/8l53I=;
	b=Wl/kZB/QHE8bn0PCi5umpsJgLeznE4AhghH43l+gOBmpjTXtmL4LVWhqLfjJCbAS
	RLD1/+/7HupiljawaJplmoIupHiW6FwYpPvf3ZgxUXyi6uPsiUGaz0DjA6NvS8Bikom
	nM2SEAgudi21Uc++kXbGVXuOwIVnLhvxXkX6+nh8=
Received: by mx.zohomail.com with SMTPS id 1724356641568368.2845162991723;
	Thu, 22 Aug 2024 12:57:21 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/4] dt-bindings: soc: rockchip: Add rk3576 syscon compatibles
Date: Thu, 22 Aug 2024 15:53:36 -0400
Message-ID: <20240822195706.920567-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240822195706.920567-1-detlev.casanova@collabora.com>
References: <20240822195706.920567-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_125728_099673_89346A05 
X-CRM114-Status: UNSURE (   8.05  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Detlev Casanova <detlev.casanova@collabora.com>, Linus Walleij <linus.walleij@linaro.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Shresth Prasad <shresthprasad7@gmail.com>, devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel@collabora.com, Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add all syscon compatibles for RK3576.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../devicetree/bindings/soc/rockchip/grf.yaml    | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 78c6d5b64138..9735063e6aa5 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -20,6 +20,20 @@ properties:
               - rockchip,rk3568-pipe-grf
               - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-usb2phy-grf
+              - rockchip,rk3576-bigcore-grf
+              - rockchip,rk3576-cci-grf
+              - rockchip,rk3576-gpu-grf
+              - rockchip,rk3576-litcore-grf
+              - rockchip,rk3576-npu-grf
+              - rockchip,rk3576-php-grf
+              - rockchip,rk3576-pipe-phy-grf
+              - rockchip,rk3576-pmu1-grf
+              - rockchip,rk3576-sdgmac-grf
+              - rockchip,rk3576-sys-grf
+              - rockchip,rk3576-usb-grf
+              - rockchip,rk3576-usbdpphy-grf
+              - rockchip,rk3576-vo0-grf
+              - rockchip,rk3576-vop-grf
               - rockchip,rk3588-bigcore0-grf
               - rockchip,rk3588-bigcore1-grf
               - rockchip,rk3588-hdptxphy-grf
@@ -58,6 +72,8 @@ properties:
               - rockchip,rk3399-pmugrf
               - rockchip,rk3568-grf
               - rockchip,rk3568-pmugrf
+              - rockchip,rk3576-ioc-grf
+              - rockchip,rk3576-pmu0-grf
               - rockchip,rk3588-usb2phy-grf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
