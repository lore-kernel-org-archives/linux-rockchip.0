Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECCC8C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 12:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSjpVH+M7zqxnghqdEfzzlijVCgTq2Vb1dvIEfwn4P8=; b=joGzsSIHkCfV/J
	2nrsTgTAZ8wF02RSaO3gLQy3giMHxrvlbhGIdE6xOj1tI8b7LLgEbhobzlIUgw44rEn0xUfDVnbMM
	pp2OHBDysSe9EyogdQCCksM8fRV60y1nSfPkKL3kyYYmBZCTlp94OKkRQqZkPU4a5WcFo+Ueyu1Jx
	tOk1iDlP+py3tfo4AN5f2LVRA982W+HSvEBqDlFYAOOeWiuLmSCeTW7r3V2eiEqsUus4aOw7mYqse
	F9c0DjjghZ4Ijho5eJRQRPW4FyBavduevBNuMAfrOjbitnPvB05TAYJN/8JoHeeYTg8EanQsLMNye
	M/J21WOoYJ1O4TJ2xt5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGzsY-00000009CAx-0jIZ;
	Mon, 19 May 2025 12:46:02 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGzkE-00000009Aok-1CU9
	for linux-rockchip@lists.infradead.org;
	Mon, 19 May 2025 12:37:27 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-601968db16bso4124035a12.3
        for <linux-rockchip@lists.infradead.org>; Mon, 19 May 2025 05:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747658244; x=1748263044; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bGruH2OWyN5Kdhy7bKxvrOX/NNRx5g3JGk/NfDWwg9E=;
        b=QIj9SF+DOY2/9I73xrudBKshkEUepVBPXwtHsbfxwonPsjLb9R11/wKOQ1TYCYkjb0
         6KBzZKTIhsvruMgVxJ1DnwPlB3/6vI510uEzJHrkdByy/M2EAbO8unIl0TWJhsdroZKO
         0X5WIBeynZNi4H4smblPPKIRjyIiZm37kuFRGRnTh4Q21KVr4ZrHzZXt2XnANLfgBupJ
         dK8C8gnG6SRmtUZ006OSuYUXxDrA3eidsN4se17JGib3xqAlmFOdQUPA8YgCOCZgOsXi
         cmAELB+zmCzwwoIb1D6K9X2SrK35CCYKSSoInOwlNVve4GdCD3UDw7SOCzKkegiAl3Lx
         3uYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747658244; x=1748263044;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bGruH2OWyN5Kdhy7bKxvrOX/NNRx5g3JGk/NfDWwg9E=;
        b=hxJSGjXjNwjVHv9KoHR/G0SXEz2+CExQJFNnOpmab2FeGINIFzpPgTi9UqS5CbPRQ5
         9gH+ID/tHJADInVhVxjOEN4WMrYwqdN8Gcwa27VcI9k/3W8xQI8DVQis12VK7w8veYoS
         5+2+IVhL4HpGaGgL6qTSlz/t9wBUy3RFEXvpMq4ORIFyQQS2wKzcdR1uy9MZBxhZWxkt
         rRxnS6iGkFcVeTlE6FZW8Pa99KQaEbO63raDN9YdqoPJ7PR6VXn6iz/DcxUlj9yJj82U
         uV1I/+Jyw8GuQWbMPNi9H8PG21nBQwwSVHCMF+O8sstE4IguhSWLTmVou6K5kJ6/u0tx
         VIlg==
X-Forwarded-Encrypted: i=1; AJvYcCXd3majP3uKnjW1PVtYcMudzyAgn1jSNMtZtoylIu39p55mELRJNf9A6KBbPU7ADrCDSdmZJDNHDuJyx/bdGQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxu6bJYDH3z0CrRzv2uuvxfZKPMePe/PmArQIpJ5Z4FhQRat123
	y/LeeUFHn7QQ4HSAUs0IhsptBy1ys/OJBZbRglsCLd3BBUHNvLWmJ2OZlrsH6EseIg==
X-Gm-Gg: ASbGncvKLhtnMIqAu+aYuFWOMVU4U4pZ686yT3tfol28cDF1YJHIQsyqso8TVoZsIUJ
	0du8hopyrYORqG7QTr1yg+xex3XyD1ou49vGJtJmRmq2z2VbDwHWYVK6bFZV+ymq8XhYVG4AkAK
	ULMkgDbPwIFzfb/MG6wSnV5miC9CddlMUEy298fX4TOEFIEIdjFOj5FYdV0NcHZxreojTQzjg5R
	ef0zs3SLt4iawD/x5sNqO9KaMc6nN88Ifbh4d/JqMJt2Y9gj97UySnjd5/hZAVrth7GxlQ8MEyW
	PKFnF/XQ+ZfJoqcAXKziuSLySmTsLEm++6hJv55t0bK2Gbi7UaF1UP+IkdfuYGi+9unC/mFSHd9
	fZ5fbAkRZf1ertWyQLfs9mruj8z6yHhcEYHhB90YZOA5i6dBkLqY9mnGkczhXwp3yOrY=
X-Google-Smtp-Source: AGHT+IEJuSH8cyFiHfFYB8+TPURo7EpATg7AlDroWHzASyTyrwqYV4s/mzXF21Rux5m6FuouAAfVig==
X-Received: by 2002:a17:907:1b0f:b0:ad5:5293:f236 with SMTP id a640c23a62f3a-ad55293f282mr759959666b.3.1747658244437;
        Mon, 19 May 2025 05:37:24 -0700 (PDT)
Received: from thinkpad.homenet.telecomitalia.it (host-87-20-215-169.retail.telecomitalia.it. [87.20.215.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d4967e2sm580970466b.128.2025.05.19.05.37.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 05:37:23 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krishna chaitanya chundru <quic_krichai@quicinc.com>,
	Niklas Cassel <cassel@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Hans Zhang <18255117159@163.com>,
	Laszlo Fiat <laszlo.fiat@proton.me>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 0/4] PCI: dwc: Link Up IRQ fixes
Date: Mon, 19 May 2025 13:37:18 +0100
Message-ID: <174765807809.8857.13152215627311569796.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250506073934.433176-6-cassel@kernel.org>
References: <20250506073934.433176-6-cassel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_053726_327863_181C674E 
X-CRM114-Status: GOOD (  11.18  )
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


On Tue, 06 May 2025 09:39:35 +0200, Niklas Cassel wrote:
> Commit 8d3bf19f1b58 ("PCI: dwc: Don't wait for link up if driver can detect
> Link Up event") added support for DWC to not wait for link up before
> enumerating the bus. However, we cannot simply enumerate the bus after
> receiving a Link Up IRQ, we still need to wait PCIE_T_RRS_READY_MS time
> to allow a device to become ready after deasserting PERST. To avoid
> bringing back an conditional delay during probe, perform the wait in the
> threaded IRQ handler instead.
> 
> [...]

Applied to controller/dw-rockchip, thanks!

[1/4] PCI: dw-rockchip: Do not enumerate bus before endpoint devices are ready
      commit: c1c9c4b6130defb671c45b53ec12fcd92afea971
[3/4] PCI: dw-rockchip: Replace PERST sleep time with proper macro
      commit: 9ad44a6f6f8775786a9543427c82625d96a340b4
[4/4] PCI: qcom: Replace PERST sleep time with proper macro
      commit: be0b42befa87d81780aa0f003644b0ad520b0234

(I do need to change the name of the topic-branch now...)

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
