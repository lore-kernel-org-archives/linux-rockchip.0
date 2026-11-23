Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD292606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 01:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1CYg1jEZ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=jSKdzprB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=QwCdiJ61lfRvmW3i1I2mmSYBiHxN+/y9WeUd46ZVd7g=; b=1CYg1jEZYr5/NKTDevtcaWgXqD
	JPvLVqn4fG7BT/RP4riezrHJNrnv7Y6Ghwc/U225O+824ZZuS/VfGykggapvZbw2DWqxnJ/KvX/LU
	pqQz3vr8O1fh0nLHhuEvV0NiTYDOryeCQpAZi3ykmp95YoR3HuizlysCB1XOTjMmPC14PWkYe3VcS
	ngkLyJWViUDY8gU2cN7hCkMM2bha+Ns+a75URg0KaaPtqbNX/MKJ92np5HmwDOndcchOytyeCjZgj
	HnN3dol/Mcu3d6BLLZ3OepRqEsNbrPdTv8BkJL8nHJJoVUyISIasVpGwVBNkI1tiZb80mp1P6t1NY
	LkZTiKfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVJCk-000000026gY-0jIp;
	Mon, 23 Nov 2026 01:50:50 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVJCc-000000026cc-2qJ2
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 01:50:46 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-46556b9e02cso2177660fac.1
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Nov 2026 17:50:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795398641; x=1796003441; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vtcXd26CBIIDN3LfpX4nHV3TvJWIXKwwyZF0T/tbLeY=;
        b=jSKdzprBRAVXmKK9oPQlheunrLza8WPxVP2QmAcke7HXsChXUwHM2W1PB4QVqosqGt
         bDQE850kGDcmWX+yZTyapAfhCGLTH5TYXanjeNCbVg5x60cK5ZDui6Ykp8zH0zFqnFnq
         28NfaJbhxDwH9k8aK0azcOxX/Olwjk8GYe7StHaDuqcTLNZo4KqyIW63nMeKCZReKW7N
         9leyLtcUsD2dZXrx8FwjbxVqoUkWKKHz/jVmh/LWlZadcC1w35l8+pvDKOjsizSAfC6z
         HStSHv/EQKrdjbd9fJuKjSGUV2ycjs/d/7KuOhzQY3Kc4ciqXVXMjFhFBxXEwfCFFzVv
         jG/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795398641; x=1796003441;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=vtcXd26CBIIDN3LfpX4nHV3TvJWIXKwwyZF0T/tbLeY=;
        b=a+WD+18+NnVakQ+BPTVtLywBQ4tz00agrO0Mm+PF4GpxUaNdISeZPm15B5Fefmj/L1
         lk/H9mgkcZiGnCExEXWyvFflBKS3A7KChyClxAakze+UVcL0UJjEoBBioipUwf+vrzTl
         aI+fvqiwfMpTG8u51vTiZ90cbeeV4xxAkAeuxqWXh1hKp3s0Z9+DxDYl8FvPP7ZeKpQP
         a2micvlNYGSpFMTLvMBwMEifUo1vuM3XYQGLqsMZVxJObaEI2HBP2DpCob7/3jf1aFOg
         kI/bTfcLoScP2to/RQp6ZiJxV5j/YjRohGzgLPz+oTkiFxyAZatiUnUtZnA/Q+2EvWIu
         CD5w==
X-Gm-Message-State: APuU4Z/Cf1Q8Tmn7FliSf2vnW3RyzVrKvo8niX0HINp8new/SjTq42wR
	yCavD/udI1UCte4lhhGWIrtb0fHOMeIwsty9fykOj5NFToXIn8HYP3rjuZpDTKRG
