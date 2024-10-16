Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0D7CD1AD4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 11:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jHBBor6gj4sRfCXvOVw00kt2w0yCDxsMqiIK8iXumcw=; b=3Cc6Cvl3m6S+f2
	7/9+cFuqqDaSNQAfOBiZj0fhf0DPfnUm1ue+z93DmZa4tzXhoYE6IIgFnsPpl7bc0LGGBDQm3m1OT
	nGqrwA836sjlxod/AVciKKGCbv2EsE+3ptm4GhhJ1nJ0v0NtduRbVHVNfT5ubfwygEz+dc8t9lY6R
	ftaMXJzVH6BQLzUessZHLmUi9YKIezxonPFJM3lj+QUcYlc/crfPavmgkmROT8FiOZAB8nddvR5uN
	KWSiF0sQXEXFgRzvLMdjoRBJaNYOAVv28xEqJWDxepwFrdwAFK+Lz07riIewytaMNVwzZnydQnm9j
	NhK7sdVQm8Oc3QkV6o1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t12X1-0000000BdDw-1tDT;
	Wed, 16 Oct 2024 11:49:35 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t12Wz-0000000BdDP-0GT1;
	Wed, 16 Oct 2024 11:49:34 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-71e49ef3b2bso3502073b3a.2;
        Wed, 16 Oct 2024 04:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729079372; x=1729684172; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XoHceDBudDz489rFANtT/AfU8aVX2UfU/aIyhTbro9Y=;
        b=Z/qRcoAZrkfMx+W6Wx/NkSptvH6BTUSMehZnrR/o3pe6uF1+ydJHFb/YOM+uOREHqu
         Pra3OaFHFjBnMKWQmdGPyGJHpb9TYug2jARuL3cF1OZmPaptAXLSseE1Gb2K/ljJLVjS
         HLQn6obDLWs94XiEVIT4CScnjIShMwgxx7LH+ilsaCmdZt7U+IsBAOt7720Twe4pvYhD
         /XQcYAUHC5uXTNRWE1kd29VgJTrm3zUyh5KPk+S90uqRbeIluoL/0+pxSxz0AAuiR3VJ
         yhLms6e3Uh1YIVBaY17VPC9hBmYRZuljEatSr9J8BwSw55FpHsoSxS6OI5JDpOFy5jGF
         SwmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729079372; x=1729684172;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XoHceDBudDz489rFANtT/AfU8aVX2UfU/aIyhTbro9Y=;
        b=itDpE3LfWbLCjZWun5UzEC/l/J0y6fr60D+zGzcpbNuNw5nRXgFkr3S5Fdt5OtIGHD
         Ov6Myql58G9BuXupnAEVqo/EzooZhMcBaJyU/fw231U8xdQeXt23uZ3IkeN+f1gExDET
         gWHXug7ZzalhSOxRy3ALybG1ZYQiSStiOoLRYVu6fWqjeUHXZEAN3oggrEsfN4KKn1bG
         jAyAB9YbBxfAH+ibRp8umTL61x32Mvoy06YnbiGGM1uObhEqylj+6BsgTIogM6cWaAx1
         jh3zBgs4VUvVchqktBcTpkjP8Ns19BlyQHUlSyDGQQIQSLMRYxi+eJlADHi563fP+wpX
         fvNw==
X-Forwarded-Encrypted: i=1; AJvYcCVZaN/JHumJ/s989PKVJlgEu8C5w3Tj7Y9vnq0NLn/E2c40BNzMrnRifnvCKnmOWocEhwQSyTBTRNt7VMkC/RM=@lists.infradead.org, AJvYcCVa0CCLUyPax4u0fFz+vNmkIKQOJV/5nz8QleEbcVuLzB1mupVm/F7jGecu9Z5tOgYRrgpNLr/FrFIcvGRX3h0O@lists.infradead.org
X-Gm-Message-State: AOJu0Ywq5hqRjDPej587f9lWRUSv+D9zis4xBBImlMgRo0FmfO6dCD6D
	w333jvnoGcfnfctTn51ayc/tg8XzfVBb/EzbottMGO4VW8qbiD63UQb2jw==
X-Google-Smtp-Source: AGHT+IGnOE1PkuJ43LcTPjeXi2C2x9LNLJ7CXghQEGyH3H8ugrmPXFYmzovWXocaLxC2O3Rw0JOsQQ==
X-Received: by 2002:a05:6a00:3e25:b0:71e:6489:d06 with SMTP id d2e1a72fcca58-71e6489127amr15417757b3a.0.1729079371988;
        Wed, 16 Oct 2024 04:49:31 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e773ea9f2sm2968702b3a.95.2024.10.16.04.49.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 04:49:31 -0700 (PDT)
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
Subject: [PATCH v9 0/3] PCIe RK3399 clock and reset using new helper functions
Date: Wed, 16 Oct 2024 17:19:05 +0530
Message-ID: <20241016114915.2823-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_044933_123487_4B7870BB 
X-CRM114-Status: UNSURE (   9.72  )
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
clk_bulk()* API d reset_control_bulk()* API helper functions.

Additional to the PCie core controller changes
added some new PHY changes to help improve and clean up
the code.

Made lots of silly mistakes, will try to improve in the future.

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

*** BLURB HERE ***

Anand Moon (3):
  PCI: rockchip: Simplify clock handling by using clk_bulk*() function
  PCI: rockchip: Simplify reset control handling by using
    reset_control_bulk*() function
  PCI: rockchip: Refactor rockchip_pcie_disable_clocks() function
    signature

 drivers/pci/controller/pcie-rockchip.c | 222 +++++--------------------
 drivers/pci/controller/pcie-rockchip.h |  35 ++--
 2 files changed, 60 insertions(+), 197 deletions(-)


base-commit: 2f87d0916ce0d2925cedbc9e8f5d6291ba2ac7b2
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
