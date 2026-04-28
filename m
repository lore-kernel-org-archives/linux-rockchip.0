Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E0F6FF885A
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 20:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7U3GwlRSDePxp+RcK7veu80mv/M1Goi1LaFo3r04ExQ=; b=qVzZQsSRR9FhvX
	xqPoNHEGBWXNx3apfV5xDyW6/hM5Vd6Nu8Brv7INxvo3kjSNX0xTbTBJmADOFxpoeOZvUvMV3idKE
	AXm7LLNzOQLUB715eOaqtavn7WNvgCDxnZ0ED2YjK+tkPwrjkDZ0eEBY7+xXRCg8m6dWHw+vqo8dD
	byu7ol59a8cTM0alrKBONie5CDHIAtxZL7LXxAniQzjn5B9pMxQLiDXOOBmPld9QAuKZhAta9kY6B
	nIoubY4/g/fPAXj3zs5jKmrmkyCf6//HxXvnGQuxlZhI6c7ETXgPebXKnZUUn7DT3Vnfgqr3UayYE
	SFnnmn10S1cP3IPXNoTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHolR-00000002GS4-2hLr;
	Tue, 28 Apr 2026 20:10:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHojU-00000002DnD-3zFw
	for linux-rockchip@bombadil.infradead.org;
	Tue, 28 Apr 2026 20:08:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=gK+EAT4GmZMdYdv/TPcw5cMAUzBnAuCqdYs+Qlpxwc0=; b=NefLaCP6odjWrFxg8rhreyGJPI
	h1Q3lLbb/4Iv8UdTxqhu4TNxNZnp5iCA3JPJqn2GuT5uUHp5rfU9krxcPSqqGNY8HK98WrnffWXe5
	sUtgsjOOQEKVynC/NzkLC3OcUEresBA0yjXAhivNZ74s4SOZsrxuQLpOTvt7JrYKLoQnqMqXY77NG
	kvBPtlbkAlvZmrWftWxQJEBvzqf4bmyKOUuex+K2jABLj/kkfxB8PU/hMgZtO04bnk77y2VWAqECu
	U09B+XDYDUtCCin2UHQ8nK9lt60cDMYae4LSvYhR0rzq8QZ6f+bRUuqoeA9/L9GZVUEIk0AzDPr4A
	mELus7Dg==;
Received: from mail-dl1-x1235.google.com ([2607:f8b0:4864:20::1235])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHojM-00000003ySo-3JjP
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 20:08:31 +0000
Received: by mail-dl1-x1235.google.com with SMTP id a92af1059eb24-12dcdcd54adso2004891c88.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 13:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777406873; x=1778011673; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gK+EAT4GmZMdYdv/TPcw5cMAUzBnAuCqdYs+Qlpxwc0=;
        b=VCvMqQFwZoQcfPVE3fti+FE4BcthXP0e1bKn+T2zglolcwH1aevK4RDsDab96nDmke
         1ryfwb15I0PYfDiRh4HToXkDzPCLsfgCkE03u7QLG2mzLSsjLMnGchtmjaueyAsDvCCq
         LZS4xgkXKBcBRQf7MkKKok2RRzE2CCOx1W50Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777406873; x=1778011673;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gK+EAT4GmZMdYdv/TPcw5cMAUzBnAuCqdYs+Qlpxwc0=;
        b=TCDHUUnNhnfEnItRhdNilvXw13dM+uw23wx5BIMYDpEiKbM5i25KAFjH0S4Uyogjlv
         IS5UTyjXiofmrEm0q+x4CCwapYdSWi/b5KRjYBQa76KhFYTRg+HTxKni6f364zK1qX2Q
         jXtorGPrh6Tld5AhVd5/QRJ4Z329cTHig8e+AhzWQjpnMS6CZuEQ1KToMabfcd9eD5j2
         hvtqeZCgx1/kSn3NO/f3IsHBbEj4eVxZsChGxfhJNRFmqktuiJjTc6BpAM0wlV0E6jRU
         uFNw+ioLBZxhPUdcHtyfab0GRrp8vpwCo1hLYYoddzmsC9UlL2SN9VC4fKZvApbde2oR
         uBMQ==
X-Forwarded-Encrypted: i=1; AFNElJ9RgJDbbc2jGVjOAo3mfFKDwWvO1KlUmOs3TEz78jno2O8XctVnjwA70wcqR4g9ZsdJdAC8Ghwgfs+wsEGoxg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxwz0gAyWU3Zskzd1KgVwX6386qUFMnkW2lRlzRAIFedcqEr02j
	0tn7fJNFB9JqQ+P6PVrah7fxngpFWemdbYzT0yMuS2pRkaXKymG1/PJPRudTDx+Txw==
