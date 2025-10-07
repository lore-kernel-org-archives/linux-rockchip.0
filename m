Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D3ECCCD183
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 18:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NtCP60JcF/gRkHQIhbFjC5XgiRxls/UwF5TsedGPhfs=; b=sP9shHLq2yIytJ
	oN9miQ+kd+pgXPkK+Dj7cN51D6Von09AntiKqU5MISvunZFK28WPhj4q0R58MjK7byNBg70j2H7B1
	RAxBWa+wWiWghuNvNA0s/QpMXTA0ziA2eXevV/STFpKYjLqAN0yzIoRB6oP5ozrPgXrhpJM+8b3hC
	bUFWNHiOidrMsLRUNSDj2R9OnUeUqxBxAGDzMavpN8aPTOh5vhqkP4IQvBq6Adm7QIgK5LfVnBDQe
	NOM39pmD+MYHCkuVbigi8VdqzU9v4BlpntAVTbgQRCNJfDeXWYsVBWySpJjzKIWQ1wxL5thCtcxZ+
	8nGgPRcJyRVXx7hpn+/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6CUk-00000002b3q-1CMg;
	Tue, 07 Oct 2025 18:33:06 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6CUh-00000002b3E-3Rz8;
	Tue, 07 Oct 2025 18:33:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=nXZFtFTkE8xIC71M/N7hUPoMl0yiOIyLa6hKguyz/kw=; b=qof3P//dbmF0+Sf4x0+XNpMlD+
	aqzn3EyLNptQS4jZTQexx5yJhGVp3UvvsjWMDbogW0HAuOrsn/yq36ha83A29PFp6sW87mn7YzoB0
	mxPsp0dhFyxQyrV8WXV+fdDNAhtxmUDIrM/EyV/sy69XAJGsCr525eLcAS0g9e1V7YBY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1v6CUP-00AO3J-AP; Tue, 07 Oct 2025 20:32:45 +0200
Date: Tue, 7 Oct 2025 20:32:45 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: jjm2473 <jjm2473@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	heiko@sntech.de, quentin.schulz@cherry.de,
	kever.yang@rock-chips.com, naoki@radxa.com, honyuenkwun@gmail.com,
	inindev@gmail.com, ivan8215145640@gmail.com,
	neil.armstrong@linaro.org, mani@kernel.org, dsimic@manjaro.org,
	pbrobinson@gmail.com, alchark@gmail.com, didi.debian@cknow.org,
	jbx6244@gmail.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: add LinkEase EasePi R1
Message-ID: <a0501abe-d86d-4f3a-9d55-c842bfafc190@lunn.ch>
References: <20250929065714.27741-1-jjm2473@gmail.com>
 <20250929065714.27741-4-jjm2473@gmail.com>
 <d8ad476c-d0c7-4e97-9e76-540a539ffb52@lunn.ch>
 <CAP_9mL4ofig-X-w9wx1A5D_eVXROo6AVFBSwp4mh=kj7webpPA@mail.gmail.com>
 <7e219aef-88a0-4184-9553-30dcbc8dbd79@lunn.ch>
 <CAP_9mL6utQjN_2EZ4vs3K8jzcxHxvKWNTNEXZ9fAx4HuA=DNXA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP_9mL6utQjN_2EZ4vs3K8jzcxHxvKWNTNEXZ9fAx4HuA=DNXA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_113303_859659_98DB18FA 
X-CRM114-Status: UNSURE (   8.68  )
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

> I also notice that you suggest use {tx|rx}-internal-delay-ps instead
> of  {tx|rx}_delay in
> https://lore.kernel.org/all/e4d3127b-c879-4931-9ea0-de7449bc508c@lunn.ch/ ,
> but I think this depends on stmmac driver.

It depends on the driver implementing those standard properties. But
as pointed out elsewhere, tx|rx-delay are magic, nobody knows what
they do, so it is hard to implement the standard properties to replace
them.

     Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