X-Gm-Gg: AZFdTZcpoYW+OzXzFDNDpUNeUuXfTHwtjNyHMZ26ZyvQkx6TtGrHw70pRmptQyKe3lO
	BnClHU2/705FlSoK2OMjgiir3dhYIL6LQJ4Yd+1gTia7Mi0iGCxQpzSrz21pkrpxffpjaXwzUmv
	wJQHAp0PbK3dwzTHAutItvImPZsAa4V/YNDe3+asKQy/t/c2R3s7kqQw+Aod426TsCT3c7XhER6
	ac1j5WqiroZIqJkKkBO4Zc7SbH+CWlz2N17TRVYb8iaRh6cuTAm94QaxV5WgtYqwBzutQcSDepu
	RgWzCc3LAWKudJLdOEWhXc186///gqYNyXCogcymh0IoKuDgEHKBJTA9Mpdh0/KsdXpkGW6TZ6q
	spxKsoHOcN4HAWnkUMX3hHtRc9vnJgSRDHpkz4KNWBp1hHyrsQ7niWSM8NW5hNQOcKMXwhgDmqO
	wrpRo4JWd2Zge0bIKSlNhaHh722Nv+CnNtywv3WHg2liJiATj5aqAqM6WVcnN3pPLF1PHnDQAsg
	dksyvWb861RSS3deO7PIPbGSiUUyJShWJ9wklWsmsyGDRX1I3/TvWebQVuyGAm8UOkpVE4Omgt2
	sPyeCC+5VjID9w6wzC+VZtl5QqqLuQ==
X-Received: by 2002:a05:6870:b0f6:b0:48f:e0f6:bfee with SMTP id 586e51a60fabf-4bc852ff281mr6943652fac.26.1795398641649;
        Sun, 22 Nov 2026 17:50:41 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4bc5f7ae7dcsm9209484fac.8.2026.11.22.17.50.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Nov 2026 17:50:41 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	shawn.lin@rock-chips.com,
	linux-pm@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	sre@kernel.org,
	t.schramm@manjaro.org,
	xsf@rock-chips.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 3/3] arm64: dts: rockchip: Add Battery Gauge to Anbernic Vita-Pro
Date: Sun, 22 Nov 2026 19:50:35 -0600
Message-ID: <20261123015035.369192-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261123015035.369192-1-macroalpha82@gmail.com>
References: <20261123015035.369192-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_175044_446739_D764831B 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Cellwise cw2217 battery gauge to the Anbernic
Vita-Pro.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../rockchip/rk3576-anbernic-rg-vita-pro.dts  | 21 ++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts b/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
index e66803b5399c..2203e092e8c8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
@@ -954,7 +954,26 @@ hym8563: rtc@51 {
 		wakeup-source;
 	};
 
-	/* cellwise,cw221X battery manager at 0x64 */
+	cw2217: fuel-gauge@64 {
+		compatible = "cellwise,cw2217";
+		reg = <0x64>;
+		cellwise,battery-profile = /bits/ 8 <
+			0x5a 0x00 0x00 0x00 0x00 0x00 0x00 0x00
+			0xab 0xb5 0xae 0xc0 0xa9 0xa4 0xcf 0xaf
+			0x96 0xff 0xff 0xd7 0x9a 0x83 0x70 0x69
+			0x65 0x65 0x65 0xb8 0x81 0xd9 0xaf 0xd9
+			0xd2 0xce 0xcd 0xcb 0xca 0xc7 0xc8 0xc5
+			0xc2 0xba 0xa8 0x96 0x8a 0x85 0x7d 0x7a
+			0x7f 0x88 0x92 0x93 0x94 0xd3 0xff 0x5f
+			0x20 0x00 0xab 0x10 0x00 0x91 0x68 0x00
+			0x00 0x00 0x64 0x3c 0xa0 0x89 0x00 0x00
+			0x00 0x00 0x00 0x00 0x00 0x00 0x00 0xb2
+		>;
+		monitored-battery = <&battery>;
+		power-supplies = <&sgm41542>;
+		shunt-resistor-micro-ohms = <2000>;
+		status = "okay";
+	};
 };
 
 &mipidcphy {
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
