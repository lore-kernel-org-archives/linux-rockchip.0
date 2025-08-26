Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AD3FCA0FEB
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Aug 2025 14:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=StAYSOJehjDzGf9qINlaoAZtVEXCTFMgxteJ+ZpBRfI=; b=qe4UqOwoTQOimv
	6sWsIciFxSlMX/syJBO7KxymO7/D/ZlUzWc6fknQL4J2cqujse9SaUT8O2mVt574BvVbl9VkEK6nI
	nbPW6SKe3/VFs72svS+t8xzdBNzl4Xh3wf88Zu3r+QBau2doyrbHRIDAZhEjmvM2VTlo7EYDCIL1s
	f7VoK0cNPAXK7Yapx9Tu1bDLrVHJJWNUEs3+Q+lzJB+W6I3PSq4BLGvw8TkFAp9r3T6lngOGHz9do
	gob8TFM7h/DOBYW3j/eVJobVslyt1VVbPdvPU8nDzpvEHbGn+VsHSVp2iUqndQORk4681TLMRpDAv
	kmgQ3CpVyV/Bii+kK1RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uquPk-0000000CDQX-0Zb5;
	Tue, 26 Aug 2025 14:12:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqu25-0000000C9CJ-0cQr;
	Tue, 26 Aug 2025 13:48:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=suYwX1lPYNA6J6Ueqpvg+LFYiHTraJArpH2l0vR/ubY=; b=dL8xjPkZSTeqnV7WpKp6D7IEQM
	EgR3eXxpxA0/tdNcAbE9w3wkwOJSb0jkvUg4m2xiP/KnQpFdDNU73GRlEUdE6fLFH2JuheY0Uuuzj
	IfRq9fTuFzqD32yAcn6rcZ3QGhOcMRJpapd1qicsevi7C9PlM1BAXXlJ5IhJLj8Upehef4WrBtwgo
	Q2I/PPhghIQrrCAnMlWsEItXPApibfp6i2vpUvu1WVEwuhgZI+BTL2aHEtJEvyRS7couYvNC+MVrH
	0L+4urbBX1BYyDeMeu49qpHt7DpSLrSB3VFkl7zw/Nw5IMu8/8zLhQDprLhQ/MjKUXp3tGFHamKwo
	2b7k9IgQ==;
Received: from smx-c.mailgw.jp ([210.171.6.217] helo=rmx-c.mailgw.jp)
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqu20-00000002Dor-1D3q;
	Tue, 26 Aug 2025 13:48:15 +0000
Received: from bccml.bai.ne.jp (bccml-a.bai.ne.jp [210.171.3.161])
	by rmx-c.mailgw.jp  with ESMTP id 57QDlnMh024478-57QDlnMi024478;
	Tue, 26 Aug 2025 22:47:49 +0900
Received: from subuntu-desktop.bai.ne.jp (bai859bcd79.bai.ne.jp [133.155.205.121])
	by bccml.bai.ne.jp (Postfix) with ESMTPA id 758818177B;
	Tue, 26 Aug 2025 22:47:48 +0900 (JST)
From: Hide Hako <opi5plus@bcc.bai.ne.jp>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	Hide Hako <opi5plus@bcc.bai.ne.jp>
Subject: [PATCH v2] arm64: dts: rockchip: Enables sound output from the audio jack on OrangePI5 Plus
Date: Tue, 26 Aug 2025 22:44:57 +0900
Message-ID: <20250826134456.9636-2-opi5plus@bcc.bai.ne.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-FE-Last-Public-Client-IP: 210.171.3.161
X-FE-Envelope-From: opi5plus@bcc.bai.ne.jp
X-FE-Policy-ID: 3:1:23:SYSTEM, 3:1:2:SYSTEM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=bcc.bai.ne.jp; s=20240516; c=relaxed/relaxed;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=suYwX1lPYNA6J6Ueqpvg+LFYiHTraJArpH2l0vR/ubY=;
 b=LmixlWzCVDA81Kf9yqqXQ7bEBimnLAJZxN/07d1we8P282n2P7cgUGDqJIw1ikGE9YeiynriSRxK
	fXARS9Yxmor5LScCKSbvQbL69nIm50edBH530vFGUVbRwbAXOT8DZ4J/P7lyDr0putmCdmZqAV+z
	pSSsG9rquMDXuxTgshitDl3NTum3P5ghimnObeZVySAHLbzDEfXFk5B5U2U5Kt9vlIksxSGWNEzs
	/Yzmg8DICkkgE5mhQ2ileCjOuMkKqaF7C+PNOQhKczgNSkq1gAxkq1AbZmwvGTSM/4kya16mbzMI
	BKnpAbuIuQmbGYlxZOwGY40rDWWRDavFgNWAog==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_144813_449403_F27F9371 
X-CRM114-Status: UNSURE (   9.25  )
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

Currently, analog sound is not output from the audio jack.
This patch allows you to select analog headphones in alsamixer.
Works with kernel 6.16.1, but not 6.17-rc1.

Points of concern:
6.16.1 kernel with ubuntu 25.04 Setting -> Sound -> Output Device
 I select Speakers Built-in Audio, the sound will be output from the audio jack.

Changes since v1:
- As pointed out by Jimmy, the file to be modified has been changed
  from rk3588-orangepi-5.dtsi to rk3588-orangepi-5-plus.dts.

Signed-off-by: Hide Hako <opi5plus@bcc.bai.ne.jp>
---
 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index 121e4d1c3..44bb15951 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -78,6 +78,7 @@ &analog_sound {
 	pinctrl-0 = <&hp_detect>;
 	simple-audio-card,aux-devs = <&speaker_amp>, <&headphone_amp>;
 	simple-audio-card,hp-det-gpios = <&gpio1 RK_PD3 GPIO_ACTIVE_LOW>;
+	simple-audio-card,pin-switches = "Speaker", "Headphones";
 	simple-audio-card,widgets =
 		"Microphone", "Onboard Microphone",
 		"Microphone", "Microphone Jack",
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
