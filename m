Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CF05CEACEF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 21:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZzBi533OQ0bfghVzgpAADLvkuCDqVF7EOu42WXBd54=; b=SMRV9fBd0f6q5j
	RfDyhCFIYQkt5OJGQQg+1ovKrISIjlCU7HB76asKYHtGKgt8usB6A89zj3sX5V0BVdR0m6hd7aLjx
	hhtmig4SVYDyIcPIvYdsCWcHvvxiq0e8UjPpWrGVNqCpcMKJBZoSYCuPSKbt16kjlhqHMnmHy3s4N
	oLMcxifByTA5PKHUS49pCouZxgpToL43dNRtwjd39JCyHekjHtP0v//PkK2U5YwQn20F2IV78JxXj
	7IDDzNWWeXMjXEPCvEzDR0mCzIHZ8TiSnTnX9nyVb2fJ56vf/oOtcpGBYMrBB2V/wBNujoIQGN38f
	00eLvBuH4ntbeDTGbgtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL74l-0000000Gtsj-3uEz;
	Mon, 17 Nov 2025 21:47:55 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL74i-0000000Gtqf-3wtR
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Nov 2025 21:47:54 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-7c75d0bda4aso1688755a34.2
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Nov 2025 13:47:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763416071; x=1764020871; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FztTc2k5M11TsDtaJ8wrSSkPXnje8lRDmvN72GDsbxs=;
        b=LMgaEiD+Qf3FTWcFXgZ/4dM/khVEKP6Drc7T951TuEZehuY5BpdlF+kxDZTVsgN3IL
         LzgD4VCVpJtxq2d+5w0rDgB847lik8GwTRxY2q0MDucUQJDT/KpN34mjPChp9a+Gda2G
         B+0sPK+oEvbS4k1PrIU5SDfsggJ6agZmww3B+LmODie/hUjANRTtT8wuF3x8C2Wj/lEo
         L+OWQgWtrBknR7aZSzjBNjnJe/dZ8/A4co5+n0P+gkePeXScrXtwsvxjKf+80Kfq/xxN
         OggLofe8Ma0QSrKDSY82dY97N+ozuadSJcQW808Gq6N2O3u5an4fOpYgQNPIP5cgq5Ov
         7+aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763416071; x=1764020871;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FztTc2k5M11TsDtaJ8wrSSkPXnje8lRDmvN72GDsbxs=;
        b=NflG2Chn39Amsj39o1DUHRfnG3Bpo1mfCCtHoPESlHXRkzrFP1FJ37RcjouRkUW3CR
         940b5+tH8C9VMrynpgRLJiys2ExqO5Y+oUg38fDsxCx0S/SO+lLUozeqFvZ2kN9Uijcf
         +Ttjez+0N8egiZ6DZbtRw8cxD3Adk5f2N7DVZ6nL0m6mTI4N6NX25ntiZI3nJtnxcPN0
         M7hO1bIp+DQPGwWNG6Gd41/U94UJBld+Q6/S1NFRI/ERbYSfJJGTfMZJy+J0Q2MTSHZu
         jTueWhpySPqp5sU6fukB+VJ/sP+5tpMejiflmCe2giZie3sEIgkmP27Bqe54yLoahMqL
         PAFg==
X-Gm-Message-State: AOJu0YxYoNeWW1TclW1qAdLDQbM/nBAlNNVX1KfBXY+Gjuo49inPhzHV
	KifzIlZa9XK9zs5dszT61w63fOcabMQ5VZWqRH/B2IRmnGPkahwdrKU3
X-Gm-Gg: ASbGncvkcYGXT2MJhM9kuJttNcJkxTCl/sD0hxJNDAO3QcmdO9imMHJugUtVy/1nV9b
	2BG0f69CqYZs0aKqMQu1+BvfQUocEgFvwOhji50bsHBjyLIOaoIic4eEHSiyN5tmkosznvgLlUa
	cal3TsShm6Edvz3QMTfuKEBWY1+fRXKS5biR/UkB9HbZsnS0cO43iAO7v6+XuU314CiCEe96+Dt
	4Jcz0hiuxMD6m3/wh2dtIKaFW92s1v3tsYrdCmgAnhKHT0TTu87vVTdiQhZpRFTD2vIi0k6S18O
	b4HldGTcNG6lYWCVJMphMvtVlpJFFRczW6CwILCL9OmMN5g1OED8uosAXDmBwmpjG15uEjSXIxF
	jNN72bbetFA0h75027YEGAexvbvSW5DVDrpar9GBk2fdYjbMAMHeCWqwPg/VA/g4gZdBE+t4p7Q
	==
X-Google-Smtp-Source: AGHT+IGMYVYdHBolX/z6M9K3TLoZVSU9KkaoXZJ5KYuYSaivd49NkYuXdvP0LyKiiZfq9uKzciAXCQ==
X-Received: by 2002:a05:6808:3a18:b0:44f:6d70:45af with SMTP id 5614622812f47-4509738e814mr6476179b6e.9.1763416071337;
        Mon, 17 Nov 2025 13:47:51 -0800 (PST)
Received: from geday ([2804:7f2:800b:a807::dead:c001])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3e8522b268fsm6350105fac.18.2025.11.17.13.47.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 13:47:50 -0800 (PST)
Date: Mon, 17 Nov 2025 18:47:43 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Geraldo Nascimento <geraldogabriel@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 3/4] arm64: dts: rockchip: remove dangerous max-link-speed
 from helios64
Message-ID: <43bb639c120f599106fca2deee6c6599b2692c5c.1763415706.git.geraldogabriel@gmail.com>
References: <cover.1763415705.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1763415705.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_134753_285821_47E16FA6 
X-CRM114-Status: GOOD (  11.68  )
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

Shawn Lin from Rockchip strongly discourages attempts to use their
RK3399 PCIe core at 5.0 GT/s speed, citing concerns about catastrophic
failures that may happen. Even if the odds are low, drop from last user
of this non-default property for the RK3399 platform, helios64 board
dts.

Fixes: 755fff528b1b ("arm64: dts: rockchip: add variables for pcie completion to helios64")
Link: https://lore.kernel.org/all/e8524bf8-a90c-423f-8a58-9ef05a3db1dd@rock-chips.com/
Cc: stable@vger.kernel.org
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index e7d4a2f9a95e..78a7775c3b22 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -424,7 +424,6 @@ &pcie_phy {
 
 &pcie0 {
 	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
-	max-link-speed = <2>;
 	num-lanes = <2>;
 	pinctrl-names = "default";
 	status = "okay";
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
