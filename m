Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89A13C41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 11:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EjsFR4RGO2rkWXEPrvUiNHJz67WBaHy1NF8nbUgtpxk=; b=f+yPylKi5YQH0W
	paIpEjHofi568NHHONuklvOesIeoEJ6J0kvyc2wboQ1hrvUNGuo/uqBujqAHnDqDVgPCFMNNLMk6n
	7ogC/MEX6kKjhHUHsfjaZh+yaX23RAOTUUBuLXUFIFeSv8vjq0NDLdJOO+W8ADtBXlADFYMW/QMBM
	f9aB/EqUjK/fHFtIpPeadi+6LAYgNHX5ouLk1jbVRP7zDUG7hjt61zXQOi3U2pZt8olAYlgE/l6V0
	Vy1Qhw089On6eToEjMylYtrGpgIeMKIrstGi+HdgY0hNY3ZpEYCeKMeeE4EIbN+67ReHeAHqZcYU6
	CunjEUdE1TUfyDz03g1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGdRC-005caI-2m;
	Fri, 22 Dec 2023 11:11:30 +0000
Received: from [2a01:4f8:1c1c:934f::1] (helo=mecka.net)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGdQs-005cRR-16;
	Fri, 22 Dec 2023 11:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1703243145; bh=DMkoqTpYVUh34kGB9+2bV+tQDmFBMqwqCG799ZULLrg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Wp1UZsvhJWTu7QxfjhITLWmicuclTIG9JdU2B0zFnVXPw5Kmrt+lsYf+UU1He27p5
	 ZpEGY312PpNs0sgTFqE9qUCxjv/AYyIwiglOtcuGp+GFPaOMvfB4Bam5qdlnztlO6J
	 8mC3n852S5t56LnAlqLhPFRRBXzykqmPc7r+4/FsNl+xUvsPlI3IEAEweVNRgLqWvF
	 cnAu1W4H8atVNCwnI8PRPvfF4YCwb9H2x7DF5qs6SiRjSHhm/LoHpfnGbXiXmU8N1n
	 v0haCaBeCpkClDvf11ui6QskEkhUXNVcsXn0aWQ0lCEL4gXoqKHM1tuDw6+bjyhYHs
	 u+8Cm6IxhEttQ==
Received: from arthur.fritz.box (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id 91A39370D3E;
	Fri, 22 Dec 2023 12:05:44 +0100 (CET)
From: Manuel Traut <manut@mecka.net>
Date: Fri, 22 Dec 2023 12:05:43 +0100
Subject: [PATCH 3/6] dt-bindings: arm64: rockchip: Add Pine64 Pinetab2
MIME-Version: 1.0
Message-Id: <20231222-pinetab2-v1-3-e148a7f61bd1@mecka.net>
References: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
In-Reply-To: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sandy Huang <hjc@rock-chips.com>, Mark Yao <markyao0591@gmail.com>, 
 Diederik de Haas <didi.debian@cknow.org>, 
 Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Manuel Traut <manut@mecka.net>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_031110_559498_8349EF80 
X-CRM114-Status: UNSURE (   8.31  )
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

Add devicvetree binding documentation for Pine64 Pinetab2
which uses the Rockchip RK3566 SoC.

Signed-off-by: Manuel Traut <manut@mecka.net>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5f7c6c4aad8f..96d54b0587ab 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -635,6 +635,14 @@ properties:
           - const: pine64,pinenote
           - const: rockchip,rk3566
 
+      - description: Pine64 PineTab2
+        items:
+          - enum:
+              - pine64,pinetab2-v0.1
+              - pine64,pinetab2-v2.0
+          - const: pine64,pinetab2
+          - const: rockchip,rk3566
+
       - description: Pine64 PinePhonePro
         items:
           - const: pine64,pinephone-pro

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
