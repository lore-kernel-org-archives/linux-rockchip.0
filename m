Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45663CEBF61
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 18:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LZz6Ah4xlOXNdYj4umx/DU/CC09eJkTdBZWs0HB2YmQ=; b=3RNpO/sBvvtmk9
	+nZMmJU1T25Kjej1ezaq0RHz1T6kWHopk+TfyvNNQ+aHp5YbffYJqZH3zb/TW86RYYFiMriMaxv4P
	cF8MPucyKISzHL1Bbhs4FlymeHmfBga53d44+3Ps92xzlA3xjhsN9G9y4z8+B0QaRYTt4obw5k6HG
	GJ8r0YkCuO8EoaZIaoOBnhTUa3KGtQLBOMZwPC6lYOEum9dcywOhmw8hLFJeqEJMeLcW8V8hUQXUr
	bjUZ05X4JxFj098hvokZ4BntlWJDXZo2nxE8bnALCFilZ4qjJvfEMmiWphC+Ypknvl4lsPvj4c0Wy
	CW+nF5Ky2U8DUPB5b+Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL3gR-0000000Gai9-03Io;
	Mon, 17 Nov 2025 18:10:35 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL3gN-0000000GahB-2mMP
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Nov 2025 18:10:33 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-2956d816c10so48605765ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Nov 2025 10:10:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763403030; x=1764007830; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bAkL1Z1gQqOYv9fn52lDehmUngUxGCXsulPI0imzeMs=;
        b=lALcw2PBYeWR/OD4I6mo0lA7f9u5u/Slcu0cnF1V2j4LcccX+XZDjVSW3OxdRqsOWz
         iDR69tjwiey37Fmif5MrSb6SImu4+TCtnRnpesmqJdi67tYaoUDRuNw8N16VO3EM8/q2
         J4IXyYKgc/iHY13ZrjDrT82VyXLpkDGlp1g5hURjo/FVuePTfyQrviPuufUaBFQua/2B
         8E5Lqitvoq5mIyctLx0ozC5SPRc8W/b2T2aMDqAOwHdKMzYc9LxiysN7vCdt63mWIcZ0
         LgZIv2rx630uDTX7bKKvHXzz7s3q+0NFkmVv4NZAeaDvNRKlJjs2yTO8/Am2++24VVcd
         YOeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763403030; x=1764007830;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bAkL1Z1gQqOYv9fn52lDehmUngUxGCXsulPI0imzeMs=;
        b=kmpgtkB2qRe5ZdJ4wc+HNni7qR9uCVy91SNjHvPACMtaj23tr0hWAH1SIaBlN25Aqm
         JKsV20UWuiY5Biqbzgy1AthSGQTqrkmMido73Y9CPvu8G7nEoj8H62GZZ9bzUnr9dfj6
         17o2ZIa0BtJyevtPGyA+2137KRN7DlTuqAJnl5Y+mXdM66rhDldvWd6ACvs7iKwtUTAT
         wPx2/vEAAZVImwJFKyTpXEfE8FthWs6Ft8vX0Fl6aqnp8dNxsC1Ut7iXMEcaVO7/2kki
         qLRFV+oPGxafm4HC7MQMyi+Wt/xS7BB0EeATYOK8rsBh8YdbEzYWKBXFMUt/lMZ1vEFM
         M4uw==
X-Forwarded-Encrypted: i=1; AJvYcCWZObGfNy85D62OQhDQGwS8D+ZqXncsQM1QkBWw4agqJRqUFw952bbB0v6efpKJlGrcF2AEm+qz8XEONIbV2A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8Rf9ouFh3XYxK9r9QO+kfNwnm+mA+jqSO6LUpmvYt3Va8kFg0
	wW/r1mcX/9s2NKuI6rsLWoSXubQE0xAMUGZDwaKFiuwon1k/wWc7ygtI
X-Gm-Gg: ASbGncsJdvAqy/qSAeJ0nTNhcgsbuLs4xmUeBLJHzQxHvNjpd59tfW+A5tBd6ulvdJp
	k8soZ5vKI7Lc3O4o0EuKmVPtWGe7ZG2e9r1rwbDl7PZ2wlkDT0wqmODlmoTr+cZ68pTam4bMBQh
	npIRre3mtPFOswVshhbcX5TuscwCSBPKbD9/J2sWY2nIRhi+UG47iBctEWxo4+DYJegoldWd12z
	vdUefDfWEGE9rvRyO0ArC17x9bV6lp8SnzJDuNMjr6DQO5OjzHx/5g1iuVMFukmtjiHvupBTQ1V
	XdwjTWVhmnOlUjr+q68GSgHM7lrGB+qTWTvvYDDl/e50VCGmbZ2Vh2k23E9G0mS/pD0cRspThMT
	ZBvi7Qhdua9HQG9lAgQh9LGGgGo5l74okeD6ZWoKQD18YMbREATBSzFK86laBvBIW1ZoKHFkOSw
	LG7YzWjVtg+lIbOp6WHWqFreTr6GthMQ==
X-Google-Smtp-Source: AGHT+IGmunqrQlVpfahUUkxZIBVj+bc+HmF1/RslcMS43E5s/13BnptrYkrUhKGL+v/DRdjNaQZxAQ==
X-Received: by 2002:a17:902:f641:b0:295:5625:7e41 with SMTP id d9443c01a7336-2986a6ec9c1mr175237865ad.22.1763403030526;
        Mon, 17 Nov 2025 10:10:30 -0800 (PST)
Received: from rockpi-5b ([45.112.0.172])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c245ecdsm147237955ad.32.2025.11.17.10.10.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 10:10:29 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-rockchip@lists.infradead.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [RFC v1 0/5] Fix some register offset as per RK3399 TRM part 2
Date: Mon, 17 Nov 2025 23:40:08 +0530
Message-ID: <20251117181023.482138-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_101031_702388_F5331ED5 
X-CRM114-Status: UNSURE (   7.86  )
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

In order to enable ASPM we need to fix the register offset as
RK3399 TRM part 2 - PCIe Controller.

Tested on Radxa Rock Pi 4b.

Thanks
-Anand

Anand Moon (5):
  PCI: rockchip: Fix Link Control register offset and enable ASPM/CLKREQ
  PCI: rockchip: Fix Device Control register offset for Max payload size
  PCI: rockchip: Fix Slot Capability Register offset for slot power
    limit
  PCI: rockchip: Fix Link Control and Status Register 2 for target link
    speed
  PCI: rockchip: Fix Linkwidth Control Register offset for Retrain Link

 drivers/pci/controller/pcie-rockchip-host.c | 31 +++++++++++----------
 drivers/pci/controller/pcie-rockchip.h      |  5 ++++
 2 files changed, 21 insertions(+), 15 deletions(-)


base-commit: e7c375b181600caf135cfd03eadbc45eb530f2cb
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
