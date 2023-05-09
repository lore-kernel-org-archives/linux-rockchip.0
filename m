Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01757C77B7C
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 May 2023 15:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WW40wCZCA/cxO91U/W7Zqgytxp+Y9ZOzROOgPq6iN0U=; b=HaMgw37MUaintw
	6i9gOkvGy2o//3GoX29vGv0DjokzqH2yMQ0bt61m1vF6p4o6gi67GW8E4YfOZTNQ0x3EPanQ6p4kq
	pEOZaPVUhmKUudYRYkg75C3nIQm8Lb+5kcp2VNdE8WAxwmCBm/QFOlxFUZILl5mE2NB5wjHgwSrp1
	pRGLQmhZRb57tyzFOY7DQ7e/JpbRkmEGS4V8+Z4Eml47cOMRfhtl04eFBZNPO4bn8AxsGxK20FUZ0
	YVUCx11Nde95WG+a7bBPxJGBdIqfZqIMVIqq/RYJFeO6EY7z9vNGRz01aBgKEoGborCMrznmtj/Er
	X4W3Z8gnD9eZXeJqf9cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwPQt-003iwA-2L;
	Tue, 09 May 2023 15:39:19 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwPQp-003iuj-2J;
	Tue, 09 May 2023 15:39:18 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-30786c6082dso2431719f8f.2;
        Tue, 09 May 2023 08:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683646748; x=1686238748;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BAP6y9vENbOGTUMhyFaj/H50h+Cw78KTsgpA0Rfk0rk=;
        b=MufmtxbdxskYNVPPTGC4wvh5lnaRXX5HH8PFcWRPdIDNo5A5tuqVl1P7E/DC2oqNvn
         bXbUuYsN9QmwXlKoS8aSxKjfaEI2l0DchyG2G1HsZeQjFD8jp2zv6Nsyq5M3uUvMAjM0
         qjKoRkVK3vdJ54iePMleWGLCzvbKZa7L7VFcHjBdxA7Nszp8fcrKy40YzqCxklOPpD+k
         uQrfNZTBDx0hkpiNxq6PUcwpdIkDToBDoeBwfGGYVHMgkn7NYRo0/QIe7oZQPkwbQdhc
         9e435yLIw5Zy2bPFrZp3DvZDVkubxvzA5VwbPoTDYZ/TAPc4HjsdpxGmJrDAUzrdIwFQ
         UXNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683646748; x=1686238748;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BAP6y9vENbOGTUMhyFaj/H50h+Cw78KTsgpA0Rfk0rk=;
        b=ls4tfeHlb7hCyHDlOM0c7Hsd1KHukeymO/oRgec7oGwjQUkjB/npQ6nJqB911PTiw2
         eLHOH2MK9iFxyDt8ljFixcIlPkHkoLtwwVBpWb6TID8Xsibc1hvqbxKmfG0VOiqFnJGe
         HDYf6FHFpuXP2jvPYqjmIgXubF+DZpxetGFabZwVHO2lkb49XSLdgch+2xVQj0f3ehHn
         0J9TAMkXkUJPlKeL4fNJbAuc2kYlTea4ZyLvaAveTlLAOdFor2BquLU3Q2MDZLE/c5uC
         p4PflizH+8/JuOWbYAn5PobFRtJJ9Dt2K1S2/g3PM9FklOnTK9dptnkzaieVpP1bQgvN
         d2XQ==
X-Gm-Message-State: AC+VfDzzELEwwIl5dWk27ZMQueab1eMyTPPTfcYBQEl8LRRYuBtZdJrT
	PLUDvc247mP5E4u0cbH9vDI=
X-Google-Smtp-Source: ACHHUZ4aKda1ezxfuzftb1TPzU+2RoACFlSNYWggFpqk8qP96GfUNv2pmL5E+0OyroVm0hmVFu9jeQ==
X-Received: by 2002:a5d:4c49:0:b0:306:2c16:8361 with SMTP id n9-20020a5d4c49000000b003062c168361mr10045612wrt.22.1683646747911;
        Tue, 09 May 2023 08:39:07 -0700 (PDT)
Received: from localhost.localdomain ([146.70.132.238])
        by smtp.gmail.com with ESMTPSA id x18-20020a5d6b52000000b002ff2c39d072sm14743147wrw.104.2023.05.09.08.39.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 08:39:07 -0700 (PDT)
From: Vincenzo Palazzo <vincenzopalazzodev@gmail.com>
To: linux-pci@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kw@linux.com,
	robh@kernel.org,
	bhelgaas@google.com,
	heiko@sntech.de,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	skhan@linuxfoundation.org,
	shawn.lin@rock-chips.com,
	lpieralisi@kernel.org,
	linux-kernel-mentees@lists.linuxfoundation.org,
	Vincenzo Palazzo <vincenzopalazzodev@gmail.com>
Subject: [PATCH v1 0/1] Add configurable sleep for pcie-rockchip-host
Date: Tue,  9 May 2023 17:39:02 +0200
Message-Id: <20230509153902.515106-1-vincenzopalazzodev@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_083915_758792_FC0330E8 
X-CRM114-Status: GOOD (  14.65  )
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

I am submitting a patch to add a configurable sleep for the
Rockchip PCIe driver in the hope of resolving a persistent
issue with old ARM platforms.

It has been observed that the driver requires an extra
sleep before probing the device, particularly on some older ARM
devices like Pine64 RockPro64. While an original patch was deployed
in Manjaro ARM, the issue still persists with the upstream kernel.

This patch introduces a module parameter "bus_scan_delay" which allows users
to configure the delay before probing the device. I have tested this patch
on several platforms and it has proven to be effective.

I hope that by starting this discussion, we can collaborate and
find a more robust upstream solution for this issue.

P.S: I sent again this because I forget to add some people to the list
of cc.

Cheers!

Vincent.
-------
Vincenzo Palazzo (1):
  drivers: pci: introduce configurable delay for Rockchip PCIe bus scan

 .../admin-guide/kernel-parameters.txt         |  8 +++++
 .../boot/dts/rockchip/rk3399-rockpro64.dtsi   |  3 +-
 drivers/pci/controller/pcie-rockchip-host.c   | 29 +++++++++++++++++++
 drivers/pci/controller/pcie-rockchip.c        |  5 ++++
 drivers/pci/controller/pcie-rockchip.h        |  9 ++++++
 5 files changed, 53 insertions(+), 1 deletion(-)

--
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
