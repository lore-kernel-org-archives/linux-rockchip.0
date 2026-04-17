Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5345F436B7
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Apr 2026 15:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GJDoTavvIWt8cN9+O1X6AayIWUgRKG47hV1A38BTo1c=; b=PulQe6aQgldAZD
	Yc4iIJPfTRnjaXWGIUCxPtLssnctKJl8jI5V4OawNUDsL1Uqy+Mdcy6+VgUTrk0O2WOIFTedVHl+f
	zawaXdM5J7DMNxutiFTgK0wGrRGkkLBPZfsI8Yo1HgqZvlLaaR0pFi4nGaSNJ8ITyfqcWLNMnfxqt
	TSw9RiA/u9OlzOWVRjGkckTNNfwoy4dJt1L3OHoo5vafBm3aEWm+C8213xRthFq0z5odvnvYkbqpT
	0nx8Bwabcu9aCyuy67KneVx+RtCxugd1ujd1bmnnSm8oa74FV495eW0afMFod2tD+TkEQAeOjcyUQ
	h6xg2kHCKyJImKsD8qFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDkrT-00000004Bfm-49dG;
	Fri, 17 Apr 2026 15:12:03 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDkrR-00000004BdJ-25q4
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Apr 2026 15:12:02 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-43cfde3c3f3so839898f8f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Apr 2026 08:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1776438719; x=1777043519; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9FDj+1Kksm8urlrZ9+RrkwbXsGoKIaMKcDpK7X2i8Zs=;
        b=AGp7Gy/BQbh3AN6e4okwmbu4dE3bPl900Ct6KjsNEPNJ1Cg+XGd5gjyup3RrU1UA+s
         6zDTM9+fBC79wVwXfDOQK7PedeyMjWJgARFrPNnt6580SSFsenvtqcrhrVc53BnhNx4l
         IBeraTLe3BYbnqeKQWs7LD/WL8zqhnJTMlrh6MtF6fvT0mnysYYpq8b/Vyqj7CQkIbBV
         PGBM8UCskXk+oiSJM6iAYGteeXFtyd2qGmKY51d4zeoaCTmsWOUDGIVxDGj+Lkh2dfk9
         yo8rpGpvyReTEkn+D5gc675dNWUicK5WGXeRjuwEJw2I3hH3OquzolCaGOotlDNB9C2+
         0+Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776438719; x=1777043519;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9FDj+1Kksm8urlrZ9+RrkwbXsGoKIaMKcDpK7X2i8Zs=;
        b=HIl1iHkhQlf/EYFV7u2XbGTwApcgFE5KgSjQtq/wCzT2cyDDiSeQoY4fKOmEzmpr/I
         3q5ihxm31gwlk7pp/bV2ahcQ3r7+hHfQSspUNxmW3jJmdOPLOJjuQWpOxe4y4tef/BeL
         +BVuTQowTfHYrHGOgTWGmaSKNg9e/N8CqcnDcEbwSfzZi2F4PZ2qCxSYSKdIPGH8NAdS
         jx8V5H4etf7ufQ62hZyIB4JE2TyJaviUCbZd3WAHs2mADfz6Xj3s0fdTqADqlmig/YDV
         j1Wa7t017NMpjChpUSYM3Q/IWGqFlrUWJyVbMi9LMVlH3Q7Wup1h7DoA+sNiZquWWRss
         i3XA==
X-Forwarded-Encrypted: i=1; AFNElJ9gWmr2cjAX75O4dF1/E8GlI2OVzyJfE3/5HzTSb+6txmXE6RiQPZnUXuH26VXwB5vK40zbtppzhbQBtNrWWw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyzL9ZG5kkcjoWdLagrHFSU9dheCUtU1TxFFUfJXb8ZZ6Vm7sfR
	ByGrGpwzqVJxAXI0yG94pTDObt8jqsLuqNR6Rsg6bEZH7gjiVku6x3ZoRn4zzGPgfB6yY6BhMRW
	vmOTz
