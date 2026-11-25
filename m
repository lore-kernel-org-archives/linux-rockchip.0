Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D51606A321
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 20:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=loIpx81J;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=Kq/QCk8I
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Ga6+HBCCej9SAJjovSIpOCFJ41ksT/eb6iFHD/gTFl8=; b=loIpx81JK6v+02ZEOknN5YTgat
	PU0WAIHqWVwLUnAUHai69IK1W3CaTuBxKK1lpo8shAxuFX5qJsfmJAZL0uYSCqIohEG40B2gzhrcC
	iaa2j7M7dJJUatde4+EUAUhVyBp0ZehZQJ5OWYHIZjFcOWRmcivwjFKaAqZQsnhOLSN+be/YEyc9a
	uh8VZ5PxyH60N8+1OlfKRhpjbh//+czVNaq+e/GE+VMhapoTgLo0sSTqHsjY13RqsggJcCDICYZDu
	XZb7/Ap3q/Km1V9PYEuk6gRH0WJrYkemmdIXpUK6G6Lh6AKm/P201i+zvxs7mJ53qSKPu71unDVxo
	nO+f6klA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWJV6-0000000BGNP-24jE;
	Wed, 25 Nov 2026 20:21:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWJUW-0000000BGCE-3CzW;
	Wed, 25 Nov 2026 20:21:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=dBmEgqDmxD1KTn7nbXuA9Y+pDG5ac5f75ATQlxxblHI=; b=Kq/QCk8INV05JtArIWAcnVVpRa
	VCdLMsEgXi1BL0NV52SYPuqfTxTz4VU1qaiiAkBp0CcYsXDBvtsta/pqChraLfc+V/P5Fq9HynJSn
	cpKBpXjpW47d1QhZvQIFnS772m8GH24qUgWJ41avd8n9ves0M3bOkf+3IPvdkhzSFaYyHFiJ+m6je
	GthpazrAHYeT+/JLOJmEa6okY0YsnQmJ/k/8e4CrDd92UWbiL8Or81EOSUl0uI5rsnbXxABj7w+Gi
	QB8fI7gHtZ7ENMOk+d6rdDCF1LBnN8yXREPd9yicVUhDRW6R/yWp6ZqN1H2fPj93jOrsS0w/CiWtU
	zKRQI8RA==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: describe PCIe RTL8111 ethernet on Indiedroid Nova
Date: Wed, 25 Nov 2026 21:21:01 +0100
Message-ID: <179563805235.3885553.11834553128467400776.b4-ty@b4>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261119152847.312239-1-macroalpha82@gmail.com>
References: <20261119152847.312239-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_122120_836296_6FF7BC0C 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, Heiko Stuebner <heiko@sntech.de>, robh@kernel.org, shawn.lin@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Thu, 19 Nov 2026 09:28:47 -0600, Chris Morgan wrote:
> The Indiedroid Nova carries an on-board Realtek RTL8111 NIC behind the
> pcie2x1l2 port.
> 
> Describe the PCI function nodes and attach ethernet0 aliases, so that
> U-Boot's fdt_fixup_ethernet() can fill in the MAC address from its
> ethaddr/eth1addr environment.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: describe PCIe RTL8111 ethernet on Indiedroid Nova
      commit: ba7fefa6fcf47338319f70d161968355d0f04a4f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
