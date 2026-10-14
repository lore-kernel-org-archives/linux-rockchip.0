Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB2B9CC6B1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 08:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LS0gHKCS6DSd/4HkrgqcYb8rBAF+C7kDbPqXuctJxEc=; b=dOAQBdNoNuMEUv
	IaZAhIuuYAbwXXcLDeGPTbZPqXRweCjZ+iLpwK9cmvFqwEL15lDMR3X3xASz4Ig0pT1Gh8tYgO369
	wuvII0nNHOqdWg0cbC+l3EPrsx3MsiWazr94DkBV98jbvNSXzVcm9QdmxdzMz1XSyxq8mMFiFr6C5
	hC1aFJjlet95Kscig0Wmb880d7GR/qF6bUiuJEkNJ2D3niAMlQKJtLJQoEp96qlf+PdJSMcMrAXc7
	br4scCELplhfcBcMlEuqBPFAj+R2j7lvraMZEx9wF1EZgm3jjN2KvPLUArZzVkZDLKVLnMb4G2ZkB
	OKdaR7NiJezAS0MKGRjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGuEx-0000000Es23-3Qiu;
	Wed, 14 Oct 2026 08:21:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGuEw-0000000Es0T-1jay
	for linux-rockchip@bombadil.infradead.org;
	Wed, 14 Oct 2026 08:21:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=yVCZM5zURPRE62cvJS0zNIsVrphYetwj1gaMWhP5efk=; b=nO7oo667DCNt8J1FSGQGyq/tBS
	AhZaSDVg87S7ei+TyLhZnz8znzRDrqiQzc60ecxBw0KpJq33rhVHbp+vagJIHXoCzQSLi7jQ8BLJ0
	LYMzykqFy/+FVrzsQ3bi7ZYYEw4IRlO/cH/dnkwbV0Q6cr/4dSWvQbGQE18wymanN0ugg49+8OG66
	tqTOYpuC2TjyHgg6a9PG30yfF7yOG2HWjyjdoNQpatZkgDPaXT7SgWLdXuyE0fR+qopDkRS3BwFKU
	GRwC9Ao8tnDN8E4h6v/cEGRWkbbCc/e/mGGBuyp9/l6ShrnH+HEOVOLuAC6IYp+okr1qiIRwupcFz
	7nfrA9Lw==;
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xGuEt-0000000GUip-1ppi
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Oct 2026 08:21:33 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-ca766c1c9ccso1314414a12.0
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 01:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1791966089; x=1792570889; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yVCZM5zURPRE62cvJS0zNIsVrphYetwj1gaMWhP5efk=;
        b=VJPWNbk/pi14CtSWdduvaEexCh6yqwUM5eGhJVf/veCCoxXu2KysLZFu6lW0ddE38c
         7DNNwpKMWsYSuloeACoyt7hIeQFV5T8JCY3+xpzEnQrEKi6aSDPhgyZZjoYOwZ20EJSu
         pH8qi9hhoilPHQdePUn93LyKenn8dnR1k093o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791966089; x=1792570889;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=yVCZM5zURPRE62cvJS0zNIsVrphYetwj1gaMWhP5efk=;
        b=cPevKdt9kvD0zf0hWrj5M+4X/kglq1ifrLwMbKEXCoVvc5BDaH1OoRXP/v9d+Tcm0F
         FwXcFRMfdIoIPjJklZRFML7Ln/DUXJHbn+Q1zT6xxi6CKFqIA+jQrrKq5XM3Up/hksFh
         qTQKVKnP7POv0GbaSy0Tfx+eQkgOAf/tD9WUjnhyZYaelpzwbNFHAHBNP64XHhOjOVwi
         RxbXeQoHAm/9Eja4z0zAEw77tM3DYKf/GEugKATBxcrbynoaKwSaQi8jmsKmxhAmWT6D
         oQKwUJQionhgMR1GZ2aKFfQUizz35Is87lxf5Zr3mKxkBa/Uq2nPMFKrPiXBdHBug5Et
         Wlvg==
X-Forwarded-Encrypted: i=1; AKwUvBysmD2WrNRWt4WO1xQ/sZ7504XVAe4o4cNdiOypfBaeArHViricJWFF7TUlAjTN+pcihSnWNgGbU4TQx3HhAw==@lists.infradead.org
X-Gm-Message-State: AFq9FYJtIiVMoLu6NSSdIUqB6btTL7GloFpf0oPtyaUH9myD4s2qEwit
	iBByzSUQG0z2Xo21HuBZPle3DtFpnL1w5FAI7V+y1QfJemtNeblkJ1FnCZr5YKXxkA==
