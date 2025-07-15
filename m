Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B16AC83F17
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 11:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FBBbmrJKuxn8ersq5ZfbT1iTi6ePulMyjvjJEwdZWy0=; b=kqjj5KRrbsAlNw
	igqIwLhbZ5qBl5nU3jjV4LnHIy5Za30YkAaCZHDsBlTOxkFhicazIJDg9hr/T0BaFTrYL9cnCxyzH
	20MkwYVFnnBnOL+nGiY4KIXDNiY4ZzIxTscPWlanEOjV1n/EOsCowrnvdgiUEm5pstT9Vcx75SMMk
	/sq874c0/HtHeJcRpsWRQ249HoS08fJ2vuykSFhieCNgkRI7gjmrp4AR0dqr5EXH6eros2HB8jkwe
	PmuRs4sHbDY+K3Kysvq5Teoo0foChyvZ3jouPODbwC5IW/w0uWySravyDSHbmtnNP/OpmhJokWhEE
	8Wgt7zCHAw+gDx7M5hOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubdyx-00000004xrT-0EZ8;
	Tue, 15 Jul 2025 11:37:59 +0000
Received: from smtpbg154.qq.com ([15.184.224.54])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubdnc-00000004w66-2BGR;
	Tue, 15 Jul 2025 11:26:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1752578714;
	bh=PdxuukrMJyMvzJ16KhGFmRwb53DnIsrK3r7HucbSbmc=;
	h=From:To:Subject:Date:Message-Id;
	b=YuIUcMBux9vcBm31tT4VniU5BFwp5Ncdb+ntuBiE3Upec8MzRfeu+YykP8ThbULz+
	 VjO4Ial6lHC+GNUzvOpxkXq+26Kz7L3amcPQ6icZ0OK0B7fvmR8mX9g6orUSJXfUP6
	 vLPZcCLIDb2rcCMCBoMl7RXIGIGxxoYhuOIOV4io=
X-QQ-mid: zesmtpsz3t1752578712tf0188769
X-QQ-Originating-IP: XVdB7d8ltncWpCfKxfEuv57ere8QMwHyZ9NM2AK9eVk=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 15 Jul 2025 19:25:10 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 11091658648405409275
From: Chaoyi Chen <kernel@airkyi.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Frank Wang <frank.wang@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Amit Sunil Dhamne <amitsd@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 2/5] dt-bindings: phy: rockchip: rk3399-typec-phy: Support mode/orientation switch
Date: Tue, 15 Jul 2025 19:24:53 +0800
Message-Id: <20250715112456.101-3-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250715112456.101-1-kernel@airkyi.com>
References: <20250715112456.101-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: OKKHiI6c9SH36/h/9qneLh9I5MxAB90IO8g4kzM0Wgvv6GpZEEm4QTxW
	n7YdQKFjCn9IcqtrY+28B01QzRRH4tbGXtRIPiNO947eusZ0xYiSzxW8xg4dl15MKAyumJW
	4ZzY8CH7keStm3tMSod/FryURZPpBmNv4SJ2jbiGVtNiSTcudvW1aKAV1p/BIq1VFPcf4dA
	jUQb2MeoZgL+090l9q7OhlGwxPaHTTwBJps5mqnyEdetSxq/MWsgnuSKnYDosuyQtwX2NWc
	Oh8YGdAwMJNZqJswbrISqjk3+wy2IZc39VrPWkdsFuMJ//Nj92Me6N6oaaTy9CHhZl2BtDR
	MiE/7RSamUNxMole/gTiLa+kdEMT4sF0PbmnlA/ec8BaNK082uTAQuDY5hrac3r3JAN+GGg
	4zUCepmVRLnRM55M/uM08QtLUbuXcg3Rsj1Y8zpQFuDMfC2ccFFbd9//PJUHW3HliLLN0Rs
	C0bmVzPZh3GhEMZb+0OcVEMlRteHSlr2MK41gcVRExF1vujgk3eWphlx3ax0p1tpQUH/djQ
	o4E0/RrHE30cVikKO5Gd334FcxcYQ94hFar7qbiWl8bkH+VmpfSVUpC+shPx9VnyTQa5BQu
	kPFAk6Vp5kkOgU1d82HsiaMxixaD22WSmokDMRvMFLwOanwVyYKZrK8elKIPuP7DZsuY+xp
	GKYvVTEH2uz4XHIvhY9aQqHPcusQfPU4VTFrLSQgnQ/8opbaQvdo+0KCpiJnpBTI+sicbTD
	4Nj7zTQXOR3zsxbqOq4z1qZ1wUc8iAEeDGxbi3bN+M/w9j/q7ZpbTDPe4EDzn+ALTGsVD+Y
	IeLoHjKDax0X4z8OXKLhzHDMw047y1Ocb4Z5xZa3r6/gi3+fYWqcbywucRDZjnntdRBMtgU
	Gnw/YqvwC9INC/LuApRHEQMKolN1XS0hl4tFrljJyWjpSclorEJc7esqHPlJmI+FZ+y33oo
	MXxECCUc0KlTLhYNDsfpb881VWGAD7H5LFr/q+O7LBx3A6oDGztibL0VFAlq1Jyq+5kFRdn
	kyBVoFSg==
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_042617_222920_AB343347 
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Add support for Type-C orientation and altmode switch.
The Type-C controller can be specified to handling switching.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---
 .../bindings/phy/rockchip,rk3399-typec-phy.yaml    | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
index 91c011f68cd0..a885c6893a90 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
@@ -43,6 +43,20 @@ properties:
     description:
       Phandle to the syscon managing the "general register files" (GRF).
 
+  orientation-switch:
+    description: Flag the port as possible handler of orientation switching
+    type: boolean
+
+  mode-switch:
+    description: Flag the port as possible handler of altmode switching
+    type: boolean
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description:
+      A port node to link the PHY to a TypeC controller for the purpose of
+      handling orientation switching.
+
   dp-port:
     type: object
     additionalProperties: false
-- 
2.49.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
