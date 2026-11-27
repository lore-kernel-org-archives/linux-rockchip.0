Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0095606A31C
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 19:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LJOntHPl;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=RDDx/9qM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/GH3l2pZbli/S8FTp4EKeq5G9YQHY+cp+v8qqrynCdQ=; b=LJOntHPlWgKEFwSe/Mg+9lfXd6
	rXiKbwUeAulbxv/FWnB+XceJ37dqMlcxA/fi797Td/8H77+noQWzZaP7iv6Is2FpBGtstRWr2p5g1
	A+Z/WdJJ8pPg6kqscDtw6yP6QNQ3mZlA1rDk80OkLKyhHoO3Cvpg8R22oFa7Vymb1j7+oP67HNkqB
	B8C+ZSUQ2HaCMK7RfBCUHzMfz4TEloh3rs2yr58pjOicg7rE6kt35XaaivUYMLw+D46ojqZxT7e5b
	5xt68lQwRvXRDesBSUI/ggAD1+Dc5QIUnWC0c31n8pcD6+veETe9vPvIw+lIl6Q4/1y/ztx/SRToo
	cU5yaE3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xX1Xp-0000000HXT7-0f1Z;
	Fri, 27 Nov 2026 19:23:41 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xX1Xl-0000000HXR0-2f6c
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Nov 2026 19:23:38 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-4ad89c49e0dso2687490fac.2
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Nov 2026 11:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795807417; x=1796412217; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JmMbAru76i3/EAV08D1zHQqIy9AdABlMufjy77cw/JQ=;
        b=RDDx/9qMMhxkVNbPD8zJ4OMv8vB76VVcMs7F6K4dpaeo1Mgnws5CYGYlvKs+fb0/Vc
         k5LveMHxxFtp1SxOP4u1oy4TmTg9K2+9wEvNIrdQI9DLfpRzcGOV4QVaT2CTrmd2LLMJ
         zkS5Vdc3irOkb1wG8lIVnozZE+ADDsgNjdvCtr3XhfuGt16kpg4v84ET+gEADNnbvrVa
         R1lhv7MPQOObnGtTm+JuXZ3PH0kLDm2nV2wvs2Xsii6hewvIuvFt3PHEEOiIN32nsBGx
         ps+HWwZodtpxOuoPPmu9+PYs8m+lm/56zLainXQ9XEwqM6nwHW9E0OF/0bov8P/xGBuS
         CvRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795807417; x=1796412217;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=JmMbAru76i3/EAV08D1zHQqIy9AdABlMufjy77cw/JQ=;
        b=ZCS4UFzJb48o+0/LF27IQNcj8Y/5VzBznjo7WHA2hxBglcdqWHyJQzrBRy3gADiKOz
         AGXC7adi0Z+x//1UdHv82oK7QhkZWXOWkP4hWGx2HJ5kTodUGyia79v7gK+pA9z8VB0Q
         e53Pqf0gWTGF37uSNyb6ayv2UIPFPOrb1pb5t7YbYnyyJPWxfcLII1uGwZhOk40boML3
         nCX/+r91kazd7Re3nALZqVLnQUbnpYSmWMyX+3qG07Mwb94impfokYhCUbLyD5bXIFey
         Xt3YKS7cL8Kj94mp05bLCm6XfFjSR4QrXTgbofWRSJGoSnE1Cnh7DsTOituXo0JNRff/
         05Kw==
X-Gm-Message-State: APuU4Z+czX7uA9K0caAeFEyWo1zyxkzFNVZQ0lh1iURbKh/NPlhf847Q
	ALtBn/vt8dTCnSk/EexM75HjyIEMRX42VwCyOXHsV1V1om0B9F03dbAY+M0Dag==
X-Gm-Gg: AZFdTZfBhW3NbpFj9d9Lph5mh63hdu4ws2TCGwwiJFBF6drTwAHi1CmK/khf0V/Mzs7
	TAmfWMSn9N2y+cPIX2kP/4gKGp2XEf2ZDs22JsvlIU2RyrkXXaZPSCa0tSlzye1hcrmQM6zlDBu
	kd+u64qyRS3ZZU80SwjYvQR1lB5bZmesDLKKhJe0dCxws835j4jZvunvrhtWqqCHymbi7zamHZo
	QW1Pb8mVJKS9C/i9kHNoUTQzGf6812rTak/v2uuZxAK0HfNOYHELM5S0yq3kHZGb6B162PGb61w
	i2yGh6ekuXXzqZIFIpq3jfjgdNy/Hmz8otU75Vj7gCO59p5QycDGxQYznuugz4mE+tLFgVlyBoO
	lbOiGG5tl+HxjgunApL1caBmBNYLxT4uq15UHuMSO/I8k1AMktNxlMwhQeFfCOoGYmyx3q7wsu0
	lf0u2aNGIRqP1JHYrwON1sodnUkPGZQH6NHt0XS64P/9cqBeKHuAzgxsVH7s/UaieQDIu3Q9Z0+
	lJVfGoQxjwn4xavGwhBNn8E8Wk5XnfzLryOnqCwtbyAdmsARB9OJbKIZsxxwmelD/MBWhbMUGUB
	jIM0FDql4XOq0ZLL/5iCDaqh6h7RjQ==
X-Received: by 2002:a05:6870:e06c:b0:4b3:fa20:cafe with SMTP id 586e51a60fabf-4c739d49cf3mr14683763fac.48.1795807416715;
        Fri, 27 Nov 2026 11:23:36 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4bc60891cf6sm24044850fac.13.2026.11.27.11.23.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 11:23:36 -0800 (PST)
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
Subject: [PATCH V5 3/3] arm64: dts: rockchip: Add Battery Gauge to Anbernic Vita-Pro
Date: Fri, 27 Nov 2026 13:23:30 -0600
Message-ID: <20261127192330.610452-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261127192330.610452-1-macroalpha82@gmail.com>
References: <20261127192330.610452-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_112337_680802_610EC788 
X-CRM114-Status: UNSURE (   9.55  )
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
 .../rockchip/rk3576-anbernic-rg-vita-pro.dts  | 20 ++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts b/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
index e66803b5399c..d4abd497f355 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
@@ -954,7 +954,25 @@ hym8563: rtc@51 {
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
+	};
 };
 
 &mipidcphy {
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
