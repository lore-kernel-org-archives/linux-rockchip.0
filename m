Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0357CD8C9D
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 20:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fU+5mV2OThf6EjydLAFr4FueKgSCka8gWBMSc2nWeE8=; b=YNK6ZwwDqrVw9m
	wbv2zSbHWIma8jbWBdr8M5XEImEjymmKTRGHAlBolxYyDAcp18gOVbfCewDXZVnZOk60yAW6nsQIh
	Z0E1FeFZNT4AVxMhiBSDmSpI469zxBCKRDNMjoJlUpX012GXetqc6Vs9Zto1xZyY688XqamhZ4Wg1
	esTtBrHAq2minjLtayBi0gBfhocoI157uFN2wrAqBpcCL/s+5ihfxQv00DtMnkxx4p2KQgEXKtzu2
	qwdfPIQ28mQ/J6nnrwfUtiK95JBEX/s9vTcqb+xqp2jdh1qz5NKz2gU5XZSgJ4Jf8GprhaEpdptVc
	bAuv3Ap+N2NJEXSbXJ7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXlcA-00000009zIX-2MS4;
	Thu, 11 Jun 2026 20:02:58 +0000
Received: from mail-oo1-xc36.google.com ([2607:f8b0:4864:20::c36])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXlc7-00000009zHd-2nNn
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 20:02:57 +0000
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-69de16f5f79so158613eaf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Jun 2026 13:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781208174; x=1781812974; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Zd41XiatIhmkg77GVQHRQLalQhR4rQLqWbEQKAVQlyk=;
        b=FFvCDmk2kIpoKOObsrcMRhXiU9zX+iW1u9bX5AbZavFFl00e/GkPhfWneb2/54vyuI
         +oJagIlRFXfVYd3WGbGYGdFhL8IwqkIGuLJFFuRyUileN+DHd4jZkpkkWGv7ao4fiUbF
         knvOMY/BGXhCmdbJpc3+lwX6k1AI0upmC6bNMcn36ARrcUzauvkD5+sFCNvEgFLZ0aG0
         JfsWt8OBiI4RkJMByDE2zBWgjZHfM9rc64T/WRwhNUcopIFLkxUkdGFDq57JwL4mpvZQ
         MzzEylDO5cT5+ZObqjtVTMfcY/sqeAmYtI9+LSuFXBSCqq0q0EXqa6EF+UXeSLTDFa1A
         4boA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781208174; x=1781812974;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zd41XiatIhmkg77GVQHRQLalQhR4rQLqWbEQKAVQlyk=;
        b=k85vgffpTIW8XwMMncKV0BMuR1Ft5j1CHiCVg8z11wcnxCheHbRx37HurqgDSbzFkh
         nuEjv0BJGk6g6YLuC74T8ZvuH9y/bpSFGhDt7TEwelMGHCq23uPLds9HObk9IGfuyUkF
         ooFvUXaplI2cNHromCX/++qUjoRh6bvHc/8eK+q2jDaOHULzA+9V9JHe6276TreaBGln
         70BplLJn/LvhKi9VvsbMTjzJCCC6i8Hnhtfy3mjC4N2AQEwFVRScrt1XhgtsGfyegPsd
         YGJVm8CU4B0ADmytyN8sCDrxZYAumE5GX9CDntiQrP5LnDNzYeoAFzFhcnUM/d+q9bRl
         qe6A==
X-Gm-Message-State: AOJu0Yxv2Pgan/rrCtqE8o1okv1sb6I2amkfJP3jSlECuLc6AdGQz87X
	Hl0J4/EV9KlPdcUnj6clXnqnSWslIvQqdvJu6+b0u4mjmrF2g9Kan0QP
X-Gm-Gg: Acq92OGvbD4Q1zDkfXcZBshqqdoMMLwN6SpwRO4a/Bvw2XNS5ppx0gql3rwKkmuhKoK
	fRBBjtjV6FpXYeA4it1hbxbaBjzMovPf9QNnjjOSojNlvly0sy08pCUnYTyhEbexa/lAFJGHjP2
	QTleJp/MPrIl/z7e3V9/nkhwawkeLdJN95ns22wYQ0RlrJCTEwJIhGMvcrKkCSUps7UMLWNHKw2
	ZqATHZ3FPtIV9IExaFGFNlOW1Y4G+ltuYlWTnhswTQHhiF6BRPTV10n0UIVqOeinrT0ukq0/6sl
	xa9NULozrddOL5mCOxtQPGf56pKR25LrWKqrMve26geiX7DW6ST58NNkAD446Y2PEFH67qlNL4k
	9n7DqxTwsYtzw3sIxfWoKw6+mh4j2QcgIQGMaBNLwaOkLro5pTQlgH+FXXehJWOrfQuzCt+f03D
	OXTXVoSbwt
X-Received: by 2002:a05:6820:4b96:b0:69d:e5f6:cef5 with SMTP id 006d021491bc7-69ecb060dcemr2957697eaf.55.1781208173971;
        Thu, 11 Jun 2026 13:02:53 -0700 (PDT)
Received: from geday ([2804:7f2:800b:f09::dead:c001])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8d30105fd9csm3244376d6.10.2026.06.11.13.02.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 13:02:53 -0700 (PDT)
Date: Thu, 11 Jun 2026 17:02:42 -0300
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
Subject: [PATCH v6 0/3] PCI: rockchip: 5.0 GT/s speed discouraged by Rockchip
Message-ID: <cover.1781207474.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_130255_709322_B7EDED74 
X-CRM114-Status: UNSURE (   9.16  )
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

---
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

---

Geraldo Nascimento (3):
  PCI: rockchip-ep: do not attempt 5.0 GT/s retraining
  PCI: rockchip-host: do not attempt 5.0 GT/s retraining
  PCI: rockchip: drive at 2.5 GT/s, error other speeds

 drivers/pci/controller/pcie-rockchip-ep.c   | 13 -------------
 drivers/pci/controller/pcie-rockchip-host.c | 20 --------------------
 drivers/pci/controller/pcie-rockchip.c      | 16 +++++++++-------
 drivers/pci/controller/pcie-rockchip.h      |  3 ---
 4 files changed, 9 insertions(+), 43 deletions(-)

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
