Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4C3606A31B
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2026 19:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GUjOsq2L;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gluon.es header.i=@gluon.es header.a=rsa-sha256 header.s=default header.b=VwI55yIw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JuQbEgM24a7gtU4xcuQ/5R/XL4+oClRd4ipAH4XaWgE=; b=GUjOsq2LNwIiH4
	u8n5nNpSFiRTRfClS3o1/GaoSJ4rG5A6MUoBUfElCnCe2oNCGSaO/tXlydNx7oVQ+8/1AaCUXR8ay
	VjqI/Qht5+d/U6QFFf3ceTbQH25q9/KjgPbQgMTy++ufgVHi4L8sT4TfJwpUXiOd2Q7ikItxWMyc6
	ryB2JmudCMmcRstVc6az0vORFmGEcAE6E8zQtt0eoTqGCFmbO4GVi0DsUtm4i14TGP2l03CIMbpOa
	KvaFT76HQW0kRkQn7UBz+Pfr6YdqxDuBcBM1z3Wl/kvs8nE+s3XPARF3N9sVnDrlDiNGsxSSm+adq
	xmnU6Gz+9uifTSQQknQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIt1S-00000008FAj-1JlM;
	Mon, 19 Oct 2026 19:27:50 +0000
Received: from nimiomail.com ([217.160.32.16])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIt1P-00000008FA1-0jsn;
	Mon, 19 Oct 2026 19:27:48 +0000
Received: from nimiomail.com (localhost.localdomain [127.0.0.1])
	by nimiomail.com (Postfix) with ESMTP id 46D0B81E92;
	Mon, 19 Oct 2026 21:27:45 +0200 (CEST)
X-Spam-Score: -3.101
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
Authentication-Results: nimiomail.com (amavis) (amavisd-new);
	dkim=pass (2048-bit key) header.d=gluon.es
Received: from nimiomail.com ([127.0.0.1])
	by nimiomail.com (nimiomail.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mK7rNro2vOrT; Mon, 19 Oct 2026 21:27:44 +0200 (CEST)
Received: from DESKTOP-2QFDG0H.tail76f4b.ts.net (21.red-2-139-241.staticip.rima-tde.net [2.139.241.21])
	by nimiomail.com (Postfix) with ESMTPSA id 25B2F80709;
	Mon, 19 Oct 2026 21:27:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gluon.es; s=default;
	t=1792438064; bh=nb/x52c8v7ZaO3dMeyrkw31le9iF2h99epDlEuSNVyE=;
	h=From:To:Subject;
	b=VwI55yIwFWA5iK/hte3+DrrtVExTyqQNyy7Uv26QKUgW372WY/SA74ZkoWdD0q8TN
	 btcsymJvTIlyfG2nrxrYTWJx8YTwmLwfN3yZqwqzUFW0D9UAwxQuzSuydeS7qCgR3D
	 n0RPgXPoQsfpm5treMzrjCZ1Cyp3tGtD8cJ+hWRRwOwih5mC8RBwjxCfyuDHW0tEMR
	 +Sest3p9KSytmL+6VdNClet74iTuOtXkb6g0joexSUdyUyvlL4VpkNA+RfL2iWLRoy
	 El1NOShRJykP7A7tt3LE7HLvxd/odmYNtw4nujINKvOduQBPp/jyTIAsEUHSh13Vk+
	 bbxxTfgv0NJcQ==
Authentication-Results: nimiomail.com;
	spf=pass (sender IP is 2.139.241.21) smtp.mailfrom=info@gluon.es smtp.helo=DESKTOP-2QFDG0H.tail76f4b.ts.net
Received-SPF: pass (nimiomail.com: connection is authenticated)
From: Miguel Jesus Seron Gonzalez <info@gluon.es>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dongjin Kim <tobetter@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: odroid-m1: keep vcc3v3_pcie enabled
 from boot
Date: Mon, 19 Oct 2026 21:27:22 +0200
Message-ID: <20261019192722.6985-1-info@gluon.es>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261019132458.855-1-info@gluon.es>
References: <20261019132458.855-1-info@gluon.es>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-PPP-Message-ID: <179243806464.1151496.15391910988614657662@nimiomail.com>
X-PPP-Vhost: gluon.es
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_122747_366087_878D9083 
X-CRM114-Status: UNSURE (   7.15  )
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
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Oct 19, 2026 at 03:24:58PM +0200, Miguel Jesus Seron Gonzalez wrote:
> Fixes: 35b28582aa3d ("arm64: dts: rockchip: Add PCIEe v3 nodes to ODROID-M1")
> Signed-off-by: Miguel Jesus Seron Gonzalez <info@gluon.es>

I forgot to add the Assisted-by tag that
Documentation/process/coding-assistants.rst asks for. The changelog and
the patch were prepared with the help of Claude (Anthropic). I reviewed
them, and the testing was done on my own board.

Assisted-by: Claude:claude-opus-5-5

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
