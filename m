Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFE07CCF9FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Nov 2025 06:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V1Y0sIQYGzQfo+Y0yew24E7kDkLDJ4FiIm7Mk+5IYyA=; b=wvnnw591K1xdOk
	l4zpkagH2n9XxlJh7l7+Qxgb5+Ib4ugn31LhODjLa66138p+oAHiTHmyXMph4Et5h7Ld0uhnoukjo
	DBpIW+gWk2hZDugbvcrT1T7YiUNH36m3ZtpwDXf5erhssG25Suk6+FZY2OM3QgesvC8VZHlvfqTpd
	PKHkhMjASihCVtB4Wx0mldOwy96r1kR3qsr7YPtWPawCKVZ+RsU5rIpUWxqbQllCNAJLo7m3ctyK/
	W+fs+MwI3FjhdEqabVdQLGUw2uuPpVnG2i4Cs/Cr3pGczV+VnxGHyU+p6cjU38rcKpFYLoZYL/dNh
	J+8AdtZaZK211DYbnZeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFo1l-00000009IFK-2ZS0;
	Mon, 03 Nov 2025 06:26:53 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFo1i-00000009IDf-0jlV
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Nov 2025 06:26:51 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-2951a817541so39553855ad.2
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Nov 2025 22:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762151209; x=1762756009; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9n+VOC446iMLGSUtF1aVw7jOFyi8anlj6U7DHCW/jPs=;
        b=ZS7LxCjFlcHTfYP/4sULYg6sthPoly1EhdANivDf8itTUelo2fL3vR0WIs5mFZeuj5
         o7n4SLzUTKyNvWQR4FBsw5BemyVV0P695PAFCreN0FvEdgETUg7aqGxzZdV1dH2ts6Kw
         B3/xxMEMQ4EJbFc4zgFGblBscAM4EPL7rBIFU3+aEwkqvsq5KrIXfPRmvYrqdoePxQy2
         skMQEDf6GZ2FGmz8iyCLDw/iSuTn0Hcb4apKMZKYD7E6NSlRnWYjn6CxB4vPGCgky831
         TYnf9vhcwry9l7YCU7NiGof1+jr/Is7oKo1VO7BjXVbqCDXjE/RzjJWiW+4j/PeZbZLJ
         bnKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762151209; x=1762756009;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9n+VOC446iMLGSUtF1aVw7jOFyi8anlj6U7DHCW/jPs=;
        b=J9UFmAKxniTMNO0l3FYWfsLNA8uA/IfykG+h7sEDJdxAkV+3Tez3Mv7Fgrk3hY5UrC
         Q+ufKLhMS2J460Cp2woH1SBlH6W5Fe2I4FL/CXoELxqdFP9MzvTh8LAP2rGUy5U/S4lh
         2EL1vd4ilgrKNid1mrvY+h+HgaEYGnIPN7PkFUmxwZ//I7hZGJIPekZoO29Ape61Uzkp
         iXWDSkzrGl7s+T16zEaPYWR8v62eQ3Z/XBtwTRdSzhxW3oipS9OeMF977MbksL8h4Zdq
         fOr1s8zltuMczIPnyuPb7cH2DQOHWe8y1sGoUHeEG0cVEmVb8qxfS9Fs0sDe9kw6bGn4
         FVig==
X-Gm-Message-State: AOJu0YxaScZy0eM5aqFNlD4fzVqd8Hb3xtFStbuxgpzpBcngZYTXzXV8
	PgZUuWjEEpldPBiDxD747cnRHng6Uw4g6rW6+NY8ycqEWsitai+DVGBZ1y1UmWD/F1U=
X-Gm-Gg: ASbGncs68ju2GTEDVNFNhu+Q0eEo5ccB16fShMRL8ac61idvfg7SJCBHAnH9wRIsRlp
	jAaaeekkXcxs/M8REGhLYYkeB0FI/F//HpewDhG6y1cNb8hugLENi7Yx5FDibY0Dmqz+aYD+fIT
	uG3G4VXVhNZ6uaXqusO1hrHF6yNyhk0tn5sPoZISRubfkBFtqyKbagf6rjSkrcMVQO/MH2/KGgJ
	FsoFxerUqI11BTdVvwbIT4b1YYmPs1R9LKVDTSyk4EFVfnDf9poDEFC7Z6IUJeKvKuyd84Fk1AW
	1XyDScmVk1JWlAqHfRmgqid9HYed7k3rOtLPQLE02fXprhimNeKF4ifjPcYOsBBGWExMk7f8IGo
	81oe19q1gavfOsqEhLSjQ6fPfDCHM3EHLAoTLIhDWb9j1fBZELSnkqRTJRNtwfOLPD4FRSR3//A
	==
X-Google-Smtp-Source: AGHT+IHE85ZAE05MQ29tDiEe73xuX9q1kSirWYaSnQbdQ95U62fo8gMJxYb1mTHJbA73o23JvHBMaw==
X-Received: by 2002:a17:902:f705:b0:26c:2e56:ec27 with SMTP id d9443c01a7336-2951a3d5107mr152483975ad.19.1762151208773;
        Sun, 02 Nov 2025 22:26:48 -0800 (PST)
Received: from geday ([2804:7f2:800b:fff9::dead:c001])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2952699b603sm107777285ad.79.2025.11.02.22.26.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 22:26:48 -0800 (PST)
Date: Mon, 3 Nov 2025 03:26:35 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Geraldo Nascimento <geraldogabriel@gmail.com>
Subject: [RFC PATCH 0/2] PCI: rockchip-host: support quirky devices
Message-ID: <cover.1762150971.git.geraldogabriel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251102_222650_221584_6D87B289 
X-CRM114-Status: GOOD (  11.34  )
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

With these two changes I'm able to work with a Samsung PM981a OEM SSD
that is known to be not-working with Rockchip-IP PCIe.

Previously I attempted a contrived solution that mostly worked for my
simple purposes but was rather inelegant and impractical.

Now I have isolated the behavior to the three lines in the two commits.
Omit those three lines and you get a working set with the kernel.

I have no idea how to actually implement this in a way that makes sense
and doesn't break the PCIe spec but it is my sincere wish that
interested RK3399 parties test the change and report any regressions
with already-working devices and specifically, successes or failures of
initial link-training with these changes.

Geraldo Nascimento (2):
  arm64: dts: rockchip: drop PCIe 3v3 always-on/boot-on
  PCI: rockchip-host: drop wait on PERST# toggle

 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi | 2 --
 drivers/pci/controller/pcie-rockchip-host.c           | 1 -
 2 files changed, 3 deletions(-)

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
