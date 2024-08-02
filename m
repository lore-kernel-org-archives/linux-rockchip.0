Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52378C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 09:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:In-Reply-To:
	Subject:cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CJEdvwN49pJrOJuA2zdNWfsDg5SvwtFEVqLxlIw1HkE=; b=lJs+O9gpcZa/dgOyME3uXLbRyq
	Pe/7WahYWdbjQSTTlgW/2VHpeX34lwhCfECiPz7Nkz2RAE3Czw8K4Zdu5PKBV3l21yt4+3YrsjRYN
	qFQBTU55ksVI9AupfK4Zm8kd94/GnOdruJ1Em40epNsgK30CrZOQsFyzs4bneP0QuKP4T86OwJ4g2
	xnHjQn4gLLkJ9vWVVGt5HpTPdarSRYI1K0IDx1QmEDs+rPnceJQGsvAjuzvAJiGaMze7P8aYBIMwR
	AGTFpsd4w95XeaCNVK6BCaEEKa9yxzUsy/a5jYXWgyTslsNQpl7F35eEYSeI+aL541eFWGHXTNk1y
	l+HvVdCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZouB-00000008LLJ-1b4v;
	Fri, 02 Aug 2024 09:48:59 +0000
Received: from mx-01.divo.sbone.de ([2003:a:140a:2200:6:594:fffe:19])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZou7-00000008KxX-3oEP
	for linux-rockchip@lists.infradead.org;
	Fri, 02 Aug 2024 09:48:58 +0000
Received: from mail.sbone.de (mail.sbone.de [IPv6:fde9:577b:c1a9:4902:0:7404:2:1025])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mx-01.divo.sbone.de (Postfix) with ESMTPS id 2A6FBA64808;
	Fri, 02 Aug 2024 09:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=zabbadoz.net;
	s=20240622; t=1722592002;
	bh=BdE9txZihg93zoUJIdYX0o3vhnu2uDuyjz8mtdq00BY=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=W3k6sIWvhqXJcuJaRi1RSr5VLTIBnpzWxNHDL1xpZM21JF162KrJ6zgVeVgMsGYoG
	 m4YCS0CJJn6VZnzJq74Ci8g3YkNeBv3wdnVPQgw+6rpHxllZyyRyC/2YEJenqRR176
	 gtBedrJcGfwVxN5sIg57Et+cThKemU/VJrj0rScAAgolSsk0Rhu0ojesJ5JCLPIam7
	 PivBaKsXbIQ02O9yKFCy8/1TLy7LEQi59hBKSUThBf5vE2gPayvha7c7tRlW6wyr7E
	 rjbvTHPDdAMtUkMMOXs80jLzcRkKJh3OMwgBjMtJdbtOZR2QE29BiRnrvsm45LDcQX
	 tNeKgX07qZJFsDPyUObzrdPYL8DF+ZN0cuJwvQ/QBxM8A7vglCLIZO4aTYMT1duIVN
	 cEXSlTsVzuFVIImoIeIwKbLInmxaqQTXHPS57awc58cDlctWhiWuS8D+NqswLx41VV
	 ZRVPCOqrJ94nDtx3l6oCFylqYtyDF1iVjOvCgz5h83mHCqe0e4umCRwYOrmd08dhhU
	 DUP1GwdJf3r0ePsXhjMDREkXzsW0UGcbRqPgnK8zqSFUxiT+6aCTlE9PobBLhJqpn7
	 BmDJT7CfVIM1Y+7X6rflvycTG48N9ihIqf/TekruJDm3efSPDaafSlbUULS7SOkcmz
	 NT6leu2e8nfQFlWe8joy+Ssk=
Received: from content-filter.t4-02.sbone.de (content-filter.t4-02.sbone.de [IPv6:fde9:577b:c1a9:4902:0:7404:2:2742])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.sbone.de (Postfix) with ESMTPS id 5C6192D029D8;
	Fri,  2 Aug 2024 09:46:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at sbone.de
Received: from mail.sbone.de ([IPv6:fde9:577b:c1a9:4902:0:7404:2:1025])
	by content-filter.t4-02.sbone.de (content-filter.t4-02.sbone.de [IPv6:fde9:577b:c1a9:4902:0:7404:2:2742]) (amavisd-new, port 10024)
	with ESMTP id qiaa6JdiXyBI; Fri,  2 Aug 2024 09:46:42 +0000 (UTC)
Received: from strong-iwl0.sbone.de (strong-iwl0.sbone.de [IPv6:fde9:577b:c1a9:4902:b66b:fcff:fef3:e3d2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.sbone.de (Postfix) with ESMTPSA id 59D1C2D029D2;
	Fri,  2 Aug 2024 09:46:41 +0000 (UTC)
Date: Fri, 2 Aug 2024 09:46:40 +0000 (UTC)
From: "Bjoern A. Zeeb" <bzeeb-lists@lists.zabbadoz.net>
To: Sergey Bostandzhyan <jin@mediatomb.cc>
cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
    devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
    linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 0/2 RESEND] Add DTS for NanoPi R2S Plus
In-Reply-To: <20240801175736.16591-1-jin@mediatomb.cc>
Message-ID: <756p9487-56pr-88p2-6o79-7oron3q8462n@yvfgf.mnoonqbm.arg>
References: <22bbec28-41c1-4f36-b776-6e091bf118d9@kernel.org> <20240801175736.16591-1-jin@mediatomb.cc>
X-OpenPGP-Key-Id: 0x14003F198FEFA3E77207EE8D2B58B8F83CCF1842
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_024856_449878_F3CAC4BE 
X-CRM114-Status: GOOD (  11.60  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 1 Aug 2024, Sergey Bostandzhyan wrote:

> Hi,
>
> as requested, I am resending the patch series, now with hopefully all
> relevant addresses on To/Cc.
>
> I noticed, that a DTS for the R2S Plus is not yet available, while the
> R2S is already there. The only difference is, that the Plus version has an
> eMMC, so we can reuse the R2S definitions and only add an eMMC block, which
> I copied from the DTS in the friendlyarm/uboot-rockchip repo.

The original has a
 	// SPDX-License-Identifier: (GPL-2.0+ OR MIT)

please don't lose the OR MIT as other projects outside Linux do use the
same dts files;  and the original r2s file also preserved it.


-- 
Bjoern A. Zeeb                                                     r15:7

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
