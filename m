Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9FBEC3ABD7
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 May 2025 01:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwV3Ze9nuK8m795MmcoJOWuNGVYX8PSo0McCf9gF2l4=; b=iiptWjwg5Feohb
	Ih9grpUbjp5Qq7zq0Eav4Q010VNhNM5qFOrh2mi8RPZQXX0V8CHJdvTfui6l8wfcTbiYJKJEdHqNu
	YzDauuxwQa2MmuaQgm4upy+mu3N38Wqgi6WPGwqzEnfaQNV2IEjJnKADeDbodmxmESuIW1f8WjH2K
	ug6fIcrwGQ0CqOxDiUxoLOJgimLr5mkHVeKO5VO2r/yjUbylDyjjSYtGYhEGppVZWQCsIR0pPiJo5
	tf489WuwSZqFe1USKniPphirUMKpTzoQSWyYr+R+8CAAnyiEQtzBTW3WbLtMT/GXSDdy4iCyTF7ni
	29ZS2G9HWlwvNYo/ISGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEePk-0000000B3dZ-3gr2;
	Tue, 13 May 2025 01:26:36 +0000
Received: from smtpbg150.qq.com ([18.132.163.193])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEeKY-0000000B34z-2IME;
	Tue, 13 May 2025 01:21:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1747099217;
	bh=975XiWevg8IyB7+oWu6bLHHS0g5LCqgBcM0TSyV2q3I=;
	h=From:To:Subject:Date:Message-Id;
	b=QNaS7GC/PsSBWhvDyVSDDuCwdGPrDRtWyP92G4EpAvPqHuwzDvzcS5SlcgYwzUYXw
	 5J9dbP9YMOTf4cr9CDPKbSHiXFVYlnLqc+0XvMHLxo5f2er/33YX8EbgYA81U5jQRq
	 dNLnz+HiC1mhIL63IGp8ylubkpaqL3DDwX5tQO8Q=
X-QQ-mid: zesmtpgz8t1747099216t17baa3c6
X-QQ-Originating-IP: ogzTGvVk3wO9+hitY6L5I6pPS+CPHubTZFIWMmaa6Gw=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 13 May 2025 09:20:11 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8353147344841585000
From: Chaoyi Chen <kernel@airkyi.com>
To: Sandy Huang <hjc@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] arm64: dts: rockchip: Improve coding style for rk3399 cdn_dp
Date: Tue, 13 May 2025 09:19:03 +0800
Message-Id: <20250513011904.102-2-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250513011904.102-1-kernel@airkyi.com>
References: <20250513011904.102-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: ODcDgdcDagQKhJLssho9/hGosYW5ev95v8/OSr20611bZjwkQeLQyN1j
	U81tHu069WHonK3pFpn3k3xi4W0zKoE8jluM4nFQjoEKqrYJhgQNqmdRdzUAavemp64GnQi
	FKBMeGshKsIDyeOmguLnJUkUxIftkq74uWGSWCSauQYyOH2rboGeGLiGkE16Xutsbns2ofi
	FGVV5dTWJGlur+eCYgh9JFezvrKAnrRtYdAah+/zDitECDem0DSPz2EI6yOmkl5ML3orCdA
	pqeleBJc1KrnU4KwbOiafdGJMFD7vHj2FTonLMwJE149NZvZVs3sfHt2RBSc6xcTROg04ix
	cvM2BLHQMs27HRpbFg3dekfQa/gpApb8GHBDWGVLn9dijh3e7fVuEk23CS6Sh+V0HGnnuzV
	S2oulH6aWG8ePl/GOPESbLXDyA9PPXF9JitGEErB3+yLiw9TUgIY40bS1gd/wR3AVz+oOC6
	StDoS5xSXr9/Zexg5W382eFKlSSr+iCORnD1PcJa9mSL8Trru3I8OFr0D11rHRqXMyv7/m7
	UBpW9U/giUIRJHap/bRl/CC7WHFyXHFhvquq9oRhXGgkYRneEs9TFHFK/8VqNKOkhwNvDfq
	0p3fI1NEzDEgMIxEo4kkOikZjc7Y3gT0X6XnGiAMGbIHrilDQcR1NGIgJM7X37WVjLi3e7P
	N8P8SbvfXAwwyVNUUbDuAUgfojC7dZkIUAma6Ldh+gCuQJ9Y22r7FSH3j50njembSP/idWR
	jyYuqbnc0w7mvgB4IjrNyy86wGbbunJtewcxuE4kKexOY7JvXKkO5AxJKnz+oXlamZQAO/U
	bxZWbVrNPBarz/Zv28tXbqd8ifXML5xypeoWS4bRfkbWmv6kp7cAYO8JrPbefOtyhzolern
	i5HudABoKJDgrBNZHYLV8x69NzvBijpaP0tFAecmC3a/pZl7MIOTkNSMwY9Ce8fn4X59wgz
	GTZYuSOvtll24WCp46qhmucRN
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250512_182115_106996_118E777A 
X-CRM114-Status: GOOD (  10.57  )
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

(no changes since v1)

 arch/arm64/boot/dts/rockchip/rk3399-base.dtsi | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi
index 9d5f5b083e3c..e340b6df7445 100644
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
