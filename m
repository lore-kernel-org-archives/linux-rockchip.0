Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40662CA0FFD
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Aug 2025 23:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQPCDpp/WLl7xq0/bXi31K1mXupvqapKo7ZJT12BcJg=; b=Bsrvveeipqf/C+
	FDSLcQdpaI1EblPVq9MmqygF4mhLMmwL3O1EW7Y8mHdlACIdZXxwX9GX2fTpk36pxh0/wa/yMkTa3
	Nzb0oXcpHV8Frm5TcgmaR7mT3CAzTpnmFErrK+5dRa5S1VJWdIjyJ+u9nhzXtyz7CLIr6Q8nn9Es7
	OyydM4xLUKQ/OGJ7jSUnNoNqIG/ZdNaBPyjjWu5S4i/1AjI4ZZVbnFWbAmaDKaUkYomgayiSxNOh5
	MQ0Dt15Czpzh7QzMBUABGKlUz4c4pMnUGeujNjLn+AVyDY5oveWzL5LaJXbOl9YNvMrGdhjZ3E5H6
	hzMu9uL4wlz2SV01rEyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urm0m-00000003f2s-26rg;
	Thu, 28 Aug 2025 23:26:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urjBS-00000003AV9-18RA
	for linux-rockchip@bombadil.infradead.org;
	Thu, 28 Aug 2025 20:25:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=526DZvOdfFdWnRr7VLIYoJ9rOuKdtRXZH6VtJYFQMAI=; b=eVhbk/ZT8bhDh4yqrdfgIss4cR
	ct+0qw4VLLhAkd1uLMzRi9QrN2F0CS2L3h5mPgTctLDvCr7jG/E/gXK+kBhGhe4xL+ewGYqMW3pqv
	dp+B1qMk62nYoB+vhxwTCfjscpuTpUROwMcJbGf2+mF4kprfsQb7VLchRMBUJ8gDebKrVYPbtlsTH
	9KKLhLWUOK8kSSb9VQBqFEDgbbzHn+k4K23ZBlYGS/QZq/JKilfwCRqySRkrrTlVZEEeXKRHOWUQK
	XlaUw5uQSSFDC383G/Q0Srx5oXsSPmIDRkL5HKfrSzSxIt9G4n8kd52GEXc7ae64hffyauzW8Ew9b
	7U+f1eQw==;
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urjBO-00000002v7d-1qnF
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Aug 2025 20:25:21 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-24646202152so17283955ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 13:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1756412716; x=1757017516; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=526DZvOdfFdWnRr7VLIYoJ9rOuKdtRXZH6VtJYFQMAI=;
        b=EeofcxpSeomfQf7RbE33IpnyaZPBVoIbRHE5dinfKa4duyqhY/krgk/HXuDDzTlsj3
         SFO9lkCi8PRb9HNiOzdphmjUukHyJi12/Q9tXDYiiajXZ8664NfjGA8dbVo9GAeQsEZ+
         ia3SuALCc+sDyZO/2fV9y0fvR0N6DOfoO+r0w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756412716; x=1757017516;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=526DZvOdfFdWnRr7VLIYoJ9rOuKdtRXZH6VtJYFQMAI=;
        b=thH3gPPnSXVhRADCtDRCoqkebjsp0rxpWVkeYV0ELTVnUcGPik/rXSLWWoL3O252Gz
         PsvTRptCQEAfxT+GMiJcPdc5rcHJ7YkzyKfWUTrew5LyaAGS4cNDpC+Ef0vLwIDVH5Ks
         43T7DAgZAq+IURf7tFUNKxH5QWJXzjCdCJhvAl/aZXUa7m7SdD2ilLmpCtJTe+wRBcuE
         Ll5v3YFEhwZcGsVspHta3QLzUm+tX5DUO36Q+mOMgaeZxzriBeiBrJd1kEN6ApDwFG99
         g0ZLrCqPAZXtwWFSwGi0K/NhTVARVNe8pfktdr6xUDjXr15R90LUJLNqsZP+FrH6tldE
         qCPg==
