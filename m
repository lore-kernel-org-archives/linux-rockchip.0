Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 586F1C369B5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Apr 2025 10:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5TSWw6YSYb3Im+tA0wySsNFKR01ijlY33rOknNYTJs=; b=SneV3fPy6OmQ3n
	2E7ADQzFkZ1rZ0r44VNufF/Ad6UTl8xsE2eXVVtDHZtm7CfSqYlB2Y97V+3feihXSz1PQWyocgzXJ
	CzjHaV33njiiDv0WyKEQMrH4vGQ7jW1OB6HC5r74dxMlQIKzFjzhr4rdhT2hvdxkUJo5QE0Ctl4Al
	Eq/wCtWkb9XZT4mkWd2tHOODlfMCVcN5aw6lTRx8gpvrikII3YYjwqBK1/e1XuQ8cJO8GnkbNovoS
	UljwJsnOEoXSMKmjeiK4LkoTSb+YHbjPdT66smW6ItfoRVebOA7BoJgAJBo2kty2W820PvwoMWklg
	0FT0sVYbBsicUgLPXPRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Gos-00000001S6Y-45E6;
	Mon, 14 Apr 2025 10:13:38 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Ghi-00000001PQ7-3xUh
	for linux-rockchip@lists.infradead.org;
	Mon, 14 Apr 2025 10:06:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id B9DC2A49BF1;
	Mon, 14 Apr 2025 10:00:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49B25C4CEE2;
	Mon, 14 Apr 2025 10:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744625173;
	bh=i2lYtsZGAS9XdlrMapzUnk0eGNmZJKYqS1yBto1gtek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dnb1SXSdLlWm+dU/DMNl+RyKzZc5LSYXzbUMlbKHC/QRtbHQXOFlpDtVLJefjzVgS
	 Y/OfrRTqvgGJmx5mZpAph8cMY23YCapEH30D6U6PatxkEQTfgZzvoNilS9NO5EoxX0
	 asAzr60r9aM1TNTcEiRtn+n0ztMCQ5sUHF2R1tP35VZzpytZ39d9vFjTGHz3LvQCQd
	 BAhqL+X4qdb+0dHY6UuSmwemOfxk5IM5ec4+VSMnqK6N+Pti4XcKV+JuDWF+TXIff+
	 7L2lu80MJLKB2BYozNxjS1fPxG7ZpliI8Pp7q8YIJsLCQU4yyn8p7mF37ptpI93FDT
	 tLFZCZHWcv+SQ==
Date: Mon, 14 Apr 2025 12:06:09 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Remove PCIE_L0S_ENTRY check from
 rockchip_pcie_link_up()
Message-ID: <Z_zeERoDtZ52kW0T@ryzen>
References: <1744180833-68472-1-git-send-email-shawn.lin@rock-chips.com>
 <Z_YwNt6WUuijKTjt@ryzen>
 <38e69551-cc40-11a9-191f-de9a193c5e51@rock-chips.com>
 <Z_Y7h1vzVCCEiXK6@ryzen>
 <gogw24yg4lfq77ime7qyurvkef5yvmkkwjxo6xch52fbszibax@diaxredvtcrh>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <gogw24yg4lfq77ime7qyurvkef5yvmkkwjxo6xch52fbszibax@diaxredvtcrh>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_030615_051165_7857383B 
X-CRM114-Status: GOOD (  14.59  )
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

Hello Mani,

On Sun, Apr 13, 2025 at 07:54:28PM +0530, Manivannan Sadhasivam wrote:
> On Wed, Apr 09, 2025 at 11:19:03AM +0200, Niklas Cassel wrote:
> > 
> > It seems like we should really add a warning and a comment in
> > dw_pcie_link_up(), so that others don't get hit by this hard to debug issue!
> > 
> 
> Right. But I'm also wondering if we should use the 'Data Link Layer Link Active'
> bit in PCI Express Capability for checking link up. Qcom driver has been using
> it from the start and there are no reported issues. We could add this as the
> first fallback if the link_up callback is not provided.

Sounds like a good idea, but from looking at:
7.5.3.6 Link Capabilities Register (Offset 0Ch)

"
Data Link Layer Link Active Reporting Capable - For a Downstream Port,
this bit must be hardwired to 1b if the component supports the optional
capability of reporting the DL_Active state of the Data Link Control and
Management State Machine. For a hot-plug capable Downstream Port (as
indicated by the Hot-Plug Capable bit of the Slot Capabilities Register)
or a Downstream Port that supports Link speeds greater than 5.0 GT/s,
this bit must be hardwired to 1b.

For Upstream Ports and components that do not support this optional
capability, this bit must be hardwired to 0b.
"

It sounds like the the 'Data Link Layer Link Active' bit is optional,
or at least optional for Gen1 and Gen2.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
