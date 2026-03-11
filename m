Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C42110611E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 11:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6M2rFQkRB+lsAf3b/kcjmlDN2Hur3JCz8WiR0gjOllE=; b=MT/P9RnG4D5e6p
	t5tYCRmx6qBHpCEv2Rgo20IypkaPkVvINfyJbfD/edK4m6ZyY08rWyB2Dq3rmiz1I8I0jLV9/0gaR
	FoO/DIEDGKXWYGgfx2KeatVUMQn0nowzqfCNTte4TW5+vmUUY9U2FPDWTkK0W/b0GgXsKDd+5iXSn
	ezKiiDTDQ/+uUxwRMrUR8N/+L8z3U4I6Kw+xKfhn85hgww4pOn6yK/rAxwgH0KODUjQBdichZlRKL
	OkLj6bB0ECQ4VzF8mgU5JLy3VpOW0wJpMJZoWudq8n9ygCLH911e/U6Kd+4JPtZiT554cGIE40Wip
	MP+8dJLUNYxmdiMGAcaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0HNX-0000000BT05-02kH;
	Wed, 11 Mar 2026 11:05:27 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0HNV-0000000BSzs-3n8k;
	Wed, 11 Mar 2026 11:05:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E84CA6013E;
	Wed, 11 Mar 2026 11:05:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B6B7C4CEF7;
	Wed, 11 Mar 2026 11:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773227124;
	bh=BgLuLCpNt8YikxfkQc3yHUtyj3A7U731tcqZVJqZcPM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Eq24ij66oMbyTp1yMVUcNGzHc65udFXi7P4njEUQUTlsmxGbZAXKzJnJ9FlGX4OH5
	 8EJdF+H5q/pNCEc9m2zibOEiho3mYxp4rAL9uS9PPqOtvTL8xHBpnRMGEbfimxABGW
	 iwMIRCPAVGeGn0VdA1SK0UaD2BwdtnTi6a4F0LutKSrnZ0AUkgwHiWqYHeq2Yo+hQB
	 BX77RFSPRFEXfbCIFMcHngXlOR7zC1ZXJuzsO2W8TO5YKYMAyOP3XiWDOWdC2AEfyb
	 Py7eKU8OcsajO4JUfyO2uBjjwKK/FMz5jqIaK34DcCF4ou2NdzrBnCexEbFUbfSP1d
	 bXzS+9ypNh3XA==
Date: Wed, 11 Mar 2026 12:05:15 +0100
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
	Lukas Wunner <lukas@wunner.de>, Richard Zhu <hongxing.zhu@nxp.com>,
	Brian Norris <briannorris@chromium.org>,
	Wilson Ding <dingwei@marvell.com>, Frank Li <Frank.Li@nxp.com>
Subject: Re: [PATCH v7 0/4] PCI: Add support for resetting the Root Ports in
 a platform specific way
Message-ID: <abFMa6DCGGLUHddA@fedora>
References: <20260310-pci-port-reset-v7-0-9dd00ccc25ab@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260310-pci-port-reset-v7-0-9dd00ccc25ab@oss.qualcomm.com>
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

On Tue, Mar 10, 2026 at 07:31:58PM +0530, Manivannan Sadhasivam via B4 Relay wrote:
> Changes in v7:
> - Dropped Rockchip Root port reset patch due to reported issues. But the series
>   works on other platforms as tested by others.

Are you referring to

## On EP side:
# echo 0 > /sys/kernel/config/pci_ep/controllers/a40000000.pcie-ep/start && \
  sleep 0.1 && echo 1 > /sys/kernel/config/pci_ep/controllers/a40000000.pcie-ep/start

Then running pcitest only having 7 / 16 tests passed ?

If so, isn't that a problem also for qcom?


There is no chance that the patch:
"misc: pci_endpoint_test: Add AER error handlers"
improves things in this regard?

Or will it simply avoid the "AER: device recovery failed" print?


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
