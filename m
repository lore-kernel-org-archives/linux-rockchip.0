Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2262DFF886D
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 20:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WM7EffBSoj6EZeC3ByB/opjVAHkoBTntAI/R/xBjoo=; b=pxeCaVS/lHQAhp
	ksjj55jHjK2uD72fn7/MqO+v/13V/dpysrL8QcfcV2uMUVKwton9VguZ0Pf96xvQgu+hwVDZshqZ0
	Gcx1sQDo7IW55SuUi2eQvJH+V4KYJhW75gS8EOGrksRLJnzIXweRAWPuyGaQQQSK63TaQqME2Bz+S
	c3K2GhXw6GPaXtn+AnpXhFbqbsSm1N6+938TGopSo1A9b47Wo4stViZMLORVc8AaOVhKTzX+rFBrr
	j0gXRr5gH2ldNpQGKd/1N220zUYwDNlcO6gDH25mvsY6D6brT00oAljXr6EIxhU6mA+jxLc6WnDO7
	l61bxoAC/2hc6adgGl7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHoid-00000002Cjo-35kW;
	Tue, 28 Apr 2026 20:07:43 +0000
Received: from mail-dy1-x1329.google.com ([2607:f8b0:4864:20::1329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHoiV-00000002CV8-43jh
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 20:07:37 +0000
Received: by mail-dy1-x1329.google.com with SMTP id 5a478bee46e88-2de831d2b20so4561190eec.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 13:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777406855; x=1778011655; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wyEh8MUYI6uV1LBlX4TWKPlLf6Jaa4vkUqpt47EeXpM=;
        b=FO79mpJrP/PVGulQ5HXyZad9M0D+yXZLDFbJAIbP4aOxN0VmuJYz7fYKI6a34ZCFwW
         gn3uGI8nEdQEWg83zVl1Ph74YaaLHcpcOmpdtMjcjYyqqIouWXxeY99LV0J8A0Xheap2
         rT9MAWsXe0N5pukX1wyY0pyaaZbGwK4BQMOlA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777406855; x=1778011655;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wyEh8MUYI6uV1LBlX4TWKPlLf6Jaa4vkUqpt47EeXpM=;
        b=JIjIkHYLxXfu0YX0qGHll055uHHPZt7Fk8npnQ3b1o5mx7a7YKmsLpdwHgxWZiJpPe
         OQ0A1pe6MqFRD2MXedYEGcBqcD+ue7GU2bTQ4tLX7m4rJ3s8RPQFEjLHP+cHjoUsT8HG
         DmxAVMlyLiRWmlBRjJoihGY9V8P4BMnUoDT9MdL6MwECSRYxrNChrD6v3hxRMHi5iF+A
         OcHaMnfAog8IVKYgUGcs3jbA+08lin8Jbl3tyXfkdI1J+wfNLz3pH3BTZTTmt3aC3DfV
         TSB57ZIueZJcpCAgfj4p35LXu2EsmpdpP0c66MpCUULX3taoM11PSePKxW9vz3DzTRjO
         mokw==
X-Forwarded-Encrypted: i=1; AFNElJ/JmT5onG4I+s2eVDFHAuJZyO/h230ON5FE4BDeCdS83+6mNgApT/wMVLYZWazIMFSk5VdvGyX7fk+890CkhA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz54AnnwlzZPHyZFKm68fMYQ+uTfC/CMBa7YBPZHr3dQ+u4BpTh
	txbMEben4PfpkmrH72BMawiFg6cqlVRSdqdziPv2Ut4Wg5z1tX+F0KwTxYIf4FhgRg==
X-Gm-Gg: AeBDievx5zH5aYPbFxDTHzE4LkBeY8tGprBJQWjBE0fJGUrXtNF7kuAqJbuihjSWIA5
	M29ubv1Ezcfh2u5QUWuBxS6R+1bLbi6hBvfmkZgpJQpY7Vak9GSqjogJFXyPcNzZtTdCUsQiiUz
	OrOyQSp9hpqMEplfCbeCNDAyu2QKinYCKt6hHuCFnWNAVtD6p6pKxvpP9GtqOQbJHD4iur8N60/
	yrKpJJjPoM+YMIylcPXtZvkuN57gyop+nHA+rq/R1ms0Mj+lpmywnTEdgIB5VUyT3ujVChLGLY3
	NYcxW62VKmJr6VlPD9b2QVkamYTj3T70E0tZ40OkqC8bJgTdQqvxir7X7YngWKXtukDmL36w10/
	VLPVk0IKNEwLLe95QLIJuwgC+gQugz2vapqE+mtjTf24iqArXm0D8KhZMr9J0AHKlSWeYOYnGhA
	EItK7/qxpz1hBQ4WMNH/vgAgtBlxMazHCGeYg409TtAOL4aaCphv7BEfERc5Z6DpAM32uEi6jkO
	3pDMzK2kwI=
X-Received: by 2002:a05:7300:5707:b0:2ed:e15:c924 with SMTP id 5a478bee46e88-2ed0e15ce32mr1940281eec.32.1777406854721;
        Tue, 28 Apr 2026 13:07:34 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e7c:8:4ff5:9607:c7e5:48f3])
        by smtp.gmail.com with UTF8SMTPSA id 5a478bee46e88-2ed09fb6b8asm3015155eec.8.2026.04.28.13.07.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2026 13:07:34 -0700 (PDT)
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
Subject: [PATCH 2/7] ARM: dts: rockchip: Add #{address,size}-cells to Chromium-based /firmware
Date: Tue, 28 Apr 2026 13:06:54 -0700
Message-ID: <20260428200712.2660635-3-briannorris@chromium.org>
X-Mailer: git-send-email 2.54.0.545.g6539524ca2-goog
In-Reply-To: <20260428200712.2660635-1-briannorris@chromium.org>
References: <20260428200712.2660635-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_130736_037106_7A5EC95E 
X-CRM114-Status: GOOD (  15.11  )
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

 arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi b/arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi
index 2d6cf08d00f9..ca8e8e735078 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron.dtsi
@@ -18,6 +18,11 @@ chosen {
 		stdout-path = "serial2:115200n8";
 	};
 
+	firmware {
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+
 	/*
 	 * The default coreboot on veyron devices ignores memory@0 nodes
 	 * and would instead create another memory node.
-- 
2.54.0.545.g6539524ca2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
