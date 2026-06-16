Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 378ADCD98E3
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jun 2026 15:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EbxYkHHRghwhfELKtjCEOtP+oVTxg/sVgIgs9Nsw9v4=; b=BxUs3GJk66zCeK
	o+nCsF7dqRZdySeFklzZEA/oK2IXjjN//yEELQ9kPO3rPK+RjqNHnVYETExXUifDBhFem9iElVtfZ
	Keig05QtMmpWt3GIwL7wwzdDGQHVf9bcEzpzH2ANhuSeoxxa2JpsGsV9NUwLdEi56bLzgvMaf5JIe
	3tpsvTwcguiUdrWX/UJficC1YPUOjy9HUmpG1DbEtlcZe8tZGemN10jFtLTEe1YlYVWCXWNhNojFC
	6sGJfXHwT2XbdLlxTUgU4YPpM8zbokHpF2jTZNe3nlljL9SZBvkQjq7LmsniSlDU8ang4hRPhXUKO
	mxl9YZ9qedpSFDvE2liw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZVex-0000000G0Q0-1hU3;
	Tue, 16 Jun 2026 15:25:03 +0000
Received: from mail-dy1-x1332.google.com ([2607:f8b0:4864:20::1332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZVeu-0000000G0Oh-22m9
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Jun 2026 15:25:02 +0000
Received: by mail-dy1-x1332.google.com with SMTP id 5a478bee46e88-304d8362a58so3491285eec.1
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Jun 2026 08:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781623500; x=1782228300; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b7M8qZtmu0bZQdu1QNURqoYjrqJMG0t/ykNnN1cBj2w=;
        b=aKhVqO7r5aZwtnkqQmyAyWGiYQuKo0GWH5VtNUFOqNypfAW/usma5zsH1mfBSIVe/V
         GObckdTY5+11e+EXihD/v737ggpRRXQHjEOtVzqbkFyDLuF6v5E8fuTe/eoX0zIfURes
         gGchNJ4mBLia/8MsbHBuibhzbdUddPFag8iP6kibwggk9K1ee3ExjpGku4WnRz6Tvikl
         cfxQYxvSroXpwmEdzCHsP7pLc06Rs5KQVjovdeQQKdh350BvyFij2vTbe50gqfqiHA+z
         +W94I3+AlS+Ym9nJqN2wuOa8KSP5mgirlFOa6/nKAw3aNsROr2M5bwu+H5yo02BlF0H2
         fqLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781623500; x=1782228300;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b7M8qZtmu0bZQdu1QNURqoYjrqJMG0t/ykNnN1cBj2w=;
        b=tCGyBH6sZ27SzZe711e2kOOSuzJjB5qzE5fMe1j+UbsrZ+udyZhVxBL5UiBFtBMH4/
         EP4gO4+Wm4N+i6WlvvKzXHYGI2HypzPlnHeuilICEREy7EJ2njNwaRcspjHW/0SIyiMW
         CZjL5UXOv/r7rhXM7i2FOSgLH1eH2+OILRfWwpk5VJozKQB3oVPmokSFcvji7a7WU21C
         rtYj4c72GtIBJ8xM9HWJzTPTm1ony9KtTQ5lF2gSCDEQIbYpWCcOvBZRuE/F9OGCsdvd
         gg1AwHiyxYbj2v3zbYQR7rMHM6v43QXF/H4KAoFugddKupE1QKLEd5ydIJlvv2B0aYVp
         1tew==
X-Gm-Message-State: AOJu0YzUdvMc/0DqQpv86emrByNSJLBKNlbarD11mYMtl4pnfX7voZ56
	MrlXRubte9fie7HgkqGGIsptYrBH2o2R3GKE67dsmPj0+9aksMzIOw7n
X-Gm-Gg: Acq92OEoGX57CJ+PeIxXqV0ozTa0U7G26/psjsxza3yOUXBGRydExbz/TeYRx/xuCNO
	c0qgB0jX05ue5TEasw6xwuxYEHNtvQ6YNaFfhij82BnLpmA+rynaxMcE5ES+M0htfzVAAcjymOl
	Pvkjz7D7oJJm/cuGYYVV9PLIir9tSzUUx8u2gEKUB18GgTDXOWJ2u8+VKIkzsCgaS9eI0BJQWxU
	IZZlRPtUV1GJrk+tN7ArfZ72j0Y7IIiCTsqtqhrrrHEF/LRKU4bb254ymvpI++XjawK/YumB085
	Q9k79pDWqNatpM+0vzmPmZk9+xmUUH0WDr7aIQf0iyjpooGmoH7RPy71Np0PlWd8yd1FiIG/6Is
	iqyA+mKUwH15qwe4dih3wajBpgagJCleOMhbd4VcjjlF4rV6RGWf6eg4ghY3I7fE9WhvL5xFsiP
	vl766TdELidosin86UYaJH
X-Received: by 2002:a05:7300:bb07:b0:2f9:1004:b2cd with SMTP id 5a478bee46e88-30ba3ad0bcfmr2565276eec.20.1781623499389;
        Tue, 16 Jun 2026 08:24:59 -0700 (PDT)
Received: from geday ([189.115.92.220])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3081eb95450sm23757871eec.28.2026.06.16.08.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 08:24:58 -0700 (PDT)
Date: Tue, 16 Jun 2026 12:24:48 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Geraldo Nascimento <geraldogabriel@gmail.com>
Subject: [PATCH v7 0/3] PCI: rockchip: 5.0 GT/s speed discouraged by Rockchip
Message-ID: <cover.1781622998.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_082500_596088_06F6768F 
X-CRM114-Status: UNSURE (   9.73  )
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

Dragan Simic already had warned me of potential issues with 5.0 GT/s
speed operation in Rockchip PCIe. However, in recent interactions
with Shawn Lin from Rockchip it came to my attention there's grave
danger in the unknown errata regarding 5.0 GT/s operational speed
of their PCIe core, including data loss.

Drop all code related to 5.0 GT/s operational speed from this driver.

Endpoint Mode driver was not tested.

Changes in v7:
- In pcie-rockchip.c (PATCH 3) drop unreachable code
- Link to v6: https://lore.kernel.org/all/cover.1781207474.git.geraldogabriel@gmail.com/T/

Changes in v6:
- Squashed patches 3 & 4 together as suggested by Mani
- More formal warning message as suggested by Dragan
- Set the 2.5 GT/s bit regardless of if link-speed is set to 2
- Link to v5: https://lore.kernel.org/all/cover.1772239598.git.geraldogabriel@gmail.com/T/

Changes in v5:
- Changed commit order to not break builds and adjusted copy pasted
  commit message. (thanks Charalampos!)
- Reintroduced behavior to force 2.5 GT/s in case there's something
  non-default in the DT. (thanks Dragan!)
- Link to v4: https://lore.kernel.org/linux-rockchip/cover.1772169998.git.geraldogabriel@gmail.com/T/

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

Geraldo Nascimento (3):
  PCI: rockchip-ep: do not attempt 5.0 GT/s retraining
  PCI: rockchip-host: do not attempt 5.0 GT/s retraining
  PCI: rockchip: drive at 2.5 GT/s, error other speeds

 drivers/pci/controller/pcie-rockchip-ep.c   | 13 -------------
 drivers/pci/controller/pcie-rockchip-host.c | 20 --------------------
 drivers/pci/controller/pcie-rockchip.c      | 14 ++++++--------
 drivers/pci/controller/pcie-rockchip.h      |  3 ---
 4 files changed, 6 insertions(+), 44 deletions(-)

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
