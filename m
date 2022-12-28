Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 220C6C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Dec 2022 20:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f34vjk7xh4LqsZJ6TwC7xfJeDScVne/VRYPJUKXccPg=; b=SlTF6sqUw00tqH
	iVf20CTDTH/UvsBc/LKUF5YVJmFyhpdUZ03SkgiadaM5wYyUNQATVQkpxatnbKBIx6kO5/2As7x6w
	WMzG2c2Pg+G206akc2HlQwdnTMIbNARQuy91mNo1RbZ4Foj+xXPqkYVHQBWeyESXYrTjHiGfFVLLt
	UkQduDElB88qaOlFPLadUhrBeOJQQ72GarOtmHigjjyyX5Zm3N3rN9iITwFuJkcuPIwSko4+Ks7qb
	buqaLO0rSyAnU9sl5KSkgPe2lGSGPuLi8nN04+W608p7lcbbFEm4VsxjW0A4ZmfhMAlqoHzabOlDG
	vQ0S6hlwyj1VLqrMKvlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAcsF-007uE5-5C; Wed, 28 Dec 2022 20:18:03 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAcrp-007tzL-A6; Wed, 28 Dec 2022 20:17:38 +0000
Received: by mail-ej1-x630.google.com with SMTP id ud5so40669670ejc.4;
        Wed, 28 Dec 2022 12:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nw2wDsJ+8m3AoVC2xWGg3UQxTLWSLHBuRafQhz5yuoY=;
        b=GPsLfiynTG606YaieJjxQ/cG9X3K6EIGPkkV0ZR/u+a3dIYLWEA3HPIN4PMUHLTo2G
         gXDRkxIPZzQ4rK8/NIOI7LPfu6sm7ndLWg4hyqrJmh163Uc3DcGXZt9pfyASPk5sOJUW
         CBlSzxVNPYPIi0W+ilcipBWpgZlqYW4rhCcxkFoUvSWkg76KdO0WywFzasnXA+cwS0nU
         ReklC54vqnSnMCUCGVQVGyxvmQ48lgUoDwEcBz+PzdkchAdzOCt9tHwJ0zLPdcbbl7VP
         ocnhjWMXAqxX8UyzoYEjflKHJgL0M/qU6HceCEPRJm/+nzSHgD+7pTyfzA69IHM4tuUN
         9KWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nw2wDsJ+8m3AoVC2xWGg3UQxTLWSLHBuRafQhz5yuoY=;
        b=OFI1kx0URdwDkRN6k6zenOysidjIq3wad/5E/bz3Tvvn8idU1nNy4lSS5lCeKASJEy
         wICqflt0I/K6Kebb52ezveK9v7BjRyMDBohEHeMbaxH0b3GX82gtbP6mGa9nh05BwBzH
         9UZi791v1FaEr3vcsOxqap44rK7KIjyDM4Sxus2hfet0w7dyI5bDeMJ4xMZ/3CkJ/Vyl
         61GW4FQCCLM1wfFaiLhXRdR6BMvNS7pnatQ0fX/TgoOM94NEJq9E9ZhGUJ38YcpzhLjT
         rqdAb6zbvLPiNwdetkqA5VHReZhabmJnyX0pfk+DXYu4rIZx/tutzjUGPXK1VlVyeweX
         xzRA==
X-Gm-Message-State: AFqh2kqwIwpeygthdmeeEe97eVEYg1cKTJ3PX7/0mpX7HpBgFa/a/0WP
	ZmbnsxXfn0RVvZhBcW5C8uU=
X-Google-Smtp-Source: AMrXdXvw8ADwoIA/nMdHR76kcmwF4uUR4zEn0Pkfet1bjBNastuGkmVj5Xn+l1FWbA6k+McfmjZuZQ==
X-Received: by 2002:a17:907:a643:b0:83c:7308:b2ed with SMTP id vu3-20020a170907a64300b0083c7308b2edmr22521777ejc.17.1672258654001;
        Wed, 28 Dec 2022 12:17:34 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id g7-20020a17090670c700b0084c7574630csm2119984ejk.97.2022.12.28.12.17.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 12:17:33 -0800 (PST)
Message-ID: <dab85bfb-9f55-86a1-5cd5-7388c43e0ec5@gmail.com>
Date: Wed, 28 Dec 2022 21:17:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] ARM: dts: rockchip: rk3288: add power-domains property to
 dp node
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221228_121737_445955_24675FA2 
X-CRM114-Status: UNSURE (   9.00  )
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

The clocks in the Rockchip rk3288 DisplayPort node are
included in the power-domain@RK3288_PD_VIO logic, but the
power-domains property in the dp node is missing, so fix it.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 487b0e03d..2ca76b69a 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1181,6 +1181,7 @@
 		clock-names = "dp", "pclk";
 		phys = <&edp_phy>;
 		phy-names = "dp";
+		power-domains = <&power RK3288_PD_VIO>;
 		resets = <&cru SRST_EDP>;
 		reset-names = "dp";
 		rockchip,grf = <&grf>;
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
