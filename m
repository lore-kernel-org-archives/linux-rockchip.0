Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15547FF885A
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 20:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IqnljJuIXL1VUL3gCINNF8WFQkdbxxheyLOi4NbPV9Y=; b=W2YWpkc20A32Vp
	4c862YO8XdN1kt+UO8Pnqs3C52+qLofMmUuXfer0NYiXMBpRWLeNpOBxDWbO33suNYkEl03TCtln8
	7XfrrTddV+iZGU7njTd0weREc2+WhLrTkbfyUyjzpzTTRJczIZJ8eY6lgKE1pA2CH02HkYgHz9WFc
	ruGixiLuVktKhcEqJXHFKV9dEm7pIRAO35wmPEU8SZr5aDRfdVpl6xotnZWQmJYodxYmotwPg+GuK
	iHn/5O2M945Xqjhn1eaaYfT8NF7lBw9GL+vWHxC9ywngxn2TL26sh8OwwUqvP9mVAeqXrKHgq8+5R
	9FrgOfPzw6sQSOqowJAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHokH-00000002Eug-3Sc1;
	Tue, 28 Apr 2026 20:09:26 +0000
Received: from mail-dy1-x1330.google.com ([2607:f8b0:4864:20::1330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHoil-00000002Cu6-2Izz
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 20:07:54 +0000
Received: by mail-dy1-x1330.google.com with SMTP id 5a478bee46e88-2ecf9e398f4so4432260eec.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 13:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777406869; x=1778011669; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=63kFLuS2ZunRuwIKFamabno0yfYzwQFLWtzreaffIiA=;
        b=e41u0DG1rgLOU+PzCpZNKwGMQ0K7RJSfQe3+Jpmj3ZpqmxpTXl+PlB9PGk7CK/AIW3
         bQta+9q/iQ2qdJCLwDJmRMPM4bMrmNmxFM/j560fMoTJAM2Yic3/COwRtpyiY2eWk73E
         fWMOECMD0pAM4Mo3dm/7fdG9vaiYtFEej+e44=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777406869; x=1778011669;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=63kFLuS2ZunRuwIKFamabno0yfYzwQFLWtzreaffIiA=;
        b=qTb4pHWRd2uyk+rjbzibuL7An9SAS9LvOeL13seR3veSl7ZYiK1IklnzjaDHXrQszs
         95xJZPgJmVV7H2vbYJnREO7B5jdbGY0MlU02mKkLtnC3poY8IPRd2j4rqXXamwPQ+/WN
         69ZjAkmYbD0TcyvRogcJPm9qMxNqpYtT5c5Q3fErhu8qjqE1CZA6ZfJGuPgt/QcoHxlh
         84fwxAFLQXSZjcw7APkO5An8Z7KKPQaD5onvYg2Gep5wYy/oZyYGB78Cda8WUjaOqRUf
         1040AdS82fR2I4iWDjZPxzJn3P6PfsbCZAvMKYWnkSRGO9zwW1VZfOwdoD55Hn+2EVhH
         dcWw==
X-Forwarded-Encrypted: i=1; AFNElJ+ueEmiOG9VywFV+f3hm9L/2A+Ng/43yqHQvXKQ91Kr7MPE9ZiqbPCef1Y0BsjPGUvzYfkF/W68U9rLUqYbVg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxnk/K1zruGVHihkLu75Ba7QebX3xwU1AEQqx2nLG/FuJxLgUV1
	R/psqHfrC3OpbjcLO1sLgA+YDiu4GuBEX0ptsb46RxDp17eL/y2gGLNclt1h1ZuJCQ==
X-Gm-Gg: AeBDieu6GfxhYcATL7ioI9jP/NAiS3q7TPKCRH4So4I3xX9P3CGzX7tmwfy9l9eMnNP
	/1zYaMYZp3cSa60RQTG3BsAZE+e1eX6vE+C8+OWw0z8APkDcO6PG92DAbXbLlVqmcVJByMVD1mQ
	CY75Q1dCvXYzxsOv0ldscZsdfYX3zzLEsprCEgffJUxOw9WI/sAcA1ho8MDFv1IIj4pJuF2++CB
	vTe2BJZiUW20V6HYlZtsLH8MXejY+37Y+n11lPQPPWSSqJDdVRhrbrDZKRRgCjToeSIeteFBmN4
	LrV2Gor3yRonvxWNeMXOAfPaYkwBu1JoKkD5BF2afJaa67m8bDn/buMWShPq4/uCUpebA3fh3UL
	tIA2Yr/5JsuYPnhjpqzEbA4TY+SnhMpXUGGv5P9mbmuS3xR60+QGZw5Bemp57cDEr5XUn4yvp6W
	3zU5AsR1D+5qVPYqkz3cSLroUfFYpXEwGq+DQvgPXWh4MWFXvTduTWoPZoYiLRWJQTFUOcP3/Y
X-Received: by 2002:a05:7300:7255:b0:2ed:e12:3771 with SMTP id 5a478bee46e88-2ed1991b2a9mr467588eec.33.1777406869213;
        Tue, 28 Apr 2026 13:07:49 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e7c:8:4ff5:9607:c7e5:48f3])
        by smtp.gmail.com with UTF8SMTPSA id 5a478bee46e88-2ed0a0ce761sm3064459eec.15.2026.04.28.13.07.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2026 13:07:48 -0700 (PDT)
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
Subject: [PATCH 6/7] arm64: dts: nvidia: Add #{address,size}-cells to Chromium-based /firmware
Date: Tue, 28 Apr 2026 13:06:58 -0700
Message-ID: <20260428200712.2660635-7-briannorris@chromium.org>
X-Mailer: git-send-email 2.54.0.545.g6539524ca2-goog
In-Reply-To: <20260428200712.2660635-1-briannorris@chromium.org>
References: <20260428200712.2660635-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_130751_918542_0B6163FC 
X-CRM114-Status: GOOD (  13.67  )
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

 arch/arm64/boot/dts/nvidia/tegra132-norrin.dts | 5 +++++
 arch/arm64/boot/dts/nvidia/tegra210-smaug.dts  | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
index 683ac124523b..1f5222d43e62 100644
--- a/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra132-norrin.dts
@@ -18,6 +18,11 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	firmware {
+		#address-cells = <2>;
+		#size-cells = <2>;
+	};
+
 	memory@80000000 {
 		device_type = "memory";
 		reg = <0x0 0x80000000 0x0 0x80000000>;
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
index f0b8c2c80aa5..a6d31650245d 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
@@ -25,6 +25,11 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	firmware {
+		#address-cells = <2>;
+		#size-cells = <2>;
+	};
+
 	memory@80000000 {
 		device_type = "memory";
 		reg = <0x0 0x80000000 0x0 0xc0000000>;
-- 
2.54.0.545.g6539524ca2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
