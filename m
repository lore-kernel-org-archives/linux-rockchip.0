Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42E9BD116F3
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Nov 2025 07:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPGzoGU0iq//zIWPS3xSPMF2+L5XcASdxxStSrb4Fls=; b=r7uEHR6Cktbxvh
	HPVUpPB88GN7YA8SYFBWn2JK57U+DYhoGGFyzjRUjGRhD6WqmUjKJVJbWocjpAQ3UgsQnk+b1BBvv
	NIu/w187zin/k2JGZowaZdYmXi/Fs2DoPEE62C7t65ZEel312nKs3Fi9yUm5O1vJJ8QUUbUCIARNu
	D4n6gOD4kDc6N6uUwjF0gx8I7wxitL3jbyeaAbV6zOFvsZheVt6+1VWx5z6wUSKfDgc9wwsIyGo1M
	3gNxEpyywVeKlJnFi+4t/4z3T4Z+kn9plBrJAxoPYRVALJFHpyj3OvOmamPUBrkemQcaDQlr8WXHi
	yUovCN/VUUs6Bt++Omog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOWfN-0000000G98H-1Z80;
	Thu, 27 Nov 2025 07:43:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOWfM-0000000G97a-23MR;
	Thu, 27 Nov 2025 07:43:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 95E8F60178;
	Thu, 27 Nov 2025 07:43:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C097C4CEF8;
	Thu, 27 Nov 2025 07:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764229427;
	bh=stfZYo+TOb5/udfo8Ni52S3dEgdKEJoaTftGPEkaTEk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n2qhreBZ6hx5qKaCQD/Ummy08gyYqCO2jKo6y4KlAWs6fsaomo28Rkfmj8hLIA7Ro
	 ua3cW71SxmOAIGMzNb+r/J73tDPM0Jb3kHqqC+Ek6jHOhtj94HTgQ7ZHjJJeBuY3fK
	 8L2DRE+BkndgKHhIDgVfwtVNbHlSya8cCZwdkV4iKC1Ii75+ISf+nxYHzWhAc4ld31
	 EQQRHl+kbzAhd89CDlVtnrDnMFc28chxSunAM/vnmu9Xu3QUsrTI+ksnEP7mOWaNwB
	 U7on4MYwJ/qEX92ONC+CrvivQHzi3tOqNaQs0SzMFnlE1cKMCF+4WgEhB/0tdw7Qtq
	 suC8JCokvLrfA==
Date: Thu, 27 Nov 2025 08:43:41 +0100
From: Niklas Cassel <cassel@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krishna chaitanya chundru <quic_krichai@quicinc.com>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 0/6] PCI: dwc: Revert Link Up IRQ support
Message-ID: <aSgBLQ7rDOiEFhMB@ryzen>
References: <20251111105100.869997-8-cassel@kernel.org>
 <mt7miqkipr4dvxemftq6octxqzauueln252ncrcwy6i2t7wfhi@jtwokeilhwsi>
 <aSRli_Mb6qoQ9TZO@ryzen>
 <7667E818D7D31A4E+cf7c83d4-b99c-469d-8d46-588fc95b843f@radxa.com>
 <F11F0D13437B012D+0c15c5ca-f64f-49f1-9ff5-26b88d59ff59@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <F11F0D13437B012D+0c15c5ca-f64f-49f1-9ff5-26b88d59ff59@radxa.com>
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

Hello FUKAUMI Naoki,

On Thu, Nov 27, 2025 at 04:34:53PM +0900, FUKAUMI Naoki wrote:
> Hi all,
> 
> I'm very sorry, but my ROCK 5C appears to be unreliable. (It worked fine
> with vanilla v6.13, so I thought it was fine.)
> 
> I replaced it with another 5C (Lite), and now every method (Niklas's patch,
> Shawn's patch, and applying patch 1 and 2) seems to work.

Could you please give us some more information.

Does the Rock 5C Lite have a PCIe switch?

Does Rock 5C Lite work fine with the current code in mainline?
(i.e. with bus enumeration when Link Up IRQ is triggered).


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
