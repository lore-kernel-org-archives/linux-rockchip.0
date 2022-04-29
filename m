Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBD1EC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 12:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AFpH924YVuMLGzNTTzTrqIL3GhLwcTA2vT5vZcAfztM=; b=VY4aW8oKCITuN2
	v50Jxienaebd4/ZNTzUmfdrwR5VJqcaS5gLTTC11FaRxFDJ25+0qCQwzcXvZCxBGk9C0YdIqi5GJ4
	uIjjutgTUoxYbKbvr7W1o6NVpBvFRdobdNRDlUQE/qxWYF4UEjMBU4326+vYCJeSD1O3TGKR7MuoT
	W3Ej1j0SiQi/+LVSgkJOtzXg+RblFO2yo3ymKE4yMklyERrLvAjkSs+KEUFFKtZyh5pFCd4mJAzHJ
	vWuPovhxjX2NCJg/LcBIXFqGwBDA8eGRjL6ux7FQTfMj+1EKJ93AFHmlpIIhQ7Mwrx7tOQd//JMeM
	at5PBGDVmYpUqlAv05Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkPWx-00B61B-Gq; Fri, 29 Apr 2022 12:15:27 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkPWm-00B5yX-Cu; Fri, 29 Apr 2022 12:15:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=nJbZKj7+pWCDUFlNUm1wgYBm08byh6iVe5oLUsV2N0I=; b=5S
 j/EYV/8pbsLLSu8n1/uFFbh2LWnTM81hBfk5ByckrGFEz/Rzm0HXbq8JtQJgO5q8+P9NvMdC1CJYr
 pRPj16atkhl+PJjTdufp6ZRrDM4Le5t3OVL/LfORBPTg8OyraEq2jc4EYMRjWXLyKwzmhkOZxajJq
 SdpcKlQ30SYXps4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1nkPWS-000TZv-69; Fri, 29 Apr 2022 14:14:56 +0200
Date: Fri, 29 Apr 2022 14:14:56 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
Cc: kuba <kuba@kernel.org>, davem <davem@davemloft.net>,
 joabreu <joabreu@synopsys.com>,
 "alexandre.torgue" <alexandre.torgue@st.com>,
 "peppe.cavallaro" <peppe.cavallaro@st.com>,
 netdev <netdev@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Device Tree <devicetree@vger.kernel.org>
Subject: Re: Re: [PATCH V2] ethernet: stmmac: support driver work for DTs
 without child queue node
Message-ID: <YmvWwIgE71iwZhgp@lunn.ch>
References: <20220428010927.526310-1-jay.xu@rock-chips.com>
 <20220429004605.1010751-1-jay.xu@rock-chips.com>
 <Yms3ynT8RGmldAkm@lunn.ch> <2022042909545741446644@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2022042909545741446644@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_051516_459899_9633E914 
X-CRM114-Status: GOOD (  19.79  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Adding device tree list.

This is mostly a device tree issue, so the device tree Maintainers
should be part of the discussion.

> >On Fri, Apr 29, 2022 at 08:46:05AM +0800, Jianqun Xu wrote:
> >> The driver use the value of property 'snps,rx-queues-to-use' to loop
> >> same numbers child nodes as queues, such as:
> >>
> >>=A0=A0=A0=A0 gmac {
> >>=A0=A0=A0=A0=A0=A0=A0=A0 rx-queues-config {
> >>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 snps,rx-queues-to-use =3D <1>;
> >>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 queue0 {
> >>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 // nothing need here.
> >> =A0=A0=A0 };
> >> };
> >>=A0=A0=A0=A0 };
> >>
> >> Since a patch for dtc from rockchip will delete all node without any
> >> properties or child node, the queue0 node will be deleted, that caused
> >> the driver fail to probe:
> >
> >Is this the in tree dtc? Do you have a commit hash for it? That should
> >probably be used as a Fixes: tag. Or that change to dtc needs
> >reverting because it breaks stuff.
> > =

> The patch is a hack patch for some products and have not in tree dtc, I s=
aid that to
> explain a possible case how things happed, it's only a case of no child q=
ueue node.

So this has nothing to do with the kernel dtc, or the upstream
dtc. This is only a 'vendor crap' dtc which has been hacked?

Why should mainline care? Is there anything in the DT standard which
says the compiler can optimise out empty properties?

     Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