X-Gm-Gg: AYBFou2bDnh24bqkfdlm5i5pIoikJWhMOSXzL3Y6JNcyVEpi6dAmrYLzXpyTuRxB/pE
	U6P/vUhQO7iJfANTJRbLOi4zi94EuUnrU6QvlV2cFb+xEmMdb6tOmhWpf0IkDrsRzcowyBBrz/U
	lEjHUKpNcwEtnCTYxznnRoypyV7E4gx1jG+J94jqhROKLjtu6cn2p14aiX+yTqaDcuVUP8Jmbni
	UHnWVow343bUyySZqU4iYaViaz68f+YXF4jt+L0n9m8GKgpOsv8lCqO0v5fE9J22g2ft36bpDpW
	NJmSi3TjgaHhzll1JLonimsGoyA1CelongLBosQ7HYzScwuTY9QIW9jHuvDJXksFfBJ37p7Wz8f
	8ZBl48zuxumlBxp8fqlbp0EmBw3uzAD2FgMEur9w+2DlkShxYzRcA/0KMrTJ/uFE+g3nZsPETE6
	28PXZDhQ6NL0DUrwNxUs+F6JBF5xdJRDwaG89bK/X1s9w0fVbMClgFQrjzXlHLs9JEXK0vRlz2a
	y6vkMIoOrBUhVQEtGprRvvhlrQfzNwd9f0pNNnh1pdoCGYZGT0Deski0Q==
X-Received: by 2002:a17:90b:2b44:b0:3ac:7842:bd50 with SMTP id 98e67ed59e1d1-3ac7842c19bmr520798a91.15.1791966089278;
        Wed, 14 Oct 2026 01:21:29 -0700 (PDT)
Received: from wenst-7875.tpe.corp.google.com ([2a00:79e0:203d:7:373a:9eb7:c5ba:7b5c])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ac5f04e324sm3682141a91.2.2026.10.14.01.21.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 01:21:28 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Felipe Balbi <balbi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Sven Peter <sven@kernel.org>,
	Janne Grunau <j@jannau.net>,
	Neal Gompa <neal@gompa.dev>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Ryan Chen <ryan_chen@aspeedtech.com>,
	Billy Tsai <billy_tsai@aspeedtech.com>,
	Michal Simek <michal.simek@amd.com>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Yixun Lan <dlan@kernel.org>,
	Troy Mitchell <troy.mitchell@linux.spacemit.com>,
	Minda Chen <minda.chen@starfivetech.com>,
	Shyam Pandey <radhey.shyam.pandey@amd.com>,
	Wei Yang <yangwei1@eswincomputing.com>,
	Senchuan Zhang <zhangsenchuan@eswincomputing.com>,
	Hang Cao <caohang@eswincomputing.com>,
	Li Jun <jun.li@nxp.com>,
	Peng Fan <peng.fan@nxp.com>,
	Roy Luo <royluo@google.com>,
	Yang Xiwen <forbidden405@foxmail.com>,
	Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>,
	Robert Marko <robert.marko@sartura.hr>,
	Xu Yang <xu.yang_2@nxp.com>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Stanley Chang <stanley_chang@realtek.com>,
	Ze Huang <huang.ze@linux.dev>,
	Aswath Govindraju <a-govindraju@ti.com>,
	Roger Quadros <rogerq@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	asahi@lists.linux.dev,
	linux-aspeed@lists.ozlabs.org,
	imx@lists.linux.dev,
	linux-samsung-soc@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: [PATCH 1/2] dt-bindings: usb: hcd: Add downstream USB ports
Date: Wed, 14 Oct 2026 16:20:35 +0800
Message-ID: <20261014082037.1774672-2-wenst@chromium.org>
X-Mailer: git-send-email 2.56.0.212.g129ede20d9-goog
In-Reply-To: <20261014082037.1774672-1-wenst@chromium.org>
References: <20261014082037.1774672-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_092131_698445_C48DA13E 
X-CRM114-Status: GOOD (  12.30  )
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

Besides hard-wired downstream USB devices, a USB HCD's downstream ports
can also connect to USB connector nodes via OF graph, just like with a
USB hub.

Allow a "ports" child node and describe the possible downstream port
nodes. USB downstream port numbers start at 1.

Also fix up the address portion of hard-wired downstream USB devices to
match.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 Documentation/devicetree/bindings/usb/usb-hcd.yaml | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/usb-hcd.yaml b/Documentation/devicetree/bindings/usb/usb-hcd.yaml
index 45a19d4928af..24df99dfb243 100644
--- a/Documentation/devicetree/bindings/usb/usb-hcd.yaml
+++ b/Documentation/devicetree/bindings/usb/usb-hcd.yaml
@@ -29,8 +29,16 @@ properties:
   "#size-cells":
     const: 0
 
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    description: The downstream facing USB ports
+
+    patternProperties:
+      "^port@[1-9a-f][0-9a-f]?$":
+        $ref: /schemas/graph.yaml#/properties/port
+
 patternProperties:
-  "^.*@[0-9a-f]{1,2}$":
+  "^.*@[1-9a-f][0-9a-f]?$":
     description: The hard wired USB devices
     type: object
     $ref: /schemas/usb/usb-device.yaml
-- 
2.56.0.212.g129ede20d9-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
