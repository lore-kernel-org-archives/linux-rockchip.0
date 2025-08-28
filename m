Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 941E0CA0EED
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 01:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GkwOe5+1XUxZV1S3mhFT07UglxgqhqVup0HNuhXa5Qg=; b=o0hsy8vXMo6Mgh
	4CLyzM47rck+pgOdO96P4GK79LDMR/ADG+8nCZ0cpHNiVIQNf51xOBk46fs84Z7/Lg0v6fhy88Trg
	k5n9fC6wSVxBJ9m2xQfT+o+EGuJDDrpJXdZqoLA5XAevxnI+GsBJa7HycUXbbe8CbPt4hVsKJmZzo
	KzwaRzhttikSvH5KJZ4AsXUKgdgM7Vqj4blDa8Jy7kA/kaM0HIWTDQ15vQu3+TsaaR5VNJV9raBE6
	niO+uq+Bj12Civ+24bArxeO9Wi9xxPYMU1NBweEsU+zg3AD2c0XBke099njuCSyGcnqU/AJG0bvHn
	KQlt8mxGkoB+dIS1fKMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urndT-00000003xVY-1swg;
	Fri, 29 Aug 2025 01:10:35 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uriom-000000037Ao-0DMG
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Aug 2025 20:01:57 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-b47173749dbso1067700a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 13:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1756411315; x=1757016115; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=phR9doI5X4q1LR98gybIzZyU1kdJD+t4ijHV2CMLbUI=;
        b=g8pO4gB/UFqK2jagFdPABKdtVN1dAxsPrtdug+4xKQpdaWENt5BynhnXId3yF/Srhm
         tM1NhRO0MJXdBhfGcaHF2rpBuC3WQlHPMHDWgihXIAyiU4FJo5tnff7OT1Ig/c4OCgKG
         ZeiClDFvkwmT7xc+5ZqwtTldsUL8Cv43O3JPM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756411315; x=1757016115;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=phR9doI5X4q1LR98gybIzZyU1kdJD+t4ijHV2CMLbUI=;
        b=PF9uQU3llLnUCEDlCH+tDdxD2BBSU1TJH8tIQQyy+/o5V0jtuTLQWteCH5iJtsgBqM
         rkQ+Vwmk+vJnKK0AOBRu1eyjgzqXtFwTyeVs+hmFWHfWnm4YxPCekp1QkNusZKtO2R/6
         8cSofq/9vypDZkfVDrMq8WQHnycUKEoMIrr8X9bYOQKb7IqT12kmLhJhTRLLPi0Iez0+
         34f7D7YH5/cCK4HQxNaBEbyXrZvnZvNEQ4B5N47C0Ki13klxBuHfZ5kjSgkVLoilAjou
         Zd/2+ZvgLbhM9cAZy6sa/kKJCIBqZpk51ddoYbaGHK58PFHw6w+1i9/2yoSCG/9bLqdl
         FtmA==
X-Forwarded-Encrypted: i=1; AJvYcCV4FYgmm+PK8AKxBnCSFccDTnRj61PZfmc4ty7XY1ENgz4RkUnKR2r7GelRqD7I7d6B1CvUKgIngTQeHbLrWw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+qm4et3rTpPuckDScDXIOuoKjfGJeJeoUIye1edc6jPoDCF6h
	hLwirHxRAnzTd4pxEdu94WlaqVGCbkQ0Lpd62g4jOyEQ7Is1YXy6zObyp4JqIY3jUg==
X-Gm-Gg: ASbGncu4PqaLYob3hRmN/dql/w9+1Tk9jdCXamTd7ozKwKEC5JGDKLlszS+VVos1Eu3
	IVABhuDVVxSuvbNazRawZgvBJRiFv4PqK9pvmvzlsEeI+SxI+QXsSNtpdDdvTlJagb8OrTCW08G
	4fSyDK9Pkmm4WJxQN0BxATbRYe1WUK0X7qFbrTjZsct3Q0fjMI0GSCXMqHKFgpo7p4hvKIsxHdc
	NV4i6Wh7idKrT44nfQ6jCvC76VY0XTZbXXuy+yymOF2WCQWvWVysgTJpfa8f37gGIJVQrVIp8OG
	Vk0B0NYmysXeZtkk1oTFyQTkRbyZq6O7aTeeU6ZhR1i88QAIr7iK2tICSuQM3iCq40C18/SqXii
	3V1ax2gJ/HCCWFB3ANUzq67Fe8LDJW/t4oTXbtJ0uc2SGyo2ck2iRzO5aDgtA3ULSaJLp+ZU=
