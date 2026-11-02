Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281B060A6F71
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 17:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=199WKwU5;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=G6bricYu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=CoXxwuau6xBJXwhiZzIaKMsAb3XmCRtM82jGPFenb1Y=; b=199WKwU568st/vWLYKbH/+KJds
	B8P25v7smIOGeNNbXqj/Y0iDYhXwmhOSuRRHEgPg8dhGN/gRximoyh7+RYUr3hYrnEKeU8/G1dJhw
	nnZvLMJMyjQwOn8euPtB/SD9PWuF92iVuNgM+XgiMMH8hNItDMkFN3V7nXCJ708f41dfLfKCVJpMP
	uqphJMzkQ2BFCYW3MjtfDlPhVKhKBhiiPMMu62qFEl5huj7MV1fQ/ulpy1MOFKk7ZEeft1rfY/82Q
	jyGIegMwCZikocR945OAn1Qq9TZLfymcumcVB+wQuJynz5PvXMvveOgumOLmGaqEliDo459LeiUDj
	nnmCOp+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNw63-0000000HVYu-2w2R;
	Mon, 02 Nov 2026 17:45:27 +0000
Received: from mail-dl2-x05.google.com ([2607:f8b0:4864:38::5])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNw61-0000000HVVF-2OyG
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 17:45:26 +0000
Received: by mail-dl2-x05.google.com with SMTP id a92af1059eb24-1ac216daf7dso1327030c88.1
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 09:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793641525; x=1794246325; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TM7SxuLHSkIokTfxUi5Ea/8G/1rov27xpyXAoGZkTRk=;
        b=G6bricYuZ2PEZ+J8uuCRSp1TXjFhfa6V2CI8e1Rc7TjAFu6Lf3AgK4mcYf4/Pw/TXr
         JHa3YS8SZRMbC5aa39mEeKxwVTZ3JPp8oCVpPpbmP8LHmFL3csbfdLQUtRq0ftZslghY
         8AooGEwa4niZi8lD1exMLlmLCKCwqTldvR+sHNu5tpx30BSZsPTqlZ0UcZT832D8aIeF
         RRbS9Mh8PsWYBakUlYtkb8D412/6ZOdp5H8YhRTW9JjKDRTrag7GvpdZIyR3lqZAS2TQ
         cWmeuxPlEr7CYSJ3br+gQHoQCcR56E2kWx2axVM0QDQ85QrnFIzO+hFiCnllniEPio7W
         8Ihw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793641525; x=1794246325;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=TM7SxuLHSkIokTfxUi5Ea/8G/1rov27xpyXAoGZkTRk=;
        b=Y4K5rrFqT8TxMrTvysHOdohlJddC4JAqnhPhWwT4btMlJViDDFf3icaeXaJadK490Z
         Luq/+1ObWllAUwBKtnZ8f8atXavApUQu+PDhq4E7+GIAkK+vcNMlwlgb4XHYo280QD5w
         QFLFjfmVEDilX4fVWevEL/PaLkx9Nv9gKUMOp9du/DNSLqNuvA0M+bNx01FPtKOI+f+P
         ggZkie+zwq9std6+U+gyCEzu9qZ0nDnpzYHjgHFtORB7uv7pXQFaM8Sys0Pi/Nw7rsnj
         U/XDv/fKXz44u8vks3NGdVhj8VIZni07MOn4w+ThDRNm5ia4NyXh1I4El3Lxa0LFhevu
         FqrQ==
X-Forwarded-Encrypted: i=1; AKwUvByf2aE2vv6AvWgsY0LEoHsnvA90YjCFFE0baKq8/NGsPVKB85mpKMB6i2KgzN+5b4vxhy3L2UAQRNh2Cj9QEw==@lists.infradead.org
X-Gm-Message-State: APuU4Z+WitpZ0JL+vxLeeAtVlaQhd69Xip6bXajDbzhO5+5gk3JJPnzF
	mJ+fKlqEuDMlLBd0LW44WzuiYFXb1cpO6gSSBLzjHtMs103fUNraL1Sr
X-Gm-Gg: AYBFou2gdInnxTeCMgbewS2IgonuV0ita0hhFAAvl7dvzAYux9AhOldeZuSCGgzvCp2
	0IRtr5RQp43kCXIgZsEe5FEyIlY3CNGazr3dt3hDItwtScdicvpfmfL9gzYcbyWfEsyeNwF8iXF
	TP6EvpTk68UZTFjnqPmSOsoGB2++cTG2AuH27NtxXvCJ5sGUTOmy1VgyodoHSMjMNkQnqb6fmwy
	YVm52NE0/JVbBZ8g7dy9SyjuoZuXOcRPP7fvslao9gEVBSkb4uMJ/gHZ/tNA4lL/KuTKVBaR/tH
	mwYB1cpkdWws5Oq5+WbKX432xKyMykWQNmn93aMq6IificaNRXIxyJq9nHDRdXcWwyaQn2OaFLW
	ZeVIRKSaWdo1UcwfwwUMN1kBlIyySQrXrMbKYLySMNoePGXUEcNHd/IDKaU7+KLM/1PK0d1bXRI
	8lGX8mmg/RWp9OtQEEz90o/UgBjaATpLU7i6Y5ZGxB8rd5nE76A1CNSZUCP+68joEGwiTCxq+qH
	9sdallo7WoBCjyWqNTma/DILXez20SjgfwLvPzJP6jZ9BUIyUHX3YLXosEdWZm/vtpHZJmLiN1O
	6jf+Q7BTVGje31YPLBzsBYQF0wU=
X-Received: by 2002:a05:7301:4b10:b0:35c:85fa:5a61 with SMTP id 5a478bee46e88-36a424940d9mr16596225eec.38.1793641524327;
        Mon, 02 Nov 2026 09:45:24 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a42935b4asm53290803eec.16.2026.11.02.09.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 09:45:23 -0800 (PST)
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
Subject: [PATCH v3 6/6] arm64: dts: rockchip: fix modem power supply topology on Photonicat
Date: Tue,  3 Nov 2026 01:44:50 +0800
Message-ID: <20261102174450.3000397-7-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261102174450.3000397-1-coiaprant@gmail.com>
References: <20261102174450.3000397-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_094525_626094_CA97DD5E 
X-CRM114-Status: GOOD (  13.21  )
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
input, before the main power switch).

Per the schematic, VCC3V4_RF is actually derived from VCC_SYSON (the
main system power rail after the power switch Q5013) via a ferrite
bead (B1).

Change the vin-supply of vcc3v4_rf to vcc_syson to accurately reflect
the hardware topology. While both vccin_5v and vcc_syson are
always-on fixed regulators without runtime GPIO control, this ensures
the DT power tree matches the schematic and traces the modem's power
path correctly. It also clarifies that the modem relies on the main
system rail rather than the external DC input directly.

Link: https://github.com/photonicat/photonicat-hardware/blob/main/Photonicat_rk3568_sch_20221116.pdf (Page 18)
Fixes: ba124e06ce7b ("arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568")
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
index 290e3ee97c709..6ba70e5d9037e 100644
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