X-Gm-Gg: AeBDievg80Fj4Y5B6KvEdCp+BWVz9ZAA07e337g+7U1uFQeH8pabLNBIUytcfUVnrNF
	dWjce7yQf74ohbcTWE/MEE3n7qpQBK+Iz4Zc0tfLqIP6nEzgZfLkR3dyaHiY5Kvo2VUK8VMWIAz
	NIgtFNhkm7yPPs7ojXY2G8VeQ7TI5411dsIq9NG9DaDiNb4Jw/98Pl6xuebf4CFCthXLmwCEmuY
	4GeP4uzCydPzIoLUSHDsmcJE0QHFJogs8FQD2uxevPRIom8KkJWW+qvI0Hla9fDkKnAGzX2vNfX
	nNNvRL9CJy4bP7a0PfvpWvPeXEeZbYewJySTm39GFQzCioZ/CImU9tiW2Rg9VYIKb7O2ODp67bS
	vXy0sA2bvge+fmZDJjNYOtMix9mplei1kPwwoBj9d+NVZzR8XsTKa7l0ravxWpK6BOyIX+how2n
	0uHxcKSEwZL815xpWHmE5vfqPo36P3Z0uBVerNmTqbxQSKp9T2IaRkpCUQhOdhZ7PrgxiY1iTia
	g+pD9YtlsFmbWIqiH9VnAuV3vA=
X-Received: by 2002:a5d:5850:0:b0:43e:a69b:d803 with SMTP id ffacd0b85a97d-43fe3e23f23mr5312603f8f.47.1776438719544;
        Fri, 17 Apr 2026 08:11:59 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4e591cesm7376426f8f.36.2026.04.17.08.11.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Apr 2026 08:11:59 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 17 Apr 2026 19:11:44 +0400
Subject: [PATCH RFC 1/4] arm64: dts: rockchip: rk3576: assign dclk_vp1_src
 to VPLL
MIME-Version: 1.0
Message-Id: <20260417-rk3576-dclk-v1-1-26a9d0dcb2de@flipper.net>
References: <20260417-rk3576-dclk-v1-0-26a9d0dcb2de@flipper.net>
In-Reply-To: <20260417-rk3576-dclk-v1-0-26a9d0dcb2de@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: Pavel Zhovner <pavel@flipper.net>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=922; i=alchark@flipper.net;
 h=from:subject:message-id; bh=Iv35X0YItRmd6w3u4XU1Hvta1/Hwj6onkb318swFieU=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQ+8t0WUda9/sCcx2V/UpPvama3/LOLkZC4de2NsUV4w
 d15/X6HOiayMIhxMViKKbLM/bbEdqoR36xdHh5fYeawMoEMkRZpYAACFga+3MS8UiMdIz1TbUM9
 QyMdYx0jBi5OAZjq4+8Z/pm8++hxhGN95La0mM1spzbpKOYuyp9U1rHvy478JHtJVxVGholr+4q
 Yj3reCPmh7DNllRFXmllP+SNzNldHgX9nbs1ZxwcA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_081201_560760_7B1C7BCD 
X-CRM114-Status: UNSURE (   7.75  )
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

Reparent dclk_vp1_src from GPLL to VPLL at the SoC level. VPLL is a
programmable PLL with no other consumers, allowing the CRU to synthesize
accurate pixel clocks for VP1's output with arbitrary display modes.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index e12a2a0cfb89..2b05900c6c1c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1338,6 +1338,8 @@ vop: vop@27d00000 {
 				      "dclk_vp1",
 				      "dclk_vp2",
 				      "pll_hdmiphy0";
+			assigned-clocks = <&cru DCLK_VP1_SRC>;
+			assigned-clock-parents = <&cru PLL_VPLL>;
 			iommus = <&vop_mmu>;
 			power-domains = <&power RK3576_PD_VOP>;
 			rockchip,grf = <&sys_grf>;

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
