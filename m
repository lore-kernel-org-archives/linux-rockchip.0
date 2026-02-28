Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DFC81048927
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Feb 2026 00:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XvG9eRDoxJ5UuzpEddKaD6KnVac8zygRXZNCMwd8MiE=; b=Lve5hlOFp6LlkM
	+nVbeiy2+a+g4LSEBQRQn4LUob/4Oy3cf3cFWsm6aL+THWvF1aWZu5gTBCf2Ga9jakBk74dWhQGSA
	uA4i7DhASIM2fV3IGL5F7MwcPrurWl15mBkhdtu6wFBhJhBSXR4Sg93cKjKKtulIymy5X5+1AKmCh
	0c4tMtXuR7X5mTvZooTnwhoq61tBX3eiEv/r+/DOOqOch3iHOi0lhzVOrcsDEBZ8E2poiAPnmlYCp
	YPiQjE4qST6rKG/1ZNub1ielAw0xDu0MvtiCA1zG4Eh9dpk6HUmhsIvPRtxadPy993nrnJ/l229C4
	eQe8WnoSyfe5Jrr20pVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw8bi-00000009LXr-2UKN;
	Sat, 28 Feb 2026 00:54:58 +0000
Received: from mail-vk1-xa32.google.com ([2607:f8b0:4864:20::a32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw8bf-00000009LVq-3F3B
	for linux-rockchip@lists.infradead.org;
	Sat, 28 Feb 2026 00:54:57 +0000
Received: by mail-vk1-xa32.google.com with SMTP id 71dfb90a1353d-56739adfa1aso2160239e0c.0
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Feb 2026 16:54:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772240094; x=1772844894; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oqjVAkGN45WCvwyHpK51yVytA2m9U+cdr8FXQh1dqPs=;
        b=DPFw0lQ+QpA6QvT3+fgGncTCIYHJMsVcVL1j9zQcnIBPHrCz0lZHBrhX4GV3FvO615
         V1cUDFhldR26AZXx3q3/jbl2csovlA9HXQfb1CCXnFMO0oR/JNjmL/OMNIh2gTh7ypDx
         +XOal/o0Zgtm3OBqUlusxvrB9MTWbGmubByT3Sr+MTyH/+5SObIdXWblZLF3v3fvec3j
         +pppbIOeN+fSgKUZ5G+etIJM0ALawxsjOCsGzlONKM52Y0LPFjKrTMCqVB7LHFDoE+NR
         /V8Hy/ND6krA5DnA2t0vS7qvfhKbkLSzBEeMUIRDrf6dTfXVKSra+8WjjjFf+l2TEGDe
         O2Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772240094; x=1772844894;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oqjVAkGN45WCvwyHpK51yVytA2m9U+cdr8FXQh1dqPs=;
        b=NTnkUst+yPOzOEBjN+81SQ63IYrPcgvht+YXrUB1h2Oy96CC8WVpnec3ezSaOasAqM
         Ag5y7g7euPhPF/4N/ZMN5Dykqpk4EwoWAuYBwH74skCfz70I0BMHu52CfutaiwsbikSj
         fI20+2Z/5FCdY+4N9f7z3gQ5qjhRQUL+46q9oz9hy/NBT8gajnvNj/+wBtvOhYy/tp4g
         6T/bgjPfIX5KNYFFS8Vpli8/SmPhQC5mjxVNltkvnorpH+29nj/2MaahzgxHL1TuGXQO
         n7Njsw8KHYFw/44l3zZ85I5UhKULqo6Y36VyJOaFmXdtew15YOf2ag0KVXvxz3NcRKl2
         5U3Q==
X-Gm-Message-State: AOJu0YzspdYztJnweboo1Kb/zqyFgRJvzaJaP/0PutZzVQGTwqxTIab7
	R9Vzxl0gTCDKdzl0b4jS9yo+6LA/J4zHICltpimVlkNoQ2ce4YSi78H9
X-Gm-Gg: ATEYQzy+n8OBk+rp6isKTY3osklByjYVNjLevxv084S1Z2vl0nwFYfbq3uBI+qCeJS0
	EH1KOBxvKHIyUoApJDk7tJWcNMkSCj4DvTDSLzZrUEeVEpZEhZGAmZyQpI/k6AoQ2D+SXkTt8C0
	L3H9ar+hHXfAnx0j8RQG+VtGFRq6f93EXqIrXKkBde+9R9K8XqEvfjpA8GbZJ1taACFIiUOzlu4
	4/5pmvNgLtxHbXMQVKLTAeajKXc4fpkJR235DZShXPokVGHUU5imAATE0Z6+9QIKE+F/aM3CjbI
	khNtauqhkpoKGjKoZZno1bAXGEtilltQnCmRswW7/lkm0T6tjA+y4cAk4bEi00uMjjXuwI76lTn
	zGpXsUwaSzfkvvu+kf3AnPRaqInOMqHdd5fAZ6vzhhtEnPRxBIUtZDw+IEW2YTlmmjKkadzuCXm
	MacfNVN2Mtwg==
X-Received: by 2002:a05:6122:d04:b0:544:c8bf:6509 with SMTP id 71dfb90a1353d-56aa09ec812mr2879599e0c.4.1772240094275;
        Fri, 27 Feb 2026 16:54:54 -0800 (PST)
Received: from geday ([2804:7f2:800b:feb1::dead:c001])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a91bd2291sm8371795e0c.9.2026.02.27.16.54.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 16:54:53 -0800 (PST)
Date: Fri, 27 Feb 2026 21:54:41 -0300
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
Subject: [PATCH v5 0/4] PCI: rockchip: 5.0 GT/s speed discouraged by Rockchip
Message-ID: <cover.1772239598.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_165455_816508_1238CE1A 
X-CRM114-Status: UNSURE (   8.93  )
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
of their PCIe core.

Drop all code related to 5.0 GT/s operational speed from this driver.

Endpoint Mode driver was not tested.

---

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

Geraldo Nascimento (4):
  PCI: rockchip-ep: do not attempt 5.0 GT/s retraining
  PCI: rockchip-host: do not attempt 5.0 GT/s retraining
  PCI: rockchip: drive at 2.5 GT/s, error other speeds
  PCI: rockchip: drop 5.0 GT/s defines

 drivers/pci/controller/pcie-rockchip-ep.c   | 13 -------------
 drivers/pci/controller/pcie-rockchip-host.c | 20 --------------------
 drivers/pci/controller/pcie-rockchip.c      | 15 +++++++++------
 drivers/pci/controller/pcie-rockchip.h      |  3 ---
 4 files changed, 9 insertions(+), 42 deletions(-)

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
