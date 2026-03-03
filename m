Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41523EDEBF0
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Mar 2026 19:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4UvODI/SP56Ln/8dP93VYQZhOewOA9HVKaH0UeNh53s=; b=Qo1Fp05D4G7B+n
	nO62Fei0T1qmVaOkLWCKj8p72BvKVwqt1ySeokG7GZv7BwU1WcSbYEpHCkTOvrWkWoUAPO7+grupw
	PJtnuT+eCVooQcSsIZaUaVRh8e6lv0Le6sMi1RRB33Fb/Ao6h+bQLkVwTNwv3dAzAaT8ocfXzXt/z
	pYAMMEgnn/+HOS3wuf0SYDd6iyDQoaYtzmXtedPd3KR/nXA7kKRGqMbeMu3pfe7Uy8VbmU0KTIqbp
	54KUWUVhJ0VF21NW8ghnzTF5sVtsHvkQguEN6gHHY7Q91n0N0/xbNwlzs208Cn2y86ginTczutjiu
	2yBTv8Dd9AxKiJB97w+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxVnJ-0000000Fqgx-0zEv;
	Tue, 03 Mar 2026 19:52:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxVnD-0000000Fqam-170c;
	Tue, 03 Mar 2026 19:52:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id A72DE443CE;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84565C19425;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772567550;
	bh=9J9gL7YouFeYvBXgJJkDaXgAt8k2hc/h0yRIxOleEKE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=k3vb5X4IPLlZHy2cw03KQFkGkkeLb5SpSFcD+3Y4pUg/s3sqIKCARXuucZh0EKBQa
	 B4zY/DpEM3zQc1ieH/V6StultxLk6neUaPJ0EOrKzpVsm1HymjPOkCXpvsS6TSN3+p
	 ii6wpUy1BfQGUSsEOSaEyspLR4tLKxhpr8RFfeMKgQiAQUMEEN0pMiMap/Gidhnk3i
	 58MWPio4eFiqZoOwnqZglztwnFnStxE/Ivpl9XUQJdJ3Xmi1gj/RunMeFM7ElXb3R5
	 sCOnoCVx2dYZxzN49MsizyJIQPV27eOskU7p1WiSdt6Hf6xKFdCIAvx5sxcASuYTYn
	 OVTFSerDb3Smg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77487EDEBEB;
	Tue,  3 Mar 2026 19:52:30 +0000 (UTC)
From: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Date: Tue, 03 Mar 2026 20:52:28 +0100
Subject: [PATCH v3 2/4] arm64: dts: rockchip: Introduce the reference PCIe
 clk generator for BPI-R2-Pro
MIME-Version: 1.0
Message-Id: <20260303-rk3568-bri-r2-pro-fix-pcie-v3-2-af5a5207b0a1@ixit.cz>
References: <20260303-rk3568-bri-r2-pro-fix-pcie-v3-0-af5a5207b0a1@ixit.cz>
In-Reply-To: <20260303-rk3568-bri-r2-pro-fix-pcie-v3-0-af5a5207b0a1@ixit.cz>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Frank Wunderlich <frank-w@public-files.de>
Cc: Martin Filla <freebsd@sysctl.cz>, 
 Charalampos Mitrodimas <charmitro@posteo.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, David Heidelberg <david@ixit.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1075; i=david@ixit.cz;
 h=from:subject:message-id;
 bh=DLgTWxKRH1XYO2l0p6yOj+4it8sVM+ozZghYVlPNXHU=;
 b=owEBbQKS/ZANAwAIAWACP8TTSSByAcsmYgBppzv8N65m4KM+BMvXiPpSJgaTZWNY2Muclcn91
 khL9eN7veqJAjMEAAEIAB0WIQTXegnP7twrvVOnBHRgAj/E00kgcgUCaac7/AAKCRBgAj/E00kg
 cu8QD/9k6zAchv5KkQTmT60ebjQDKVdinv5JqUf5iK+2cu9Sl4SXliBMpJHVw1FR0laqnEK7Ggd
 RAWnqQu1vRyNIkQZMuAmdJIrmaV99O4YnywJW8XagrpTxdJ/7zHtSW+4+INMzuPpQvbyNA4LsKo
 yBdc42Ges8gQh5FR58W4WtcIWED0tyIeKfwZuBV0KtrstxqxMjN+WEaUNvDT7m0CNNEkLF0b3OU
 p8OYyB4rubv65JubFPVZUNFUjEL5/GNDDyL844IXQINmEWmridmqY6VGO00tSlg6Y/GK13LmiN6
 ANrs1QokScTAjnYiXvtjd0e4S0cCPj5PIJtKNk8ULDR7YfHq8WBr9Ob+4bF03Tab+MovJqponLI
 P+DXHgEWUgOThX9JZBpMK+TdICT7qCaH2PlLQ8uztVC887rRVQjNhA6qFFFaHOFiUvQ4AoHCP44
 tmtx26nURA74eXnV4vik3HfQJOd05eDfTP8TOfw16UngipG6NnNqEExTAJe3xre9pNQ/lrCLPwJ
 OE4kRKk8KRBNWO4xR3bvo61IYDcDwnCihLH5eCdX5ysg3sd07XFQxm8FG9AohWWE2yqbRhCdRXO
 L0Rf68zAk0Vx2rZ52q4Hfxw3RTLoWPMnIKoq3FZcdq5J/ydT61l5JKdm6Rp3Q/MNu9cCUhYo+ku
 EboV8kd1A+poCwQ==
X-Developer-Key: i=david@ixit.cz; a=openpgp;
 fpr=D77A09CFEEDC2BBD53A7047460023FC4D3492072
X-Endpoint-Received: by B4 Relay for david@ixit.cz/default with auth_id=355
X-Original-From: David Heidelberg <david@ixit.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_115231_367612_8EC7EAB9 
X-CRM114-Status: UNSURE (   9.31  )
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
Reply-To: david@ixit.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: David Heidelberg <david@ixit.cz>

This clocks provides for both PCIe lanes. In following commit will be
utilized by PCIe clock.

Most likely PI6CG33602C or some variant of it.

Suggested-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Martin Filla <freebsd@sysctl.cz>
Signed-off-by: David Heidelberg <david@ixit.cz>
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 4d3ebe50b90ba..d02b82c5f979a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -114,6 +114,12 @@ pcie30_avdd1v8: regulator-pcie30-avdd1v8 {
 	};
 
 	/* pi6c pcie clock generator feeds both ports */
+	pcie_refclk_gen: pcie-refclk-gen-clock {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <100000000>;
+	};
+
 	vcc3v3_pi6c_05: regulator-vcc3v3-pi6c-05 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_pcie";

-- 
2.53.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
