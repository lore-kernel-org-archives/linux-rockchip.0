Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C85FDCA0EE4
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Aug 2025 06:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2fyA9VCTmaKhMSDiBs5TZFsp7YVcbdozNxIOvgVJalA=; b=oQM9+7UqNLSRLX
	nBTNJrFcX4+4sqMlNU+SDdMbSlaeDo+3aahElGq5L89jPgh0Gso05sOFflj6MYMgNfdmHAMd1kwqX
	RlDcQUYdUj/4B2APmkFyEAnzhtlz0QVIYP60VjVaNbBrcDAvsq9TVzX2+YXY30F19eyugs9WFWID1
	YmY+DUY72c4llmzPb45qFM6VS3qEqLsU5XRJzCIo1tgv+YEl/LLfxEMGuO9Oyyp21VzqkazQoSjs5
	0av+pd17/J3lMXY3mVj5iXMYDg1Xy0F5IYY/2/GWBUVH/mHNZKqVwldVoguqjDDLNwxBdiORMlDCO
	/dZc3zSMqTEaesKlfdkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uphmq-000000040b2-1eNU;
	Sat, 23 Aug 2025 06:31:36 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upSgn-00000002oiN-46CN
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Aug 2025 14:24:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 370E7A583B1;
	Fri, 22 Aug 2025 14:24:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE016C4CEED;
	Fri, 22 Aug 2025 14:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755872660;
	bh=GHecUB/f6hF+l9nChS4AFiY+XY/E6xx0si6J6vs4S50=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dQhLwhwK9qrnQh0flYJggQka8E9ZJzmwlNyAz3bfl0zQfiwan5NF/9FvEXCkpfzG2
	 UupBjYLXpTAxzPNfowHY8wR7FevmagLt8My5R2DRDtbh89GRxOWNmxWxoSHxRiuWRq
	 Vo/k7FSAsf6Pk+xGvOF41pl0MkbnNsWqEZ49JWls1wxcthZveWEQhM+OaCijUyK06P
	 /r7MpjTSsCvyJue9PKF6SCPgoLB5ah9QXKItaB0BZDPD7hOrkaYbN0la8fsaShRnmc
	 DZsqAb946JMkf8qu9xNWWPGOST3sTqIf3kVJkrsUoqXnFEUqqZtInP5MYOnlZPXwnV
	 Ee7I6aPWCj55Q==
Date: Fri, 22 Aug 2025 09:24:20 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	jose.abreu@synopsys.com, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	kernel@collabora.com, nicolas.dufresne@collabora.com,
	Heiko Stuebner <heiko@sntech.de>, nelson.costa@synopsys.com,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	shawn.wen@rock-chips.com, Hans Verkuil <hverkuil@xs4all.nl>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] media: dt-bindings: snps,dw-hdmi-rx.yaml: Updated
 maintainers entry
Message-ID: <175587265951.3629173.15028167331028929815.robh@kernel.org>
References: <20250820103059.342850-1-dmitry.osipenko@collabora.com>
 <20250820103059.342850-2-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820103059.342850-2-dmitry.osipenko@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_072422_070568_6BC0FC8E 
X-CRM114-Status: GOOD (  10.30  )
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


On Wed, 20 Aug 2025 13:30:59 +0300, Dmitry Osipenko wrote:
> Shreeya no longer works at Collabora, set Dmitry as maintainer of
> the Synopsys HDMI RX binding.
> 
> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> ---
>  Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
