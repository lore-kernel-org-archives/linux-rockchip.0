Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19052606CED6
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 17:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MOlKm6It;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=vc4oAmXm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ya8mPjlcpa9U8IZZsgmbuDsLdPZePTMuimnN6dpcats=; b=MOlKm6ItO8NA4a6lIcTZZhUiCs
	mXccJJf3vVPsELNKPCl82cka2/JEet87QA33w/88Y15wami0aOoNMdHkp0HkG0K7N8QKxxHuAFjQ6
	ziaZCa+b5tvPnnXHtzhRB2A8ndy4eygDaHNCrZUzNCl4x1MFMfmtBrVx70UHMCGZlGqeVQtO6VlFy
	dcLd1raooRZQ4iUmxa9wtZ3WZxrLtfumriI+MpQEGUirp6fzf5tX7NFvEN3OjMrJMo0DkWT3dZORK
	Fz2ZAp32g3zCYHc4sj6AEM2Vw/4SeOKM6skfbtItw2SX4KrQ+uo2RUpANbaQ7azTsDFkuOTb/+khM
	l11r/Syw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNw5i-0000000HVBF-0wSE;
	Mon, 02 Nov 2026 17:45:06 +0000
Received: from mail-dy2-x0b.google.com ([2607:f8b0:4864:36::b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNw5g-0000000HV9V-1QoF
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 17:45:05 +0000
Received: by mail-dy2-x0b.google.com with SMTP id 5a478bee46e88-36888ae05e7so1192786eec.0
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 09:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793641503; x=1794246303; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RQgMc315r3kvQDWK2uMIX5umY8gWuldHWBME7LLziZk=;
        b=vc4oAmXmKbz5qo4F4A0j30uIrLU4d2Rq1gvRpeagUfnFHJDNPOYEyL1pBnBp/gfdgP
         xfe/WjEqN2ba9zQ5p3XrXP4mYlxHKajCOSao5CflIxJBW1TgmP+n7W4YtNWRxxSs6zro
         qythrh4PO65boYGrBoqgXrw2BSH8iBu7EYUVYny81nWvppIY1dpSITEvEasLBEUfEo3p
         4495+TNjOBe0DzL30o3XlrxVCX+TWWTFomfDi7TLKt/bwEsH0wItXGT7G4JgI46iu6BW
         67lUKHTXA7Ksng8N2Kn75XrubA7vMnaU/tBT7WUHbUEhnEqhXKQXXAk1HWpUu8wxbdRm
         fEQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793641503; x=1794246303;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=RQgMc315r3kvQDWK2uMIX5umY8gWuldHWBME7LLziZk=;
        b=YbnH9OI3DEvid7mhk2MlU+J4Kwv4Icv9svMTEcMjDlzor8HiVPBZm/9Z6l2C+R9Ram
         FCzy8xfgDUXjpmSGeVYPCJZ7H99BVQzRGHD0u8SJR6kjWHOHjias6AZPPJ/CdGdzp97d
         jI/x6Wm2M4GWBVo7ZH8iimvUBf9V8JCztxbRG6RMgeXHTiQKDuT2Y/gSD4zTW9oRJNQr
         8+VyPMQ3OG7WGcVx2rPUZ1xT7Hyb3T85f16J6b+ZlHHcgbegfxAJxKOlTEapdJdhJGg2
         W/cEa8Ksl+k+gmowW2ClqRgPZb24zDNhvh0DvntuFHtESo5p+G+/z/W1JagW3/D0+fTm
         qJMQ==
X-Forwarded-Encrypted: i=1; AKwUvBzzATkEpnf9PqMFFmxq2SCEs6wlvO6EH+mXNIQZ93VfFfWnVkMjP4aOyaIrS6bxCZbRzIj3P15PFmLyaJMkug==@lists.infradead.org
X-Gm-Message-State: AFq9FYLeqZLlYmMTfqS7uQqUKKhWb3NQ7ZMROYOUmIqOMfsg2mXtP4Ko
	rBZ4AUtLod0U7v4e5xJeC7T+g4UaVD9LytcrfH021sP5jyl9IoGK1FbT
X-Gm-Gg: AYBFou2cub3jA9p+61xmE4fjroWcpEpUumSPRcwzeYvBQqsCT61qGvR9eWEyhbBE6+0
	kR9fnP5TEtSgLGLiVO4LKZwK/6MgjlIBl5xwo61NrzacU+ImQCGFitrW8VkYGFm/7GEK/R1/Vao
	q1fxsqfjvK+c/EWYfevhwglrN+mHQB0EuDrd322mCSYmmJE4y0/Iq8QC0nEOeyna9farIo5E8er
	qcqA2Efvs8aQG3sFsNCDtb1Ee5xeBj2Rf5Byn0E9ZyzFFdcMhoQWWayrO47BUB5T6nkNkyndGIe
	FnHpofadQq4E1Fj/Eo6H64A+JuiU+4e+MIx8VPEKCjqS3Ip3CeAujpIeK4p/vARTMnW6pGYk2Ki
	tO8aFQxlYisycSbp8ppYbKpP1kN9aVIG4CmU3+n6ww8LcHsypYrnH4leLbW8T/plnHbpQLbA/Dc
	QV2Xru0RewaMlDtcTDYtpplv3ifuM5aPAADDE3LlySBYVzNdbGlfDoTLaZk8eSsz0FB5lS1cmCT
	fk5JJdLwarU1XroCJOUnMZmSlsJbcHfGHhWqaGzI1QJexcjEybz7v5GMqNd0+p1pT+8oNSUpkXn
	6TBIl6OtkQdNuZuw6C0PpHzmPAY=
X-Received: by 2002:a05:693c:88cc:10b0:369:d486:457f with SMTP id 5a478bee46e88-36a422195d3mr16266651eec.2.1793641503345;
        Mon, 02 Nov 2026 09:45:03 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a42935b4asm53290803eec.16.2026.11.02.09.44.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 09:45:02 -0800 (PST)
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
Subject: [PATCH v3 1/6] arm64: dts: rockchip: fix GMAC clock parents on 9Tripod X3568 v4
Date: Tue,  3 Nov 2026 01:44:45 +0800
Message-ID: <20261102174450.3000397-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261102174450.3000397-1-coiaprant@gmail.com>
References: <20261102174450.3000397-1-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_094504_380001_30AFB049 
X-CRM114-Status: GOOD (  12.97  )
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

Both GMAC nodes list SCLK_GMACx in assigned-clocks, but only
SCLK_GMACx_RX_TX gets a parent in assigned-clock-parents. SCLK_GMACx
therefore keeps whatever parent the bootloader or the hardware reset
left, which may or may not be the internal CLK_MACx_2TOP.

Add CLK_MACx_2TOP as the parent of SCLK_GMACx explicitly, so the GMAC
main clock always comes from the internal clock source and does not
depend on the bootloader state. The rate assignment is unchanged:
SCLK_GMACx_RX_TX stays at 0 (managed at runtime by
rk_set_clk_tx_rate()), SCLK_GMACx stays at 125 MHz.

Fixes: 156a530ed5ed ("arm64: dts: rockchip: Add devicetree for the 9Tripod X3568 v4")
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
index 4903e32d0ead0..d94bc34a31e67 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
@@ -268,7 +268,7 @@ &cpu3 {
 
 &gmac0 {
 	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
-	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>;
+	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
 	assigned-clock-rates = <0>, <125000000>;
 	clock_in_out = "output";
 	pinctrl-names = "default";
@@ -284,7 +284,7 @@ &gmac0_rgmii_clk
 
 &gmac1 {
 	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
-	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
 	assigned-clock-rates = <0>, <125000000>;
 	clock_in_out = "output";
 	pinctrl-names = "default";
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
