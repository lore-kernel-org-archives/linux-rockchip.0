Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30923C10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 15:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTpBLnl9naMv3tt3U/7yuDCMXztvhJgM64AyWXD29bc=; b=BE1O001eNGkRPl
	pZ0PKGVGgYVpYOtgeyaRS7ccJlp7HPARcXY1TkRs2Tp/r0vI0MYYGz/0jISvEbxBLYAhzMXHul/6Y
	1yWWApr8jK5lxMZRBbM/bJPQTdV3XF3yCr8Z64Scgo0VIIc8kmkJO9YXWLfjn7qm+D8btCEjGLIdX
	9blJybfCfUe3zcVgP1Rj8DSsKA1FVzOL5rzSLLIux4Q5VdnZXSuJEcil7PDQciB+jnw99Q8htY8bD
	UcDDjNG8eKYVgMnzhV06ULqG7LD6WuN2LvuK27PSmlBAicVkcrpAKzpKZ5TaIb62hQLb4722kx4ip
	HzbG0X/PonX943tl8kkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4N4m-0000000BoAG-2aEh;
	Tue, 07 May 2024 15:49:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4N4j-0000000Bo8S-2Caf
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 15:49:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C36606178E;
	Tue,  7 May 2024 15:49:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D71FC4AF18;
	Tue,  7 May 2024 15:49:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715096992;
	bh=73IkLegRnrX7zQ8f5gztcN1MdWKuO8IZnFZ5nj4zXSk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CJWhACGT+KQcnWUR2wiLfGSGU7mWAaNI4VzE0cKztOi2ILoMc1Cmjea1jy3yAEvG0
	 a8FGErPv1G+SSdpfyYFSYbvQGNfBIP3BYBeqZLAHwrjN9iuclKVpAfllQkqiGurGP7
	 nwpI54K41Q6WzRmLS26IlhEnzlW8bTrT56ee5jVo+2Xg5s64HA0Abc0aVuWcDkKQaB
	 pVkyq08T/QNsbKWtH+rAI4JPIXpf7pS1/egBuVKjVdFoQV3JFbVlaEIP4IevgpG0K0
	 uIR2ej0CxhZdjGtcTqgHnR3zHnORUtNEr0QqSQ8oIND0aZMwI7L+TS1zmv8Z7JU4sW
	 X04jX+slQT2aQ==
Date: Tue, 7 May 2024 10:49:50 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org, Simon Xue <xxm@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Jingoo Han <jingoohan1@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 06/14] dt-bindings: rockchip: Add DesignWare based
 PCIe Endpoint controller
Message-ID: <171509698733.530839.7604642260352271551.robh@kernel.org>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240430-rockchip-pcie-ep-v1-v2-6-a0f5ee2a77b6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-6-a0f5ee2a77b6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_084953_638020_95D755D2 
X-CRM114-Status: UNSURE (   7.99  )
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


On Tue, 30 Apr 2024 14:01:03 +0200, Niklas Cassel wrote:
> Document DT bindings for PCIe Endpoint controller found in Rockchip SoCs.
> 
> Signed-off-by: Niklas Cassel <cassel@kernel.org>
> ---
>  .../bindings/pci/rockchip-dw-pcie-common.yaml      | 14 ++++
>  .../bindings/pci/rockchip-dw-pcie-ep.yaml          | 95 ++++++++++++++++++++++
>  2 files changed, 109 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
