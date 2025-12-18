Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19834D6ACDC
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Dec 2025 10:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xbM9XJX+mMOQbGcLuaQCRZ4osKZ4kmgg/lle9+BFbo=; b=rTRmxdMiCE3yhH
	f+CSvwPjiaYuyWnn3zKrkGvbClPyFdGBVoITqMZF2G1cV8pigZu/iEkrFZ4he5cuXgwSHtVNbz1h0
	123jw1h6d8ToPwejasWKCRbuvAPxKpJQoQOZuxRkJuCMs7u1TYBtWnhWB4+fmoBxt1lY45ns5TGG7
	fcr7bd5F380Sc5MlUk562e8+lwYkUPNQAdV0zg7WDKAy14L7P6C+G1rHUsVTdC4hzeZth7xxjQH0S
	HsPy+HmcPTUmW26Sc9cF5d69uftW0betcyKgdZsLZLwcScDKEQh/BccNph6Kvbswg3AB/sNVElaUz
	vF5yiHsfxMYpnew4DZ4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWApT-00000008Brz-0lyV;
	Thu, 18 Dec 2025 10:01:51 +0000
Received: from out-179.mta1.migadu.com ([95.215.58.179])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWApQ-00000008Bqz-0Ry5
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Dec 2025 10:01:49 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1766052086;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ylzd1ln6LrPrU5IC4uXLIKJ7Ql65APzUO/VNo8GxV7Y=;
	b=j7kmck4wc7HHErDctdNIYTjlGojlUoIWOGFilkrn+iWBwzzoeGXFdYljq+AC/nyrWQeEo4
	FuApn/D8zehu9u+vDVqu1gXcL4dGdUScOPvJutpuvoLVnVhh6Wa1zuCqdHoTyiBxXUHhYS
	baDcjSx9OuDnWXRwxOkHRP/0ikmx2HvUcM/38dRSNOfEWOn+PPsJstF//fvYXZf5mkGVv1
	1db3oFD6ei9zOTET25TnB7E53ERZQc23kY8+vNJu20UBsaHFbKAdTJFSW791XqeD2Rt2Cb
	VggvMvhAnQlR1aQ2BP8YtgiIpG4DEDaI2tFmkjWBreWYe6e0Cqhx8JtiIAAIPg==
Date: Thu, 18 Dec 2025 11:01:16 +0100
Message-Id: <DF197NIRHLIJ.3LIG9GJGJQLQX@cknow-tech.com>
Subject: Re: [PATCH v2 1/4] PCI: rockchip: limit RK3399 to 2.5 GT/s to
 prevent damage
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Dragan Simic" <dsimic@manjaro.org>, "Manivannan Sadhasivam"
 <mani@kernel.org>
Cc: "Geraldo Nascimento" <geraldogabriel@gmail.com>, "Shawn Lin"
 <shawn.lin@rock-chips.com>, "Lorenzo Pieralisi" <lpieralisi@kernel.org>,
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>, "Heiko
 Stuebner" <heiko@sntech.de>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Johan Jonker" <jbx6244@gmail.com>,
 <linux-rockchip@lists.infradead.org>, <linux-pci@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
References: <cover.1763415705.git.geraldogabriel@gmail.com>
 <eaa9c75ca02a53f8bcc293b8bc73d013e26ec253.1763415706.git.geraldogabriel@gmail.com> <qncj72c3owrw7rvnj6jit2sbn4ojyr3kztcjailfxtdboan6sy@ddh5g7v4fcvt> <3ea8ac20-6332-0c0c-645b-36ca4231c109@manjaro.org>
In-Reply-To: <3ea8ac20-6332-0c0c-645b-36ca4231c109@manjaro.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_020148_300658_97AD8FA7 
X-CRM114-Status: GOOD (  20.96  )
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

On Thu Dec 18, 2025 at 10:47 AM CET, Dragan Simic wrote:
> Heello Manivannan and Geraldo,
>
> On Thursday, December 18, 2025 09:05 CET, Manivannan Sadhasivam <mani@kernel.org> wrote:
>> On Mon, Nov 17, 2025 at 06:47:05PM -0300, Geraldo Nascimento wrote:
>> > Shawn Lin from Rockchip has reiterated that there may be danger in using
>> > their PCIe with 5.0 GT/s speeds. Warn the user if they make a DT change
>> > from the default and drive at 2.5 GT/s only, even if the DT
>> > max-link-speed property is invalid or inexistent.
>> > 
>> > This change is corroborated by RK3399 official datasheet [1], which
>> > says maximum link speed for this platform is 2.5 GT/s.
>> > 
>> > [1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf
>> > 
>> > Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
>> > Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
>> > Cc: stable@vger.kernel.org
>> > Reported-by: Dragan Simic <dsimic@manjaro.org>
>> > Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
>> > Reviewed-by: Dragan Simic <dsimic@manjaro.org>
>> > Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
>> > ---
>> >  drivers/pci/controller/pcie-rockchip.c | 10 ++++++++--
>> >  1 file changed, 8 insertions(+), 2 deletions(-)
>> > 
>> > diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
>> > index 0f88da378805..992ccf4b139e 100644
>> > --- a/drivers/pci/controller/pcie-rockchip.c
>> > +++ b/drivers/pci/controller/pcie-rockchip.c
>> > @@ -66,8 +66,14 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
>> >  	}
>> >  
>> >  	rockchip->link_gen = of_pci_get_max_link_speed(node);
>> > -	if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
>> > -		rockchip->link_gen = 2;
>> > +	if (rockchip->link_gen < 0 || rockchip->link_gen > 2) {
>> > +		rockchip->link_gen = 1;
>> > +		dev_warn(dev, "invalid max-link-speed, set to 2.5 GT/s\n");
>> > +	}
>> > +	else if (rockchip->link_gen == 2) {
>> > +		rockchip->link_gen = 1;
>> > +		dev_warn(dev, "5.0 GT/s is dangerous, set to 2.5 GT/s\n");
>> 
>> What does 'danger' really mean here? Link instability or something else?
>> Error messages should be precise and not fearmongering.
>
> I agree that the original wording is a bit suboptimal, and I'd suggest
> to Geraldo that the produced warning message is changed to
>
>   "5.0 GT/s may cause data corruption, limited to to 2.5 GT/s\n"
>
> or something similar, to better reflect the actual underlying issue.

s/limited to to/therefore limit speed to/ ?

Cheers,
  Diederik

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
