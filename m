Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A638BFF886D
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 20:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LXGQzlEEu8zHjDelwU8dPzF0gmijJUHPzqmMa4feuk=; b=0LEBiHjeDcKv+L
	6vceUtcxv1di3zYRn64XBVAZPKI711Favva42jln6mzVDuzj4LIdFPMjKLIQVCjS/NxFejpqyBrgn
	77UPWJVoxzpQwAWhUUPqoITNMgopMzj3ygCrDqzLCplBpWBoV/aJVAFjTHWwfLJp49b0/56oGS43w
	p9PYN+Gte1sa7X10i3la/WXsEp9xEAuK6dKeltybR9lxjOBb5z4CnLqtV8vHlZ+Ec81q9pj0elx7v
	pEPcYwjGGqm3m1doA1ethlubC7tvUa0bwMVwR0jYp6C+Dkkj/93ci51BagVJPFv9XTqCAwL3N7u00
	6mDWDy1fhcarGRLUveDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHojH-00000002DWl-05JP;
	Tue, 28 Apr 2026 20:08:23 +0000
Received: from mail-dl1-x1236.google.com ([2607:f8b0:4864:20::1236])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHoiZ-00000002CbB-2IfH
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 20:07:41 +0000
Received: by mail-dl1-x1236.google.com with SMTP id a92af1059eb24-12c8ccc7755so12672463c88.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 13:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777406858; x=1778011658; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uToK6kNcjQgBzaJfDVLEV8EKOZh7WlLcbjBebhI/n24=;
        b=Vxetu5mytK6pzMqSYfdxVVhF8B9UuijOtAGjnoM3EolFRNed75WvaPpWy3d8/2fc+/
         FfStl9fmfZ0ivr9KIr22DdnHYuiSHXqK7WVhcA8WeTd2kzC89+ivlTK4XDavQUvuGXB2
         f0HUaGERnCrEnp2SSi0b77hGZUcJ5pgznkJAc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777406858; x=1778011658;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uToK6kNcjQgBzaJfDVLEV8EKOZh7WlLcbjBebhI/n24=;
        b=GiCKY7d2/NUjdJwdPlBd5IzRZ8qhJXNLraDe35Vt7sQMVyeOSUzfjoAnys6nlnotkr
         5NCeW/5fslgO5QJ/sgaQ+dGEJ4KwpTwl4Oya6ADm6dEFttIqPJzsE00Czghw4h89ADjp
         XXkuuOaxHObrz032Tp0xtjZyCD/lIf/5x8IWJazK3tdcJJLcTWI8MAs2NflhhJ2q7mez
         wH06ce4tCcGIKrB6bx5IlJD3LJoBovkMAGCzmSMoMNEgWTL1POcQAL6AGLRC1rryCioK
         oW8qe22XxRIK6f0LVTIjS08rodv+CwaGvgKgwWRyG2zbprZ4enzq9ZJmPlJHLO/IfbGM
         7Z7Q==
X-Forwarded-Encrypted: i=1; AFNElJ/48VdRLmMGf7hvh0PGYgJVFQtI00oHWoWrLtzDc/n1wq7b863RSbqe89X/QGAdK+dFUsDyTgiIEFAhPvLS8Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YznMKNHg0MCL8apw2/f+RTDJpzxhCdtq1Kd50QDoiwbYm/v/vVd
	atj+e/4uK4Q6LcLQYvKK60jIqNMByLefN8YBZmQ8h8ZIR1n5KwN/JtttDZZO8E4tHA==
X-Gm-Gg: AeBDietWly0l+ssSGr/G+w0r9l4JwZT3AuYzUyR5dLEEFhvxJIC9HmnZfGeV4Gy9TmF
	ytFr3DuGvc/ZEm/8MkKVxPYpPC9Jh7Ws2As6Gkoc8vjRtnJaLzyqsZX5J2I2f5MUEpjJAI9S690
	Nr5xBdWF4SuZbQa5+rPk15gTSCtS8dKaisHlP/6VBeh3ENgPVr9HTOKDKxAlZVTULEYb6HAIi5i
	z3At6WQdXsRQdaYPhuucJ0qREi2A1E18J0LjnNIqQp6gJ7Kb1F/pq6o5N6enTn6/hOlIhQgBW/K
	TD9zkR006Q9FHBsIlMY+sMXWyvDBHQjcMkltyl5nZJkgXGbhFkFV/cgDqIbBNitx064zm6EsBX0
	ZVCfiHL+fiKu7M+He6dSCtUBDWOQntxl4nbakS01lAeHJga1lZDa8+Uz3rGgZBnU2Ni2gsYb6Uy
	H5z4RGUoEHbPipBKAwsa7jnCtmzEzBSjqe0UIdAjQIN+9PXmDWGU70Y11iQ9uzByvcEOWdRHpG
X-Received: by 2002:a05:701b:2505:b0:12d:e126:b7c7 with SMTP id a92af1059eb24-12de126b941mr735154c88.14.1777406858194;
        Tue, 28 Apr 2026 13:07:38 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e7c:8:4ff5:9607:c7e5:48f3])
        by smtp.gmail.com with UTF8SMTPSA id a92af1059eb24-12ddd933044sm2796623c88.5.2026.04.28.13.07.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2026 13:07:37 -0700 (PDT)
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
Subject: [PATCH 3/7] ARM: dts: nvidia: Add #{address,size}-cells to Chromium-based /firmware
Date: Tue, 28 Apr 2026 13:06:55 -0700
Message-ID: <20260428200712.2660635-4-briannorris@chromium.org>
X-Mailer: git-send-email 2.54.0.545.g6539524ca2-goog
In-Reply-To: <20260428200712.2660635-1-briannorris@chromium.org>
References: <20260428200712.2660635-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_130739_617339_FBCE1438 
X-CRM114-Status: GOOD (  14.53  )
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

 arch/arm/boot/dts/nvidia/tegra124-nyan.dtsi   | 5 +++++
 arch/arm/boot/dts/nvidia/tegra124-venice2.dts | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/nvidia/tegra124-nyan.dtsi b/arch/arm/boot/dts/nvidia/tegra124-nyan.dtsi
index 974c76f007db..89a749cb8933 100644
--- a/arch/arm/boot/dts/nvidia/tegra124-nyan.dtsi
+++ b/arch/arm/boot/dts/nvidia/tegra124-nyan.dtsi
@@ -14,6 +14,11 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	firmware {
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+
 	/*
 	 * Note that recent version of the device tree compiler (starting with
 	 * version 1.4.2) warn about this node containing a reg property, but
diff --git a/arch/arm/boot/dts/nvidia/tegra124-venice2.dts b/arch/arm/boot/dts/nvidia/tegra124-venice2.dts
index df98dc2a67b8..059ee6c5b13c 100644
--- a/arch/arm/boot/dts/nvidia/tegra124-venice2.dts
+++ b/arch/arm/boot/dts/nvidia/tegra124-venice2.dts
@@ -18,6 +18,11 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	firmware {
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+
 	memory@80000000 {
 		reg = <0x0 0x80000000 0x0 0x80000000>;
 	};
-- 
2.54.0.545.g6539524ca2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
