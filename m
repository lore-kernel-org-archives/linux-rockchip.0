Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D922C32793
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 17:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eYxLn1twINUqa3RyjCx4GMR16ad9yEAANxnt6ooLeyM=; b=gEpbyU2yMI/Cix
	E/ua5IBEMm8tiGxH3fDaGV28pRCDOWJVPI2uEHoEv51Qb3srefc54HsekRLEPYJ4rD86bI93LoXqj
	378/nCLBPk91mjfIyPhLinmiTFIkzBuJ44aTcToMlJJkRao5r25GBUl6THN+QWlV7LPTJRw7ZOtff
	/cOW5PynsfFybXD2GLZ0cnrlEP0OPLt3xpxjopEEHb+yQxjmTXZFVLx/IF0xPJ6JtlnYzBzkj9saE
	UWmzJCMhbCHShQt0mdl4+4NpSDGBsuXnFSZW+GEiauXW+98zLQGtCPIUdozkVe6US/D2e62opS9tO
	7AoD4XFquzmHRZY8u+oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIBpD-001wmo-JH; Wed, 18 Jan 2023 17:02:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIBp1-001wjH-Uf; Wed, 18 Jan 2023 17:02:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5090F6191D;
	Wed, 18 Jan 2023 17:01:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6ACBC433EF;
	Wed, 18 Jan 2023 17:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674061318;
	bh=a84FGLCSP4PpD8EGf1sRH+8aTGt6Fj6ydtWWlmpcOz8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L+8hO2MhIPUNgLfP48afah90W+Xs8YWIoEM837iIGMbMTL70AX7vhr44TyV2s1iwJ
	 nwrwhv+UDdojkiAXIHJEB8GlLE3fRrC7rmQNU7rbR8FlgTAtxBIpPUXpn37rCmx9JR
	 eiAq8sPtnW5wl0afAiEZ1q7kB0aQUpUbh5EU/NJgXVwzemSUk8K0+M+MNMrDI/IDel
	 HwrUAmr0LJ4cwisZKlI3rvezNllGf1+VS0fO9FhCOnNKuZJwjpBu1XdDPdwJr3ZSKP
	 lzuy4C+gLABq6/Op0lsxSY4ciwQS0XGnniAku5nEmV7tnVuE6VvSjA7xIrCMnjjHvz
	 I3c2Zw+bOqyGA==
Date: Wed, 18 Jan 2023 22:31:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
	kishon@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip: convert
 rockchip-dp-phy.txt to yaml
Message-ID: <Y8gmAiHMcU4ekkUk@matsya>
References: <aa6fe473-71f2-edba-f009-994a3dbc9802@gmail.com>
 <Y8GeBzNJvhMeh3sn@matsya>
 <8eca0d59-8db3-b66e-f219-0a256a9b0c79@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8eca0d59-8db3-b66e-f219-0a256a9b0c79@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_090200_061232_198E53BB 
X-CRM114-Status: UNSURE (   9.85  )
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

On 13-01-23, 20:58, Johan Jonker wrote:
> 
> 
> On 1/13/23 19:08, Vinod Koul wrote:
> > On 29-12-22, 10:44, Johan Jonker wrote:
> >> Convert rockchip-dp-phy.txt to yaml.
> > 
> > This series fails to apply, pls rebase
> 
> Hi Vinod, Heiko,
> 
> This serie and others must be combined in the right order to grf.yaml.
> Maybe better that Heiko does that with your ACK.

Sure:

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
