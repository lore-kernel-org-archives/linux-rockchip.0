Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7029D606A32D
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 12:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RPxMsdAe;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=kSjCLcs6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=MrQrIXRs0BWVm9kjAdR7ChicsrudHqsjtkSFD4+LuiU=; b=RPxMsdAe0DD96NcZp/qQqlXVs5
	MPQ0L1i4LWQuF/KRr5yybbyyvxFPBfEw15cq8saoh/P3ismFLkCtNz7QwuxQyvI8ad5RRAZUyxow3
	3YWKOOlIZlG+ydkjPpBWUVHkTZoHczkPHhz08Cy9dQ4m6higJPhtqMk4Wd/xYEmKlIpawSmnScHVS
	VjUszJ4jme+A0957SVHqWMtXBvOobTBmLcqZlDnLSllVuZ9BGJzksMAbJAqK4PjxdKxfuTnYJDjOP
	sQirGcJMa2IFC5D5Z672nF5P4QhO3s1Oq+7nV6VHGrDvTk0NitgWAhPi9ATKuuCGBNAbvb3EZt1Ad
	FQJEUi/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOZxX-00000005HpY-2Kfe;
	Wed, 04 Nov 2026 12:19:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOZxV-00000005Hoi-0RDC;
	Wed, 04 Nov 2026 12:19:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ldwSzi/rtM4rVlpRqThCmsYc8DAQrxnXAvnD5Uo3lnA=; b=kSjCLcs6wZfgV0J8oJPJF5iZ+3
	0P/BdDrUVxopE3uksWX3TVoNyQERQSWYQpyi4S97lHToo6Rk8OU5H7uhFcXUN2JUMdmhXRYo3sB6c
	unlxwnDPw6lWZNr/XpqqT8OM1+g+K7s68DG3InLTrlrYcgSHgXVYdzUnrAr+If9pMVQXU3yBrfDn6
	4iizVAxSAFQ11L3WSl3/NhQOkTDllHuCKgVQtrtaL+3iosjpFv34R1hUGFVpbQtGkgR1KDW25U1CU
	M00FIvlsNG4Kdl0hkiypu0+pSYK/1bmZxRJChBnl3Y8rHvUgJFWVQgd1bs6qeWrLwcOZElLgQ6Wsj
	vEvG/Iyg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Russell King <linux@armlinux.org.uk>,
	Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] ARM: rockchip: smp: enable secondary rk3066a/rk3188 CPUs
Date: Wed,  4 Nov 2026 13:19:04 +0100
Message-ID: <179379472868.648452.16899951038766297238.b4-ty@b4>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261017-cpu-v3-1-25d8f4b06362@gmail.com>
References: <20261017-cpu-v3-1-25d8f4b06362@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_041917_139239_7AEBA3C6 
X-CRM114-Status: UNSURE (   9.85  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Sat, 17 Oct 2026 15:27:09 +0200, Johan Jonker wrote:
> Early Rockchip SoCs like rk3066a and rk3188 had boot loaders
> that remapped the boot ROM and the internal memory. Currently
> U-boot makes use of a common board file without remapping
> resulting in the secondary CPUs power up hanging in a wait loop.
> 
> Make the various boot loader methods work by:
> 
> [...]

Applied, thanks!

[1/1] ARM: rockchip: smp: enable secondary rk3066a/rk3188 CPUs
      commit: 4e0ee307117af04d6ef7e36cf0b36ff7252e016a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
