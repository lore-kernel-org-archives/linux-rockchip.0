Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 902D5CFD2E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 08:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=biB1uwYw4MtY3v9m/RQi9ZYRVgXPZFLAMRl3reSdVPE=; b=S+z78jxBW8SZYZ
	uiXZssioINqXbmBb918DBgIVl48mLsqH3j8W7YnfvunFecYR4PuFmkTk+CzB3bV25r2pwrRs7msY7
	xxts91z/0KcvtCqhk3zy2oDCB3j02LXsQUcK8MrkJkHtCVHNPyBMLknQSvEOriIqyDcsc5at6VOi6
	pEK+H6Rebx/LDCQjQEzCH7iwC+x+waiBbN1OVg0BHDu0GBer1mcPazxGi2kLCIuShEhEdRUPxNLlV
	ZtJgj8Ix8DzvCmgjmJrxZP/eHItEC9dCzrxRvTnR7lj7YeEVYg5xpnBl2VXwfBor96RryWjgJUgnj
	HI8BpaUWxW7s8s37O1Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szAyX-0000000FgWu-2nKs;
	Fri, 11 Oct 2024 08:26:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szAyM-0000000FgVQ-39VA
	for linux-rockchip@bombadil.infradead.org;
	Fri, 11 Oct 2024 08:26:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=PfTN62SBwHkJDxK1ml+ODb9+lUSG2oq5bPvClVaPvHc=; b=RJqEsP18yLu6/sUfU5WWlf2qnl
	kwKPVSBvdPy8EKPTZRa7XMcdHIG3FgliofoJklTi9fzViXMwbJ5MT4BT69nKcMnAkeksK2+9nv29I
	fGlhlJQVcnaV+GomjN2wPoQOsZhDvsN1Y9b0io9dALfxFNMg1NngG0joUjMuHsB9AydQ2UlksPBHL
	wGWIhAdyFET+83vEg+hhxmUNiEgMLpNXMHmNrGPhaUau0E9aZDPjoHR/OufMweZS8Uvy+Z5AnSsOL
	wU3Dv2EuaUNNnGUYOA8SGi+t3kLr9t3NNSAMLEgkQkFd1zqUKUqAoVgrFRD4BI2zp2G/eLNvbh95p
	J0A2Q8Uw==;
Received: from nyc.source.kernel.org ([147.75.193.91])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szAyJ-00000005pQ7-20hU
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Oct 2024 08:26:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 1AEE2A45227;
	Fri, 11 Oct 2024 08:25:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D554C4CEC3;
	Fri, 11 Oct 2024 08:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728635160;
	bh=L50c2V8W/RlzvTod6zS7Wvye+fgjpftpYkVsG3RMnD4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=KL1dfOjOCZgmtryrJRAb/xQiK/Rt7bUOYOh1c+m/DeyeMtEyn/FIlOBzsboqo1N8J
	 girR/BLuhyuqQg5zge8hM9ZY9s93a2RO5569JRtG7rY2f96N+Pqbc2dEg6GosBVS7w
	 R4Ue3DvBF+cSICmJTJsBav/LNRDWW4+RjUFXXcaLydiNbmG8VXzOL0TdOOJQeZDhBN
	 niI2eFtYbvO8TFbTfGl6Y3qNHjInn+EGt/I7D5/orjC/ajwQ3mgJP4FkYJXapZy2cV
	 Xuu+q9PwqphttjtuMorvJsqll4lmnIeIolDGMalwFgbU/b36JPJ3VcONMhopriXtol
	 Bn8o/8WXuJZ1Q==
Message-ID: <11cf07c7-08d6-425d-9590-1afab6d052d2@kernel.org>
Date: Fri, 11 Oct 2024 17:25:56 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/12] PCI: rockchip-ep: Refactor
 rockchip_pcie_ep_probe() MSI-X hiding
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Rick Wertenbroek <rick.wertenbroek@gmail.com>,
 Wilfred Mallawa <wilfred.mallawa@wdc.com>, Niklas Cassel <cassel@kernel.org>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-8-dlemoal@kernel.org>
 <20241010072512.f7e4kdqcfe5okcvg@thinkpad>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20241010072512.f7e4kdqcfe5okcvg@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_092604_105681_BE1FADD7 
X-CRM114-Status: UNSURE (   9.35  )
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

On 10/10/24 16:25, Manivannan Sadhasivam wrote:
> On Mon, Oct 07, 2024 at 01:12:13PM +0900, Damien Le Moal wrote:
>> Move the code in rockchip_pcie_ep_probe() to hide the MSI-X capability
>> to its own function, rockchip_pcie_ep_hide_msix_cap(). No functional
>> changes.
>>
>> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> 
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> Btw, can someone from Rockchip confirm if this hiding is necessary for all the
> SoCs? It looks to me like an SoC quirk.

All SoCs ? Are there several versions of the RK3399 ?
As far as I know, there is only one. This is unlike the designware IP block used
in the RK3588 which can also be found in other SoC and may have some variations
due to different synthesis parameters.

-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
