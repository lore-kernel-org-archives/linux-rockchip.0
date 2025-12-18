Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AD27D68BDA
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Dec 2025 10:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mq9NBkPIsm38xK/g+b1TXKtD6DkqVR7RzuIYc7tF2so=; b=QLLM0divrVM+kv
	pERTKBbIFIkXrCAO2LXeura6N2A/rMiw7CQ+PRykXi1WTS5V6uRFOstTx6uRQ8YTNGCTnBXRc8IO8
	FBECW118sJTeFu6eNVNqG65nfOUvxCBpHHAcrzE6PZFx6SVGQSTAoXElIdfiBnI/ZCO60kLYDAkwN
	XfgSO8kguHRQpazczZn/+Ruyw2kI7CmlaED1eI8nhpS+u6MXwVKhYjF8Zl/j+NOJNyHm5ONltzVPV
	Ig+swXZB+R2MjziIoMN3hE28HsOY05+sXqOmSsTb5kRVnw3RhR/PqWWQ6ezisgjM0WhfHjV188io4
	mgU2F0AT5nsGXPNwDpRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWB0f-00000008CdF-1ABz;
	Thu, 18 Dec 2025 10:13:25 +0000
Received: from mail1.manjaro.org ([2a01:4f8:c010:b6e8::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWB0c-00000008CcV-1A9h;
	Thu, 18 Dec 2025 10:13:23 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id A7CEF417D6;
	Thu, 18 Dec 2025 11:13:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1766052793; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=qem8ZP+yDudSM4rWioIewZLF1OHQf2ievkUplCtY2mM=;
	b=pIsna1JwNg8vU0xABStqy6mAATplVrqC1O7JmOuFKXA0z/Oy/TC5FMsv4ynfcA0uVNw0K/
	VY6H1SPK/uguUuDIGU88wgsm3tVsjd4J31+G7RDI90yaeALyO6HeMPC3zkn3hqMhyt6/Wc
	zgev/YylCGFOg64bEg/b1h5lgvFMzgdWlQYvJq15Xh1KEwtykuc4kvPsDz2QJk1/+5+q85
	UBG26lGzzWmk//X0BNCQK/k2ytYZwR9DPwFen6tgleqnyPHZJ2wiuTKgDDAUeRzt9bBhYD
	KUFXU6MZg7OuSejxmT/UQrflxq1U36sKWnHgbAzrYjxLGZ8eB+2bNEt0psbvng==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <DF197NIRHLIJ.3LIG9GJGJQLQX@cknow-tech.com>
References: <cover.1763415705.git.geraldogabriel@gmail.com>
 <eaa9c75ca02a53f8bcc293b8bc73d013e26ec253.1763415706.git.geraldogabriel@gmail.com> <qncj72c3owrw7rvnj6jit2sbn4ojyr3kztcjailfxtdboan6sy@ddh5g7v4fcvt> <3ea8ac20-6332-0c0c-645b-36ca4231c109@manjaro.org> <DF197NIRHLIJ.3LIG9GJGJQLQX@cknow-tech.com>
Date: Thu, 18 Dec 2025 11:13:10 +0100
Cc: "Manivannan Sadhasivam" <mani@kernel.org>, "Geraldo Nascimento" <geraldogabriel@gmail.com>, "Shawn Lin" <shawn.lin@rock-chips.com>, "Lorenzo Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Rob Herring" <robh@kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>, "Heiko Stuebner" <heiko@sntech.de>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Johan Jonker" <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
To: "Diederik de Haas" <diederik@cknow-tech.com>
MIME-Version: 1.0
Message-ID: <656e9b4e-c350-f808-701e-e49e8dad7062@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2 1/4] =?utf-8?q?PCI=3A?==?utf-8?q?_rockchip=3A?= 
 limit RK3399 to =?utf-8?q?2=2E5?= GT/s to prevent damage
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_021322_533034_49BB6C7D 
X-CRM114-Status: GOOD (  23.13  )
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

Hello Diederik,

On Thursday, December 18, 2025 11:01 CET, "Diederik de Haas" <diederik@cknow-tech.com> wrote:
> On Thu Dec 18, 2025 at 10:47 AM CET, Dragan Simic wrote:
> > On Thursday, December 18, 2025 09:05 CET, Manivannan Sadhasivam <mani@kernel.org> wrote:
> >> On Mon, Nov 17, 2025 at 06:47:05PM -0300, Geraldo Nascimento wrote:
> >> > Shawn Lin from Rockchip has reiterated that there may be danger in using
> >> > their PCIe with 5.0 GT/s speeds. Warn the user if they make a DT change
> >> > from the default and drive at 2.5 GT/s only, even if the DT
> >> > max-link-speed property is invalid or inexistent.
> >> > 
> >> > This change is corroborated by RK3399 official datasheet [1], which
> >> > says maximum link speed for this platform is 2.5 GT/s.
> >> > 
> >> > [1] https://opensource.rock-chips.com/images/d/d7/Rockchip_RK3399_Datasheet_V2.1-20200323.pdf
> >> > 
> >> > Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
> >> > Link: https://lore.kernel.org/all/ffd05070-9879-4468-94e3-b88968b4c21b@rock-chips.com/
> >> > Cc: stable@vger.kernel.org
> >> > Reported-by: Dragan Simic <dsimic@manjaro.org>
> >> > Reported-by: Shawn Lin <shawn.lin@rock-chips.com>
> >> > Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> >> > Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> >> > ---
> >> >  drivers/pci/controller/pcie-rockchip.c | 10 ++++++++--
> >> >  1 file changed, 8 insertions(+), 2 deletions(-)
> >> > 
> >> > diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> >> > index 0f88da378805..992ccf4b139e 100644
> >> > --- a/drivers/pci/controller/pcie-rockchip.c
> >> > +++ b/drivers/pci/controller/pcie-rockchip.c
> >> > @@ -66,8 +66,14 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
> >> >  	}
> >> >  
> >> >  	rockchip->link_gen = of_pci_get_max_link_speed(node);
> >> > -	if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
> >> > -		rockchip->link_gen = 2;
> >> > +	if (rockchip->link_gen < 0 || rockchip->link_gen > 2) {
> >> > +		rockchip->link_gen = 1;
> >> > +		dev_warn(dev, "invalid max-link-speed, set to 2.5 GT/s\n");
> >> > +	}
> >> > +	else if (rockchip->link_gen == 2) {
> >> > +		rockchip->link_gen = 1;
> >> > +		dev_warn(dev, "5.0 GT/s is dangerous, set to 2.5 GT/s\n");
> >> 
> >> What does 'danger' really mean here? Link instability or something else?
> >> Error messages should be precise and not fearmongering.
> >
> > I agree that the original wording is a bit suboptimal, and I'd suggest
> > to Geraldo that the produced warning message is changed to
> >
> >   "5.0 GT/s may cause data corruption, limited to to 2.5 GT/s\n"
> >
> > or something similar, to better reflect the actual underlying issue.
> 
> s/limited to to/therefore limit speed to/ ?

That would work well in a book or an article, while slightly terse
wording is usually preferred in the messages produced by the kernel,
or in log messages in general.  Such an approach compacts as much
information as possible in as few words as possible, while still
remaining (mostly) grammatically correct.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