X-Forwarded-Encrypted: i=1; AJvYcCU1mPQCw1i8tINWC2A/ElPsfp/8YBSgVtb30h2wi+DlXgUDuepyX0DSYc0mdMyKX1O71qdqy7Z1wTYMVdYEJg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyqn5e5aW/fK2l0v5QQqFhQcqxKwjQHoJzaq8Nxr2E0KZtyKe2c
	DGc0XiG1dpqgQfgN6unpQ9w2Kw7olBmBvevFppOwk0DakqkNpLM5vnGPgrQ0uHd3fg==
X-Gm-Gg: ASbGncsktwOnB08d+Z++7JZkrJifrw8PS//zr9OD7ifIIOZY9Z2wqcn+X6AsS+eI7Td
	my8ozJeq2n1zypkbJCXN2/xr6v3qcmKvcpQEJxBxbSqPwHT2KAj5d7si6RoCI9x4KzQYJ2j6/pP
	NibW4rRsmOfdJpeYgKlALEtSH7W8MEz3Aa45O9HdrmdAqohTZ4OY1eKexA5FSgt68iAIKKSsKVW
	UJG44hdIGM96rpCLJpsosaY2+oClvFrufJxDneKqG4UHcOeOrP/PC9HxBh9tOX/+5R3M96hQt//
	8jt2GNStAkT4HMBTkXFYjKWsHyZFEdMGiFCmuiqkjQfgwhcoInIS1h/eKJqlCPvncwlAD6UfW4q
	WmppZpqAag/HbcuTUDiQNNl281p26JYNYQN2yKGCJOySxuZzrKaSZgmfqVUXuFm5THkvGhgY=
X-Google-Smtp-Source: AGHT+IGZpPB1acpeu6npCjJnCfSo43c/nVfDcPN4PgeohagoMI2YXoVU4nxMTi/b5qaB6M6hyplRlg==
X-Received: by 2002:a17:903:1b65:b0:246:b1fd:2968 with SMTP id d9443c01a7336-246b1fd2ab8mr192079555ad.9.1756412715244;
        Thu, 28 Aug 2025 13:25:15 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e14:7:2893:df0f:26ec:df00])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-24905bb28d4sm3845375ad.92.2025.08.28.13.25.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Aug 2025 13:25:14 -0700 (PDT)
Date: Thu, 28 Aug 2025 13:25:12 -0700
From: Brian Norris <briannorris@chromium.org>
To: manivannan.sadhasivam@oss.qualcomm.com
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Mahesh J Salgaonkar <mahesh@linux.ibm.com>,
	Oliver O'Halloran <oohall@gmail.com>, Will Deacon <will@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Niklas Cassel <cassel@kernel.org>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
	Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH v6 2/4] PCI: host-common: Add link down handling for Root
 Ports
Message-ID: <aLC7KIoi-LoH2en4@google.com>
References: <20250715-pci-port-reset-v6-0-6f9cce94e7bb@oss.qualcomm.com>
 <20250715-pci-port-reset-v6-2-6f9cce94e7bb@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250715-pci-port-reset-v6-2-6f9cce94e7bb@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_212519_103953_1FD081E5 
X-CRM114-Status: GOOD (  31.26  )
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

Hi,

I've been testing this out with various endpoints (both upstream and
not...), and I have a question that intersects with this area:

On Tue, Jul 15, 2025 at 07:51:05PM +0530, Manivannan Sadhasivam via B4 Relay wrote:
> From: Manivannan Sadhasivam <mani@kernel.org>
> 
> The PCI link, when down, needs to be recovered to bring it back. But on
> some platforms, that cannot be done in a generic way as link recovery
> procedure is platform specific. So add a new API
> pci_host_handle_link_down() that could be called by the host bridge drivers
> for a specific Root Port when the link goes down.
> 
> The API accepts the 'pci_dev' corresponding to the Root Port which observed
> the link down event. If CONFIG_PCIEAER is enabled, the API calls
> pcie_do_recovery() function with 'pci_channel_io_frozen' as the state. This
> will result in the execution of the AER Fatal error handling code. Since
> the link down recovery is pretty much the same as AER Fatal error handling,
> pcie_do_recovery() helper is reused here. First, the AER error_detected()
> callback will be triggered for the bridge and then for the downstream
> devices.

