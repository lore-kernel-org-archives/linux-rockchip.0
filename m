Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80BD360A260A
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 19:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ToxMkz9A;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=KVOx7kXl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pUd0p/kr3cf6S2AdUTi0vfWNME06F+7ar/jp8gSWa7I=; b=ToxMkz9AlzCGw/aWLOo1uvlC1B
	Ip+nFbHpp69KId5Drv1PdHUFAgWOvKcu1TI0vidbcmua0uyVFXYCLfr8OnreUPJwW2n+rh/h2tl33
	ypaha8f204UVDD7ZlieItlZm55BiNbuJ97Va/RzqTEce1ufwrtFsLiVXuWZWUyWUeAlcld5VKspTB
	qBo/aKhcRVSVKd8OTjdIM3ehudv7zVLOZIjwOUXyRA0YyRuHwJfrWGESso0nFx9sBf/G50SgcJ7YG
	srKvdM1sgL0EUI0GJ3Qn/YHdcgt0/mxZ4hbako3y39BqOlRCmeiJkOlfjUFU4QB3KAntbEZQ3Oiou
	vRp1xqyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNbFZ-0000000EouQ-3QXg;
	Sun, 01 Nov 2026 19:29:53 +0000
Received: from mail-dl2-x05.google.com ([2607:f8b0:4864:38::5])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNbFW-0000000EopU-2ykr
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Nov 2026 19:29:51 +0000
Received: by mail-dl2-x05.google.com with SMTP id a92af1059eb24-1ac216daf7dso899248c88.1
        for <linux-rockchip@lists.infradead.org>; Sun, 01 Nov 2026 11:29:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793561390; x=1794166190; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=O6UlseroD4jG2dHId972eYhTZmtxZYuBjJ9VhYkAhAo=;
        b=KVOx7kXl+4bahNHU+BrrVn4xNNDd/8d8XPqJuXRjprnPtJyXsk9KNjhgfGxSPWRkoQ
         /ih93wFAf44uejnk7g2OBfDi3xFc/Q4GgdpzBd15Hrqj2LLOxUfuTFq4cmky4gbhIZrJ
         /M3sOOEE8vXGH/X+UgtQcDpnWbq8Yq0j4kIbIYqmH9ldXVXiAeVZWxr4XciamMVm6P1B
         YSf5HD8kbcpYbocsK07fe24N+Zq778JLo5/a3fZfx7aVjqNmyrGpf1pND9PIZTRMwGVM
         gCVo2fc5Xkh0lxYG57H9WQJvVI+zdBHczisyH38ccXFBHOBOmPNJ88+kmgGBIE7qocsW
         pLaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793561390; x=1794166190;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=O6UlseroD4jG2dHId972eYhTZmtxZYuBjJ9VhYkAhAo=;
        b=YILiTK/lxzRxww/beA75Z4WbnFfhjJ+cthXOTO30yaxIDOJ2OR/bhv8NWM7xssRPLk
         pgkxqJlkmBR14o6Kv72ac0Z9/TvAVlyeU87P0DRZVrzrnhCpRFvjtusQ6KkeAsAFMb6x
         tEF1ow1hxpEKh8nqwpfHFRmerPPxw9TcXJ+iIn87gX3hY13tT2F/sWlDMK3zP0xer0gM
         9KQZb1xgaXVmzxTowj60w764YN9EzU+h2+q86hywRjydRTE6Ok7Xi32ZGpqQiBQggxjI
         vCKnWmVTjNH+r5dkDMXIv15oZS+XcogaGV1B/mFVu7pkOZhv/5eiju48qMENUYDooV60
         1YRQ==
X-Forwarded-Encrypted: i=1; AKwUvBxn9rThD8VMLnCNkQdzKeX8viEvrh+6E3NN/BsLOCrH5hSiJilClOjekW8jIF05DxymixJlsGrt2CobZwENug==@lists.infradead.org
X-Gm-Message-State: APuU4Z8iOnJ7AjsyllH+trPMMP3RRMMIOIxRAaovBRnkME1ro8wzbszD
	sqVyk4yENFR00nc/1yb0zAlHUDO7APpB6D/CwMZYeirWEFqMl7hsOBNK
X-Gm-Gg: AYBFou32kWDvNKNfXJ/bHY6jnAHtMRZFnC7nzlCKaXlsrOh6uCyK9vNkI2bgyHPmg54
	ddhNT5Z11OJBE8rqq7mSgs1NJGOb5Dl9xq79qVhPIMuoOv8QWbXVXjeejON/QW+WTQyJFTnIs4G
	jXhJMalCV4/GQTdbiTVkakDTY0NKOiYiGkKvjzzSYlM/7jHQwNEPUAfFLXQseWkxhwuZ1wHzZn2
	hjFUJs/v6pQmV5GY7nFTX8WJQnNJO3dWi41QnNMRgymcQPA0rnzv5fuN0LA6MeSLpcz1jphelZY
	kbgDU9rmLuI798TYv7/mbLXHOUEdsONnljJc2qDG+a367TxvdsMtHGBucxapS2CqwF0j/pm0Pkj
	pcctQ+mNwgqtXJikmzGbYmLavhyy4xvJce23gQE0Qt1EvqNIYEmQ562sTxdSCdv+iOtuhOw1fTr
	Pu7CVU9ng+mSCOUbu59n1Af49Tn/O1CIp7ghO16Nr/No0rjFzlrmNWJEN1tREjw810s3rkcNpjW
	Wm1ef7HoHNOoVLOBCf3kZZZsQaax4AN9PMdKNkoCRyYT3OaKR4p/UQbzJ7Um25hUAwe/dYSqxME
	YYLINahoQXA4Z/xuZRQnVfS5vh8+
X-Received: by 2002:a05:7301:1828:b0:36a:10d:afab with SMTP id 5a478bee46e88-36a42423d10mr13381248eec.25.1793561389745;
        Sun, 01 Nov 2026 11:29:49 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a428af1dfsm31471861eec.7.2026.11.01.11.29.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2026 11:29:49 -0800 (PST)
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
Subject: [PATCH 4/5] arm64: dts: rockchip: fix GMAC clock parent on Photonicat
Date: Mon,  2 Nov 2026 03:28:06 +0800
Message-ID: <20261101192807.897562-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261101192807.897562-1-coiaprant@gmail.com>
References: <20261101192807.897562-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_112950_773840_CC5A4ECB 
X-CRM114-Status: GOOD (  13.36  )
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The RGMII WAN port on the Ariaboard Photonicat uses SCLK_GMAC1 as the
GMAC main clock and SCLK_GMAC1_RX_TX as the RGMII speed clock. Only the
parent of SCLK_GMAC1_RX_TX is set, so SCLK_GMAC1 keeps whatever parent
the bootloader or the hardware reset left.

Set the parent of SCLK_GMAC1 to CLK_MAC1_2TOP explicitly, so the GMAC
main clock always uses the internal source and does not depend on the
bootloader state. The rate assignment is unchanged: SCLK_GMAC1_RX_TX
keeps its rate unset, SCLK_GMAC1 stays at 125 MHz.

Fixes: ba124e06ce7b ("arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568")
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
index b719d5b661c43..7e0a2ab829209 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
@@ -285,7 +285,7 @@ &gmac0 {
 /* Motorcomm YT8521SC WAN port */
 &gmac1 {
 	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
-	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
 	assigned-clock-rates = <0>, <125000000>;
 	clock_in_out = "output";
 	phy-handle = <&rgmii_phy>;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
