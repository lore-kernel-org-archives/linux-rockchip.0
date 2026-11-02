Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE11C608763D
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 17:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=o+8YVHa0;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=DvuhwsrS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pUd0p/kr3cf6S2AdUTi0vfWNME06F+7ar/jp8gSWa7I=; b=o+8YVHa0cBw3zEN9rfrZzkC68r
	26d4cALRH0yibEJiyydsgNdIcpB5tvcl2RdlLVoBR1wmz1Ic17+xS9qZZIX5+PtmZqswTRuQGitwF
	S/sKq7PchVlrO1td7g0OP4yFV1mZXGeih5dh3l+vvMw4Sd+NN+ZJMe62QnuLvJc2epKOwSN5sRv/N
	ytgBGY5hpfbesDpqLtkYjWG8hmaTtIHgT5NioHWom0JiPRMtJ8mdMsRXE500HiKbG/DuM87WuUVh+
	wZ/OsxF1ZRyTEvx5CqxPJi/HNE5uR4yWVUMV5xxswO83v5FUCFe/kqWp7y82xanfId0aD/HL3yIB3
	f6FlSKnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNvgj-0000000HQqA-2eks;
	Mon, 02 Nov 2026 17:19:17 +0000
Received: from mail-dy1-x132f.google.com ([2607:f8b0:4864:20::132f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNvgf-0000000HQkq-0itw
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 17:19:16 +0000
Received: by mail-dy1-x132f.google.com with SMTP id 5a478bee46e88-36a1947498bso2081967eec.1
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 09:19:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793639952; x=1794244752; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=O6UlseroD4jG2dHId972eYhTZmtxZYuBjJ9VhYkAhAo=;
        b=DvuhwsrSMyy8NP93gG5mzc3CLxNQAppZDfGeEL0exrGI/8kf+HwUebaguyd7VDwXKO
         7NdtDv7aPNa0mX/qSMVTXzjV/moTaOis2l4yXxaQygrTUQ1pduIu721PdkOHHao9Fv8o
         7qp3oUwlVFJdQOqrxQQGWcQBFa1K6fi4FZECYpnHGIt0xCfd1tFqd6HJiyfSwekYub6C
         g7CTd/Irxu0v4vOjQi4hWlyNvRmB1p+cG9S+nUY+C1I40Ng9IIOEu0cfc3xZ/ZQOm+VN
         zdOyW0mhUzmMHshQHcOM1z/POpOmWxJUq15kFggxrJUSROSjKaivF+LM6MW+hjfNlsP1
         NobA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793639952; x=1794244752;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=O6UlseroD4jG2dHId972eYhTZmtxZYuBjJ9VhYkAhAo=;
        b=zu633oakcYmdj4A03YRTReTv3jPmMaQm692/DBTX/TH2ga4FViP8+TLq1Muuy/zqr2
         jMmOxh8wISXlLuxxe8/fx2u/SWmmCkfYYe256oVdQQPIBucHeKu0h54P2WL1Gw8+Xl4D
         SUBbN3otCzIpLUTk7obe2jz2C4R5IpVvPbNSgE0zVrFmLt4XYhjszFteu28venAh2XmP
         IaZC3Fod7wutwGKROUA/7No5F+gvHDmljsHpcr7w/FqwgJfxaU4ND+UHG8usCBxlDNvG
         TNfuP+JzjMt4A3DGwEk47ytOxZhfEDnBzlT83+HCAIbVSvucmGRJ/VBZd4bNbkiLrIix
         WjoA==
X-Forwarded-Encrypted: i=1; AKwUvBxOFC+B3h9OA79xcHIoYzFqF720bUoxHMQxMYO+R27dLYKTbyPCm9nTy4vCKE3bkkuImiiqJcWXS54k/u9OcA==@lists.infradead.org
X-Gm-Message-State: APuU4Z9RS1GXhYAjlGxl+FpcyUHo5a3kjpnbaplqfzyGeJU0JWV5+34X
	FPIlGndWo226M8gse0oSz7rx33m1CO3PHkqSXiscMXo/frQjyO4QrsKy
X-Gm-Gg: AYBFou0O8HMRuV6nyVzyDErjPjmvC63XXSTgkupxSWZ218zlc2TcwN6uG3d7j3F+JGb
	L/s70ea/1bdOI8w9wOx5dlweIsNTQ09QJpvCBspc+WbDwD+3JMnG9vsu67as6MaZB67akj/cgFz
	m5FYDQy5VN8tek1XFrktjYwqCn5GIypHS/3gKPyPnvL6lcXH7ZrxSDP1ABemZFc9/3909bhSJl8
	zSlXX5FA8DJ6iNSPvfBqcYdZCe3HlHvbxtAWdRVI0Bjf+9GJGWP0KDyc0qzmRany2lR3Awc31mr
	F/42ZgSoJbpLwAgT/naQVJX7NtyI2pmsFbyPve3nrzgziUC61dapmQUnNY9a9ElQf44nxDjBM2t
	AOQ/ikoOzC4xEWkZFN7ObQHLIFCqtu6J86ImLfOi4lfNv0gE/lfAsxSdOKxc+ALOIG7C2Hd8qS0
	xgi348OcKqe0vQnIDU7MdYT/Hh3hc1vbItqe2qZw08Lsoq0SdEIwyJJxMvdVOTHntG3zwmWj5VJ
	MlbCWMlwmWknKldloySoeSXpuM4dy+ePMBDYFS15rWge5YZLUesWjvsGJc2M49vFc1yia+K8UGy
	0UuxxhKRmocrw5wgYwZsclzXJqo=
X-Received: by 2002:a05:7300:4717:b0:360:5f7e:2eb9 with SMTP id 5a478bee46e88-36a423f4253mr16154942eec.32.1793639952051;
        Mon, 02 Nov 2026 09:19:12 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a429467cdsm36978047eec.19.2026.11.02.09.19.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 09:19:11 -0800 (PST)
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
Subject: [PATCH v2 4/6] arm64: dts: rockchip: fix GMAC clock parent on Photonicat
Date: Tue,  3 Nov 2026 01:18:36 +0800
Message-ID: <20261102171838.2958552-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261102171838.2958552-1-coiaprant@gmail.com>
References: <20261102171838.2958552-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_091913_208876_495B3A4D 
X-CRM114-Status: GOOD (  13.41  )
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
