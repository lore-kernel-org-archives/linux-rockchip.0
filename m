Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB29CC0219E
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Feb 2025 23:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vohdNPpZg8VU2liA65noU5rXMHO01UKaFfKxamJ9sqM=; b=0Wr8AnH5m2oKD7
	KHYAFTOEYSJF2VyDUfv8Ae8Gu9THRb9/ahM6so6g/Em1B09qTRM01RliKNJY19tLlz8tHWAlFrdzV
	2VzR8uc4fsxano1gS94JvODiakbLIso7JJbE8BtGFJf0e7sEiur61Zxa4tATYAcESZ2pn6lE4fqW8
	VGFmuEW9RoKlafTIk9/iq+Ji1fZZfDesNQ6jEuX641UNGznK8UJ1KPxyqC6A8ay2H4MPwevMDWaic
	v9Ua0z0ACUcz9Zpx+55gfx/2K3m9+lE1GAiy6VYQrmcIL1sppQ5Jn/7EflQucu1hG3X31n3tHj1UG
	DAKxeDRXGYgiErG6waCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thdOW-00000001scJ-1JGK;
	Mon, 10 Feb 2025 23:40:52 +0000
Received: from mail-wm1-x362.google.com ([2a00:1450:4864:20::362])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thc4Y-00000001cXE-1syn
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Feb 2025 22:16:11 +0000
Received: by mail-wm1-x362.google.com with SMTP id 5b1f17b1804b1-439350f1a0bso14024375e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Feb 2025 14:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patrick-wildt-de.20230601.gappssmtp.com; s=20230601; t=1739225769; x=1739830569; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=13HhyQSKe9R/ysYBmBYlN/OC3FOpvN6dJIQ+dDqvrXY=;
        b=gvTD7XoA6iSbDukOAPeAMTdHzyGeyZsqrWwNDpTZQwXjeHbijCe8ia+T0cwFFVfxHn
         lOiQ3Q5z4AbqsT+Kzw6/lyXFLyh/WYOywubJehlZ1lixAaTJfMM/CuxH/c7okEVsMmOa
         z1R6pJ2lsy9FLHJcQcMoT48xS81FxlslM2dHpy1qatujQuseejjAhrucCueH92gJnpx0
         mrdP2Ms0Ds+y/48fd3VnwxLD70yrD3dq1R6gYjNWUw3Lwqa7ipC767VkhXXNvNA9OHSj
         pyxEmy7Bhp+/KSzYJ3WnRr5Y2iOOJY/bexr6sxXullSAMLE4UKBZTvOLvfkHQMLQ575Q
         4f9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739225769; x=1739830569;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=13HhyQSKe9R/ysYBmBYlN/OC3FOpvN6dJIQ+dDqvrXY=;
        b=ZY+dc9le2rJPIzss4IEo/lKl+ZQ+omrGdwHWRxR+1Lfor1BTTVdgbyqW2aFB5CltT5
         K5eSgQBIutGP8GwOoi+vY8NtHG8Cf724u/7WOfCwaCqnYWnVt2Vnrx5ThKTeHW8q/0yz
         l2KHySM4H36qSHOK3FPOVesTj0erpppLV5NnTRC5nYxDnNVnhpOWFEwwPUl0iRmDSOb9
         uNYzm0XBIR+aZU0gPghVct/taE8bcHfj8z7rsfv7yEPxi3VsYEZ1I0hcoxEQB29iGCuN
         cs+zBZWGK/XI6a71Tl7uWw81dvV31LgZQxdyg2llikxnjzoqvqOikYnEYpbp2ctOymhA
         8rZg==
X-Gm-Message-State: AOJu0YzIaAoPQPl0piK5M56GPVBFD2LNEutuYqAVgbe1wTa2q2X42Oc5
	e5Rc8nuWwoywl+klKRUzaNvheroRmv73iMy2CYYRiG74mxOaDiQW/fmTTw28pNp10CYCQBHdZmU
	qb1jRzJNGaCAP+auX+mfZUE5aZV3I4zAclGHgbvv9
X-Gm-Gg: ASbGnctPWYZCInSBW7dl6VUw+6eMiF1cojfDgJ1saXJacgHUC5ndl0UsMcIldCNUmPd
	x0rJGOhUyd8Jeo7InG3FBD1KzyUuPfoRstDYPXxKqNnGjqdAkInor8yve2GgjbZyUpHH8/w45Pq
	d+Yd/nvsOA3H0QZiHsg4eKLIzIdGhih9yk5/OWl4LOTez3+jSYD8JBVf2DpONiecdhr3jDUZ4qK
	OiDhGtByPps4S6AMSOBrR9GFQcmwNPAKZw+unnsdccQw8sgTzMKuknmnqMfUPHDcRzTVnDFpWOo
	KhlRr32ELUkxvrgVHxjtDdnOHOFlKNue
X-Google-Smtp-Source: AGHT+IGIpesWPH995t5ObgCbest3RPXsMCOOqvkk8OX3wG7izUgYYfXIQA1gziN/MFCY0sX5NzInpnZxX2s1
X-Received: by 2002:a05:600c:2d0c:b0:435:edb0:5d27 with SMTP id 5b1f17b1804b1-4394cebd10emr8852015e9.9.1739225768451;
        Mon, 10 Feb 2025 14:16:08 -0800 (PST)
Received: from windev.fritz.box (pc19f8e2d.dip0.t-ipconnect.de. [193.159.142.45])
        by smtp-relay.gmail.com with ESMTPS id 5b1f17b1804b1-439324eedf7sm5407785e9.40.2025.02.10.14.16.07
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 10 Feb 2025 14:16:08 -0800 (PST)
X-Relaying-Domain: blueri.se
Date: Mon, 10 Feb 2025 23:16:05 +0100
From: Patrick Wildt <patrick@blueri.se>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add MNT Reform 2 (RCORE)
Message-ID: <Z6p6pdoLwvXYxkCK@windev.fritz.box>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_141610_489741_4AFB56AA 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Document board compatible bindings.

Signed-off-by: Patrick Wildt <patrick@blueri.se>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes for v2:
- No changes, apart from Acked-by

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 522a6f0450ea..bc995db8cbfe 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -710,6 +710,11 @@ properties:
           - const: mqmaker,miqi
           - const: rockchip,rk3288
 
+      - description: MNT Reform2 (RCORE)
+        items:
+          - const: mntre,reform2-rcore
+          - const: rockchip,rk3588
+
       - description: Neardi LBA3368
         items:
           - const: neardi,lba3368
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
