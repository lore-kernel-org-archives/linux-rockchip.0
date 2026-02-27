Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4179BFD9E3C
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Feb 2026 05:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2bAJ6X2szfsejthmqHayR7W91w0YaE3aHtZWBZlbw/8=; b=dhkTGv2ATrOU9z
	eFBmAooy3kMk6YK7fOHzqAZtIUpOumtBSWYd8x7GCqqqioI95TkxwoDmULBHaNo/4YWkafEmXAXTk
	O1FsJYrGmnz3ZWMZYwXX6VmfKgqtNJXVP9bXg0IZGT2+Cav1m2tyX7aeC4B7nh5arfeG7NLhN5TI0
	rQQfST+DXnGkno2R7k8FCnvhfnjVpznKzjHY0oVhNY5pWYwilgwgcnA2YA9oESo7JwYvyFSHWDvtw
	8YeTBxTGf+dLL2UOsY4d4C6iBmc4rK0t15bYsm/coKCq7g+eE9LpJxbwi+pPflYx7r9YIiYNaEQOg
	UbN/Xzan65QfFGEfTeEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvqVy-00000007j1A-3UyS;
	Fri, 27 Feb 2026 05:35:50 +0000
Received: from mail-vk1-xa2e.google.com ([2607:f8b0:4864:20::a2e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvqVw-00000007j0W-106N
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Feb 2026 05:35:49 +0000
Received: by mail-vk1-xa2e.google.com with SMTP id 71dfb90a1353d-56a8584e3a2so1680914e0c.1
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Feb 2026 21:35:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772170546; x=1772775346; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cPTGvYA/GKdj9wqcQAjT8fmJEQ+pcQdfunMA1ORun7I=;
        b=RGlJufTQvdjhlNKEhunc+8uI470eIad73/62dyrbP2/FTSeoa8esJKImTse0geMHtO
         uBLW+U9LyIzZV8Fh1UV2vgednwYREh2Zebc7PX+/q0HpnFmKWU3XOZrnqd0hYa62UAnM
         k20xC+K0/YfNUXe0u4THsdgiMbl0Abmip6NAkIEjcnCxY51dR7Uwd+GkluvKdXWAEql6
         gSnZhOuLc9lmyiIGE+juniaL+sHgApglaVd3u1grEnNrgEVwW4obYuga5BZznUxHLJRh
         5OQrHCMF01icXAc47GvlHB54QsN0VTmI0rje8Z6RJLA1zp0a9ctSWQLV7N/Uty/nc2We
         sfkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772170546; x=1772775346;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cPTGvYA/GKdj9wqcQAjT8fmJEQ+pcQdfunMA1ORun7I=;
        b=akk9aGIHM7YlgpRyaOHmgdfkMxUwt0fqEZgJM/Wcx3iOvIai9mjIz2ZeESrtC9zHfT
         59ADw4xV9h0F07MRqFaFgDQW7JiZg8j4RqyrJNxtJCMLr02O/6rJDCTYbba1gcSwJmCs
         JijLYklm5KGsfQ+RTmZAXMObQk0u/KNZSFzRgUE2tN0E7lARRw/7P9xL/p4GJ4TFrHdX
         MZwZXvh1I98PKhm2BDWLY6tnhTW2a5koHKfrEi7D9CmWBQpS7k5JO8pv6lDN1Mue9iiF
         lSoaJKkS4PKo+zsIYLpu+79vSRRMzZdYhJad1DXRrpAn3QeJORRmTm50XnEWjsZhyiH3
         c5Fw==
X-Gm-Message-State: AOJu0YxJqSHkwefUoYqfYT6HCza/2KWK2woXS47n7BDJMN07WL8C7Uu9
	89Cb/zhUm6HrkALTtPAwEq0ljypBbaZxP+yeirBRQG8t+RlxdxXfq6pC
X-Gm-Gg: ATEYQzzmqyj81nf9q5eeeyaRoOVSks69EtwI5fQKZhMkESJ5pNJKtGlPZK2SkwSvtBx
	LMe0pzjCVnA4bjloFXKV438fGFwaOPEBa40ARGxKydR+Pk73u1HBiA4sDImf9alH+cCewB9Ake8
	xROI49bJGABvtDc9FrGiIHkNVJtuXZXqduS1NykXLudwGZWmRoDWsw5wPX8c93G7MzTtOPYIl8S
	Nd8VWCv4cYo0ZlUxurza3++RGo9eLy42nz/PkhSRWo9+VA6OM1C2rE5txy3DGEZCeh/egZSGUy6
	+78hoCUgU+G4B2IGIP1d3DxP/PQlOAMRZERYa9zmS5NVE5eFYY8MfDk6soHvZxyFwIk4GGOgQav
	dhq59litgX9Q+GRNL/PBS9hiP10FL4A9ofD4vAJwwG+Amy0cgDyyr1Ik9MckFyhesqXtm9IXlSJ
	F+fmRGdFC1+g==
X-Received: by 2002:a05:6122:4219:b0:566:2fc9:6c89 with SMTP id 71dfb90a1353d-56aa0a890a1mr1063240e0c.10.1772170546147;
        Thu, 26 Feb 2026 21:35:46 -0800 (PST)
Received: from geday ([2804:7f2:800b:feb1::dead:c001])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a9204b91esm5028673e0c.11.2026.02.26.21.35.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 21:35:44 -0800 (PST)
Date: Fri, 27 Feb 2026 02:35:31 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Geraldo Nascimento <geraldogabriel@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/4] PCI: rockchip: 5.0 GT/s speed discouraged by Rockchip
Message-ID: <cover.1772169998.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_213548_308601_3298B02E 
X-CRM114-Status: GOOD (  10.46  )
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
of their PCIe core.

Drop all code related to 5.0 GT/s operational speed from this driver.

Endpoint Mode driver was not tested. There's a bit of redundancy in the
commit messages but it's the best I could do to ensure people will
actually understand why perfectly working code is being dropped.

---

Changes in v4:
- Incorporate suggestion by Bjorn and refined by Dragan to drop the
  "catastrophic" code
- Link to v3: https://lore.kernel.org/linux-rockchip/cover.1772057799.git.geraldogabriel@gmail.com/T/

Changes in v3:
- Clarify warning message even though Rockchip won't disclose details
- Drop DT changes as they were applied as subset by Heiko
- Link to v2: https://lore.kernel.org/all/cover.1763415705.git.geraldogabriel@gmail.com/T/

Changes in v2:
- hard limit to 2.5 GT/s, not just warn
- add Reported-by: and Reviewed-by: Dragan Simic
- remove redundant declaration of max-link-speed from helios64 dts
- fix Link: of helios64 patch
- simplify RC mode comment
- Link to v1: https://lore.kernel.org/all/aRhR79u5BPtRRFw3@geday/T/


---

Geraldo Nascimento (4):
  PCI: rockchip: drop 2.5 GT/s defines
  PCI: rockchip: drive at 2.5 GT/s only and error out other speeds
  PCI: rockchip-host: do not attempt 5.0 GT/s retraining
  PCI: rockchip-ep: do not attempt 5.0 GT/s retraining

 drivers/pci/controller/pcie-rockchip-ep.c   | 13 -------------
 drivers/pci/controller/pcie-rockchip-host.c | 20 --------------------
 drivers/pci/controller/pcie-rockchip.c      | 13 +++++--------
 drivers/pci/controller/pcie-rockchip.h      |  3 ---
 4 files changed, 5 insertions(+), 44 deletions(-)

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
