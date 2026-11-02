Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D3DB606BA55
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 17:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uff6ny++;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=HOdzmKZJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FBqHTRiD0FfCxStijsnxDCLMhkhzvDrzJyhok++jtwg=; b=uff6ny++/VqREB3mS6toE1SInf
	XSXjAdTTxtVq27j9wckk3hqEXrZ+5fNir6DGnWTkrQQeLotox85ZRshM0VCgeIY7M3d5Q61l0qPrG
	ulPEoqVDXvf/HUxKvBxuncudWDQ/KBgLCbHws09uEobavo6Q9ghwf2wa1IFkq4tcFj2CWvvONNo5o
	6cQSNbWk3pMHBIylf+kqRLDPvDzlj+N9wLM5qI3di6NAbtRf7+ISWqoyqTj1ly2ovI+6vAV0hsg6+
	zfIRa7cvWn9XZkuXs58O01hvJIC8KJV208IbLA0UI+pdLp4a3XiY3WEB+mq9fFA+Wt4JQG8TjuCFm
	5beJDJBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNvgs-0000000HR0U-1F5N;
	Mon, 02 Nov 2026 17:19:26 +0000
Received: from mail-dy2-f5.google.com ([74.125.229.5])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNvgo-0000000HQuK-058D
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 17:19:24 +0000
Received: by mail-dy2-f5.google.com with SMTP id 5a478bee46e88-35dc2af1f2fso1394524eec.0
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 09:19:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793639961; x=1794244761; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rZwpDh7FxtOcNeBtjI56a9icbYmK+x0Sx9wOk6jqJPs=;
        b=HOdzmKZJJjblNfcC/HaSZFaeoZ/X2ZUCkHwNGGDdAtzcAaOiuZ+1nW4hQ8gJDF2bx5
         QZl2S7vq0nhmRfUH1LQdijZVqWIfwwiWzTI6Ne1+fWQqO4kPA8LFgURMkvfJw7SSy+tX
         fl3zUl3D2T3PvbzOrW7YMn8NYTcLxsNaluPUJvRCoQ2NhdI7iu9guDDxjaq8DxPYKon3
         f9UGT9KE8ydQQ4SuQEn+qX0rYPy/AA50gbx+8jRoZYFYJrR6j6YcdbE8C7kP3NqbMV1p
         UY7cTkM3Q1aiCJ8g3fliweinhdFua/r6reubZHX+b/G0mAliVUy/eM+xAMbQjkGBfuxo
         BgBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793639961; x=1794244761;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=rZwpDh7FxtOcNeBtjI56a9icbYmK+x0Sx9wOk6jqJPs=;
        b=yJI8D47NTzfr9AkmORISCvvLpB7jnJFFvb1mQ+Vzd7TfjNHvBqClpPDODUmaHD1Wli
         pQL/CuoOeSkK/PcJTVovrvsTwDSmaU8ypcBjUDarewDbsABFcl5INTNlnzd1C6u+fKQb
         nQAf+drYcvGWXEgfFMXOPeFrLE/lXFsVbeRUZgZY8PYdr+hcyH3dJWccH3RTePvjZzVd
         q2yjGRChSzwS6wH7Vuy7Jh+YE5hQqbM4VqgXkgBna9wKCkJIYNNeYJqxYMrWt8YSdsAm
         fBH5FJ+R7e8C2Lc7O5Uasp/daLmJ3BkwMEK+XYxYEaxHzfRBp+OQI1jonJyaP2Zd0drz
         kr7w==
X-Forwarded-Encrypted: i=1; AKwUvBxAyNRcnJI6j2TXUWoxe9vkXAfZksPbodArf66uzBJ7UTQuRa99EI3rkpj3K20TrhMBVUxL9VAT0cgk0bEQ1g==@lists.infradead.org
X-Gm-Message-State: APuU4Z+2ZkKqCxEshUbtNdwYbetpW2ANsVLWLHUa8krAR9+cscITbLbF
	VoQFA+tFHuBMrUI1lKuNE8xgG2zfR7RV09Eh/tYlMu86N8y3hLbzijd/
X-Gm-Gg: AYBFou1pbtrl1SbZPx+SDOyvmopfCS/Jkf6saCRsFNC3dMyDatm61CBGOyGBmnjuo6b
	A6G9xfYOsOZkKZv+mp2U2qKhFAqVwvz/5B6ht1AFDaQzNZlXMWmJ8b84/XFtA5suFBpn8xKs6x0
	I5wkhdh5DKyfR61crVtu3gzx/Z/AXCLJiNANNSQseTerfHBGEpKjkJ/dwJdeihFXH8BlHudvw5N
	iGtbqyrHCaP9GpWtrl8+rGzTwFkXLz7d48cgYo18BjoqMEyWzv7vicFTzEhhWNGc/NqTQDkqW4j
	GXR5wYQhScAJoRlcvJfQxZmVFpw8D09N8PBs4hdzAr3SilB1DamjwuVwr1bmruMOLQTOyfDDabJ
	pjjBi0tmxvLeqvTQ+yk4ghpXuwInpD56vNOm5Y0uoHw2HB/ldRpuNptfbO2BgtDYoEYOk9rWAO2
	Il1dWS3lSTFcxBFp/2ZD+rcYg9Q+NruzqN0Q6hnrGKBw6mUX+p3C1PZCj/6X9bQIW01Tu085y3l
	VKjCuMrbKaLaYQoK5no3hIbR/3UDmy/O4s3DLkmXCpf6+QcW7cIvOYsEu/6QzroaMRgSPfkK6v1
	9B04CUZqkbmWqqcxFJgpvEI9QrE=
X-Received: by 2002:a05:7300:c00f:10b0:36a:1470:da0e with SMTP id 5a478bee46e88-36a423bececmr19525473eec.29.1793639960809;
        Mon, 02 Nov 2026 09:19:20 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a429467cdsm36978047eec.19.2026.11.02.09.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 09:19:20 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Frank Wunderlich <frank-w@public-files.de>,
	Peter Geis <pgwipeout@gmail.com>,
	Junhao Xie <bigfoot@classfun.cn>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v2 6/6] arm64: dts: rockchip: fix modem power supply on Photonicat
Date: Tue,  3 Nov 2026 01:18:38 +0800
Message-ID: <20261102171838.2958552-7-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261102171838.2958552-1-coiaprant@gmail.com>
References: <20261102171838.2958552-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_091922_066361_1160647C 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-18.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The vcc3v4_rf regulator supplies the M.2 B-Key 5G modem. It was
incorrectly modeled as being supplied by vccin_5v (the external DC
input). As a result, the modem loses power when the board runs on
battery.

Per the schematic, VCC3V4_RF is actually derived from VCC_SYSON (the
main system power rail after the power switch) via a ferrite bead
(B1). Change the vin-supply of vcc3v4_rf to vcc_syson to match the
hardware topology. This ensures the modem remains powered in both DC
and battery modes.

Link: https://github.com/photonicat/photonicat-hardware/blob/main/Photonicat_rk3568_sch_20221116.pdf (Page 18)
Fixes: ba124e06ce7b ("arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568")
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
index 11ac78acca3be..02d445d7968fe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
@@ -177,7 +177,7 @@ vcc3v4_rf: regulator-vcc3v4-rf {
 		regulator-name = "vcc3v4_rf";
 		regulator-min-microvolt = <3400000>;
 		regulator-max-microvolt = <3400000>;
-		vin-supply = <&vccin_5v>;
+		vin-supply = <&vcc_syson>;
 	};
 
 	vcc5v0_usb30_otg0: regulator-vcc5v0-usb30-otg0 {
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
