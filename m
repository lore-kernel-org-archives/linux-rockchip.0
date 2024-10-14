Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09991D16275
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Gt46GpEzyOw5vsDHgzbSB/QOuSLXsK3ZqZsh1b4ktPY=; b=BL0VAG6VGQgsvY
	HsunkLHkHp9WkF/87IpcLK/2iluz9l0flDsJEIgXum97ntKaTpnOk2UnArkYR4Vv4m243FDrrURrC
	dUQIAoJMvHPQupIsoVLqDeyXfbFfZ9TLPyo6LBe/UwYsqUuanXl85B72YQx5ZOV6FN9fsAaqZnCB7
	sJR/FEb76QxqDYjZTmNbWzPP/daVUgFGtxbUCbRwRW8l7fCoU7083C+HYE6e8lE1F/pTgGwHbimme
	BEe/IhaRVLGAnGfrzkb6z4Wcs1WqHo2oaz1TcY34q/zgkvjXa36fCoSHr0zZvQfD4AUoYo76tY26z
	QatB/QTOh2ICDRKbDrBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Ltj-00000005Rc1-23PM;
	Mon, 14 Oct 2024 14:18:11 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LUo-00000005MaT-1FL7;
	Mon, 14 Oct 2024 13:52:27 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-20caea61132so24674235ad.2;
        Mon, 14 Oct 2024 06:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728913945; x=1729518745; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4mEet+VxNwfbUuCPrGHnyzyOobmPKfSoDJ8KD89KQIo=;
        b=AEsXn8fMuh6G5gFGSR7w+BCbpWXc9eZV7bO5CEqnUgwwa/P2KXckCkx2ZGGyswbprN
         UxcwstSdJISMtsvAO9WdB3YQibelBLM5K4HUkHoCKzUKrQXOOKz5b7a+RHDWfr5B0u6l
         tI/W9wA5iUYsAu0qofX+xsODEx9s3pX5RIJfF4ASFBOcSqdMNJFNi4tbZnMYXcoJdn8t
         CEffGLNhTfp5oAp4yQWpity50vElT4e6mNn9lnZmWvgxFuHyD/Id/8IGFCeOOV4/i1lZ
         wNE51z7NeX0CQ4Cchtv4ay9dgTmFv+5N9ANfTXOuyUdcDX9jszgbUKXSECzaLUJg6saC
         XhlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728913945; x=1729518745;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4mEet+VxNwfbUuCPrGHnyzyOobmPKfSoDJ8KD89KQIo=;
        b=saHWHnti29UkCuVQzjfEdO3O2CP0+YJy65UDJdR4FTmjR1KLVe7HL+c6hbOPHx/At/
         NQrvg2peX5ONJkFQHJY4dDm/HaHPR1jPeOD/6HnL69Rt1xfTWwG0/07MKCLrHNvjMjVY
         f8UuKNT8A87dxHxH1t5QdRnwtoCV8E1kM0MslOJVAJ9PYYoMoiByL0eKqtsKLC088+vl
         s5ZM5mRuMmMbNXUjCZoOXt2kfnfLnMYM9IrKYpfLF2eBY5QVTmnJ18E8nkf276EfTkfo
         z6Vzl8VAfY6g8yiIBLVzPxO/xllmt8allArf19kROH/6HuapsFdSvqAgQB92QGig3AqX
         Rygw==
X-Forwarded-Encrypted: i=1; AJvYcCV6VRXVO++RDdPDBsMNhD3m4b5wKc4AGRtWZov6oqJ1LHVK7R9Jy4c2BJ/sYvv7Y4MnA/owCGVLseLKwTwu2E+n@lists.infradead.org, AJvYcCWGfjeKUEl8exaZ2FDqRw+sL+4AqY5caggNgaZIGWRmMssXE2FaHoLGjzyIMdtz7De+ABD5qPtJ6AFJXU6ml9U=@lists.infradead.org
X-Gm-Message-State: AOJu0YxsgueqDZnvEf6AKU6nlEz2hefx3SXQhQXqDz1fC0rDCyVttZdQ
	ADLSHEYlE46iojj1P8CBjzFqU1QdWfncMTyNbwF00qRfIXxfWS4R
X-Google-Smtp-Source: AGHT+IFSkC4chkVqozNqzmopyEX8/RuItKUwhS/QRqadp/zTqqldezvzhK0XtlNQSDIdQ+EpPjg3zQ==
X-Received: by 2002:a17:902:f68b:b0:20c:85db:fb6e with SMTP id d9443c01a7336-20cbb1a9689mr105050535ad.8.1728913945161;
        Mon, 14 Oct 2024 06:52:25 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8c0e74d6sm66469135ad.166.2024.10.14.06.52.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 06:52:24 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-pci@vger.kernel.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-rockchip@lists.infradead.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v8 0/3] PCIe RK3399 clock and reset using new helper functions
Date: Mon, 14 Oct 2024 19:22:01 +0530
Message-ID: <20241014135210.224913-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_065226_360278_5E47744F 
X-CRM114-Status: UNSURE (   9.59  )
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

Following changes are used to reduce the code and used new
clk_bulk and reset_control_bulk helper functions.

Additional to the PCie core controller changes
added some new PHY changes to help improve and clean up
the code.

Made lots of silly mistakes, will try to improve in the futuree.

Thanks
-Anand

Previous changes.
v7: 
https://lore.kernel.org/all/20241012050611.1908-2-linux.amoon@gmail.com/
v6:
https://lore.kernel.org/r/20241006182445.3713-2-linux.amoon@gmail.com/
v5:
https://lore.kernel.org/all/20240901183221.240361-2-linux.amoon@gmail.com/
V4:
 https://lore.kernel.org/all/20240625104039.48311-1-linux.amoon@gmail.com/
V3:
 https://lore.kernel.org/all/20240622061845.3678-1-linux.amoon@gmail.com/
V2:
 https://lore.kernel.org/all/20240621064426.282048-1-linux.amoon@gmail.com/
V1:
 https://lore.kernel.org/all/20240618164133.223194-2-linux.amoon@gmail.com/


Anand Moon (3):
  PCI: rockchip: Simplify clock handling by using clk_bulk*() function
  PCI: rockchip: Simplify reset control handling by using
    reset_control_bulk*() function
  PCI: rockchip: Refactor rockchip_pcie_disable_clocks() function
    signature

 drivers/pci/controller/pcie-rockchip.c | 223 +++++--------------------
 drivers/pci/controller/pcie-rockchip.h |  35 ++--
 2 files changed, 61 insertions(+), 197 deletions(-)


base-commit: 6485cf5ea253d40d507cd71253c9568c5470cd27
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
