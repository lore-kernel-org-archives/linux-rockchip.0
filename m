Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1378BC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 12:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yScAqKscPwbmfcxdymMnWUxtPR7yeLjg6iXa2qMw2Ck=; b=RIOBjp52eJvlL8
	2ryAHowSfa/6hZme1+uHkjdtyj1VlayrzmtuzWNAHkWbTpMT5GRvK5J/C7fwu3FsFEE9SAmMDtJiu
	uYGxHqUzKJQImBK7jPCPdOHWQnKQxSGnjLMwZdfupGuB2Sx+pwj+M5BPp9bsZ3DIWQdJSaimQeD+Z
	WVtCPDetEnqYQC0ePcJFVRw5BdlQafdUk4KSeKsskq+j8ybdlVRHdzP/C3oFl0wDt/zDb1qAG3h/E
	LEE7kbqjRZMY5LnzuFGZk1xU+Cjd55/tCqONTKmrQSgCMEIpk7uE3tBQsdSC5EtdJnGePjhSI1NVN
	WqcXIfWm1Obhdzcxwhrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBNS-00000000MIq-1rGI;
	Fri, 29 Mar 2024 12:30:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBNH-00000000MAw-2Sj5;
	Fri, 29 Mar 2024 12:30:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0B56261931;
	Fri, 29 Mar 2024 12:30:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81452C43394;
	Fri, 29 Mar 2024 12:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711715422;
	bh=oZR3S+5IeA9tysyQbtacehydjMfZh62c3cUc0dDLAYk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ngUloVlBi3aUKwy0LOQQSrMR8nLz/HYoQWtiZQzq0iShFbOQ+4ZLyq9nqKLkBl/MA
	 hzdYyt/Xk+2G/RqfHyYIB/E49gsOLFyclUK0Q0lJWki/MrmhcFuk3351ZG4Ht5r+Ax
	 jPppydryEh6DXEZmCeH05aZ3Nj8o6XKmHx5ad3Aq7DcgXZl0e93FXEghMCxj9c/+PF
	 cjkTtdPXI3eCjHfstXL//umw2xUZV2J2iv/MRrYP8S5Osl/n/v4UlP3A2OwyowGX8T
	 WZ4wCi4RsifnJ95M14HA5HoWfUJR4B9LU6RMN8KpAEqq3Tbjs8mFfKNfycotQMXDka
	 ARavgJKd+Unjg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.6 16/52] ARM: dts: rockchip: fix rk322x hdmi ports node
Date: Fri, 29 Mar 2024 08:28:46 -0400
Message-ID: <20240329122956.3083859-16-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329122956.3083859-1-sashal@kernel.org>
References: <20240329122956.3083859-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_053023_883231_B0D18114 
X-CRM114-Status: UNSURE (   9.90  )
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

From: Johan Jonker <jbx6244@gmail.com>

[ Upstream commit 15a5ed03000cf61daf87d14628085cb1bc8ae72c ]

Fix rk322x hdmi ports node so that it matches the
rockchip,dw-hdmi.yaml binding.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/9b84adf0-9312-47fd-becc-cadd06941f70@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rockchip/rk322x.dtsi | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk322x.dtsi b/arch/arm/boot/dts/rockchip/rk322x.dtsi
index ffc16d6b97e1b..03d9baddcbaba 100644
--- a/arch/arm/boot/dts/rockchip/rk322x.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk322x.dtsi
@@ -732,14 +732,20 @@ hdmi: hdmi@200a0000 {
 		status = "disabled";
 
 		ports {
-			hdmi_in: port {
-				#address-cells = <1>;
-				#size-cells = <0>;
-				hdmi_in_vop: endpoint@0 {
-					reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			hdmi_in: port@0 {
+				reg = <0>;
+
+				hdmi_in_vop: endpoint {
 					remote-endpoint = <&vop_out_hdmi>;
 				};
 			};
+
+			hdmi_out: port@1 {
+				reg = <1>;
+			};
 		};
 	};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
