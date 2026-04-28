Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A4ADFF886D
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 20:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FVGe5tJr92/9Aii5xtxTZgP+BEKV8A7hlTqcK7f53ZM=; b=LGRPZbZZ8ygJMS
	mLy9tty34nOZhnIffV5JyQD+AEqwEoU0jn6PkKUk8qNNy/0eI112c9dr6LqPS7QcMsVoGKJbnk+AG
	45lahxhTk4zJ9i0iPXwLB+VLYbZW1ArQ/Vp4NzpR2Ap+0jiX3WLh8fHieewDKKux528qI34rrvt0/
	ekLptLaTGI5nBw43I5JWHAB6FLCJHR/xqz7HsRJpASXszdaYFG07t/0XJLXJCvKTjsH0GXGgUjZZk
	fKqA9QOY6TOq7CMbbgxdWcEvh6hMe8388K64JweK3LMfguBhqKJ/AernT4Q2bSGMxUTguzODnaLG5
	Mxb8VDqix7kJguTL0upQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHoiZ-00000002Cck-3C02;
	Tue, 28 Apr 2026 20:07:39 +0000
Received: from mail-dy1-x132d.google.com ([2607:f8b0:4864:20::132d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHoiS-00000002COd-1Src
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 20:07:34 +0000
Received: by mail-dy1-x132d.google.com with SMTP id 5a478bee46e88-2d9916deb14so20717612eec.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 13:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777406851; x=1778011651; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oZddyefkooDQKnc5O6I7CXwcRuSu4lPrXGIxW3LQfo4=;
        b=J205qqWu36zwJB1rAMnVc+2OqHgQ7bE8xm1mrzyExt5f4M1ekIrcmYnH8XK2AQuw/4
         UToPBemcfkXgUogBc1liYkQkVSak2q5lfmD5DbgtGpV49S7yIiXsBlFc2PY3GBqjwbg/
         nnAMoHRT3M1fCSz5lcbBdP25aO0Czu8XZgDCA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777406851; x=1778011651;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=oZddyefkooDQKnc5O6I7CXwcRuSu4lPrXGIxW3LQfo4=;
        b=sc8NLsVO6aAxtfJBscpWDDZ4vf9S5krpkiL5pbw7otCxCj6vW/nLKmHdX9HZ4xPqE3
         CCl8UZqwaOpluJ22MDiMUb1SqtLKIEmJo/+LfSWS9EVdM+85O8StV0Ic+4MJcnB3X39H
         hU5IRmHAqqaNqmDGFo2PRQP3VbfDeWnB+sX6hVPF4k7U42X7kaZMfhHMrZRJY4LEMmf/
         Y+mBfFsikD8hIIcjxNfwvB1i8Sjl5j6WVLMPK27nFq35a1A/Cc8Mn8xmYkDy3YSilQv2
         U+grIeiwEw5mDRvTSZEVnP57J4rJgK3yzMSjqAfAjIySCsbsnei8mP0V8AgVaji5u2fz
         qyJA==
X-Forwarded-Encrypted: i=1; AFNElJ8GRzedZKejEJQAgcJTFgfD3huIa8A3byUy7xlzAAIabxHCSfmnocGZgx446y+oeHZljLaTuMtgel4ACOUnvw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5IXFir8pbHtprln/R6E41jMyxRM547yhjgQFxdyOBOmPGOZ8o
	Xq14nLXOG64r8jkkiWcSvZbZquGCfxVVcjwR9pq2hixtqCFbG3gvx2KxamJVUNuqJQ==
X-Gm-Gg: AeBDievj8G8ToeaT6VFrZtW5ArRBZXmsNNBoFbwEhbvNtddHpXN7YB5H9wMr5pQpAhe
	hR7xTOjRhIZpY5Kz7XbmlA7ugkTNSfn1uLAH2UtxoL8X5vhiqg4qbfPKLVP8qY6smQzmKD77I3Q
	I83JsDDX1nTO/QxQS0Y7yvpzbpcWCuHfoRWz9I56VQo1IUuMoXixw3330lLPO5U5Bw9cf3c9D2B
	nqqULkaaI0W44JPja/yZj9BMwNdkYpC2IqR8W10wtjaTo/CSwOKUQUIV375Q1cytiGVY8JqIQRv
	5iG4bMplUGU9ZXDxvhaCucnsDazV0SI9oazIqwjKLxrFzE/hq5LRnBOwJ8CprFmpm5MHeEi277P
	Nn6oNobVG98CdLYporIgRaLVEHh98WWaTFnoE1+BNkQMkP4aFSGg690rGQdE33aqTErDAotjv0T
	4lleKctUo3LIDTHT0qjhfMrNTWNmLJrZQKDopqEnIXB2SdPB7Uw7XFHfUwQPEloSs0+RD26TcL
X-Received: by 2002:a05:7300:fd08:b0:2ed:e17:d50b with SMTP id 5a478bee46e88-2ed0e17d6eemr1499097eec.30.1777406851181;
        Tue, 28 Apr 2026 13:07:31 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e7c:8:4ff5:9607:c7e5:48f3])
        by smtp.gmail.com with UTF8SMTPSA id 5a478bee46e88-2ed0a10650esm2873589eec.22.2026.04.28.13.07.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2026 13:07:30 -0700 (PDT)
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
Subject: [PATCH 1/7] arm64: dts: rockchip: Add #{address,size}-cells to Chromium-based /firmware
Date: Tue, 28 Apr 2026 13:06:53 -0700
Message-ID: <20260428200712.2660635-2-briannorris@chromium.org>
X-Mailer: git-send-email 2.54.0.545.g6539524ca2-goog
In-Reply-To: <20260428200712.2660635-1-briannorris@chromium.org>
References: <20260428200712.2660635-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_130732_430368_6AAD42F0 
X-CRM114-Status: GOOD (  14.12  )
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

  ## From a RK3399 Gru/Kevin Chromebook:
  # find /sys/firmware/devicetree/base/firmware
  /sys/firmware/devicetree/base/firmware
  /sys/firmware/devicetree/base/firmware/coreboot
  /sys/firmware/devicetree/base/firmware/coreboot/ram-code
  /sys/firmware/devicetree/base/firmware/coreboot/compatible
  /sys/firmware/devicetree/base/firmware/coreboot/board-id
  /sys/firmware/devicetree/base/firmware/coreboot/reg
  /sys/firmware/devicetree/base/firmware/coreboot/name
  /sys/firmware/devicetree/base/firmware/chromeos
  /sys/firmware/devicetree/base/firmware/chromeos/readonly-firmware-version
  /sys/firmware/devicetree/base/firmware/chromeos/active-ec-firmware
  /sys/firmware/devicetree/base/firmware/chromeos/firmware-version
  /sys/firmware/devicetree/base/firmware/chromeos/nonvolatile-context-storage
  /sys/firmware/devicetree/base/firmware/chromeos/vboot-shared-data
  /sys/firmware/devicetree/base/firmware/chromeos/nonvolatile-context-size
  /sys/firmware/devicetree/base/firmware/chromeos/nonvolatile-context-offset
  /sys/firmware/devicetree/base/firmware/chromeos/hardware-id
  /sys/firmware/devicetree/base/firmware/chromeos/compatible
  /sys/firmware/devicetree/base/firmware/chromeos/firmware-type
  /sys/firmware/devicetree/base/firmware/chromeos/fmap-offset
  /sys/firmware/devicetree/base/firmware/chromeos/name
  /sys/firmware/devicetree/base/firmware/ranges
  /sys/firmware/devicetree/base/firmware/name

The /firmware node has an empty 'ranges', but does not have
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

 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 7eca1da78cff..2f9e39671efc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -18,6 +18,11 @@ chosen {
 		stdout-path = "serial2:115200n8";
 	};
 
+	firmware {
+		#address-cells = <2>;
+		#size-cells = <2>;
+	};
+
 	/*
 	 * Power Tree
 	 *
-- 
2.54.0.545.g6539524ca2-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
