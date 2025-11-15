Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87F72CEB2C9
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Nov 2025 10:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CIyvwqFi5nAUgKiYZy//syVZADvGjzlh8XCVrm9lTxg=; b=HzHIeKe6g0+hbq
	GVKox1n/SJMMPLpdqG+kbWT+3uEIMUbXdew3qLv2r30Ff1LR7G6GJ93HVWMfjhBfmdPfK823z5JEQ
	W1Tlq9bbFIrV2k+WEqUS9WY4zaR4qVmT5ptNateKU4+xGJA+7yjZKUNVdu3cvKnE95FKzRwZAxUAi
	qCEahz/1yeML0aA9VQ0YyGxJCUkKMJOMc1YmCh9BQAEzw3Q3WNihJ2t5ojaXUmjY5ERwFPb0NyiWy
	KDsFzPWR8jUHgmi9TLWiAJ1IujpqGnZtJqqW8sMlEXzETsTET8nUtSTdgegMyIZtPjsryJEXnl/W6
	jtPrNxkzTt3iMVWsJJyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKDE6-0000000DhBl-1qRS;
	Sat, 15 Nov 2025 10:09:50 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKDE3-0000000DhAh-1UVV;
	Sat, 15 Nov 2025 10:09:48 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 205D6410BC;
	Sat, 15 Nov 2025 11:09:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763201384; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=TAhpvtcxWm9IHGf9A0rzeueRcz+eQkl96FnuXumWLrE=;
	b=HCsoERdx+wCfcYL76RWyzHFmRdwscfp5+F2x9G6dYsGDNcPDgFrEg3+Inf5WtgfKdVQ9L3
	mKjZvKSI08VhpujHG8cgJQRVc+Tm36KvBN/RIxqmMTbqssa82gB6r4f4o3ITAPQrZdHtIH
	QllMadYz95++2zitEeh3AK1aWMyC+n2abp4SHCFJsG6EJV9hRZhsR2hjj0wFsrViVazJND
	vuJFR9JYWPbEa/vxk+5Y9g24/iUkgqBMzZxZOcsJjxmC7OkOdJcDa5CBcrtSUuoR3+izXh
	u5CDcEhyAmCAq6tNsd3ylzKmNAYjHY8VeLuxOGnk8NtB4MBHFQgyw1jLqnd8dQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <aRhQMRjffbeCeArE@geday>
References: <cover.1763197368.git.geraldogabriel@gmail.com>
 <b04ed0deb42c914847dd28233010f9573d6b5902.1763197368.git.geraldogabriel@gmail.com>
 <c8a6d165-2cdd-cd0d-4bed-95dfa5ff30d2@manjaro.org>
 <aRhNIcGcQKp2ylqN@geday>
 <85d1543b-ea91-5f0f-59d6-e00fcf720938@manjaro.org> <aRhQMRjffbeCeArE@geday>
Date: Sat, 15 Nov 2025 11:09:42 +0100
Cc: linux-rockchip@lists.infradead.org, "Shawn Lin" <shawn.lin@rock-chips.com>, "Lorenzo Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Manivannan Sadhasivam" <mani@kernel.org>, "Rob Herring" <robh@kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>, "Heiko Stuebner" <heiko@sntech.de>, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Johan Jonker" <jbx6244@gmail.com>
To: "Geraldo Nascimento" <geraldogabriel@gmail.com>
MIME-Version: 1.0
Message-ID: <52931e25-0d6f-ca0a-7c26-2c65ab11432e@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 2/3] =?utf-8?q?PCI=3A?=
 =?utf-8?q?_rockchip-host=3A?= comment danger of =?utf-8?q?5=2E0?= GT/s 
 speed
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251115_020947_569578_4A5BA5AF 
X-CRM114-Status: GOOD (  13.79  )
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

On Saturday, November 15, 2025 11:04 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> On Sat, Nov 15, 2025 at 11:01:21AM +0100, Dragan Simic wrote:
> > On Saturday, November 15, 2025 10:51 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> > > On Sat, Nov 15, 2025 at 10:30:49AM +0100, Dragan Simic wrote:
> > > > Looking good to me, thanks for this patch!  There's no need
> > > > to emit warnings here, because they'd be emitted already in
> > > > the rockchip_pcie_parse_dt() function.
> > > > 
> > > > Please feel free to include
> > > > 
> > > > Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> > > >
> > > 
> > > I disagree, I think the comment stands.
> > > 
> > > Even if we reduce to one line, ex:
> > > 
> > > + May cause damage
> > 
> > Ah, perhaps I wasn't clear enough, so let me clarify a bit.  The
> > comment you added is fine, I just referred to no need for emitting
> > a warning at that point, because it would be emitted already.
> 
> OK, I get it now so I think it's time to send v2 with all that in mind
> :)

Please, wait a day or two before sending the v2, because that's
standard procedure.  Sending more than one version in the same day
is highly discouraged, because it doesn't give enough time to people
for reviewing, and may cause people to look at a wrong version.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
