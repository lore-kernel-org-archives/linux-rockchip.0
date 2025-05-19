Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD0B6C54754
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 02:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LlSsjDSJeiLNRrmofyiyoc0+f88L4J8ZxbuAzy5+CTA=; b=TvAF/LIEonQuqE
	5/KqGJBQgyjuNCblm/MRikspqY+QiO4QU8rMcIyUxmfC3l8TNtVzVRmr3/S6rDaVJQcimtAzu4Vpt
	xyNq2BcEi+I2ynxBl8AjUsDtEaYaLdoh4JJXnbWuLzmPCE0qL2VPtfKWRRpLR0cLECTTXYhz7IbHA
	p3a1DDVSTVkxvn3CPp59yMoF7vDuEPXg1wy1+VS0nzvMnbdQSweMo2DNSow5Q5i2UKUYxlnxVzsZg
	sd6W8e8rnVsaYUcsqy0b0Ba9NYhp3emvZTRo2Nxgzyp6UpMQtDbej1PwDJi/MNUOscYJpEvSddewQ
	tqH0BXYLz7m47PNrnjdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGqYx-00000007ryD-3Ko7;
	Mon, 19 May 2025 02:49:11 +0000
Received: from smtpbgeu1.qq.com ([52.59.177.22])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGqYs-00000007rrm-081W
	for linux-rockchip@lists.infradead.org;
	Mon, 19 May 2025 02:49:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1747622934;
	bh=0WeBfK84XKo6BwGaQIvaiahY5jByMMmGweFecshqHhA=;
	h=From:To:Subject:Date:Message-Id;
	b=JRDn1dtTiYhLuG7xQFbderMkv/IA9BZR7XV8vVq385ZYvI+w5mJQkZQPu6oqTFVYX
	 WLAHCpS2xQ/2rNzMVboxH3MQ5XD5WKwPRoEpRNVePvid8ALIRW6Koi1qCX8GKiEtoM
	 +KFnAT71yoWF5E1f7BYPENhlCfbB+EMJUFRFLOhI=
X-QQ-mid: zesmtpgz6t1747622932t38c3880a
X-QQ-Originating-IP: 1qM8DlRd+zQizFZjrQ/zm7WNDykiRYLU3hqETrh1PeY=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 19 May 2025 10:48:50 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16466651914765562108
From: Chaoyi Chen <kernel@airkyi.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Frank Wang <frank.wang@rock-chips.com>,
	Zhang Yubing <yubing.zhang@rock-chips.com>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Diederik de Haas <didi.debian@cknow.org>,
	Johan Jonker <jbx6244@gmail.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: Remove unused usb phy prop for rk3399-eaidk-610
Date: Mon, 19 May 2025 10:48:19 +0800
Message-Id: <20250519024820.194-2-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250519024820.194-1-kernel@airkyi.com>
References: <20250519024820.194-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: MsL7hwqo9bYs6xFPPVQf+2317wCUReZlX8UJmnMpumYccPCTQR4BF//5
	yctCfsppGT61BNj0eAsqu49sF9ARRw+2WCiIJ55LaQCxIsE4vWl7ekJBD0SevKjH6OoOwY4
	LMCVUdMEEqN5J9H5w+A1xZV6QIJPquXKjRTd/BbGASLtVZMBiyi99mp0L6m0ZAroV1srXIf
	aHTkZsrFyCVPI3JMjpYrQsVhikid7F0fcbmBb7rsvYEfa2ufQSaHpQ5U1EmRPTM2NmpEe3u
	g5WbppqeWhKMh97bj5qOJpNKcQArr/QhKttXG6t7wvCuHrRSxjufOBb1KMVN1jlklWwJpJt
	DmXbRTiDIZGcN2L+nG6TH4ZXL+1dWlJ5SSBqz0pcsjrmKwZRtehbtScVWUgo4ls5BOxjrCT
	TeYja9iTujgCL/WAKPdIxQ8ssPPOtabVMMZSE36M951po/Wx2vj5YFqJVZU7z8S0ETkXbAJ
	wUdggdV8Bv6I2bluy7p7FKPJ+eyHoAdaEKZEwQMybEBQemXtbw4dmUuRZuxI7MssU9DexeG
	/a990lkO6I/PICfPJj+FdTXpUa1jsc14Y6QAGAc9U6CeM5qw78BoXDl8gru3HfdtnG89xpa
	hyll4mDGuDyrWWK84SViS9VH3iTenvWR9pMXwMnRqnE01uY11sWAx3zILWxA686gV1CKeej
	vyEK9KQH/D6vECBHmd9fgGnCYhTYXAQLSVjKR9i3bFs9Kngr6eVEF+9cQYoLjmd9WWqtu+l
	l5PnkUsyhfkUIaJeA30uA/VjtRSWRO9CDIpwHMco4oUa66TJ4wp+GxBAvKlmIr3JW82MR8l
	CcP+Up51DHnBfacGd1dLDygmtq1cd+I8jHRGI6uTCdpQv/0BAZ3L65tYUKIL9OAaApifLoL
	hrS+V6oU0wzYfOMKkhR6MpCk79mrM5WO2VBnA+VOKFyK0gO6kwugnS/Itn4kHAyvtkOb88e
	QA12LCJ4bijj/PyQSzwBE8xpZ0grVIqzf1oBqzq02t+dlONmxJNUZHp2F
X-QQ-XMRINFO: NyFYKkN4Ny6FSmKK/uo/jdU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_194906_649352_4B1AC8BD 
X-CRM114-Status: UNSURE (   9.40  )
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

The rk3399 tcphy driver does not use the "orientation-switch"
property, so it has no real effect. Just remove it.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
index b90bf26b58be..7b5b83bd90ac 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
@@ -803,7 +803,6 @@ &tcphy0 {
 };
 
 &tcphy0_usb3 {
-	orientation-switch;
 	port {
 		tcphy0_typec_ss: endpoint {
 			remote-endpoint = <&usbc_ss>;
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
