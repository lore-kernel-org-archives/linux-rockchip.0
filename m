Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDC68D3C927
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Oct 2024 01:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3xe/dJ0pqB3hM+OCTyys3bhzy75+3zdgcz1EGQE8iL8=; b=s7A7A5q4KA3Dd1
	w5+UfWQC8xeAiIcZaftn01mI5HuSwYXjyHnyyFbF65uKygNZjNvXldaYFMczreAFvo3BqxyuuW5oE
	yD8oM1JjQhfZGszuIOTMm9y+YDI5Vg52mMKXJyka8YabbMSQHBYOXQCHWwPiU1OEdm9S+vlAYDPj3
	d1n7KYfqq0oufKmDm75FMmnCfkH8X9peglLpcoPMYdxuR1Ujcqju2Y0Vmo//ZmbBQXFyEkUXNoQi0
	kzuvNN4S+Vnoc2ZG9l6U9ALZQaT1Fh4Bz/91VCPWHMkAybnGRX5Z/aTJGXO2myhxJ4W4VqkgfNSLX
	vBa3hl2mKKMvVVqq9rzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2KPP-00000004CiR-1wVm;
	Sun, 20 Oct 2024 01:07:03 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2KPM-00000004Chy-2Fo9
	for linux-rockchip@lists.infradead.org;
	Sun, 20 Oct 2024 01:07:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0E6805C1113;
	Sun, 20 Oct 2024 01:06:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C04FC4CEC5;
	Sun, 20 Oct 2024 01:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729386418;
	bh=QykmPv/BE6IkDfW5xnvum0kBf+OEw3Cv6VurB2ePnZU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CP5lx5NDeHvNn1dsSX9/F0Nl0iOQemMFzRDokTKuQD90OB5AC8Gyb8/cu/az29bX+
	 yRp4Pr6Ydv4aSBtadDIXn4bG/M0kv7v4nBMG51XglANyLJ730E4nlwl4vFfcT6SJd/
	 GmF4TqhWcvUEV0UJo8/N2rWTNw/rVXnguKGdsZc7HWhTkEEqzOnnqTnwCaUpWh3R6V
	 4VxZB5rJjgsbZX5WqtlVQtmLrVQv1dzEpkp2NFLQO7TDiRxpKUcVNcEZVyEg92ms2N
	 uH+ZamMstcWnbIvYTND0oisZ7C2XH39drySY0QEmrQf2b0c+8WfgCLzaKmcoahMM+y
	 kctDBFacgFexg==
Message-ID: <6aa0a404-9bc8-4b0c-b6f9-a455a3033670@kernel.org>
Date: Sun, 20 Oct 2024 10:06:54 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 00/12] Fix and improve the Rockchip endpoint driver
To: Anand Moon <linux.amoon@gmail.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Rick Wertenbroek <rick.wertenbroek@gmail.com>,
 Niklas Cassel <cassel@kernel.org>
References: <20241011121408.89890-1-dlemoal@kernel.org>
 <CANAwSgQ+YmSTqJs3-53nmpmCRKuqfRysT37uHQNGibw5FZhRvg@mail.gmail.com>
 <f13618a6-0922-4fc8-af01-10be1ef95f0d@kernel.org>
 <CANAwSgRDbCCridYMciq=xSDPV0qGhs-OhCJ_uniXFbp-yM5CcQ@mail.gmail.com>
 <0f2cf12b-3f27-403c-802e-bb8b539766b0@kernel.org>
 <CANAwSgRXfZ9hgdJpSrwucHQfMToZwSC8N-b4MYLZjsryid=Fpw@mail.gmail.com>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <CANAwSgRXfZ9hgdJpSrwucHQfMToZwSC8N-b4MYLZjsryid=Fpw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_180700_705912_5E68FE59 
X-CRM114-Status: UNSURE (   8.15  )
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

On 10/19/24 15:24, Anand Moon wrote:
> I have a question can new test external low power GPU with external cables
> which supports PCI host (RC mode) with external power supply for GPU card.

I do not understand this sentence.

> Which mode is suitable for the PCIe endpoint controller or PCIe host controller?

If you do not know/understand what PCI endpoint is, you probably do not need it
at all. If you are using your board to simply connect and use regular PCI
devices, you do not need the PCI endpoint framework/drivers.

-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
