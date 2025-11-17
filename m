Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25488CE8D6B
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 21:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pzkCRLCDW5g23e8pHORahfABs0ACLnNCkCrwpkARD8M=; b=XtcLXMT7cDHJ1F
	8TedWPydctdbu+PL5ZNYxGOfFqGgo3bNOMF5pN6gDMQLIKy2aC8CDdcitQ+G4DosBWp8FdZhnCiBV
	qbqbI2qJR/alK85rHG4D4vrcRLki/OfwEeUhWcT7Cp30QcqdCy6PuNFD2QAb1m8V/6+lkrU0NCQRs
	MQ1xdr2QW433lVvrTv1H/3h/l1o9GR93HjYPmeRNcyNZrDscNDRtJmir0EZNU+wDBxJTjrCs9BzGr
	mlCo+zt/wmAamHVIgVXNojhpVJ13xYgJ8B3tbNj3xGzo3wApquZg0G+3oOBMRm3eTliyCZdSd8uIx
	yONr1IV75pEJYBaofCtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL74P-0000000GtjO-06Ta;
	Mon, 17 Nov 2025 21:47:33 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL74M-0000000Gthj-0pOa
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Nov 2025 21:47:32 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-6542eb6dae0so2058627eaf.3
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Nov 2025 13:47:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763416049; x=1764020849; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=e5/Mnk8IlwC7NVL0B0/CURaWGhjHy5jv43K5mCqYKF4=;
        b=Iz/bfqpRTVQlyCnxTTkWU6swnV9ssclkrf9v0mvxgXDOzb3o5TFvxoOztuO2/AFmNa
         +D9RsVJ3v7YIsjTBoipZbN3tQ77DZeibB6hQDyyPaOUNLQqlvrH/ktYBPrYKx4TYKizr
         VjvzfepPXYDOixiizEaLueA2gcnhCb6UYYIPghleMhsWWECIv5BA/wl/yBRYMiymi9rG
         cyunAfmpU42nknr51TrZ0MKo3C4s36guNbnUT7BKv0hkwh9YbtNiZRm4kw8FCKLroynE
         asPN+Rs4qMERXYsZ0yoOd4DZLcy5bP4M2anDg6HDr5hgjAT/SUn3l/d+06v52MrOnH6m
         Ammg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763416049; x=1764020849;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e5/Mnk8IlwC7NVL0B0/CURaWGhjHy5jv43K5mCqYKF4=;
        b=DGtYw3ESkfglCZVHPTRrrXYbRFDuPVzlmBeAv7NBrhVqHkFaRgUlImaVi9zb/NkrXO
         hGz/+DMSsN2bautve8e7vs0rvYm+ilvUFsoN7PDYh9A+7p2P94DlC+5QLlOADOPrJJsD
         UQPysEbGRROpiOjDvxliW6qA542sxwDRIPk/kaAAKrUYF0kSjzLsJPF34r+VDE5HlxYW
         gJxmoxLxy3BedzpqGK4/Pz2ypFPhas/CJstHQrriHUeSILeB7agJ6LGhYbJsbYyTjR+V
         kkYdjWwDY97tlJvKx5OVVI2bNN5iLInl/lEKtLujJYFwRM8GVYmAxV1Dg/kf0UlqoYSV
         3frA==
X-Gm-Message-State: AOJu0YysFX+ARPvkEvJ8CVUMsYC4tClVa1HiUtJ8usTcGi/ei+I7l2k2
	fNZAfhWRvOzyQRTpwlSZvECodXj8KnC5iEG8IJORqxHAib+t7CJ7VAIP
X-Gm-Gg: ASbGncs5FFV8igNPYQol0VQ2/eSfzxfoy48ydwKkf+6heXPQ4rorHcqAnE90kty1ysc
	ny78B9vKSPgi1jG7kfS2nMrVWi2p0R/l967zhEPjSK4ws5Y3HGYLNqJdUYqMQG3ELp/TGazAGn0
	enujTFj4zuxiH9dZMfeg+tkIpj46K4hiK0U0AAYUkiO3nnFjFbSFJaWF7hlinNJ3sh64QoUDhgb
	kD95quhR1psw0c2qa7yPQCZfF89lpffKoQYGPjvO9pLgcsexvk6YdiCvCgUhJRmdCFCaZ06p4s4
	2eg7NtEE8mg3IiX0IqUIEeWBt5M+iWTjXQCkjQpWygv3Ti46n6yh4MdHGFoH8f8Zqx0QLvnVW+D
	cCvPeDO79SuK5nY8GUx/ipLsV4oAlOC7YOlbot+7H+Qe9WzNcg8pGHXTj1WpAW6h4z0Dazq9SX+
	GMxHorOHdg
X-Google-Smtp-Source: AGHT+IFbFQICWh2gP02Uz3H7G+3A9sZE2Z07hnxBP+XT6lcLkkYORqspu5DTPztkG3lR2Z2E4DHMXA==
X-Received: by 2002:a05:6870:a711:b0:3ec:64d2:3fd6 with SMTP id 586e51a60fabf-3ec64d2691amr104353fac.41.1763416049047;
        Mon, 17 Nov 2025 13:47:29 -0800 (PST)
Received: from geday ([2804:7f2:800b:a807::dead:c001])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3e851ffc62dsm6367892fac.5.2025.11.17.13.47.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 13:47:28 -0800 (PST)
Date: Mon, 17 Nov 2025 18:47:22 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Geraldo Nascimento <geraldogabriel@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/4] PCI: rockchip-host: comment danger of 5.0 GT/s speed
Message-ID: <2f2825741e189f5d915560eede6ff7bf827546f4.1763415706.git.geraldogabriel@gmail.com>
References: <cover.1763415705.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1763415705.git.geraldogabriel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_134730_240474_B0EFD65D 
X-CRM114-Status: GOOD (  10.99  )
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

According to Rockchip sources, there is grave danger in enabling 5.0
GT/s speed for this core. Add a comment documenting that danger and
discouraging end-users from forcing higher speed.

Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
Cc: stable@vger.kernel.org
Reported-by: Dragan Simic <dsimic@manjaro.org>
Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index ee1822ca01db..0af550277ee5 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -332,6 +332,9 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 		/*
 		 * Enable retrain for gen2. This should be configured only after
 		 * gen1 finished.
+		 *
+		 * Dangerous and may lead to catastrophic failure eventually!
+		 *
 		 */
 		status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL2);
 		status &= ~PCI_EXP_LNKCTL2_TLS;
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
