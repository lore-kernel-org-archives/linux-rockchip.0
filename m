Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0CDCC43458
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 08:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8XdVL34kDwClliEB9FIjFb6s3Z7l6xqOG0BaOh9PLzY=; b=ebIGSv5DgS3RGI
	q2Amp/G3aIMA2kKwdwUM3vAtY2dWjoc0rWZXoLM8NVLFgIJ5bJkF7wppMQp/5CXki+cpuG3NDsXBu
	xDsK8tkEu5rbf4OkmNuE+Yzxq5leqaE2Ah+2MgT6IJq2oq1cVpn9vdflaX1xpeHE+21ayZVz+jFMd
	y5wTuqEuQPYbKglZFRycRDxAyADI7bf4t+CKYKAvC07rBdCmalK9qQ6sSs5ajNZxAohQMW2XWl8vF
	HAiN6Qe7+HuZuzMm6pOdyIETGvEfJovaegMTZiJNXA0Yl3oMgiXWnXcg3wHOhS9rLeL9vuCPvmSpc
	tND3ua7FIjU8+zGKDoEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfZYe-00000006PMQ-3lUI;
	Fri, 03 Jul 2026 08:47:36 +0000
Received: from mx1.wiredblade.com ([72.51.58.35])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfZYb-00000006PLs-3AcS
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jul 2026 08:47:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=psihoexpert.ro; s=dynu;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding;
	bh=JCV7TNmivDrKZTMMPq5ptyzKo/jd7S9u7SuQSkaTGPw=;
	b=T4uzixyYfCnse4p2tvAV6lMAiSXmHIHSRpFuWYDiYoLniKYKEarVqVSwDKqeT0AsuZO5IByVyCECcFoPuESatWe9erfIiPe28fXy7XjZegzHAdqgJ04AQVQBtg8mDFz4B8zxJP7QT4tGq2UVY3qDbwRmNOmkH9lOD+QO+Sl8Njdc6hvJsWLz90ISoT64kZ3JJJ1xScveCUeNcMdJcHS4LF0dZK1j589F/cjNaSz09xqUVfG9GfvTeX+XVY
	Z/kUpGJ9XlAE5mEwaFKs9R5/gvr9ZPF7qKBDuxXAR9l7Ur9o+PhRtrB1W5HudByZKY/aR4XT44VCCp7Dur6XHMqot4JA==
ARC-Seal: i=1; a=rsa-sha256; cv=none;
	d=dynu.com; s=mail;
	b=jxqRA+VDt4OTk0p6mSf3Cf+Lj2yA8HJ+T4t+NbirS9OKEFgshoG8aDCJ9WZVrFJY/G6fSWvoS3F7lpnmDV/whDOKgHwsYBJdWQXUMJpJ2YCOMwIoRBE8c1rUPezWmXvhoSvUg5q0i7cMcprnkCK8QmtgM7/bVFKguUmn2guoZZiq26GaG+Rhx3xjcdo+NpYBRt/Yr/4BO+2t6JyuMnbR5oTG7dhHcrBnSze0YkCBY/5nKN6hGn1AL1/fua
	KfVgbtV2NkH5qEm9fpsrETuklEmWvEWvunpHPAhaFRcI7HbZlubsUWgU4Rl4IUc3t4/tMwcAToYwrwVko2bsuzMHEXMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dynu.com; s=mail;
	h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding;
	bh=JCV7TNmivDrKZTMMPq5ptyzKo/jd7S9u7SuQSkaTGPw=;
	b=zCCJW9uEB0eyIvYt5zFgISFo/snqX7bbCx3NUwi/PBqGld/mQj3mrej+hPPFCiU0iihab5JtqD1rCBn/wJr0XCoBIWzr9LwiFkVipm4pm1M+wR30E/c7iAaAIg3zC0EB5pjyAXKMYC8PaipVP6GG1sOXp1c7CTtpa4rTVaayWHFspUZ+ouaRvmuQ0BCJ7b5OwLc5R+ZH5HEDHeSrLoWNfy/xZ66OumPhhxca+eCt3ltHtgn8E4FNYhoVzR
	TWvJP9vWSZpqSFakNYT/EB1LDcyv3CG71Dz+Qa287rbhfAL9vfkVymczBn9GS0LmtpdiybwzgzFQTfZJiM/V8+2Z5WRQ==
ARC-Authentication-Results: i=1; mx.dynu.com;
	dkim=none;
	dmarc=fail
Received: from TkB (188-24-192-94.rdsnet.ro [188.24.192.94])
	by mx1.wiredblade.com with ESMTPSA
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256)
	; Fri, 3 Jul 2026 08:47:14 +0000
X-Original-Rcpt-To: m95d+git@psihoexpert.ro
From: Marius Dinu <m95d+git@psihoexpert.ro>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marius Dinu <m95d+git@psihoexpert.ro>
Subject: [PATCH] arm: dts: rk3288-tinker: add eeprom node
Date: Fri,  3 Jul 2026 11:44:53 +0300
Message-ID: <20260703084645.7001-1-m95d+git@psihoexpert.ro>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Authentication-Results: mx.dynu.com;
	dkim=none;
	dmarc=fail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_014733_851075_B4CC2305 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
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

This board contains an EEPROM that holds the CPU serial number and ethernet
MAC. It is used by U-boot when configured to use upstream device tree from
Linux kernel.

Signed-off-by: Marius Dinu <m95d+git@psihoexpert.ro>
---
 arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi b/arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi
index 8e27a20f2845..7e16022c7d9e 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi
@@ -344,6 +344,11 @@ regulator-state-mem {
 
 &i2c2 {
 	status = "okay";
+
+	eeprom@50 {
+		compatible = "atmel,24c08";
+		reg = <0x50>;
+	};
 };
 
 &i2c5 {
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
