Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35F1AE8FDB1
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Dec 2025 10:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PjgN/SGhKcUgLvbfoRHZJYQAQUy0nHbZnfJ+zaM40nA=; b=h7LD4wh0/+Sq5T
	F4JiNAWDMTn+6UEv0gSqTuIcaIpfU1kEjHXN1QxYNL/i5uDYhOpTPZX/SnpMadq2Q0807CVpy3A5L
	FQf3e5MNMsmTWGaWX+XyK1FIBsA9zgxwzVd7S/Mcn0x1NH2uNKVuPF9lfVvlYPQgJFnhq7Zlmq/jF
	ctx4zvs86Yrl7kVg0rA2zN7Yu1w3B1Sj9uQZ4J4fR4xEcTXfBtHowvcbX1MZuesw0e/ZwHiScqX+v
	lvYGTUcVC36oO7cCNLV/kKEWj93moBAWXxlnH7B5f/uUmBE1SA0egYWDHNuP+34UoToCLpfkNiRpC
	0M64z+nT1NkmDF8XlsDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaAEx-00000003Y0W-3I5n;
	Mon, 29 Dec 2025 10:12:39 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vaAEs-00000003Xv2-1UNS
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Dec 2025 10:12:35 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-47d3ffb0f44so20021675e9.3
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Dec 2025 02:12:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767003153; x=1767607953; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zxHop4R1vebN5o3R54WdbAjnNPlb5TuWMLmhTQJH8Ls=;
        b=VVEdAol87R6IJTDLQ9YHXWY914oc5Yy21zNrJ00TSJKJuwsTND5hQsKEJtF77XBse6
         SUG73Q80jnw6rgqkSYhEFojox+CdYK3vC44Q2OCtKQA86+PJsa6Q4GdETNHpGLUSZlyO
         rz07fmHZ0DqcYwtYqa/xZivSkERkkpDDBl6nTRVtH37CzF6MGIlFhVkdTlH26YoxZvdP
         V/NYgHtITylwDn80L6MuHTvIICX+TjFE+sQLnKNGgOTN6z9rjIbsiTVWK16biHPf44xW
         4hv/xn+QAFa+QuUuKEvLbwutkHwHu5jnYUQOX6r8/SMN6HBJ0mkJrHT5Y+X12M2M9c2V
         pnLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767003153; x=1767607953;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zxHop4R1vebN5o3R54WdbAjnNPlb5TuWMLmhTQJH8Ls=;
        b=dkJ3lPT04yqWp5ngXRVXVcpEEOSB0WL7nExba9Ne4BLAn1AfTlJ9gtPeCyMjBqUP4r
         h9XmzqDVOxC9UuD1ud6En8R9Fewo3mQVtGYL/EPpSZcQNtGYxjnMqbCUIWjD+fWg7L40
         Aztu4wItLQsjb25QVt9DtTej6tn6IEwYeGBFmySUI2ixL/R/xjt4ePsey+gYqTeq8a0U
         JSkMO2zv+59JuJ4JQo59l0yHfF954iB1SNk5q0VwWotddPOOURjBm7QZrRbi72zgWXOW
         io6BJmxVsif1wb0CObICRucOFKnietBRSRljr2TiZTDX4krJrkyzGC/T5OPFUkQB8rjO
         n6Cw==
X-Forwarded-Encrypted: i=1; AJvYcCV5XkE8ceTy8CGlPA9/+s/QdL/v56UGR4PMnkkwVttodgGxk49odx+HkWXMYPpsc6IN3Lh3csJZOE2jsheArA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzUhdul5Hm+qaxbl/58zQFd/+dxCR50NyRcSz/kSL/q4/UGmACM
	mtDphPnrtQA6/IAdfGkHx7x3vgzl+lV/QfSMNE6mrGuQKEP5RsDpbv9o
X-Gm-Gg: AY/fxX7fQuUbdo5OIMR3rznprRWybClK4guuZWH/LH2FzS0Qnx73Z0UIE/SjmP9p1u3
	plIvCI0C+98f4O9GofRq1iH+pTiYusICuvBLYJg6vmjFwhB9Rzn/dyK5wTm8AzwDDM+0l+ZpErU
	NkkxSGpyvObGvhBAr++Akf1p4ESxKMPHNbAcgK0YyX2eQepNpRGlqxUQNwXVkWJq7DdlWmYbQiy
	28Bcc1IcCUmWHlm1JbIG7/HEUFXcT/BVhXrbeZa6JLF0mvnGjNhd15y4o+dAKsMDTqjNyZoRrUO
	pmpEZaMem2uxuPblDxZgGQJhow83vQleG+Mr9w9ITFqAojDr8RewZIXDDSoWqqdPFDNbg8yc5yV
	LORu1D/K8d94BkephaieAn07IYcfFKVxmUvIPkNBESGrsbAUcuVixHXJuFS+dmXWiuC1HGnsEOR
	SnofKaaAGL9Cd3oOuZMRUoqs/yIGd/rtSe8ktOx1o3dwlMw1SY8ELos9FhaVo/
X-Google-Smtp-Source: AGHT+IFD9iy4PNySFr30nnCY8GO78DkRuBAO3uLhkHB4QfWW2O3r0sy+eyav6trMf24e38aJe/SHGw==
X-Received: by 2002:a05:600c:8107:b0:477:6374:6347 with SMTP id 5b1f17b1804b1-47d19594ce3mr335314215e9.22.1767003152529;
        Mon, 29 Dec 2025 02:12:32 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-45-246.alshamil.net.ae. [94.59.45.246])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d583f42dasm19840735e9.6.2025.12.29.02.12.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 02:12:32 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 29 Dec 2025 14:12:02 +0400
Subject: [PATCH 5/7] arm64: dts: rockchip: Enable HDMI sound on Luckfox
 Core3576
MIME-Version: 1.0
Message-Id: <20251229-rk3576-sound-v1-5-2f59ef0d19b1@gmail.com>
References: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
In-Reply-To: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=923; i=alchark@gmail.com;
 h=from:subject:message-id; bh=lEQTmzdRwAX++jXf/eD/FxjZqYX/Y19qCP3LEYW2Tk0=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQGhTAxH/ubXugjdmgt7yPZiIq62d//fbqW4+bynEVFN
 nTb0sOiHRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oaGOsY4RAxenAEx19kFGhhNrRd/ONm/Lavvm2rpy1fGk03e/zZ+izHNdv+o5a1q2WQMjw9OaaMb
 JExeqsj1geWs/x/fu1ufKp264yixW1VsrojvFhBsA
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251229_021234_428891_0055CEB5 
X-CRM114-Status: UNSURE (   9.64  )
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

All RK3576 boards get their HDMI sound from SAI6, which is internally
connected to the HDMI codec. Enable this for Luckfox Core3576

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi
index 9187012d6fa4..749f0a54b478 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi
@@ -246,6 +246,10 @@ hdmi_out_con: endpoint {
 	};
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &hdptxphy {
 	status = "okay";
 };
@@ -691,6 +695,10 @@ &rng {
 	status = "okay";
 };
 
+&sai6 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcca_1v8_s0>;
 	status = "okay";

-- 
2.51.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
