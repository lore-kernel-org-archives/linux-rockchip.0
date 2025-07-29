Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 151C6C83F26
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jul 2025 09:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJYwMy887hI6S7p0djpMUyai2KzyP6dHprWcXH5HJU4=; b=uQ8uJqNl7/aB9I
	SYmuiykXJYqbr9/ZyiPeKRptZQMc0rS3oHy2yaj4WvL3ijI0PAO/WKw7j7uMoIZ+ev2xKiYPFDQw+
	hrznxOb/fiOW40gz+TMJoCr6qt2/kupqd3jRdGxQmIFTSr+D0tB58EFnVX6f0+3fn9BbN+7afWSPu
	ttEmgIjbyV5dnUe+KuHtMezPpNsguALt6Hx4eQ6g32y8OGbeU9hwhhbF/jBfp5/2IAbdtWzj3vvd5
	ALkAlHNZ+o+0SAWu27E5BwZpkzNpubf/sTymmSAbgtCu39L2sqeP/J+dYo4CmvjTwtw0XplKPYa0S
	6caZekphEam3vM3BztAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uggNa-0000000GM13-1N0d;
	Tue, 29 Jul 2025 09:12:14 +0000
Received: from smtpbg150.qq.com ([18.132.163.193])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uggDf-0000000GK62-3yFl;
	Tue, 29 Jul 2025 09:02:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1753779664;
	bh=cVsfyWOIHeXBsAv/pI+LuirkOLN75phRnl2QMAl6n60=;
	h=From:To:Subject:Date:Message-Id;
	b=YU4cE3tdvRwJweP0huY1LyxNEsq79/QZk5dW/nW1vReeOk5rGz7IcOuMz31rzM9Q2
	 SCWs3BBaqn/LN/JyHNkOScw2Tk9HdDuavhT7sM5c90XaIojHguQyENktXU8h2mwjc2
	 3DrLhRPsxWYkvYZBZp59GgR1PljbIvyr2IuJusmI=
X-QQ-mid: zesmtpgz1t1753779654t826cd32d
X-QQ-Originating-IP: jRSwjG6rFafhFW5ehktwFr25xj18ygtqPc25P+oepJE=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 29 Jul 2025 17:00:52 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7649534104477773387
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
	Diederik de Haas <didi.debian@cknow.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Peter Robinson <pbrobinson@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 4/5] arm64: dts: rockchip: Add missing dp_out port for RK3399 CDN-DP
Date: Tue, 29 Jul 2025 17:00:31 +0800
Message-Id: <20250729090032.97-5-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250729090032.97-1-kernel@airkyi.com>
References: <20250729090032.97-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: MZasx93lI99004yb0adgp4rjegQKICSDleX64XgHjNOZCLrmVgssmKWc
	FkCH8mtv7gUpxGuFRykKZgfFjE1t8YCKdLK+Y3HRx+O89/Se8FEe9/VG7ZUZMSRU+D2I+ga
	t4c1V3mW0zYLCiSisUzpf7DWmsLYm8cvbtsX0KBd/CQl9fJPViDvH0M2nxU0TV4+kVzW2Xp
	94dOPI9dAk9hlfug0CYXgd0tPgmEjw+d3ryrpw5YWcFiX3nTYsuA49eNBxurgdLpMGB0ok7
	AhoWpe/23or6t4dEBHSbkV4xytAW/+ToJfkajaqKJP/ViDM8c8vpwuDWsF6qj+zDLqaqBdX
	mafIB5hCdeA4TZCTxA41Hp54fXqRVF8dQmBapj0V/t40hd7q6elSaXwm5KJ3cGcx8I1UzDQ
	okYF2LO3lbjRtikVp6XlD6Y20yg4fYpf/d9k4KNmb4zjo/wH46CDCge1CE+fxp5HZg/imqD
	GbFnqe27sRLrqhFMYUKCYAhnxMK3+R0ylzaNC4K1yFhuPi3he8V2UodTtyMfkQA2MbPyAK8
	Q0xhzwNZwe9eeuTn8+TcskbpQjirFtWf/gLLx0UBwJKIwTbDTNUUhGpDZS/kz7qib/klnlL
	n1YA437FUxsCopBhBab0e6NqEo/0/P3hfmjMC8f14LzMwv4QHjP5+qGnjmcccUQJY4Gr9PN
	YYTZd9EqOp9nOi+A7Ev/HEMIKqGYNrvx8R41rB1Pv/ORKu1jE3m0/mzYWM2xmUyhe0pu2Cn
	JhLWLMn7/prYftxZHM0AdrQfwV4Dmp7hOnOgN+96f2H5ElF7cqaIgMGJzYDyL7MURJkmZJ8
	2owM710+ZFRRffE82JAbT9mm+SJul7uAriq+l/iQVevPXy1AijngIeLji1Bqxm/wCMlRord
	sSqB3goxUJT/JjqVKJufNKILR6O8TDS8nBm7VtZDAsp8B+aj6NSwQjGiPNzPn86yzRyow2S
	es4Cf9NMuj/2mJMWoRhm4OJH9Jag2R89ELgFi8gwWuHoEXn/I+u2Lubzlq1a1Q4BbtivoFW
	3vxHr9Ci/HgIkk2Llj
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_020200_583828_560A7249 
X-CRM114-Status: GOOD (  10.79  )
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
 arch/arm64/boot/dts/rockchip/rk3399-base.dtsi | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi
index 9d5f5b083e3c..edeb177bc433 100644
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
 
@@ -632,6 +636,12 @@ dp_in_vopl: endpoint@1 {
 					remote-endpoint = <&vopl_out_dp>;
 				};
 			};
+
+			dp_out: port@1 {
+				reg = <1>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
 		};
 	};
 
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