I've been trying to understand what exactly the .error_detected()
involvement should be here (and what it actually does, despite the
docs), and especially around its return codes.

Specifically, I'm trying to see what's supposed to happen with
PCI_ERS_RESULT_CAN_RECOVER. I see that for pci_channel_io_frozen, almost
all endpoint drivers return PCI_ERS_RESULT_NEED_RESET, but if drivers
actually return PCI_ERS_RESULT_CAN_RECOVER, it's unclear what should
happen.

Today, we don't actually respect it; pcie_do_recovery() just calls
reset_subordinates() (pci_host_reset_root_port()) unconditionally. The
only thing that return code affects is whether we call
report_mmio_enabled() vs report_slot_reset() afterward. This seems odd.

It also doesn't totally match the docs:

https://docs.kernel.org/PCI/pcieaer-howto.html#non-correctable-non-fatal-and-fatal-errors
https://docs.kernel.org/PCI/pci-error-recovery.html

e.g., "PCI_ERS_RESULT_CAN_RECOVER
Driver returns this if it thinks it might be able to recover the HW by
just banging IOs or if it wants to be given a chance to extract some
diagnostic information (see mmio_enable, below)."

I've seen drivers that think they want to handle stuff on their own --
for example, if they have a handle to an external PMIC, they may try to
reset things that way -- and so they return PCI_ERS_RESULT_CAN_RECOVER
even for io_frozen. I'm not convinced that's a great idea, but I'm also
not sure what to say about the docs.

On the flip side: it's not clear
PCI_ERS_RESULT_NEED_RESET+pci_channel_io_normal works as documented
either. An endpoint might think it's requesting a slot reset, but
pcie_do_recovery() will ignore that and skip reset_subordinates()
(pci_host_reset_root_port()).

All in all, the docs sound like endpoints _should_ have control over
whether we exercise a full port/slot reset for all types of errors. But
in practice, we do not actually give it that control. i.e., your commit
message is correct, and the docs are not.

I have half a mind to suggest the appended change, so the behavior
matches (some of) the docs a little better [1].

Brian

> Finally, pci_host_reset_root_port() will be called for the Root
> Port, which will reset the Root Port using 'reset_root_port' callback to
> recover the link. Once that's done, resume message will be broadcasted to
> the bridge and the downstream devices, indicating successful link recovery.
> 
> But if CONFIG_PCIEAER is not enabled in the kernel, only
> pci_host_reset_root_port() API will be called, which will in turn call
> pci_bus_error_reset() to just reset the Root Port as there is no way we
> could inform the drivers about link recovery.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

[1]

--- a/drivers/pci/pcie/err.c
+++ b/drivers/pci/pcie/err.c
@@ -219,13 +219,10 @@ pci_ers_result_t pcie_do_recovery(struct pci_dev *dev,
 	pci_dbg(bridge, "broadcast error_detected message\n");
 	if (state == pci_channel_io_frozen) {
 		pci_walk_bridge(bridge, report_frozen_detected, &status);
-		if (reset_subordinates(bridge) != PCI_ERS_RESULT_RECOVERED) {
-			pci_warn(bridge, "subordinate device reset failed\n");
-			goto failed;
-		}
 	} else {
 		pci_walk_bridge(bridge, report_normal_detected, &status);
 	}
+	pci_dbg(bridge, "error_detected result: %d\n", status);
 
 	if (status == PCI_ERS_RESULT_CAN_RECOVER) {
 		status = PCI_ERS_RESULT_RECOVERED;
@@ -234,6 +231,11 @@ pci_ers_result_t pcie_do_recovery(struct pci_dev *dev,
 	}
 
 	if (status == PCI_ERS_RESULT_NEED_RESET) {
+		if (reset_subordinates(bridge) != PCI_ERS_RESULT_RECOVERED) {
+			pci_warn(bridge, "subordinate device reset failed\n");
+			goto failed;
+		}
+
 		status = PCI_ERS_RESULT_RECOVERED;
 		pci_dbg(bridge, "broadcast slot_reset message\n");
 		pci_walk_bridge(bridge, report_slot_reset, &status);

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