X-Google-Smtp-Source: AGHT+IGRMI2y6ukLzuxA0A2Y52962J0xzxUUU/p9/lxC5pAaBaeFe2iw+3odm0xYYkw4AIuMGBT6Hw==
X-Received: by 2002:a17:903:13c8:b0:248:6d1a:430f with SMTP id d9443c01a7336-2486d1a46b2mr149396845ad.25.1756411314801;
        Thu, 28 Aug 2025 13:01:54 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e14:7:2893:df0f:26ec:df00])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-24905da3be1sm3479885ad.69.2025.08.28.13.01.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Aug 2025 13:01:53 -0700 (PDT)
Date: Thu, 28 Aug 2025 13:01:51 -0700
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
Subject: Re: [PATCH v6 0/4] PCI: Add support for resetting the Root Ports in
 a platform specific way
Message-ID: <aLC1rzdTVoN56Phc@google.com>
References: <20250715-pci-port-reset-v6-0-6f9cce94e7bb@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250715-pci-port-reset-v6-0-6f9cce94e7bb@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_130156_125277_3274CACE 
X-CRM114-Status: GOOD (  26.57  )
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

On Tue, Jul 15, 2025 at 07:51:03PM +0530, Manivannan Sadhasivam via B4 Relay wrote:
> Hi,
> 
> Currently, in the event of AER/DPC, PCI core will try to reset the slot (Root
> Port) and its subordinate devices by invoking bridge control reset and FLR. But
> in some cases like AER Fatal error, it might be necessary to reset the Root
> Ports using the PCI host bridge drivers in a platform specific way (as indicated
> by the TODO in the pcie_do_recovery() function in drivers/pci/pcie/err.c).
> Otherwise, the PCI link won't be recovered successfully.
> 
> So this series adds a new callback 'pci_host_bridge::reset_root_port' for the
> host bridge drivers to reset the Root Port when a fatal error happens.
> 
> Also, this series allows the host bridge drivers to handle PCI link down event
> by resetting the Root Ports and recovering the bus. This is accomplished by the
> help of the new 'pci_host_handle_link_down()' API. Host bridge drivers are
> expected to call this API (preferrably from a threaded IRQ handler) with
> relevant Root Port 'pci_dev' when a link down event is detected for the port.
> The API will reuse the pcie_do_recovery() function to recover the link if AER
> support is enabled, otherwise it will directly call the reset_root_port()
> callback of the host bridge driver (if exists).
> 
> For reference, I've modified the pcie-qcom driver to call
> pci_host_handle_link_down() API with Root Port 'pci_dev' after receiving the
> LINK_DOWN global_irq event and populated 'pci_host_bridge::reset_root_port()'
> callback to reset the Root Port. Since the Qcom PCIe controllers support only
> a single Root Port (slot) per controller instance, the API is going to be
> invoked only once. For multi Root Port controllers, the controller driver is
> expected to detect the Root Port that received the link down event and call
> the pci_host_handle_link_down() API with 'pci_dev' of that Root Port.
> 
> Testing
> -------
> 
> I've lost access to my test setup now. So Krishna (Cced) will help with testing
> on the Qcom platform and Wilfred or Niklas should be able to test it on Rockchip
> platform. For the moment, this series is compile tested only.

For the series:

Tested-by: Brian Norris <briannorris@chromium.org>

I've tested the whole thing on Qualcomm SC7280 Herobrine systems with
NVMe. After adding a debugfs node to control toggling PERST, I can force
the link to reset, and see it recover and resume NVMe traffic.

I've tested the first two on Pixel phones, using a non-upstream
DWC-based driver that I'm working on getting in better shape. (We've
previously supported a custom link-error API setup instead.) I'd love to
see this available upstream.

Regards,
Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
