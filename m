Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF213FD45F6
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Feb 2026 22:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wyna+R3x1Mu8vpBT7FYDAUILTThO/UlHv1vcCvL4pQY=; b=UAeoOuWBt22VVi
	fe+dJ/ei4ex2pYWqxl/vnpDlUGJyBS/7AX3hfqqYY5vGrzVBeqCCfqHfnDEn2EVwdJRuKxqTP3l5M
	3pVuaDBAv/up3dgeBslceZuMX294EVdYY55clPbLICGl7W4wqSxE6Yola3vLPzJlI+WXWWY9n9QW/
	15yIoemgQIr8auvmGiJY9lz+A5eWt9IjBY7cBp7aO4AdQQ9k4yt27xXc56R51K+BXyPSfWIUI1U2A
	tfGxE1MSmUQgfvCKZxKw9ktB1S1xM2zHjq/c/BSCFTFqoV2vALD/+nIjAwxqCkqiJl46jWiUsqKB5
	8OxxaG6Kjz4Abs5pK8PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvNLO-00000004zxE-3CN9;
	Wed, 25 Feb 2026 22:26:58 +0000
Received: from mail-vk1-xa31.google.com ([2607:f8b0:4864:20::a31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvNLM-00000004zvR-1SJ3
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Feb 2026 22:26:57 +0000
Received: by mail-vk1-xa31.google.com with SMTP id 71dfb90a1353d-5674689e507so119037e0c.3
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Feb 2026 14:26:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772058414; x=1772663214; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TcgCgCEo03Z5mFFecYPzQD3Rq4C5qPBZUB42/osw6tY=;
        b=FrzIHlUe4RHVDNTxU7ozU/rsQKWSKCqzaO3u+mxk3WAUeCP00MFmb37yRoiFJKPSuT
         086TS1WQCkMrEzbRcYEzKSKJzs8iOBZgI2q0eiP8QbuvHw8+TLSaufioFEpRKz6B7Kso
         aAlJjNM18dktrfFn/525Ee/eaWnXAANrouupoRdFOX5Ng8Jk+NmihPym3ErcaHzyrp8B
         4j7aILb3+eriETO0EjQ6LpSSpZD7YKuENo6gkCRaP6pUn0cK48LC3rBWFv2BcwDUj/O6
         xnterClcJrm/LrVQj8dMD/rUgHX2ACSYPMV15x0EiAO0x2qUYt32fbQAe4uM6CprqXFe
         4HgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772058414; x=1772663214;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TcgCgCEo03Z5mFFecYPzQD3Rq4C5qPBZUB42/osw6tY=;
        b=mYnVNT7XhJ3uRAaXKKuu4SZZyUVuPDF1ftyBdHDbJv/QY0MjT+wGr0Z4/zB0oF+E9Y
         2/o1/YqNHKYtOfbqaI5P82pw8KeQMFG3IhtCnzJgySy+rPXzkKR4VTU5yQ982dp3OeBR
         M9FFsW5P08mm5b86Yvh6V6sPCDtY4Hy1mZRfvRW4u0HLG2WT/pQDdEJamu+IEtIxoz/i
         0rRw+4kF9A+TIaVsC1NzG7fSlmjhQHhdIJcqwZvG06N14Fev8dP16DJLAsy7h51nDMAJ
         dy24B14/RRJTdvwtC0wq3anEdbWppx4nrTuIapoY7AoPKsncZoLv7RSOV9c2OBxF56KM
         dpWw==
X-Gm-Message-State: AOJu0YyuDDMKMkFtzT4E/zYUygrqYxMSqpRzorMGpV8YGyTZQV2DVaEr
	8emfSP1xhokHza2QUSgk6rYJ/4lv5yFzKJ1neYkrs6Tuf3tK7DdfkktQ
X-Gm-Gg: ATEYQzyIVoqEm/GjzKX0+uuvH6zwrQCiNOoDT5btqnJjw0QU5ZgE85Edwu7+d+igPJr
	ouSiGp8pfWfe7lwNMW7QKVsi4T3aZDgUeECUCAe6tp14+q4QI31j33DTikpfpX1MOSQQ2gqsYMG
	SAZQajSsfv72KkmVW3SIdMyRnZA5fNaYfMzb1vAGnWB23WiK+PDDror/JCLLWWoRjt5wV97YXL6
	1yscsZipKVh/P0gU5DcU9IhQZXG9igYEsAnezqORgYGsgqwHAEQMmSbdlZDV679nyu0IWblUteY
	7rBiRhmxwrOnL6G9f83lrukOKiTnY6ovoFXkS11W5Rh0RvzfUhmt+3jD5OVdJ7/WkmUjl3q2OiQ
	LsaFY1NskmBTB/JQ4A3RiW9e3ItYvp6p/b33igkRUtKraTI1ez0WdaP4vuj791gT/CsAnCW48u3
	1X2I7cHgUMuAVnzjHNvfNJ
X-Received: by 2002:a05:6122:3b82:b0:567:443f:a772 with SMTP id 71dfb90a1353d-56a92ecd28amr155892e0c.0.1772058414356;
        Wed, 25 Feb 2026 14:26:54 -0800 (PST)
Received: from geday ([2804:7f2:800b:f14d::dead:c001])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91659421sm592428e0c.0.2026.02.25.14.26.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 14:26:53 -0800 (PST)
Date: Wed, 25 Feb 2026 19:26:46 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Geraldo Nascimento <geraldogabriel@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] PCI: rockchip: 5.0 GT/s speed may be dangerous
Message-ID: <cover.1772057799.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_142656_392265_4B9FDFA0 
X-CRM114-Status: UNSURE (   9.68  )
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
of their PCIe core. Even if the odds are low, to contain any damage,
let's prevent 5.0 GT/s operation as well as add a comment to
Root Complex driver core, documenting this danger of data loss or
worse.

---

Changes in v3:
- Clarify warning message even though Rockchip won't disclose details
- Drop DT changes as they were applied as subset by Heiko
- Link to v2: https://lore.kernel.org/all/cover.1763415705.git.geraldogabriel@gmail.com/

Changes in v2:
- hard limit to 2.5 GT/s, not just warn
- add Reported-by: and Reviewed-by: Dragan Simic
- remove redundant declaration of max-link-speed from helios64 dts
- fix Link: of helios64 patch
- simplify RC mode comment
- Link to v1: https://lore.kernel.org/all/aRhR79u5BPtRRFw3@geday/

---

Geraldo Nascimento (2):
  PCI: rockchip: limit RK3399 to 2.5 GT/s to avoid data loss
  PCI: rockchip-host: comment danger of 5.0 GT/s speed

 drivers/pci/controller/pcie-rockchip-host.c |  4 ++++
 drivers/pci/controller/pcie-rockchip.c      | 10 ++++++++--
 2 files changed, 12 insertions(+), 2 deletions(-)

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
