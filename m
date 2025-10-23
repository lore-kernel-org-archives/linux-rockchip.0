Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9002CCD1BC
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Oct 2025 03:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oG58pVfOGMLLP76w/VaHrlmPQ6H495OCeDcV1zlyQDE=; b=iGmqqCTM86E6in
	MNPquL4pGPT2N3UJNgpgk+g31MancvfNv3vp+3a78STMUx1HSukUkMw3qsuYYGKd732GKgaCJYgGK
	ORk6EAOiJpaFG+aYh3J06nt4xxciX85ZL/ultJsDh2BvXDUOAVEIT/ChsIGU5lEd/AUJ8lxr5Phg6
	PuTrZl+3+cO7E8Z3l4U5C+izCoA+0XpBOFZSF/iUxMBaZwuSJWY7P1t2+KNIWlNMPi1lhGctuslHT
	VqkcraP7VP3SjXyy3bty4bLLml1U9Uv0BcMy3Isou5VKiMQRWcXc7EJLeBOnkQDYum8PzbqZuJeEg
	9Dxdlf/MvhdzjYcUCEjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBm3H-00000004wWc-3VzG;
	Thu, 23 Oct 2025 03:31:47 +0000
Received: from smtpbgau2.qq.com ([54.206.34.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBm3B-00000004vyH-0hxI;
	Thu, 23 Oct 2025 03:31:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1761190264;
	bh=cDiOxEFqYuonRjIga1t9o2u02p12TN3hXALWFcjKD9c=;
	h=From:To:Subject:Date:Message-Id;
	b=AQBoAVdhJGnqIyD6FLVazTtIT29+H8cQ+LxIxOIJF2U/R6iSk5i+dzxKH/olJWmlo
	 fMdv/egZ477gbv9izsezOr3thNCxcwM3k/vlcCHvfvliePaUICZ2p197MfS6iiHNY4
	 aeS6hsknrB51ZfI7R+PsTzVjHhf8Wimf3FDys00Q=
X-QQ-mid: esmtpsz16t1761190262t8232f799
X-QQ-Originating-IP: oQ3NBPzRHx0Ix2kkEvnLPPXZcoZY0uBDIA9nYNoZhes=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 23 Oct 2025 11:30:59 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 10751282431167518610
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
Subject: [PATCH v7 8/9] arm64: dts: rockchip: Add missing dp_out port for RK3399 CDN-DP
Date: Thu, 23 Oct 2025 11:30:08 +0800
Message-Id: <20251023033009.90-9-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20251023033009.90-1-kernel@airkyi.com>
References: <20251023033009.90-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: M+9A/6HISCYbMp11zyepCiZ3gzZ5kFvwmvxZ9DdzHsXfItPdMU81ChiI
	fLvHGEoUqZHzIi6u+y2/JrFiW6VBx+kW7R3DXQEJTfEk8TLCUdp9I1pfxivi/FSHhQFuZ7C
	XFygVRzEvs1RkqU6eVRj463YnyTMEBAFsPaNew90IkM3G3kE1PfuaO7ym+1CxGcFgjlkS7M
	0oIUMPxlUhV6OoT63MB5tHCS6tUROqmH6sTj+IC2Vec1JQ2zXLzWWqf67tesp9tLykqkKw8
	FoVQHjAMVK/0pLXHweG3lA/xHyfrgcXiI8Ez6EWq6i+InlvLi0kLS+t7IBQTgKeRDh5xcwq
	MA6DKoPYiY4E+B9WsizESwADu2JXKs5hXGFcT3A7Jotb1vrZYO/3+Dl989AxOLA//hakzMW
	rAH0zntH9t5kmCT+Ocipn+CuyH+gXWLsHBfbbLlH7Ga8mYd1z5IUS/bWs44nnAcDL+oshu7
	nquZNmQVUA013M4Wukt1MwhUYrPD1q/486Vd1CcijdThVurBhh0xGagm//tSWLvrV+P+gqx
	/0CVHHZEr94QGX0la38FwG62zlkE9CJ5JeZe/gQ4HekisY1SyMkdrdRz9oIYyirFAKLQYob
	ZaKsuu6lJASMsEszFeoq1VQ5syLPXfxYtFEPwBwJRukFBmD0cy5ptr5tXyLkiEnINqxpqIy
	6BESc1c3P1ixPY4gnhUnFLmzYo3UPVqcQHHoGECzAj19iBJWO/50TdkUTFHthEX+CMbinWw
	sFbu8ZNHhkgy01dS3TPoIGgl3cAE3y/fa0r+Fv2MXuBzyEaEXKagldpAt44g2rqttE4y5kv
	3B7k8ps7mzY7n5HEFR+iSYWIOZa3ZHPY8Ueo6sA9QYlaL+FfRoKBowPwRpGdjZj4Id7GvDG
	zbuUlNncNiQVlW4RIm4jsCO8s6doF3jotJMctgBnJgvt3bHKhJOTLTCprnbjil1Z6cfvAw4
	IupDQ2TV05uU+ssQa9QRTpFip2D0wYymWPx03bD8rw7FR2iSy16frY6br8SKGaetchwuTMI
	i1j9rrrA==
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_203141_654718_E8094A87 
X-CRM114-Status: GOOD (  10.32  )
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

Let's make the ports nodes of cdn_dp in the same style as the other
display interface, and match the style of ports's yaml.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---

(no changes since v5)

Changes in v4:
- Remove unnecessary #address/#size-cells

(no changes since v1)

 arch/arm64/boot/dts/rockchip/rk3399-base.dtsi | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi
index 4dcceb9136b7..93b42820998f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi
@@ -618,7 +618,11 @@ cdn_dp: dp@fec00000 {
 		status = "disabled";
 
 		ports {
-			dp_in: port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			dp_in: port@0 {
+				reg = <0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
 
@@ -632,6 +636,10 @@ dp_in_vopl: endpoint@1 {
 					remote-endpoint = <&vopl_out_dp>;
 				};
 			};
+
+			dp_out: port@1 {
+				reg = <1>;
+			};
 		};
 	};
 
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
