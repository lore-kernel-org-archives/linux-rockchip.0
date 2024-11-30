Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1ABCD735F8
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Nov 2024 10:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gnriQNlIZJB/9JNsHr0nU4NgkhjLAN7waFlJTv+S5qs=; b=UFuWexGy0XHDjU
	lKD71t4bR6Q1N/TUs9WxrvTejkpKsSKOXsjmoX8BrGqOqhWuAWr5oZ/jcSI27yUPP0vpNOmMZ+p88
	cLxMqNj94um2se3Nkh2JFtWibkP5pjp5l3VejvSAhgJX4PKM6mGb90KIyPhiXkbWQqxkYltkXPEux
	DJDDY3PBZ/I8iGFbS3EsEBspqcz7AiAqZRVP81omRjBmxkTBmIrQTq7hypd5EPhBjU1uTnxZjfXE6
	faTvxwz6BIv0zz7BWUt3L0QArTWcqwxSklAPR6x+wbMa3lgSJG/cjScBLtIYlJWggJwM16F3gBHvf
	sV25eOH6pwjMQ8HkSTow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHKHy-00000001mk0-1DCe;
	Sat, 30 Nov 2024 10:01:22 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHKHv-00000001mhG-0QaT
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Nov 2024 10:01:20 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5d0bdeb0374so1127991a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 30 Nov 2024 02:01:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732960877; x=1733565677; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aK0dV1gfejvgX5AVRAv0AO9jA2ssYUcI54wSBwP2RLM=;
        b=cYSVwL5jIkC8i/Y4jU956YM0nI7w+uepV4Y57G480YioY87pC29hdhq/Z0hYFE3VPe
         ovi1FymSpBBKZroccMPisC346aaCv5raEL7XYpw+HUuge4SOoX7c3AezBnZKK4EJLJDA
         ttH4hXWM7KYkmWfbHwOl0sT7EyXgoFv5Udj+M6VxtbrA40NyZpKVmtE30SwaHiGSxmhg
         p4J9KEP3jBRoj6miLhxRAGHEPgx48dm7jb88iWMk7QlUtFwRrkEuojW7f+zDrecdf5tY
         3SsUtr9th6NKeB8zRUtEDA6t3PEHx1NlChWyedPi6Y4XMGwJ2GOIF1ToliseztyBqIvL
         QPPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732960877; x=1733565677;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aK0dV1gfejvgX5AVRAv0AO9jA2ssYUcI54wSBwP2RLM=;
        b=K8B4Vx9BqphXaONu729EfVCAaLYGj5MkA2fYguIMCalQ1c/681/moOpwh5KP24hTWn
         bM/qdZvDW1Pj9fYUEkbvQZPtbayYxMD1SgLnFZPnzGZjOkf1LD7cQktOZ1Dd1qKBW6BL
         iAILYwFVvOdbX7HfUvUo+/aLLPjOcl8Kfw7qbXdmIIstKmep2iYW7O2mnJ/kzKjtgdxu
         /WssgmDaDFPnScrGPOMcVunKD8r6D0ger2OTS9ts4DIFR+t4n2OPWHfadI7Kl3kSchrI
         vKMLXo0296Wohcb23jgSM36oFgz8HB/HsDs7yEuVImmdJz/UB9wzZo/TcjYOFYwoE9tg
         WTQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHeKu0MPFnwQdS09jHwKLh733XpscXYDyPiAX5tS758lYXWfc/TdBpfvYqJ2gMpgBP+HkI+kYv0GYiexGFJA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyrSwHD1fksSuOHOwFjbsbl1ezGXwUje8C6fLpnuGYdkwynp6uR
	suxu8pbMedvu1S3B8oAXYGyPw7GR9ZQpDfDSIh+GFDIa8fJv2/HoT9UhLM80a9M=
X-Gm-Gg: ASbGncs4GGGUkKu/OEmZNuP1m2xTVPCNShlxKb84oCcqewky1IML1CweFtfEfyBPJM2
	P3+5QavPcsORxQaNdnjeu8ZBDeMY3m+hO8KLmkUUd2VIvKRb5rrsY/bIC1bTKUXn8UWfseJmKdV
	XQjJA/uJOLqQh9cMWMpZtd/ru3DO3kxqD5l+TfKUo6Z5zKmTk+IkJAyAQ7ZzuXxAsxOvz/Ruwo9
	VfsgurkmfoQZbpiVsjk2Q3zwLs7JUP1rI9oifm9kd/elQlQzCmv/Kqj2xvFl0LZiPN2n+PB
X-Google-Smtp-Source: AGHT+IEtv6gd869K+dRtqKZE6OGZWNVbaOzagbrsUDx5xx6VOeUmeXvzJOk8eFEsMgnWDlwVcluldw==
X-Received: by 2002:a05:6402:2116:b0:5cf:e3cf:38af with SMTP id 4fb4d7f45d1cf-5d080b8d46fmr14459310a12.2.1732960876730;
        Sat, 30 Nov 2024 02:01:16 -0800 (PST)
Received: from localhost (h1109.n1.ips.mtn.co.ug. [41.210.145.9])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d097d9f5fdsm2670060a12.15.2024.11.30.02.01.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Nov 2024 02:01:16 -0800 (PST)
Date: Sat, 30 Nov 2024 13:01:12 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org
Subject: [PATCH next] PCI: rockchip-ep: Fix error code in
 rockchip_pcie_ep_init_ob_mem()
Message-ID: <8b0fefdf-0e5b-42bb-b1ee-ccdddd13856d@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241130_020119_137847_62C92942 
X-CRM114-Status: UNSURE (   9.86  )
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

Return -ENOMEM if pci_epc_mem_alloc_addr() fails.  Don't return success.

Fixes: c35a85126116 ("PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() memory allocations")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 1064b7b06cef..34162ca14093 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -784,6 +784,7 @@ static int rockchip_pcie_ep_init_ob_mem(struct rockchip_pcie_ep *ep)
 						  SZ_1M);
 	if (!ep->irq_cpu_addr) {
 		dev_err(dev, "failed to reserve memory space for MSI\n");
+		err = -ENOMEM;
 		goto err_epc_mem_exit;
 	}
 
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
