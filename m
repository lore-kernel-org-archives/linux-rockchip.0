Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15703CEACEF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 21:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ajk/4Gx1m2nXbVVVOP2cSs1BtVHfQhFfIsVbXhX1ouQ=; b=BrRPP08ntSYs5K
	3tto+xZn6ZYLYcLyRAhpLX7YJknjPwPGfFk6kjImnlMFmTb/TqNO4oO8JewQxYtrlTz1gwOeE5V77
	AKEW/KsSiWF211b76k9UZebic9ltP4sYiPHT6lLnyztyaj08TpdsjD7mnZdZv9SQ9B/bJBiF47cSG
	fEX71ROJzkLGTjexxfMcdUFTCZJS1O/T+hn1TCjdJ/TXZT4HRgpp4dP77P2DCtO6ljjjl7zieZ2gh
	N76Wd5kowETZNg660xC8U1v69vEZxVpm/SrA7/LeuQ2+T9cXkGHncGVdXBG6eKCxr6bbQ7jbFqoxl
	oNpvcgGEe/A8VVJYQn1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL73t-0000000GtZh-3vSx;
	Mon, 17 Nov 2025 21:47:02 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL73r-0000000GtYr-1Bcl
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Nov 2025 21:47:00 +0000
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-450154aa53fso2053369b6e.2
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Nov 2025 13:46:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763416018; x=1764020818; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ztw2S/9TdbV5pr9Z6JYx0AXFtBg6AP2dg0jB76kE09I=;
        b=iSGTtOTuM/gMY4TT39dirltsbge2DYzQkNAEPKt53BFBU1GWIPUnTHuIVZCHw3bEjZ
         5sxuSevijSoX/H6Kq1IZHKvZa4ijnlNZxgmBGA84crb4fHTHDPHdvj56f85vz4klAiB/
         RxEHSHHCaSDmPuek2PLdrWhX6zdtKZlA1o1+CUhPGB0f7JRqKCcME+AufqrWsQkQm3Wa
         3WiKpLXsayY4yC+l/l1pJXoy31x7Xi9VMW2cfI/YcUyxuZQYFfsmfuSUh2u1ye8Xg6uf
         ASnp2wGgxYivGfAVpjkMnf0jXoX6PqFG38neorKqm3MufjaVwct/iQT5+pRuoyNzHX5p
         rCKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763416018; x=1764020818;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ztw2S/9TdbV5pr9Z6JYx0AXFtBg6AP2dg0jB76kE09I=;
        b=SBTfzN/H1Y3Azk6MbJaP03bbYaMG0vVm3HuYRZK4WNeTgBFOg7Tx77zVlUe924cVgS
         cnsCNAELarNTGyvSlX9AwrbCwE+EsX62jYm5MDxEcKHCQQdj7LCEnhQSeekJ2vwqmOMF
         jHgYyEKJA/6VVu8Sa7g0q7RrwiTQiaP7a4CxNmM2OnaEp8TGIwtIMTtErpiet8Qd2ZYW
         vkIltrUWycClfPEbtGXrsME0ca82aodnt6gNIIGnFxHZKqRxrIUZE16OqL22nx9qfVRR
         Dcdxw26wuvz6i6sElkUQrQnTd4D2UO8aPB4HadTVJu8bSP7i3HqprkcqsAPzlIhw3SGs
         2aPA==
X-Gm-Message-State: AOJu0YwlBxTtK0gix9/yFaCWmammC+CwfcK/9PverXehCItjQYkDyTIs
	B+t/eI9Q+gaWKoA75GaywnBBueXTr///KD+Ia7VGH954zL06JqSWlMtm
X-Gm-Gg: ASbGncur0gbetLH3MHYn2Xq3puh7pWYp0y4YY6FsKXkmXcdGKLcQzx8JUQUl+phPteW
	PCLLCoF2DAdrcZLVA8PGGyxnIqzK3WBq6PkQx1uSOBB5OZmbcZGOxQbZVhF7WMts0vkanNeZiD4
	8NgaK8kQ5bHLUJVi1tVx/q38ntZ2dNlL/aOx0GOXmAlwTiMT9ye2oPWhUFGl1j7xHoC+zDUdaH1
	xCBmJ6PUmw8ILJtJHBjAvyJ1bMgVy6YCVA4J7aX1laaYfOY55nsWioNam5p0LHZy/j2yZ//CLma
	PjTVHvJJiL0owoLTSvCGNdYJEeveeGRwOQMt0HydRrw4nYIHGb+EUBwHzHgpvwpPOXp1Ifw32fe
	XQuSjjuI209UtYXPwr+g4nGhs64m7ykpQ6c14gcvXjhk/MGRhX9yI2JYOb3E1bGwRFI5C3cD9rj
	5OYRv1gqz93xI1DemmuFg=
X-Google-Smtp-Source: AGHT+IE2vvEkzYPE2YeNk5ikw8gx+yWVLzAS4i95En/N092Es//XEtJ9aw1jpXdrlGJlPu0ojIqUyQ==
X-Received: by 2002:a05:6808:1b14:b0:441:8f74:fd3 with SMTP id 5614622812f47-45097637992mr6914942b6e.64.1763416018072;
        Mon, 17 Nov 2025 13:46:58 -0800 (PST)
Received: from geday ([2804:7f2:800b:a807::dead:c001])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4508a6df248sm4594480b6e.22.2025.11.17.13.46.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 13:46:57 -0800 (PST)
Date: Mon, 17 Nov 2025 18:46:43 -0300
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
Subject: [PATCH v2 0/4] PCI: rockchip: 5.0 GT/s speed may be dangerous
Message-ID: <cover.1763415705.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_134659_327432_3913C0E5 
X-CRM114-Status: GOOD (  10.33  )
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

Dragan Simic already had warned me of potential issues with 5.0 GT/s
speed operation in Rockchip PCIe. However, in recent interactions
with Shawn Lin from Rockchip it came to my attention there's grave
danger in the unknown errata regarding 5.0 GT/s operational speed
of their PCIe core. Even if the odds are low, to contain any damage,
let's cover the remaining corner-cases where the default would lead
to 5.0 GT/s operation as well as add a comment to Root Complex driver
core, documenting this danger. Furthermore, remove redundant
declaration of max-link-speed from rk3399-nanopi-r4s.dtsi

Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>

---

Changes in v2:
- hard limit to 2.5 GT/s, not just warn
- add Reported-by: and Reviewed-by: Dragan Simic
- remove redundant declaration of max-link-speed from helios64 dts
- fix Link: of helios64 patch
- simplify RC mode comment
- Link to v1: https://lore.kernel.org/all/aRhR79u5BPtRRFw3@geday/

Geraldo Nascimento (4):
  PCI: rockchip: limit RK3399 to 2.5 GT/s to prevent damage
  PCI: rockchip-host: comment danger of 5.0 GT/s speed
  arm64: dts: rockchip: remove dangerous max-link-speed from helios64
  arm64: dts: rockchip: remove redundant max-link-speed from nanopi-r4s

 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts |  1 -
 arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi    |  1 -
 drivers/pci/controller/pcie-rockchip-host.c            |  3 +++
 drivers/pci/controller/pcie-rockchip.c                 | 10 ++++++++--
 4 files changed, 11 insertions(+), 4 deletions(-)

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
