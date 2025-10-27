Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A578CCF9E5
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 14:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XIlwYf3DbI/iFqixR7vmS7qkX2LxxEYNzKQu9turvPA=; b=vcD9L1RLZ5UI3q
	6XOHCj6sJmFCpm/UilSsydxLd0pLpkT4etxRLMwgKinEbxM+xv9xusQFDQG3VPu+95cTAE6EOC8Om
	wlZREK5Sq0TdOhJDClDOBc9qhLArDHvvJ89kwZ86aHmcSI+vEBG06vSjXQPZAJxXtBD+RzzyLW5k/
	3MwU7SH56DW3bx7PI7mvaleI8lTYJOvnNScsHTlXMa+1skiMCzpZhKCQq5r069wiYrW020MrIqmTV
	d1CcuwnpxtmiNn+HS83ruUWruKePD3WbujnIyAxLNK5nb6B1ttaOBvZsL1HJtlyn2c9kRU3v61VIn
	qfNucTwmyFohHGc7/hQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDOdp-0000000EAQd-35vR;
	Mon, 27 Oct 2025 14:56:13 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDOdn-0000000EAPY-0Ei0
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 14:56:12 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-7a435a3fc57so928536b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Oct 2025 07:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761576970; x=1762181770; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8yVMi7V8qTRELGGfV+IcZ9w9BuBp+eY7s7IocvDD4Ig=;
        b=beCaQl02IcgWGtuC+xiTucKlHKQKgHifhHXLpg/b/ihg50//oHmJUS+TY6a+vqxhE/
         ejoDvwDUWdJTtXJKbwZOWVh6CceHgRCrGBe7vmdV/9RYKQWccgXSQjlxqQlkjKklM8Hy
         xJXOZY9mYp7QTxv3lnkDgP/uXUNkK9FxQ82FbkCALZEYaeTdZCGCnMhgzhvBSxzMZIRv
         h9J8emL8ZHabYxS0F4KK2GOJc+1uMAaOKJN/PPzSSMlG69/vi0eYN4e0FkWzxu1m0HB3
         7nEtIJ5f03bjMGlM/+MHu/k8cz3iy96DRJnnOJI/7Oa/YVlzt6TWf7yEw4c+j5OaV60V
         3kfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761576970; x=1762181770;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8yVMi7V8qTRELGGfV+IcZ9w9BuBp+eY7s7IocvDD4Ig=;
        b=IFwx5QHsYXMH5XkTbE1xhrvR/fXpck+UfThNBtH5YLlV3bh1kuAw6ea53Ed0ReLyTB
         +1rRiis55nVrTnj80pHtg1RtZPPWIeyr2GzjhlExqymk2iQdQVWoe/dVHyAyES+6ItW3
         zVXyvytFR/tPI9QoW5SLnAV8jTjoo31IvvoCJ7LxgQ3T0k9yy0+1smcTLBXYdNn0XEDU
         rM2NWfAtLqTYtqHIYODpvaVm3VrbxkGpbQeLs9kPqV8VHNyIpa35BSmTp1A0UNmVMjom
         fK63RijW9MrykZHrR2FJ51sEY/FOYFtsEFqqqWLDKzzuzhitmUnRIsLbQpxy/+NT7zLu
         cDyg==
X-Forwarded-Encrypted: i=1; AJvYcCXztJHYb8hjFqPytWVgrNsVE83i6eBy3VN8g2rhKr4Cy6QzdMT4Pq9z7EsqkZZd3FQrjulcjxkNUWGm9SkR4A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzJRhT90GJKMYdp/AZ85Pb/yD/gJs0+9hHdgh7jFYd++lfh28bW
	sLqfsOaItxWLXhfO8hSc8CMELNQtZlF6yyj3A5krpiYsbf729/DssmW3
X-Gm-Gg: ASbGncuLwEJT5EOD+8lPfjeveYKlmR4xM31FyDHTu5tMX3pMsW3rdvwJ1EpYwOPiy4+
	TQDK4d9n9AJgsRj7GqZIvSqmwV96G/jAcsOZtm4iIWkFD8qoeVhroYqbAUouwkEHKiNc2/Aiae/
	agyFK78S3eXskvxnpNJn4v3mY/JKX9pQTixtJ8/baAx7uUeMR/XNhru/v0qRymopYErxwnGxok8
	kAkls+siwuDsXf8wnRmYUxcm4bCipXmi1oRPrLf8bcAOy9SF86/9CQ41w56ZITNtpWriBHhGcg0
	GhlE6CvHnZ75s9R6MBO3W6lgllGNwu7bxokZDRo5KdA9ufKvVU61wEVRNumgs/HJbt+XbInhTyr
	d8avhtRn66z5Yp0IGv/LYPexuVPml84+/4WrZT7gM+ZN1G0Zn7CzqZWMwVOxpXXXbfkCmZDTDkc
	b/8FoL3sxAhV6hCLabfIM=
X-Google-Smtp-Source: AGHT+IFNNRsqOAD0ej4MkP02YIZHAarj1O7wDlGaz+jF0eTKJU0nb26xxgTWECACFe3NIf0baZUBNA==
X-Received: by 2002:a05:6a00:c86:b0:77f:324a:6037 with SMTP id d2e1a72fcca58-7a441b7aa11mr318696b3a.7.1761576970098;
        Mon, 27 Oct 2025 07:56:10 -0700 (PDT)
Received: from rockpi-5b ([45.112.0.108])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414012b19sm8373372b3a.12.2025.10.27.07.56.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 07:56:09 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Niklas Cassel <cassel@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Hans Zhang <18255117159@163.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	linux-pci@vger.kernel.org (open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v1 0/2] Add runtime PM support to Rockchip DW PCIe driver
Date: Mon, 27 Oct 2025 20:25:28 +0530
Message-ID: <20251027145602.199154-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_075611_122221_25A2DA5C 
X-CRM114-Status: UNSURE (   9.05  )
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

Introduce runtime power management support in the Rockchip DesignWare PCIe
controller driver.  These changes allow the PCIe controller to suspend and
resume dynamically, improving power efficiency on supported platforms.

Can Patch 1 can be backpoted to stable? It helps clean shutdown of PCIe.

Clarification: the series is based on

git://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git
branch : controller/dw-rockchip

Thanks
-Anand

Anand Moon (2):
  PCI: dw-rockchip: Add remove callback for resource cleanup
  PCI: dw-rockchip: Add runtime PM support to Rockchip PCIe driver

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)


base-commit: 7ad31f88429369ada44710176e176256a2812c3f
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
