Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E1E6CCD1AB
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Oct 2025 03:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8AcCPOs+8ieonKazoOhW3Fcafki/VqOszNcnRjb+8M=; b=0Xd2GTvSch8ROf
	FqJRTJpcAl9Ogzpv7sviZw/44E/Og7+Pd6QA07UNO8fddDKfEXPO/QDVOhCp/xrxj/Fi09pYAQRBn
	KbK4wNtPmyasl6qQxPJhSmU99sVJBDv0DyLOT+Uv1VKSF3EMB0nAOtEmKCX9Ig9vlx2wLJJbfRsbR
	O9XfjoWs6L59IMYk2Yg+gVPzcKVOEE2mq9L/ywEJr0VkDtGQWls3SU8mRLx40y3MvUN9S44UrZFcn
	ltYqwqArXUrWqE3e8BGmfs235U/z17a9sK530iPJWIDakqZjs6gj7YdqI1WyBocEzllwwDL1sE4f9
	EuzhkXq1S5n+n2h9nGRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBm2m-00000004vxP-38hu;
	Thu, 23 Oct 2025 03:31:16 +0000
Received: from smtpbg150.qq.com ([18.132.163.193])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBm2j-00000004vkG-0VDI;
	Thu, 23 Oct 2025 03:31:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1761190238;
	bh=YHT4Mxhe+zSodIVHd2qzlGnysBWHBxMufel41tGudBs=;
	h=From:To:Subject:Date:Message-Id;
	b=lyMJKUIv/Qx2CC50WnCYCHr/AsHK7/RoGhlq+rIz1XJpmNWGc847ct1N9ztq4AvP9
	 fKsCuD9JzTTPtaIStHF2gVRg72tXypDUwICeDzQBTeNsSyH+7KVBjFnzvFhqEerIrH
	 Vx8S1LvgxwQFwdJbhi27zaCnV3Nlk27UQGAX6lcE=
X-QQ-mid: esmtpsz16t1761190237tbfdb6da7
X-QQ-Originating-IP: mQbiV5TvA+6VNgwYEj2mZ26rSyqpwRzXYdmUfICKqpw=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 23 Oct 2025 11:30:32 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8877655953729844497
From: Chaoyi Chen <kernel@airkyi.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Frank Wang <frank.wang@rock-chips.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Amit Sunil Dhamne <amitsd@google.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Peter Robinson <pbrobinson@gmail.com>
Cc: linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v7 3/9] dt-bindings: phy: rockchip: rk3399-typec-phy: Support mode-switch
Date: Thu, 23 Oct 2025 11:30:03 +0800
Message-Id: <20251023033009.90-4-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251023033009.90-1-kernel@airkyi.com>
References: <20251023033009.90-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: NqGwt1Nz+QGBHHknu3Bh5bp6wIzU/OjXR9N5F/MnNNnjsUIkF6TtAJX1
	O2tGJ2q2KAoyGtmped++H7DLmpxE9YQvFO5VyojS+zBi0suc8sV0vhhLSpmPoiJ//C7aiQm
	2tOL0jtqGVIHHFNIfsxT7IWBJcZgNMpibQAV/9LvOJh30NP3SEOJE5LXyStaqcl8hxmP8Iw
	3NmT3ATS8kIpJTwHy8/0RgiaU18tI1b7cj1rj+hONauPjyUdDdlP8myGxsESWK5PHw0PbDC
	N3lTX5CslOWWLKK1gJ6ULTdC7+I6hCaUUBGdRvaDjDjpvdLStcFgBYy0uaiWM1/x3248vzq
	hlvLs0FxIVVzbn2ia5g1M1LZtogXfSDuNNLjVKqQfGu/ZYQVjNF37zd6op3bUedDWic86C3
	alIrPkEyiF687Bg3h8ackVjX0gTOSXUcO4Zah3WjfEruvK07yLqkA4QHLe0g64dndDMdSbl
	+uL/kNYT9xokGQ2id9nW7uMLwgBXnfRouVOVWMKtny2n8HULJBAPInKrszKdNbXlY103cCH
	lQ70Zy80tJo+bnQ6rbQy2p/k020OADBnFPULt4CXhwivbZgMBLsP/uuA2e94PnPRTzS+Gr7
	UftM0/4sAyyPN8EUIt+rSpjFBl08E/Ui+7LyK1DO4Fjaw5PcpsvYi9CWKYJ2V/3/dvTZZJp
	a0LE864BhsF7CqU3oax4hpoEylRGdUGy4U9CxR4dFNEGBsqXTZGwFSrt+Y5EwwretHslTmm
	mBJAz17wv6slXWdRnmCj43e9vQRlsxBdlaBA5JJwV4c70vM/rN5O4pMPdwj3INBg2WQDpmL
	bunMngm9C2R5eqJ4goJSBXFxbBj12DheezqTaM8nmx/TfxHzFaO/2crweZe10NTk96sjERY
	+ZRchjT4oYlFf7lhFgejDWXMT9FyibYDG8N8fVfhSEnE8fzQ5cFgtay0A+0wNepweEmQaIE
	CIhxk2U01MZkDs+vPU++xCmh6wYuZGLWN2iltO2MIpwHWnKWxdgZmGhQwRA+p1kythJ8wiq
	nMR1EKrA==
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_203114_126001_E798043B 
X-CRM114-Status: UNSURE (   9.52  )
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

The RK3399 SoC integrates two USB/DP combo PHYs, each of which
supports software-configurable pin mapping and DisplayPort lane
assignment. These capabilities enable the PHY itself to handle both
mode switching and orientation switching, based on the Type-C plug
orientation and USB PD negotiation results.

While an external Type-C controller is still required to detect cable
attachment and report USB PD events, the actual mode and orientation
switching is performed internally by the PHY through software
configuration. This allows the PHY to act as a Type-C multiplexer for
both data role and DP altmode configuration.

To reflect this hardware design, this patch introduces a new
"mode-switch" property for the dp-port node in the device tree bindings.
This property indicates that the connected PHY is capable of handling
Type-C mode switching itself.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

(no changes since v5)

Changes in v4:
- Remove "|" in description.

Changes in v3:
- Add more descriptions to clarify the role of the PHY in switching.

Changes in v2:
- Reuse dp-port/usb3-port in rk3399-typec-phy binding.

 .../devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml  | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
index 91c011f68cd0..83ebcde096ea 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
@@ -51,6 +51,12 @@ properties:
       '#phy-cells':
         const: 0
 
+      mode-switch:
+        description:
+          Indicates the PHY can handle altmode switching. In this case,
+          requires an external USB Type-C controller to report USB PD message.
+        type: boolean
+
       port:
         $ref: /schemas/graph.yaml#/properties/port
         description: Connection to USB Type-C connector
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
