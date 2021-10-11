Return-Path: <SRS0=/BIn=O7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE74CC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Oct 2021 18:04:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9857E60E94
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Oct 2021 18:04:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9857E60E94
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=up8VaZteGlZzSkxAJt9yzMUt20Z5n2xCJxYAq/j0Cw8=; b=4KhFOj5EjiaVWy
	U2NE738gf83n/fD7EV0upKvn01WBKOqg9nPItWtgp+0vlaX8a5tG7UjYCs5t+BtumutKou2hDKq+a
	SDFFnaVT65nZhj7g5ZI9ryAHpNfqr34+t86mNwSGUujlQBod76PKww6LyL5BfRxIymA9ZD7rGGWTL
	grOD5p1WJUgc3VtWaivKInu5fXf1ul80FlYH5jj+ghp4pTtXj4LHunKg5oKXk6lhRdF19sttSRDky
	TzrHvOsESp/6Ct+Ld6wNuZuIskmLNVRGx1rwnyxI3mnI0gpGgMzSsqbIoIOELZcEYuJQmgGsiN4SF
	dAni7o9sj7GAwSt2werQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZzeY-00AKa1-JX; Mon, 11 Oct 2021 18:03:58 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZzeV-00AKY9-Cb; Mon, 11 Oct 2021 18:03:56 +0000
Received: by mail-pg1-x533.google.com with SMTP id s11so11513558pgr.11;
 Mon, 11 Oct 2021 11:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uTfOlYjXNBEAayJpHetBNlZe2ZqNE3iJj+P39moFg1o=;
 b=CSXN0d+RX5gVlA5Q6T781+097P6ScH10C+hQduS/VAIjDhz85Wkn5oq4rZtV4nfhI/
 nA7yRKHyjET+4LZoq5kDrIEZ14S24AaOC39nfFj3G85zXmqKjmUJ6aAnSvDgQjdjcdvr
 TW8t0fDtHViTExg8YHlvXF11jbrY/+JdLD5lc9Ohb/4RTZRB7fP9d7sANa0PcJH7gIDj
 k6iXlH7fyyhtKawMwvJoCpo4EvBqo6VJLX3bs8kjrC3GXmUW17j3xgcT4miUwKa5AED5
 39GsmDT6IeglFJIKalOSnZqiu6V5/ZV+dYoVHjRwmgtFIRAKg0D9AAh0S3V5MF37cCmb
 HcOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uTfOlYjXNBEAayJpHetBNlZe2ZqNE3iJj+P39moFg1o=;
 b=E5DkxUiXDxYIQX4MdsmUD5g591IILJWIEKCpWzdVAidOwuH6wzm81aYhyuOd5+7huF
 PMSAHKmuvwF2fOzBoWzGnfJDXoCses5Q74HtRY83a41NVfN5ejzOa4P+VRGrODxGigMn
 fTetbw6Bk1WVOd6+Aunz/JCJsMDn97nLPakh68V/0xlW9kn2eAjNO+xjPc/ZSLv3Sohu
 ULhk00Qa5vaxBwuv+c4Zyf+RP/5MNydz+eK+yQyBDoTmDSuEkG3WkPZ7qkGSA6iZZm9+
 hkGIeyEZSKg6XwvUJg9j12XSMLaZ77rZsqV5TMxbSuTSUqWp44ZcGd9ooiKK/2JecTJV
 akYg==
X-Gm-Message-State: AOAM532ojYfk2DRX6DLbUPzKUgkVity0BOLcPQLvLVR1O5K1QJ2mDI/C
 F0mUaAgTk0rAsKVqfGqTYJY=
X-Google-Smtp-Source: ABdhPJzrxXUDNFUyE8esyCGa95IxW6Gzh2r6gzWoHQySw7x7LypeFURbzQqutuscxuzTnY38/3GUSw==
X-Received: by 2002:a62:6206:0:b0:44c:bc1f:aa5a with SMTP id
 w6-20020a626206000000b0044cbc1faa5amr26730462pfb.5.1633975430947; 
 Mon, 11 Oct 2021 11:03:50 -0700 (PDT)
Received: from localhost.localdomain ([2406:7400:63:9f95:848b:7cc8:d852:ad42])
 by smtp.gmail.com with ESMTPSA id
 d12sm8711637pgf.19.2021.10.11.11.03.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Oct 2021 11:03:50 -0700 (PDT)
From: Naveen Naidu <naveennaidu479@gmail.com>
To: bhelgaas@google.com
Cc: Naveen Naidu <naveennaidu479@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org (open list:PCIE DRIVER FOR ROCKCHIP),
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support)
Subject: [PATCH 13/22] PCI: rockchip: Use SET_PCI_ERROR_RESPONSE() when device
 not found
Date: Mon, 11 Oct 2021 23:32:57 +0530
Message-Id: <11cbd327beeed70c6db69aad4eeafe28ade4ecb3.1633972263.git.naveennaidu479@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1633972263.git.naveennaidu479@gmail.com>
References: <cover.1633972263.git.naveennaidu479@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_110355_450984_1CF42BD4 
X-CRM114-Status: GOOD (  13.62  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

An MMIO read from a PCI device that doesn't exist or doesn't respond
causes a PCI error.  There's no real data to return to satisfy the
CPU read, so most hardware fabricates ~0 data.

Use SET_PCI_ERROR_RESPONSE() to set the error response, when a faulty
read occurs.

This helps unify PCI error response checking and make error check
consistent and easier to find.

Compile tested only.

Signed-off-by: Naveen Naidu <naveennaidu479@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index c52316d0bfd2..f5d718700d59 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -222,7 +222,7 @@ static int rockchip_pcie_rd_conf(struct pci_bus *bus, u32 devfn, int where,
 	struct rockchip_pcie *rockchip = bus->sysdata;
 
 	if (!rockchip_pcie_valid_device(rockchip, bus, PCI_SLOT(devfn))) {
-		*val = 0xffffffff;
+		SET_PCI_ERROR_RESPONSE(val);
 		return PCIBIOS_DEVICE_NOT_FOUND;
 	}
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
