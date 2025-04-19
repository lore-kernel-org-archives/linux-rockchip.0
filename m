Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AC6AC369BD
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Apr 2025 09:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0TYYd8oTnxfc06P8tPH7k/SGr6Tfysh7+Xq4X+gx16g=; b=RsczanFm19PUeh
	R7uKgvdHQLOzpmiEJ/luv+KcCwZhp5xdpvFmhgHC447NTn7PKdFb+SfGVN9e0sn+o4dvntgxjmmvj
	cEuvEOqIPn3NV9SXz71v67kg9dmkd9sKBeGMZeNPIeBphAqVCEygGMLQlD/c2CXzVGflDzMJaUt0u
	P0mtEo7jOx+WZTm0qSHHEu5CQ8Awv5Xv0g0OJVeyS+XYmQR3yUsFaCzoaBJ/WGbu2WRTEK85Kxd6e
	Qa6Pbp3kqhkFa3k9Cu1t0HLfFrAMHAh9WsLZXFmly+Fn2B5a1AAsAuMsHklLYwP3ofcUz9fseRyDJ
	Eh1QuCGjSUuN60YGd3uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u64py-000000016y1-3TUs;
	Sat, 19 Apr 2025 09:50:14 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u64pw-000000016xJ-2HlS
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Apr 2025 09:50:13 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-af590aea813so3531795a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Apr 2025 02:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745056211; x=1745661011; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s1smWoXBsF07yb0kdhSazKV5zZrD5jTCHEvASrG6ZXY=;
        b=Ib4493/yLTf0ZinJ7rTwkphBoDtdO2LT+KerqrBjUu2RwPLYgFuB67dS3l2hQpB5q1
         7aDsJ+01K1G5VQxMiOcDpiOnJd/aqbe+1+kGnaR8MT99vCOG3ssJmC1ltm4OAukoulTf
         ePu2Vqr2U7IcEdas3ciKzHaVExVsZ5xX+kZuGwDj8jI5453EO3sH5EHIuROM4INnIdWi
         iwxtEvCEKs95G3CU77E9zkc1smyZp/WoU6YRXSDFVaOEgHfZhkMHl7LaMy1e6vRDT2/F
         8QKqDGPGfKNI8Z7zZB/vTsC3Sjql54P/1eAMNXncn0msDZeicy99iKPTdaBCPIO11xIq
         krDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745056211; x=1745661011;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s1smWoXBsF07yb0kdhSazKV5zZrD5jTCHEvASrG6ZXY=;
        b=aKecWW0iH/h3O1bK2yK4uvzYn0VEMvix/WV6FKYYy3Nr/u2VVP5N1rGcoyI6CZmtEu
         SrvZ+RqPynqpOJoNXA3lX6dGZd1CAi3OnL7CzjMAYntdysZ7TuZcK5sRWc60fUtsu71K
         Fe4H5jDsgT7p+vLKEoXIRwmnDIMwyKQ5e9Pa2D9RZZRhIRzGOgcsEmIvYaJ9gqIGypOr
         v7oa6eYNKewFnhiGKRkEFYvAxWThbNpY9ry+Kw/D9CnlUjQdiS3+9yNyzesvbhSXHok2
         8T5X88cwRY4WlV20r/xC71YQgbxMYxH+27LNVMvwnDNALOSMYlX/LkduPRN1BWaZBFYv
         Brkg==
X-Forwarded-Encrypted: i=1; AJvYcCVUBZFnSpPn5ReXioDRk0SppMAFlfHi2/j46RlVuXiI82hTbgaw3ApgxZbPFzU2Bq9/31BWBMBilteog3wGmw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwN3MnXuxcKbF5ODLywbQHhnhQZB/7SEmFGEqnRsPDfNHEDo0lS
	TFdpbKbmhtvI289mE0op4V3o/trQIF59HevD3fROBP/oEtKnRkQ9lrdMTm9+TQ==
X-Gm-Gg: ASbGnctSupS7eyicGbGaw3KwPC5wre6sn5o287h2WeOvwJGl/HWHyvD6UDzLJ97mcZG
	lTAvu7bx5EEzMH2PaqoKtjQ/Px7i9wgGMl1NnQBllGSPka5h2LoRBgDUcTEXaKKoA6OWyOoeKrD
	RGv7aGoazKyAwqPioUfdYYOxN8aQA3mPO0pZ6i6dmzkZml1WJSTnt1WXRPHP11U9K54WCOjK3g/
	HYngNrAKaVi1XsVclaxaedRVpuA0bt2Pbc5eHpnei7qgVmRsIY/IspDE62oGkwu5qbLw3J8SS1C
	FkxME5g5rQYYczSX9ECipYJySGlXyUbb8E0aDuQmfeMFVAF/04jiTQ==
X-Google-Smtp-Source: AGHT+IEq9phG3rDT0nEB9hkvWvaXKiYNwe1s5RXKu8uLzKTD8MFTWep3kqRGNKf8OTR2vRkuBkxE6g==
X-Received: by 2002:a17:90b:2705:b0:2ee:8cbb:de28 with SMTP id 98e67ed59e1d1-3087c2ca65fmr8403803a91.8.1745056211696;
        Sat, 19 Apr 2025 02:50:11 -0700 (PDT)
Received: from thinkpad.. ([36.255.17.167])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3087df4e12asm2697981a91.37.2025.04.19.02.50.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Apr 2025 02:50:11 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: heiko@sntech.de,
	Kever Yang <kever.yang@rock-chips.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	andersson@kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Simon Xue <xxm@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-pci@vger.kernel.org,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v9 1/2] dt-bindings: PCI: dw: rockchip: Add rk3576 support
Date: Sat, 19 Apr 2025 15:19:59 +0530
Message-ID: <174505612709.29229.7221551173436866910.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250414145110.11275-2-kever.yang@rock-chips.com>
References: <20250414145110.11275-1-kever.yang@rock-chips.com> <20250414145110.11275-2-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250419_025012_601946_B9006820 
X-CRM114-Status: UNSURE (   8.01  )
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


On Mon, 14 Apr 2025 22:51:09 +0800, Kever Yang wrote:
> rk3576 is using DWC PCIe controller, with msi interrupt directly to GIC
> instead of using GIC ITS, so
> - no ITS support is required and the 'msi-map' is not required,
> - a new 'msi' interrupt is needed.
> 
> 

Applied to pci/dt-bindings, thanks!

[1/2] dt-bindings: PCI: dw: rockchip: Add rk3576 support
      commit: b5516efc1ec610e75f320385a3a2ecb5932a49d3

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
