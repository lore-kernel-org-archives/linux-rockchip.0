Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68B1CC87FC3
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jul 2025 10:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ob1ppON310gb6tguhF1ABShvsciOwzaFlOVj0BCjfr0=; b=3FuC3ByQkF32/S
	ZQ6LP+ruaYiby8dR3s1ekqDhDhh2UWC14Db4JtoPu493uAi3W622EwZF/QO4nx7KMOe5rPeadGjoK
	lpd5AFT97teYwxYO7H9GeUL6txEcR31dZKp6ji+iZvu/PHTVyRFBUz9uh9IUxow45JPVS9A0xOxUi
	M6WqMl4nblWjmEM+aqMM3NLWmSa21sAca/Ll5lsQzscqVSNpvgGp4RXh3CJvlgWudyeha4uozRWbj
	D/ui9BCTQFDJRPRzxkJHrGixjAcEHriniFd0IcQDKwlt1Gsbgx25Y0pDboqSTB39WKKYKw9AnnB0r
	yCu6regD1kXebH/cOdrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucijd-0000000CMP6-1Lz7;
	Fri, 18 Jul 2025 10:54:37 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uciKb-0000000CIfu-3BUU;
	Fri, 18 Jul 2025 10:28:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8B7EB5C5C60;
	Fri, 18 Jul 2025 10:28:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F19AC4CEEB;
	Fri, 18 Jul 2025 10:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752834524;
	bh=mLEIXOd7eZdISffuLnCpahYVvfWHAggJn8bBD65Jk+8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eOF4Nqqmy62wOTE6iyDUN+If8Qx8CfTpC+N5PVoQWCe5WQhj+WWHU6Tyv3hi9eNhr
	 FIoXTkuUWVi3cRj6W8FENzyay4s+zTghm5Vc8MYJeCWKF0Bw2h413GvxFcYuAR9NAR
	 AsrElcNhPyoTnVlsCVCrQaopu97MxZTemFopAhXFV4BOoUGeXjbUQVsadiEe+JLuav
	 yW4WCznBsJ0bxTwTsqy3Tg/wFN93AxwPEFWVFLdH8LZz/8Qm3JTU1utMKG2qb9dBji
	 6qVErsWOPsaWploLev2unOE7h5UtBN5Bu1SJAkGsv/Rx6PACnsIUF3Gl6VH3Kjssvn
	 2XjO0g8ZNrKhw==
Date: Fri, 18 Jul 2025 12:28:37 +0200
From: Niklas Cassel <cassel@kernel.org>
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
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
	Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH v6 0/4] PCI: Add support for resetting the Root Ports in
 a platform specific way
Message-ID: <aHoh1XfhR8EB_5yY@ryzen>
References: <20250715-pci-port-reset-v6-0-6f9cce94e7bb@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250715-pci-port-reset-v6-0-6f9cce94e7bb@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_032845_881901_9B554E45 
X-CRM114-Status: GOOD (  12.71  )
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
> Testing
> -------
> 
> I've lost access to my test setup now. So Krishna (Cced) will help with testing
> on the Qcom platform and Wilfred or Niklas should be able to test it on Rockchip
> platform. For the moment, this series is compile tested only.


Since this patch series implements two things:

1) Testing sysfs initiated reset:

selftests before sysfs initiated reset:
# FAILED: 14 / 16 tests passed.

# echo 1 > /sys/bus/pci/devices/0000:01:00.0/reset

[  145.567748] pci-endpoint-test 0000:01:00.0: resetting
[  145.638755] rockchip-dw-pcie a40000000.pcie: PCIE_CLIENT_INTR_STATUS_MISC: 0x3
[  145.639472] rockchip-dw-pcie a40000000.pcie: LTSSM_STATUS: 0x230011
[  145.640063] rockchip-dw-pcie a40000000.pcie: Received Link up event. Starting enumeration!
[  145.682612] rockchip-dw-pcie a40000000.pcie: PCIe Gen.3 x4 link up
[  145.683162] rockchip-dw-pcie a40000000.pcie: Root Port reset completed
[  145.810852] pci-endpoint-test 0000:01:00.0: reset done

selftests after sysfs initiated reset:
# FAILED: 14 / 16 tests passed.

(Without this patch series: # FAILED: 7 / 16 tests passed.)

So for this part:
Tested-by: Niklas Cassel <cassel@kernel.org>




2) Testing link down reset:

selftests before link down reset:
# FAILED: 14 / 16 tests passed.

## On EP side:
# echo 0 > /sys/kernel/config/pci_ep/controllers/a40000000.pcie-ep/start && \
  sleep 0.1 && echo 1 > /sys/kernel/config/pci_ep/controllers/a40000000.pcie-ep/start


[  111.137162] rockchip-dw-pcie a40000000.pcie: PCIE_CLIENT_INTR_STATUS_MISC: 0x4
[  111.137881] rockchip-dw-pcie a40000000.pcie: LTSSM_STATUS: 0x0
[  111.138432] rockchip-dw-pcie a40000000.pcie: hot reset or link-down reset
[  111.139067] pcieport 0000:00:00.0: Recovering Root Port due to Link Down
[  111.139686] pci-endpoint-test 0000:01:00.0: AER: can't recover (no error_detected callback)
[  111.255407] rockchip-dw-pcie a40000000.pcie: PCIe Gen.3 x4 link up
[  111.256019] rockchip-dw-pcie a40000000.pcie: Root Port reset completed
[  111.383401] pcieport 0000:00:00.0: Root Port has been reset
[  111.384060] pcieport 0000:00:00.0: AER: device recovery failed
[  111.384582] rockchip-dw-pcie a40000000.pcie: PCIE_CLIENT_INTR_STATUS_MISC: 0x3
[  111.385218] rockchip-dw-pcie a40000000.pcie: LTSSM_STATUS: 0x230011
[  111.385771] rockchip-dw-pcie a40000000.pcie: Received Link up event. Starting enumeration!
[  111.390866] pcieport 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
[  111.391650] pci_bus 0000:01: busn_res: [bus 01-ff] end is updated to 01

Basically all tests timeout
# FAILED: 1 / 16 tests passed.

Which is the same as before this patch series.

So AFAICT, this part does not seem to work as advertised.

Instead of quickly stopping and starting the link, I also tried to reboot the
EP board, which does the configfs writes and starts the link automatically on
boot, but that had the same result as quickly stopping and starting the link.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
