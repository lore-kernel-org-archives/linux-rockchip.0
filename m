Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C6B1C25B74
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 21:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U1RwFbKP8kG8iF9JOI9TKJR+uIHw8xOwrJPcxwSe/pU=; b=1tumgQgp/rvfLg
	zvoaQWfeA72ZUFV/C+HVEid1AcPO3ptfQ/CpyX3kyp9bRjHN5kASyYNoFfC2hgrjOULjKHMgT9FLs
	z0Mx8ALWsz/dE6ktTb4dB3n13PrDyyZk6JMuHGG+nPPoUS10Sw8gttCqxnpeq305QBmyPmsQFn+oG
	jNPhQ/vZdhdMGk4GJ275qWIMvAWHuqyw/hZJ5h6/sobPl07K/Hc3pr2Bhsqn/CIUSaGy9AJziHy9H
	KTiZ/e+YlcBzCTb5ttBJTMUho6UwJCnLjq/BuiWMLlOvbdQJFkAeCBLuLtTfcVJ+pqLQMxXdWySpY
	DAZTQavnNmwOj0GflKCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Wn4-000000017e0-21l7;
	Tue, 21 May 2024 21:12:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9WmR-000000017HM-0PFs
	for linux-rockchip@bombadil.infradead.org;
	Tue, 21 May 2024 21:12:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=TbuWClfxS444Bp9GH5+7Y6TEZ8t3Nu88jxI+lE7Avhc=; b=EAR2uI+/NBNk3jr1cA5X4gHimJ
	vDu947WvOoeSh6M1RDESOQPlP6YawJdncerUQtuZkhy1Jqa0M9TxtCGs60DxcX0ZN/gbEd/h94W5A
	d616kmEBxYKGQMUvQQ9Jrw7PG9ImjKVZrO4O4w/n5l4YPR6TkQtKRnmHAgwG/SW4Of5QSGiYwjG84
	OVbWWlYHbVzZCE4ktSaOsMuLqMLw9cFQC2CGXNRJMQrc5gtCMwTR8qJGS0Q+AxQkBhaLjwTF5Cdrg
	1eskDpVAMiWxsAPtSorubuAsCySIJ5jWoNKArVPkqdMRRgWyLtYnG1r8FKcJr9fbFvqZg31w04ZSE
	phyfUEcg==;
Received: from smtp.forwardemail.net ([167.172.40.54])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9WmL-00000007RaW-3nAi
	for linux-rockchip@lists.infradead.org;
	Tue, 21 May 2024 21:12:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1716325887; bh=TbuWClfxS444Bp9GH5+7Y6TEZ8t3Nu88jxI+lE7Avhc=;
 b=IdmECserqUEUeoVnl4SgRw4sSCMfuVLBW6y8wI7OySZP8wRzPljqEg6LbfvcvoilVqGDAF1Cg
 pRfiIDPs/j2zyAjhEwOxcY1GFxL1sw9eSN+CCrFzcov1pwSee2V90IOHKBvQIgc+fhdvrI/BvlE
 vGb/0/86rT54ZOyIN3X+aYCNx7v1BP9gE9bBMlncS3L5wyxfkom5MIqwzogshH5OlrR5Zt26cAj
 Dx+PwFXxZUek1Xb96U8KSq1hGjtNrxDrEfpTKdbXBuNOVjYKWlPXfnMbazjmD7jLSUWiLjyvaIM
 guuqiPtkd1W+VPnwoffUcDA+RLalKB/Cn9AKVT8CyXww==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 12/13] arm64: dts: rockchip: rk3308-rock-pi-s: Enable the io-domains node
Date: Tue, 21 May 2024 21:10:15 +0000
Message-ID: <20240521211029.1236094-13-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240521211029.1236094-1-jonas@kwiboo.se>
References: <20240521211029.1236094-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 664d0dfd8b6b0c828344af78
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_221215_512990_83CF9039 
X-CRM114-Status: UNSURE (   8.88  )
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

The VCCIO4 io-domain used for WiFi/BT is using 1v8 IO signal voltage.

Add io-domains node with the VCCIO supplies connected on the board.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
index f6fb90e13ad0..5c702f00b27f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -231,6 +231,16 @@ &i2c1 {
 	status = "okay";
 };
 
+&io_domains {
+	vccio0-supply = <&vcc_io>;
+	vccio1-supply = <&vcc_io>;
+	vccio2-supply = <&vcc_io>;
+	vccio3-supply = <&vcc_io>;
+	vccio4-supply = <&vcc_1v8>;
+	vccio5-supply = <&vcc_io>;
+	status = "okay";
+};
+
 &pinctrl {
 	pinctrl-names = "default";
 	pinctrl-0 = <&rtc_32k>;
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
