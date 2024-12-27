Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B767EE7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 07:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FBX3zitDK/22fEosz6OFf3GpMRPb5ONF6GehavpRPCY=; b=FJhG3n7mrGsP5y
	W4oEuBK8ud1sJuvHtgL8/scHUsaqZfLARIVlWt6MbNsfNFUSGCNtN7pwcnEorenktkt0An5WjhmHg
	v8cDMHNbDUXDmgjoSrVE8QJQG2nRNQ+qU7+Y5sTsb9eqTQ6Zxfzkmc0M4nMEFfGPciRP3bckqscCl
	zRuU67YSdt+BdoqKnBDWV4chzBwJoaho6ZBeDgAmej5nWZ9xDGk14aUuaGImok/jmelFbNgktUHTL
	nx29OjGQ3Mv1FGaBAnQ8vMelgnN/GQ7RPn84LxI4JCZDvmDejO/irwoKCpJJddaCNc08EcvNnMi+S
	KaD8nXRU7a4GaGJjDDcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR534-0000000HIPw-2GdN;
	Fri, 27 Dec 2024 07:46:18 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR50Y-0000000HHzs-2fHm
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Dec 2024 07:43:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 1FBB7A411C6;
	Fri, 27 Dec 2024 07:41:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05BF0C4CED0;
	Fri, 27 Dec 2024 07:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735285421;
	bh=zZhOuRm+PASsS+k7ZVAuUfCNT4LIZdHw6OjN5ARVmYY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ddaAuQgSf19y8QIcXS+2Ll0bc63nSIiRT8kMrzva8xDQsFvZbGV9SEcEIw1GqrrRH
	 OaQKN8ksOpMvxiYdim4SAHFzA1YENP8igJvyAW7zUNVowAgReoZ+iaykOvrmNrpFFB
	 NuDjGEejKAv3J9DVwlHhkQg8nBjTdCuc/lba+sLOdqxUb8mTQY97MEY2NQwcfkKUCQ
	 1bYTBm182WBLA035A00yQdP30CSotsLf556gfpyVBzYDsJJyNU2fW1qJ12/OIwMsDT
	 vR6+uo2xESGxTlS8NEjJ0nzzNdKHsCYjF/TVBioiZLy9aqxigL3DvbmyLr6YZuZ2gr
	 R9HhrrfjoH5Ew==
Date: Fri, 27 Dec 2024 08:43:38 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-serial@vger.kernel.org, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>
Subject: Re: [PATCH v2 09/17] dt-bindings: serial: snps-dw-apb-uart: Add
 support for rk3562
Message-ID: <etw5iuii7i7mmedlvqkuufis5pl7zlyiipnu4zeqmfjrvsc2vb@ptgw76zcpsm7>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-10-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241224094920.3821861-10-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_234342_738975_41F90A3F 
X-CRM114-Status: UNSURE (   6.60  )
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

On Tue, Dec 24, 2024 at 05:49:12PM +0800, Kever Yang wrote:
> Add rockchip,rk3562-uart compitable for rk3562.

Typos.

This we see from the diff. Say something not obvious. Where is the driver change? Why aren't the devices compatible?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
