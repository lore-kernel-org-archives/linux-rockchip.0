Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B10E7606A31D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2026 18:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NMa1tOD9;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=iav.lv header.i=iav@iav.lv header.a=rsa-sha256 header.s=zoho header.b=XATZ6N+0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7BYtjcEYY+9saXIECL/s495mKVKpz+xyF0N+yPKigPw=; b=NMa1tOD9lZQQzRuxM6EUW5vrIO
	G8dMytqkULgYvLOvz3fymhvjoL/wbnLt80SfdLknXyWQrHDr7z9peZWg4RCL39gGhLUmZALnZlZWb
	2g7N7y2MWk6B8Bn/PgzbvdgUmLq1lEt0FkPOaMwvXQhB8PQ2VttE5IwXCIk1zwxVAf93HvP1mPkgX
	lNUMXhXu95RsHpU4PrqOhcRIs4TIS+uMWvSLAvOE6OxzeP4IJrKJgGNsIMO7qfSjX9fz+If4kx9ns
	I52Ps986rVSABP8MsbajX/Vsz9JWxwh9oTJW2wve8LZ51NK+HO4gN/5zKyEvrVW2OHZGYhM7fEGe9
	OnuHf9Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPR6-000000034KS-3ypo;
	Mon, 26 Oct 2026 18:28:44 +0000
Received: from sender-op-o15.zoho.eu ([136.143.169.15])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLPR3-000000034JL-0W9z;
	Mon, 26 Oct 2026 18:28:43 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1793039310; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=At1s0ErSJRojm+Lo5eOE4pf53n79eDl1FaMWOq7H+kMo5gajrHxhJRVGizKSsDNbtF3LX0IKIxR2ONAJ/ZaQP6mg4iy6qWpado2eZHAmAibql8zixLJHFum9BrBw9VeouYp67eNFPQhxJSdGViY4fQXJdmBd8DfR7wuIxth1DBo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1793039310; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=uazXjT0Ki1xgfLrx287ADuJ6KrWtZacD7vOR4+uIzX0=; 
	b=By/GMvLsj0PfbOSqQ7dgE1LhuLBkbosqa1vawrSGb9WUva+hD/QP8suvEhN3JWg8WlifOBcHTv2TSo+0UUsMLc9y4PK/IgtZs/grXQxsQCORbeserLCDX0NNWeqI0MuVJcibP1US+CIcsUVj/XdSIIiUCFvkHAyzw0/4d2CC6nU=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	dkim=pass  header.i=iav.lv;
	spf=pass  smtp.mailfrom=iav@iav.lv;
	dmarc=pass header.from=<iav@iav.lv>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1793039310;
	s=zoho; d=iav.lv; i=iav@iav.lv;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=uazXjT0Ki1xgfLrx287ADuJ6KrWtZacD7vOR4+uIzX0=;
	b=XATZ6N+0WmwnFLaX387iS8Wijyg09PysnImPV9MDgsXJiceNQ+zXB4ZfBb70yQxD
	It4VcbK552OwQdLhaJd6iLZFJ/9oNPW1zG9IED7EW4cr8TAGqOwZ1/VLMXbRSNrx3ib
	hAU8/VKF90+LwVp4QmP4/IQzw6IkzXO8+NnxKht0=
Received: by smtp.zoho.eu with SMTPS id 1793039309417148.69976615563849;
	Mon, 26 Oct 2026 19:28:29 +0100 (CET)
Date: Mon, 26 Oct 2026 20:28:28 +0200
From: Igor Velkov <iav@iav.lv>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Igor Velkov <iav@iav.lv>
Subject: Re: [PATCH RFC 0/2] PCI: rockchip-host: Retry training and hot-reset a JMB585 on RK3399
Message-ID: <20261026-rockchip-pcie-shawn-reply-1@iav.lv>
In-Reply-To: <4316c1da-f7ff-4fa5-a330-512800474e45@rock-chips.com>
References: <20261024-rockchip-pcie-resume-v1-0-58e54a5cf5f1@iav.lv> <4316c1da-f7ff-4fa5-a330-512800474e45@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_112841_451597_4B8E40D8 
X-CRM114-Status: UNSURE (   8.70  )
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
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Shawn,

On 2026/10/26, Shawn Lin wrote:
> The host cannot distinguish this case.

The controller seems to tell before the config read. On 26 Oct the
link came back 2.9-4.5 ms after a hot reset in ~50 cases, all fine,
and 10.9-35.4 ms in 8, each followed by an abort on the next config
read. PCIE_CLIENT_BASIC_STATUS0 read 0x240 after each of 4 slow links
and 0x1240 after each of 16 fast ones. What does bit 12 mean, and can
the driver rely on it after link training?

> You've tried PERST# with the patch 1 applied. So perhaps it's doesn't
> help.

Patch 1 pulses PERST# only after a training timeout. With PERST# in
the DT a slow link still occurred (25 ms, then an abort).
Re-initializing the port, without PERST# or a power cycle, brought
each of 4 slow links back in 2.9 ms with the endpoint answering.

> I've attached a vendor's debug patch, perhaps you could try it without
> your patch.

It hooks do_serror() only and registers after pci_host_probe(). Here
both SErrors and synchronous external aborts occur, at probe and on
resume (the cover had that wrong), so we will move the hook before
pci_host_probe() when we try it.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