X-Gm-Gg: AeBDiesv6VnotDnWpIZnzdgyWe0Qed5SFTJTCkhKmrgaq4yU/T6xfwVpy8dgAm1XAal
	JoO6fb1atGcuYkWcbEqxDJflTbbHf0iFDhbSwT34iX5GHb+cvfGvcZKICLozisPJmq47rUTrKg2
	tj6g8Usc3264qJJMVVJiEXJyLy6zsZ+7X0wurwbJxpo9xiClc1gHNrNqzM9inpnDYDWqUqloYjX
	04sLojcaandhuzqJ1+GUSe9oLzDiSn+zEXovi/r/96Sl0wP7TTxULEbANAk6RcNvAAHzBhJ914b
	ShA8WLsfNbCkqzmFX4TcM2wGhiSt3/twCINjrMcolL0zPi568FUoT5Q1h2DidSTcyf2P62OX3Q9
	i8tOeV4ROKKbdj4KLYeaFA1Y32ekez5oQ2MlkRnbUMF+Bghg3K5V1YEeoovqy7YJuVfsaqUVRrE
	/5wNmUaWoavNFlxlwjQF+P5glbaly1zYzAB9/Ten/RWlVG9M6qquKyLbCLDklsnXPUZtkxfRpR
X-Received: by 2002:a05:7022:b96:b0:128:ccaf:85d5 with SMTP id a92af1059eb24-12ddd959d36mr2219620c88.15.1777406872635;
        Tue, 28 Apr 2026 13:07:52 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e7c:8:4ff5:9607:c7e5:48f3])
        by smtp.gmail.com with UTF8SMTPSA id 5a478bee46e88-2ed0a10678csm3167991eec.24.2026.04.28.13.07.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2026 13:07:52 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: devicetree@vger.kernel.org,
	Doug Anderson <dianders@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	chrome-platform@lists.linux.dev,
	Brian Norris <briannorris@chromium.org>,
	linux-rockchip@lists.infradead.org,
	Julius Werner <jwerner@chromium.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 7/7] arm64: dts: qcom: Add #{address,size}-cells to Chromium-based /firmware
Date: Tue, 28 Apr 2026 13:06:59 -0700
Message-ID: <20260428200712.2660635-8-briannorris@chromium.org>
X-Mailer: git-send-email 2.54.0.545.g6539524ca2-goog
In-Reply-To: <20260428200712.2660635-1-briannorris@chromium.org>
References: <20260428200712.2660635-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_210829_835991_DDB339B2 
X-CRM114-Status: GOOD (  14.39  )
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

Chromium/Depthcharge bootloaders may dynamically add a few device nodes
to a system's DTB under a /firmware node. A typical DT looks something
like the following:

/ {
        firmware {
                ranges;

                coreboot {
                        compatible = "coreboot";
                        reg = <...>;
                        ...;
                };
        };
};

Notably, the /firmware node has an empty 'ranges', but does not have
address/size-cells.

Commit 6e5773d52f4a ("of/address: Fix WARN when attempting translating
non-translatable addresses") started requiring #address-cells for a
device's parent if we want to use the reg resource in a device node.
This leads to errors like the following:

[    7.763870] coreboot_table firmware:coreboot: probe with driver coreboot_table failed with error -22

Add appropriate #{address,size}-cells to work around the problem.

Note that Google has also patched the Depthcharge bootloader source to
add {address,size}-cells [1], but bootloader updates are typically
delivered only via Google OS updates. Not all users install Google
software updates, and even if they do, Google may not produce updated
binaries for all/older devices.

[1] https://lore.kernel.org/all/20241209092809.GA3246424@google.com/
    https://crrev.com/c/6051580 ("coreboot: Insert #address-cells and
    #size-cells for firmware node")

Closes: https://lore.kernel.org/all/aeKlYzTiL0OB1y3g@google.com/
Fixes: 6e5773d52f4a ("of/address: Fix WARN when attempting translating non-translatable addresses")
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi   | 5 +++++
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
index b398f69917f0..cd4a0e281cf8 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
@@ -99,6 +99,11 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	firmware {
+		#address-cells = <2>;
+		#size-cells = <2>;
+	};
+
 	/* FIXED REGULATORS - parents above children */
 
 	/* This is the top level supply and variable voltage */
diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
index 5c5e4f1dd221..58ea0532c0fb 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
@@ -25,6 +25,11 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	firmware {
+		#address-cells = <2>;
+		#size-cells = <2>;
+	};
+
 	/*
 	 * FIXED REGULATORS
 	 *
-- 
2.54.0.545.g6539524ca2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
