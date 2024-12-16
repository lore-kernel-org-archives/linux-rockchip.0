Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E75EE7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 06:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=knFntWz5K/O1JOTAWP0St53OiC20Umo3e0hYFpIzcbc=; b=y24aeYAgsx/PVz
	bE/4WjtqBM4mVn+mpor72Wns62YO8v/Auf/cfXOgbrpZw/Y33iMkY9u/LYQlmgzi0DDRzy9bLgoOt
	H2BebuKeP1MeKzfwDjItwsbQO9mUoHYTms10TzlIT4EyPl+G1VgkLbVXhV13HK3RbmnmXNqFs9rrL
	yAVhC8qOiRqyoaIN4yXDpsNI8C2CtjVpcpRxtz+toGNNDA+j0GAKmrOyDDwSZhj+Hr/C8wsDm/6yX
	OOdLRUA3Z2y/lffmbJxCY0WEw7dWIQh8wuIUIZWgA2Xf3auiZMFlh2941mCsG6k4O+MbQb03NjD1Y
	DgGdkKfaU1QqQXke732Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN49Y-000000099D2-0R01;
	Mon, 16 Dec 2024 06:00:24 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN49V-000000099Cd-0tJd
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 06:00:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 31209A4092A;
	Mon, 16 Dec 2024 05:58:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D62C7C4CED0;
	Mon, 16 Dec 2024 06:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734328819;
	bh=bN6Mk/xRm/WwBSgPyNIv9xzDr9WBPJDR6DaiXA2uEqg=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:From;
	b=bgmchC39k4BQs9D/GWI4ttCgXXrg+Vt0ouNMJzFZU7KuFCcO2AeQPpuHOwloTkHKN
	 Zn1I4mljPuVcDvuPzslufPNU/6tzid0Dr4SFZv1i0LwthZc6xMnMxB5flJOlXAvMUv
	 bTWCfKkSckr++rX9fHAjMPx57a4xAkl1KIdst6+ky9hdxPXwN3o7xn6s4yi+/xNlTP
	 UvuGREJhQsgBXre3Mwc/n/tKx6cErVuTtfQvMr1ryUW/JCmHd1xFtTTeLXE4pY1iMb
	 AQ7GuPXWVZR4pNJhxf6YHBpI/u4uFZQobbnT/SezVg0kZvQNx11wcXtWJJ+qQLl7BX
	 koP4pM7PMM89Q==
Date: Mon, 16 Dec 2024 07:00:16 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Damien Le Moal <dlemoal@kernel.org>
CC: Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rick Wertenbroek <rick.wertenbroek@gmail.com>
Subject: Re: [PATCH v5 00/14] Fix and improve the Rockchip endpoint driver
User-Agent: K-9 Mail for Android
In-Reply-To: <20241216054953.kj43om6fbjksbjcy@thinkpad>
References: <20241017015849.190271-1-dlemoal@kernel.org> <20241216054953.kj43om6fbjksbjcy@thinkpad>
Message-ID: <45CC5230-1DFD-4F7E-A0E6-F4FAC5586038@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241215_220021_685063_0B8D9DCF 
X-CRM114-Status: GOOD (  11.56  )
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



On 16 December 2024 06:49:53 CET, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org> wrote:
>On Thu, Oct 17, 2024 at 10:58:35AM +0900, Damien Le Moal wrote:
>> This patch series fix the PCI address mapping handling of the Rockchip
>> PCI endpoint driver, refactor some of its code, improves link training
>> and adds handling of the PERST# signal.
>> 
>> This series is organized as follows:
>>  - Patch 1 fixes the rockchip ATU programming
>>  - Patch 2, 3 and 4 introduce small code improvments
>>  - Patch 5 implements the .align_addr() operation to make the RK3399
>>    endpoint controller driver fully functional with the new
>>    pci_epc_mem_map() function
>>  - Patch 6 uses the new align_addr operation function to fix the ATU
>>    programming for MSI IRQ data mapping
>>  - Patch 7, 8, 9 and 10 refactor the driver code to make it more
>>    readable
>>  - Patch 11 introduces the .stop() endpoint controller operation to
>>    correctly disable the endpopint controller after use
>>  - Patch 12 improves link training
>>  - Patch 13 implements handling of the #PERST signal
>>  - Patch 14 adds a DT overlay file to enable EP mode and define the
>>    PERST# GPIO (reset-gpios) property.
>> 
>
>Damien, please wait for my review before spinning the next revision. Sorry for
>the delay.

Mani,

This series has already been merged, and is in Torvalds tree.

Except for patch 14/14 which is a device tree overlay, so it should go via the rockchip tree.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
