Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B455AC02198
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Feb 2025 09:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=15Q0zF6XRhMDM4xLuctA3s0e1NZWzzHYLXJgqOO6QQo=; b=rPdUjS/e/895EC
	587Mwd9xjWhgvpWVCuYS+o11P6of5Oi6ZUi8+PA/NRwdRHYKcK2OrJl/a0jQMwaPfjxhEsJSwFBMc
	f97vUCanZ3CihVhJUZ7J2bjIkNIsewhCisVkeo5EcX7joDbAs5RNWHPnXCDSzJZj1fAjbVeA6A4Ci
	PmNVl1qfwrOTqk+0UOIUST9zW0GXC02LdRFJ5oQBOKw1jqY7bdt49gq7uFhdYK/ExYd6wYomAFmZO
	G/2ZUkmloyZ9IR0nL/FjbWPD46VxUJH1KpvxbcGvvFXVcPYwAg9MABXgX5ePtlq+2NalLb0QCBA2l
	4r9CC/i8s4N0YSoWqc5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ti9SY-00000006slC-1M8q;
	Wed, 12 Feb 2025 09:55:10 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ti9Ai-00000006o9w-0GLq;
	Wed, 12 Feb 2025 09:36:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=x5wpq
	KJUmSg4bQV96jwM4c9cPSXvq7N01GUYeXUKlfk=; b=okQKh0iUdQ64yIaPM7a99
	ar3uuLYT3C/HzkwQg6KkU2k8fCAs6ZdJaVh0VU7ua7cQ5XwN6Ja/bxUTJSGyIQNN
	zm30Rq9gxGIU6p5kURX/GPghC5NO5Nxha0P/0RvORO0HPPqjAVF43d8NZqOmNu2Y
	xLB0t8dgwxlGX/3sSMFT04=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g1-4 (Coremail) with SMTP id _____wBn8FORa6xniPPgLA--.46093S2;
	Wed, 12 Feb 2025 17:36:20 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	detlev.casanova@collabora.com,
	daniel@fooishbar.org,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v14 11/13] dt-bindings: display: vop2: Add missing rockchip,grf property for rk3566/8
Date: Wed, 12 Feb 2025 17:36:13 +0800
Message-ID: <20250212093615.53023-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250212093530.52961-1-andyshrk@163.com>
References: <20250212093530.52961-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wBn8FORa6xniPPgLA--.46093S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7tF4fZw43KFWxury3JF43KFg_yoW8Gr43pa
	93CFWDWay0gr12qw1DtFn5Cr4v9F97Ca1UJFs3G3WIywnIgFn8Ka4agrn8XF4UGF4xZFWf
	ua1Ygry5trs2vr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jnhL8UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqRrxXmesZ5VM2gAAsz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_013644_483663_DD54AADB 
X-CRM114-Status: UNSURE (   8.84  )
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

From: Andy Yan <andy.yan@rock-chips.com>

The clock polarity of RGB signal output is controlled by GRF, this
property is already being used in the current device tree, but
forgot to describe it as a required property in the binding file.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

(no changes since v13)

Changes in v13:
- typo fix
- Explain the function of this property.

Changes in v12:
- Split from patch 10/13

 .../devicetree/bindings/display/rockchip/rockchip-vop2.yaml   | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index a5771edd83b5..083eadcf0588 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -146,6 +146,9 @@ allOf:
         rockchip,vop-grf: false
         rockchip,pmu: false
 
+      required:
+        - rockchip,grf
+
   - if:
       properties:
         compatible:
@@ -200,6 +203,7 @@ examples:
                               "dclk_vp1",
                               "dclk_vp2";
                 power-domains = <&power RK3568_PD_VO>;
+                rockchip,grf = <&grf>;
                 iommus = <&vop_mmu>;
                 vop_out: ports {
                     #address-cells = <1>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
