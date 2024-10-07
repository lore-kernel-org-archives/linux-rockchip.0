Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9E78CFB441
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 10:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGsDyEechRknKremR0gB1gVNEgFnJXCj7Q2lmCAnlBo=; b=dGP68U42I+9byw
	K9ziXB0MeqPW36gYc4lmufrd0D1TxW8mDaGcrvlP+7dEanyS8814HunsQjnS1qAxJShDj07pdXry5
	PjA9g6HfrmWHfg8UjlrN/PaBjU6o3qrf8kxHxzZ/TsFqkNvLt7xTbpgaKaLkhGo6Z9nsdGUDpkrw2
	SiLoAFNflea7RcMKF04uGQ1Sh7C1FL9dit6A3YntgcWsadXNixt/7EyQWSjoZu4pKmoI/vPhs2I1S
	I35IqB4ntKSROYicXs74ggiLxre69QNIwZ2BtT5hndhDx1Ha+8KCyVgcYHHP2K7pQWid5qFtqEZ93
	7WnHhUZ0ZL7emPPa6pkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxkxL-000000023DT-3845;
	Mon, 07 Oct 2024 10:27:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxkwJ-0000000231u-2Y8Y
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 10:26:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C44C65C5CE5;
	Mon,  7 Oct 2024 10:26:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C75E9C4CEC6;
	Mon,  7 Oct 2024 10:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728296766;
	bh=x4sIbfqk5TN8dm10lhqSSvvMtyOM99SvhPSJNX174AA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=j2XM1BIznolGgKKidb+9miWN3HrxXA9rORQ00/YAkhHRo5/LtgAMj9D7wrfwAYdDS
	 8gep9GMl1HmnuSQ/BgzJcICM3Stcj+ipADazTFo/JAyUNl8qydYNWvmxkXHjZ5D+dM
	 my+Os8TQ1sD0P/+BKGUjah9KKOKO+vADLHbEoKrsmR8q5Ze+LwXQAt/N8el2H3gmnD
	 EZ+Jo1NVsl4Bbd6FkCeI3OjLJUCnmkE5wSK/ZLqjHrR4YL2luYPmntFtTlXw3/wkfX
	 vD26cqRLq1+gnkBbEj1cdzC1KMuoYSXP5U6boO9pMe6j+mXR38jipBMotA0F44o9IH
	 Wh81iNKEYU+DQ==
Message-ID: <8296f547-7c09-48e0-82ac-49eb20e93d1d@kernel.org>
Date: Mon, 7 Oct 2024 19:26:03 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 00/12]
To: Niklas Cassel <cassel@kernel.org>
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
 Wilfred Mallawa <wilfred.mallawa@wdc.com>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <ZwOxqvzBG4i_UGKc@ryzen>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <ZwOxqvzBG4i_UGKc@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_032607_734305_58B9AAA0 
X-CRM114-Status: GOOD (  11.36  )
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

On 10/7/24 19:02, Niklas Cassel wrote:
> On Mon, Oct 07, 2024 at 01:12:06PM +0900, Damien Le Moal wrote:
>> This patch series is the second part of the former version 2 of the
>> patch series "Improve PCI memory mapping API". This second part is split
>> out as it deals solely with the rockchip/rk3399 PCI endpoint controller
>> driver.
> 
> Since this series depends on:
> [1] https://lore.kernel.org/linux-pci/20241007040319.157412-1-dlemoal@kernel.org/
> 
> I think that you should have added a link to that series in this cover letter,
> and more clearly state that this series depends on [1].

Indeed. I botched this cover letter :)
Will fix it in v2.

-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
