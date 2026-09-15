Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42FFFC88E77
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 10:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0z+J2Wr1FALzQva4Vljh/IfET4u78exDRQC0149PKI=; b=AB7K2G+5iIN6B6
	bJXDCrYopiwcUvL1zC1Bav048QkP+vAzCPTuTE4qHa2T3xE1xOvP7M7FldIGFBD0Oe7YGG+CnnL7e
	nsi6XDjqZ7phJmEicGzSPjgqDyzn+y8rk7niiuxcSjeWLeBYcXvBYrr8Ypah22s2M/7xycZv/m5GK
	OSMWr7GquXVXgRBy5xQq3ZK4Zn6lwv2xfu6gEwQsbvYl10qjgQnhyHt/qS9+id9uxxtX+DDfbyfvI
	LNaHN5pf/TUahAia0sq2F4Q14Itmo0O7WvKtwi4EysQeH5GZDg3Zmei2XHYyfWNs15hDsIRiLseRg
	W8MuFoLIqxeyvKF3t33A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QdU-00000005xUw-0dpO;
	Tue, 15 Sep 2026 10:43:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QdS-00000005xSf-2hl4
	for linux-rockchip@bombadil.infradead.org;
	Tue, 15 Sep 2026 10:43:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=0uZyNoOS4+9a6tqQ5tfX7sqcJOVcaT+yLp/MXx9OSW4=; b=hiDK1QtNNaP8Wih2/WT2pm/m/j
	31MMa0xncHkP1ZUonX4muCqDnax+z4/NZVXLojOYRHgNg4zBGSiABFUgzum0ErpzEffs7BVJEcBY9
	+itLBcdNqwnHpPHYXro6NhYjUIQ1fc8xzK5k1g1KQ8vrJ4IvUbpfFopqOnuql0498V3krbaBjQvfV
	2P3GO7I+GKitsKfK0hW4/eF3Aipl2PRmcvn8j4aU9tWsBnW8Jq7gsIICzi3FojAkCYAvJelH3JjSl
	cpr3/+ON/3k3JP+r29y4rGXvI91/Dgu+0UgATIqIKKbIQhthBdJlgN/zU+i/XzrX1EsA2NiPL/OK/
	uDsNPRPA==;
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6QdP-00000006ZhB-3CvY
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 10:43:33 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49b912d391aso921355e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 03:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789469009; x=1790073809; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0uZyNoOS4+9a6tqQ5tfX7sqcJOVcaT+yLp/MXx9OSW4=;
        b=igJZJtltHUp8gqDeLlMEulm6BSo5so0MRnQrlANvQxAEWJ2BrV0hIP5/oervlodqlK
         m0BdDMcjLEOu4IAKDim+01yeSQZe3NM8lXPtM6+QaMGtKoTZN+k2Bm13audxHuS92z5O
         FknGvhA489W6REbXTlRGICYkgBLNDuqFQEGvhgvYzeHm/bJBkhJkDE6cRosxkXbU85ja
         LT7UxJquie4pH7jXH6sAoqKyg73S9k+rHJuf6D+Q9vnKl9DoL9WO6RVww/Xz6CfzpU8Z
         o+WO/WD8RDnofaW8F3A6LKvrEF24Kba3yO5m2QLE9huS3/7SZizjStSbKkhh80prqQBX
         f1OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789469009; x=1790073809;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0uZyNoOS4+9a6tqQ5tfX7sqcJOVcaT+yLp/MXx9OSW4=;
        b=ZGzA6gjzDiZczesZvNYPoyEED4XjA6f29EObmUgKEs9KP3GqJovDg3LwUpltAmjcZo
         6poZIobl5SLOZ8q8cFYI04DOQkQNShin5A5cmY1F9mZbSJQKvubgB1tBb2RHyMN1LxDT
         9tsBBsh/VwVhgHZx4x/eYtfckB8Sdt9aCELJlVzWl9EaifRpfyruo0Yk+AP2SPWmD/aK
         JkV7enNrozuC9Xfm6O9cd/nDrcYt59tk/tauu+VNycJhQJKIzhZ4Ar+11TsytugvqPMn
         5e1klgVVJK37GbJL5gznXhvbEHYJc6b3cj9UB9ZHybvnW6oVvKbOg52x7UsPy5aPbHaL
         lACg==
