Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47351C2BBCA
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jun 2024 15:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zh6Q2qVrzwxz0ypyRjTzoCzmfXvbnBbmuAcjMTDAhhI=; b=slpcuDuLYkavcd
	hxcNMCC7Iqu9oqmgUuWabeg65+6OmT9C0JyEHslypyGXeKMcbEa4sh3mwgTlxdGHWuylZWeDtaCQ0
	Azv7FxIjtt1/NDypQyyYwEvfo5nSYByDOf5yNCEVcCQkB3bsvx5YJ3wLBKY4BADabEMJZvtRT6Gdu
	DqkXPw/+AIRT19bfXvmSc3P/05ZCCszRYlAzAWuhpmirRRPkLmVxTpSJvBHYXS0s52QvfXTq4h2qu
	vd5Z+dCETtioaN7fZlJzkWfRDXVwlsRalOXWHy3G/aAWROspLAqKUaWELyizhlstzzoHOuUyOSL33
	+81ilC35POFe8M/xTHFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM8Z5-00000003cRL-41ad;
	Tue, 25 Jun 2024 15:58:39 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM8Yz-00000003cQH-26ni;
	Tue, 25 Jun 2024 15:58:35 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-70666aceb5bso2660173b3a.1;
        Tue, 25 Jun 2024 08:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719331112; x=1719935912; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yH1SDsCg1psfY+W0H6ncXncvNAWFOnKRkrHx7IAe3WE=;
        b=VlL7kxFSNtNcicNwIvAZgI+oJkqNGzkHDkIht3dJGIPn+T3kQk3pYcCy+aF0KTEztC
         IOTcycdWYo/PJAXkBsx25f0wrySF0Nr9aXpwjfy6GrNvQe5npgOUHzdtTXDQKoIHYi3O
         08DwzFR+qKCtizfTOYEubv886d7baDeg4uhB5EYaQgfadvMSRJQ5UOsGwVs+Mr6LT9Bm
         D/e+PMkPs8fP0A868k+AUTJMOGSKFJLhpqo7NtcYAHVUKHVpyJwuJmsssIWjmscmdRWO
         tYxild1YLbIet9nZ8pyLLFkgIQcCWCzU6I+ZZpy+0Q6yyjBkiDCG0aUxu9+Sfr5DcoXW
         2lPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719331112; x=1719935912;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yH1SDsCg1psfY+W0H6ncXncvNAWFOnKRkrHx7IAe3WE=;
        b=AwC+JWp+qshaW74ES2VUESmbDbwax3J72GhdVGXtbXovu3G51rcNhOqSZZ6a8tNZH3
         EoKr6vy9UFt0HsN8/l+fQCmGSMLNX/EpTtTWw9vJ5AZ4DQtYy7v9Fccd/4sorfYlU9bW
         vL2sUbGY2tv7ljIEtX3ak7Eof5rryoAxI5XSRHdz6suxGOvbl290trdDf61W7DayH5wE
         4WWTjV5SslAEM3lk8TAPz4IGhR1zCsWJLFoBU4TF3nH/Th3wk4qnjCBOaYbK+okRj8km
         snvX3wAQHdeK6w+ISng63xZAaAtzRkYDoGTkjWK01IVm35u5S95/dNW5MITWePigaGhc
         fkSg==
X-Forwarded-Encrypted: i=1; AJvYcCUCkuY4VJmYkssez8pcnJ8n8dePr/6hXZ1SxW4fN1CAR4+OILNN44B0vaoTe5hQWi63fEonOg7pz0hITlJMvgFsEUcZBsG/DyGS5zoXbt7ENqRRPnHW0yj/X444qaqkzukDZnFezKZc5Gwnv2h6yqyDphJj8ypkTAk=
X-Gm-Message-State: AOJu0YzfrmCvV+9Rx25cIhD5K2UG4TaP/yly92BVsSxTW6fE1uDGiu2D
	tpl91SVE+jqOjuNfuuvShoIgVAuxC9kQyE9PJcwajwIdWbMdtWOdGJPGUw==
X-Google-Smtp-Source: AGHT+IFY92BQm2/8LPYgNao0SuWV2SSZWQnXK45U4AdqDwkENeC0I4zcWtMLWiakpYKl/XZktO4vlw==
X-Received: by 2002:a05:6a21:2712:b0:1b4:6f79:e146 with SMTP id adf61e73a8af0-1bcf7e7ee7cmr7827640637.17.1719331112239;
        Tue, 25 Jun 2024 08:58:32 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c819dbb963sm8872368a91.41.2024.06.25.08.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 08:58:31 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH linu-next v1] PCI: dw-rockchip: Enable async probe by default
Date: Tue, 25 Jun 2024 21:27:57 +0530
Message-ID: <20240625155759.132878-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240625_085834_038084_3DB33392 
X-CRM114-Status: GOOD (  12.38  )
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

Rockchip PCIe driver lets waits for the combo PHY link like PCIe 3.0,
PCIe 2.0 and SATA 3.0 controller to be up during the probe this
consumes several milliseconds during boot.

Establishing a PCIe link can take a while; allow asynchronous probing so
that link establishment can happen in the background while other devices
are being probed.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 61b1acba7182..74a3e9d172a0 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -367,6 +367,7 @@ static struct platform_driver rockchip_pcie_driver = {
 		.name	= "rockchip-dw-pcie",
 		.of_match_table = rockchip_pcie_of_match,
 		.suppress_bind_attrs = true,
+		.probe_type = PROBE_PREFER_ASYNCHRONOUS,
 	},
 	.probe = rockchip_pcie_probe,
 };
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
