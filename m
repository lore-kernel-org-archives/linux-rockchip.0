Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 642EAEB7ED6
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 11:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ddHwqgnLHpX29PEBsjLCMDykBso8MHJnxQzQK3yhfsg=; b=DqGQWWOjmFmk0y
	ag3eK1Kf4xj7nwY8TNJhuBlsTM367Kde5UyzFPgvXoEwffGKZEUakcMH1tcHPzXAvNTCMYPjJIP7R
	0KPaFfgtujXgwBDbN73uv0Z7I3YFQKb4oOiizmfxGcCSxn6o3XazUntWbWOw+LNR8EPIACsV5pKU2
	HUIRxxGRcscHIjPvqiVdPU8r1OHucxxXwvZ/qj1irgVgGjQg4vOZ68d+psTNo3TJHC5dSI7zJUsSF
	0VBwc05DcrLmlRW1yn1Ocv+qXctC4nC1As8abODT7796jQG2tZL3nWoE5tBszoFuH1nIoQhcQdU4S
	SyVk6r2IL5cK/vyUAzKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxk2u-0000000H2kS-0wuM;
	Wed, 04 Mar 2026 11:05:40 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxk2n-0000000H2eb-1vKw;
	Wed, 04 Mar 2026 11:05:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AB11344555;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BA47C2BCB5;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772622332;
	bh=NuR9llP7GHy9Y9058elFyhLur654m0mtWCISGmMQp1Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=tTuiBPxKxfiQ065BH62mJXQfyDpulfq+psRu1ANMMuVSbTzx3cUSTddJ/DFhLTDM4
	 nrMhrhBRbiKnYqY6D2S/OXjHF2V7xImz5PR5ETtAzaJaSI4xo7w7V2mYYnMzQXuTP+
	 h8gd0Y83N6pBPQXtiZoNzxReX3JGDKw777fO5tb7OE6LNV7u4hQnRfdninXvDUcqBu
	 fjcZvVvhTf4FFLAaNd0cVMriaCXBv0GeIwzKzF2Gr1/OAEJp2gW97SJSLPfItUaoeW
	 Xa0CVp0EVqwBmJTsDXmW3vcTWNn/PDwOoGbEyG1Z2sY5nYNFLPDJKGt5mviwRn0+Tn
	 CuxqpS0A0BsBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 841BCEB7EB8;
	Wed,  4 Mar 2026 11:05:32 +0000 (UTC)
From: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Date: Wed, 04 Mar 2026 12:05:30 +0100
Subject: [PATCH v4 4/4] arm64: dts: rockchip: Define PCIe clock pinctrl for
 BPI-R2-Pro
MIME-Version: 1.0
Message-Id: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-4-37abd7ba29d0@ixit.cz>
References: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-0-37abd7ba29d0@ixit.cz>
In-Reply-To: <20260304-rk3568-bri-r2-pro-fix-pcie-v4-0-37abd7ba29d0@ixit.cz>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Frank Wunderlich <frank-w@public-files.de>
Cc: Martin Filla <freebsd@sysctl.cz>, 
 Charalampos Mitrodimas <charmitro@posteo.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, David Heidelberg <david@ixit.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1430; i=david@ixit.cz;
 h=from:subject:message-id;
 bh=phK8+ZRwh/J/YxkbsoLpGT+s0IxKqlf1J/b5vaUdLh0=;
 b=owEBbQKS/ZANAwAIAWACP8TTSSByAcsmYgBpqBH5PO9/6ue5v3vMfwoqhAKzbGkWb5HOukqEv
 PUg0fESJGqJAjMEAAEIAB0WIQTXegnP7twrvVOnBHRgAj/E00kgcgUCaagR+QAKCRBgAj/E00kg
 crOAD/9ASb2JoxmVej5rj1mI/ep6xH9GgV09wCCinkiCPRPN01eYn5FqLFzwKkg0f26RrlnLZtv
 K7u9wfqXcUimhp36PY+v4WY8QY79h5zCTNT6teP6U1M6QVSnGs+bRjR92WT8nOuSEAY6XGzB8Rm
 1h4PkXpYjI2YlUJcpHfeQOZrFN5FjkGsPXVJzXjTQ3b3FEJiQCdpYvFzrWIifTFzCfirfOCFWtz
 ajx0i1Ch5CmrpLEqnXPDnH0LgGiMDC7u7So2bn6IZBSeZL1M+u7c+0kSE1WRllq0CivYTXVfqWP
 0p9CJ+LO3uBdISZtHkIn92QjFgQ7do8NHfrW5xxxVIqIbCioDYMcusDEznazLL5AkfF8OnKyQTD
 ItPvpLGbiOggufGmQ008s5GG6AQN2DhuvPteF5taxQu2bae9JHd4Cyb81fItzMNUujL6eWW6Xrc
 HrktZuGYACmEXX5k1R3aEFjEZHyvzfVlSe2vFQ4sITivvwrMRIltEvpBPDgPKndoL7g5oZyBH0s
 +NGGzDCEK+lZoFJV8HXEhVtfn+RaMi2U1sZncUZ7UFuDuQyZKviBRBLNpiRuMqi5RfXBLREvj+F
 6c+slrev30iiFaBH0UhZTKCBK/ES44VJ4tH1z5TzZNJtvefqttrOnkxhw3KzZ2j0dV2ww7OWkcp
 xTn5goOXjzRjlOw==
X-Developer-Key: i=david@ixit.cz; a=openpgp;
 fpr=D77A09CFEEDC2BBD53A7047460023FC4D3492072
X-Endpoint-Received: by B4 Relay for david@ixit.cz/default with auth_id=355
X-Original-From: David Heidelberg <david@ixit.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_030533_539460_9D33632B 
X-CRM114-Status: UNSURE (   9.66  )
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

Without configuring the PCIe clock enable pin as an output, it
remains floating in input state. Some operating systems that rely
on correct pin settings may fail to boot as a result.

Fixes: 86973ae0355b ("arm64: dts: rockchip: Add PCIe v3 nodes to BPI-R2-Pro")
Reported-by: Martin Filla <freebsd@sysctl.cz> # reported by private message
Tested-by: Martin Filla <freebsd@sysctl.cz>
Signed-off-by: David Heidelberg <david@ixit.cz>
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 3cdea9456a28c..95cf4a6236048 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -125,6 +125,8 @@ pcie_refclk: pcie-refclk-clock {
 		clocks = <&pcie_refclk_gen>;
 		#clock-cells = <0>;
 		enable-gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&pcie_clkreq_h>;
+		pinctrl-names = "default";
 	};
 
 	vcc3v3_minipcie: regulator-vcc3v3-minipcie {
@@ -652,6 +654,10 @@ ir_receiver_pin: ir-receiver-pin {
 	};
 
 	pcie {
+		pcie_clkreq_h: pcie-clkreq-h {
+			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_output_high>;
+		};
+
 		minipcie_enable_h: minipcie-enable-h {
 			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none_drv_level_5>;
 		};

-- 
2.53.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