X-Forwarded-Encrypted: i=1; AKwUvBwNjwNF8h0cy9x2k9CJY8soAYy4W4la+OXTkPWiuft/Lzr/jR2RJ9Z/FTOv6qzmD/dHwEvd/i1cO9X+Pvi+VA==@lists.infradead.org
X-Gm-Message-State: AFuF++nIMSFFg08BQE4qb2oqzUXM3CISvvoO73CZKBdyzmyN+XyfUe/s
	itDM3iAXQ93AT9P4BhSX9KULxr1hPG7r8QsJ1SaOf7MCjm0KFMR+Ddt6
X-Gm-Gg: AYBFou09RHdUe6rl89RkXJJWFRWt4i9Pp3qPz3VkAeyHhjbIg2nof29RjRm5KKULwUr
	xH1OBh3CI/TlixwInSiZKngohkLvf1m9wNBbZX8BzxW+dvt4kd83D5r3EJf7t/yKFBp5/w9X7+s
	5px8S0Q57moQh+kdanHKzDlFVG82jmkW2ajmf5ylC63sODcj70Gmdy1jVBEXyB9dJx8sFeGCBn6
	sycfTmQ/TfXrNrQ9AgJDwtA+S5lpH3hHo5C0v1aOYd5gftVDBWK8wY/WSLme7SrYtiDbTUdg/Z0
	+Z/G4maUIAp8b14OI5TACfx0nw+Mmsa7PNtcgx5ksYS66fsBLPoQzQqOAcm7hRwP0d1PmFDnEtX
	WgDhBxNYPQRLI4iSF1NusBkIPVdjVd3hqsz9ylHVaVV/8bpo0tsPinR3j/ZtGRzzsaOiS5CQ72V
	ay7aVPHO8fFk2+9RAZG5W6sp3EtuA2Fhm0rfXVHod8E5TWHbdh9B79fwDjH4T/LzmSTR5XSudcU
	TKO6VVHgZpdVm+PDjzYvucpdwxNRHMy4+oDwxUI3FgkxNACCSApRoxLgQvoP4w68HvB
X-Received: by 2002:a05:600c:4743:b0:49e:7cfc:a9b7 with SMTP id 5b1f17b1804b1-49e82257f4bmr8382775e9.18.1789469009197;
        Tue, 15 Sep 2026 03:43:29 -0700 (PDT)
Received: from [127.0.1.1] (2a01cb0007c59900d73f8285c1e647ab.ipv6.abo.wanadoo.fr. [2a01:cb00:7c5:9900:d73f:8285:c1e6:47ab])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e7d2a94b9sm58001325e9.3.2026.09.15.03.43.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 03:43:28 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Tue, 15 Sep 2026 12:42:46 +0200
Subject: [PATCH v2 1/4] dt-bindings: soc: rockchip: add rk3576 csidphy grf
 syscon
MIME-Version: 1.0
Message-Id: <20260915-rk3576-dphy-v2-1-b56e68b54b8c@gmail.com>
References: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
In-Reply-To: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>, 
 Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789469006; l=963;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=OT1ITsHPctK+L8lx0K+iSmC/XdR3PBM/mhi/vcMFiXs=;
 b=xHW4ID866vtDzWpfHwdm1uVBYofPXy1A+IXn6A13CkcRw1xUF5qIJUH44laHofEaIxFhmo/Ls
 upqPyAcWXRQCvLqafGXxKHmCv/ihMy2SrzCuxJoYmPH/nvS2amffFBs
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_114331_982616_E03F6A64 
X-CRM114-Status: UNSURE (   8.53  )
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

Document the syscon compatible for the General Register Files of the
RK3576 MIPI CSI-2 DPHYs.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 7bcb4e2f47ec..e94c83d7c138 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -32,6 +32,7 @@ properties:
               - rockchip,rk3568-usb2phy-grf
               - rockchip,rk3576-bigcore-grf
               - rockchip,rk3576-cci-grf
+              - rockchip,rk3576-csidphy-grf
               - rockchip,rk3576-dcphy-grf
               - rockchip,rk3576-gpu-grf
               - rockchip,rk3576-hdptxphy-grf

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
