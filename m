Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B96FC982CF
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2026 14:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DGUVpcrRI+iu4UqK9E6Mu07kSMhVS7uaJdnUfETQKDs=; b=XCz7nFDKtXSHph
	4NP06/5yTtxAkdj93Qzc6SSPE0jcLY4uWaOKIHZZvbM8kwfa7CJw2XErte5jBueonFHqepUQ5ipa+
	crQ44LH1SiSakSXJbp67jRQqV6rdrhj1YxhYWjUo+ARHTJGTaX2F4+Ve1+s4nQbcEK8Rf+j2e2/hq
	4pnEpIp0Qk+6lWKHktVNQcEGa1liCpFWszofwZgaFna2HYpx722Efki8RAND7WsxdzM759sM1pkOv
	kqdkh5n1BuhYVZIgFQ4TqiGPaqslb/nA2O6ObDNrgvFFqGLEMbQt3YtrkzpSAeUiPQwrGhcE6FzPC
	fWfR2IxVsd5LItcGOcAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Ciu-0000000BUle-1dvn;
	Thu, 17 Sep 2026 14:04:24 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Ciq-0000000BUj6-3Euk;
	Thu, 17 Sep 2026 14:04:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1789653858;
	bh=+lY5BeFcwV5FB838TAcxY9ito2AIXwIBAsYU2ILeoMs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=GSO8NouhnIrUU1B3YujfbZvvE7+mLDvWytQ2vcQlxnMqyetbYJgXGwIAG4ZZBA2/w
	 OsJHnYjRJlwDaDA0Qx+OYr71laPfDa1VH99m2dUjKdeSvv4ZqPqetDVdN1J+ZVU3Lc
	 E+drHNYvWUlQWwgebSB1erGyAmKSSW6HByr+8U7F1GbLVFgqnLEtgNCGVrV2R+gpjD
	 1M5qV4dgYxndIcz61dAk+JZ/MQ5bP3V6MOPaIx4Xanx7H4mjX+AIIqe0Soa+drlhJj
	 MSquWTWgYoKbPWCwTo2wzbb7Am8GlVvPqxGfSwzdsYfBvzeRvpwUifVN+F1TnX40tX
	 HHCkWfhUwH44w==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2A82017E0074;
	Thu, 17 Sep 2026 16:04:18 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id E4586480029; Thu, 17 Sep 2026 16:04:17 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 17 Sep 2026 16:04:07 +0200
Subject: [PATCH 1/7] dt-bindings: clock: rk3576: add more DFI clocks
MIME-Version: 1.0
Message-Id: <20260917-b4-rockchip-dfi-rk3576-support-v1-1-a5752a29f7bd@collabora.com>
References: <20260917-b4-rockchip-dfi-rk3576-support-v1-0-a5752a29f7bd@collabora.com>
In-Reply-To: <20260917-b4-rockchip-dfi-rk3576-support-v1-0-a5752a29f7bd@collabora.com>
To: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 MyungJoo Ham <myungjoo.ham@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=888;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=JMwGtADsjoZugYy5kca2WIyyIS8H1fB5ycX9ZpgOJ8Y=;
 b=kA0DAAoB2O7X88g7+poByyZiAGqr82Gg+ziNO8WErazFJTt5jJP61npnkoV6x1KcGnWH6jxJu
 YkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqq/NhAAoJENju1/PIO/qarQgP+wdz
 V84TmRG89qN3+4xvPAMg6GvMv160aZD+ZJ/ND6VqWuNxshjwQg9zOfk5KDWOCpU1GksL+6p78Td
 8k0xyuNOLirZe25JfyqxQogMiI06RdOGeQwb6MhS/CsLbSalokUqsJk+htIvjCj/HnIPT6MYknG
 oMSzql+ZtuGKKP6LKVHQswxrhIUw+KhSCeAJFHNYNGFXZTG8S27CZuO+FJRwGgLQJsozoDKnEAJ
 xIyYaC0HfXhwy0I43moMQEFXbz8DYOWb+W50SpIBMpDa0HunpRoS6ONn9PimpGICFboUQKTDhpc
 EDFpExCjKLzYHea7NNYg4fre1MJ+/MdBR5z7/SOCo7YAy1dtLI+leFsqxjz2EEoQlETkQ9S74Cy
 7HVT3XQoNeLwlq+aK6LY1WOXFlxDlJIC03cgE5YY/b4ep0OgtoTuvlcmO6L9NFZHjvEvXzUkwES
 /3OUVXY/xspfEFPu4eGfSMRGmXuRyuEjapwSrrus3n0aZTEqtUSH7woN4siDJlqJPiRT+deUble
 prz9xlUQnNfQDMJ8+MveNBJGeLN2ZH/Wr6ggW5a/T0au/QjYYpznS5L0ffagrrMNzeWKVy5AR8v
 xQzGxMAg5LHMooZ/3nWFZHXsqe6EWFSvrZpgeI8tyKiZqtlbTglWd5Dme1SAeU2ovF3w6qGqocW
 GYFHE
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_070420_972455_FE1CD112 
X-CRM114-Status: UNSURE (   9.92  )
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

From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

When the RK3576 CRU DT binding got upstreamed, some DFI clocks
were missed. Add identifiers for them.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 include/dt-bindings/clock/rockchip,rk3576-cru.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/dt-bindings/clock/rockchip,rk3576-cru.h b/include/dt-bindings/clock/rockchip,rk3576-cru.h
index ded5ce42e62a..c5b74f2d8926 100644
--- a/include/dt-bindings/clock/rockchip,rk3576-cru.h
+++ b/include/dt-bindings/clock/rockchip,rk3576-cru.h
@@ -604,4 +604,10 @@
 #define CLK_FSPI0_TO_IO			576
 #define CLK_FSPI1_TO_IO			577
 
+/* Clocks that were missed initially */
+#define PCLK_DDR_MON_CH1		578
+#define TMCLK_DDR_MON_CH1		579
+#define CLK_DFI_CH0			580
+#define CLK_DFI_CH1			581
+
 #endif

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
