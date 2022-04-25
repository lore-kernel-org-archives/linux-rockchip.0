Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C31C2C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 18:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0E2sUJpie0HZLjuakv9UGUA+f+FIYEe13AHQy7RFvF0=; b=Unu6pSNbc/ymiN
	jesOBtR9bf3Jfx//j98HK2tFfc9m66qwVZZt2N1xQ2pvIBwaU2CeFifEvixKapmUuC3aiZv/PpsTh
	QCwUTFek/EiOwdtFS6AUzHXpnETecCJS97/6LwYtTnVYKn7Q4Zv3QJQf9803J5UXjdYL5ZKdNpDVl
	KQx8udNMzPHnrOBL84mFXM/XO1aqJDNBtfnuf/XLJ8jIWKqYlsHBjiopfoacTo6KqtjUNk/seAC0i
	3djmcLNgunIu4QM8iKmVQROECywTUsWLojMUhB5nHSfgaKJc3sN8MpW8OaabXC2w0q5G3059t3n/y
	47R31452PDLwMQ2t+jEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj3ie-00AvvS-K1; Mon, 25 Apr 2022 18:45:56 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj3i7-00Avd5-5B; Mon, 25 Apr 2022 18:45:25 +0000
Received: from obbardc-laptop.home (unknown
 [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: obbardc)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 94EF21F43001;
 Mon, 25 Apr 2022 19:45:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650912318;
 bh=eTCQfIcIP5R3rqMwABBjjXqfLJPdf96Z64Uo36McT3g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nzAEo4CyRwc5ubpWR2DEkfMRLzrnj2G+ZgXJE4kKIiTeW+iZtEBJP6rJy2E2ONYET
 g/xlzVBxm99NYRjWHtFzaB5U7susvC3oxlVAjmmq3Q6XB4D2YfRfjPrl2UkxMmK+Sx
 mjx93EZ5d5SFq8kY8f53RG0Zjxnygbrj0IhL9DFacFmMS9tNZ30Mw2ltz9o/RMO48N
 4hQ8x00FWICkbi1VHyyfIx4znKrhaVKpQ4KDsWoJqpI8TWgpQKHjIkObUYnRCUcg3y
 xo6Rw9gqjIBudMrIYGhoEKvbXSe/nwRT5pe/l5Q2C6IdrFD6wgouZMfIa3Pk6+cKoS
 NyT0qMJalT+Gg==
From: Christopher Obbard <chris.obbard@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
 Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH v3 1/3] media: dt-bindings: media: rockchip-vdec: Add RK3328
 compatible
Date: Mon, 25 Apr 2022 19:45:08 +0100
Message-Id: <20220425184510.1138446-2-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220425184510.1138446-1-chris.obbard@collabora.com>
References: <20220425184510.1138446-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_114523_439284_F037F729 
X-CRM114-Status: GOOD (  12.53  )
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

Document the RK3328 compatible for rockchip-vdec. The driver shares
the same base functionality as the RK3399 hardware so make sure that
the RK3399 compatible is also included in the device tree.

Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
---
 Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
index 089f11d21b25..3bcfb8e12333 100644
--- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
@@ -18,7 +18,9 @@ properties:
     oneOf:
       - const: rockchip,rk3399-vdec
       - items:
-          - const: rockchip,rk3228-vdec
+          - enum:
+              - rockchip,rk3228-vdec
+              - rockchip,rk3328-vdec
           - const: rockchip,rk3399-vdec
 
   reg:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
