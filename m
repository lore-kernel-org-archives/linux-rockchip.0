Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CFA606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 11:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=V6laxWAS;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=E8DQrljj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=u0/GWVbV+QxgDmhkIBCdurIDuQ2xMLSVczmxrOE5bZI=; b=V6laxWASHbelxr/tl9q9GgWrLu
	GGZzYnzVoZ4u9rBReVhkM73KY67N68Qi5XS6bY3vZOymoZNUgMSLnttK+oafVKafSWehAp7lm8isz
	tTHuPg/lil7kwvFB0VJEzo1e/l9e8vGL8Y4p5cmHb+0rd5I6vDeMorSZxTx3j/o0XRdnf9Iz53ot+
	+Bc6Mj14D2hNJ1FI3YK7xmYoIGsqGUlbOvK+KIM3BpDWREu46Dz412p3WaslvZYU8Xnwrx9+oQzlk
	iM/pVdaKHsKOCda+UjpUj7JbZ9b3A1T6+YsYql12gbiKuerYhA2vNKYQvGCCPrsJLcwnr7uCVpoi7
	C/9Hogrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVp5q-00000006Qg7-2Io2;
	Tue, 24 Nov 2026 11:53:50 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVp5o-00000006QfX-3mPG;
	Tue, 24 Nov 2026 11:53:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E247562014;
	Tue, 24 Nov 2026 11:53:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A25F31F000E1;
	Tue, 24 Nov 2026 11:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795521227;
	bh=z4Y9dHJ0ZeVPS9YGhg84jRxvoO3miOq2kd20onnIAEU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=E8DQrljjt6Y9V0W0q/3UmGz40Z4NfF+SczkB2scmuxWSZFHr1krz0MSJ5KODrEWLo
	 s57LDSJqhEW+j1UYqHwNiw6c60ijJQH0vnoCjE7UIj+5Sz6kvr5xsslxfgA0Odws7U
	 T1Vv9fSnwkC53ovBZLJcHGARkwJyKpXBmyBigbFk5JZ5mBeb5OVbXqeAiqg5LUMby4
	 g7Xhm1igbfmpkS98mQARr4kvnrQ1Kan/W8hChUnGGRLlA8sIIbdIXxhCMLCRwKxyCx
	 94dgRARP5KhmeTRLAEiKDOB/W1COxoGKp08b+m/EiHrY1m/Sn17WIEaRMkULhGD0gk
	 HYpYa79TsSZHQ==
From: Manivannan Sadhasivam <mani@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Niklas Cassel <cassel@kernel.org>, "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20261109184948.477095-1-robh@kernel.org>
References: <20261109184948.477095-1-robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: PCI: rockchip-dw: Allow endpoint supply
Message-Id: <179552122328.34281.17286958680139728283.b4-ty@b4>
Date: Tue, 24 Nov 2026 12:53:43 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.16.0
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Ck9uIE1vbiwgMDkgTm92IDIwMjYgMTI6NDk6NDcgLTA2MDAsIFJvYiBIZXJyaW5nIChBcm0pIHdy
b3RlOgo+IFJvY2tjaGlwIFBDSWUgZW5kcG9pbnQgRFRzIGRlc2NyaWJlIHRoZSAzLjNWIFBDSWUg
cmVndWxhdG9yIHdpdGgKPiB2cGNpZTN2My1zdXBwbHkuCgpBcHBsaWVkLCB0aGFua3MhCgpbMS8x
XSBkdC1iaW5kaW5nczogUENJOiByb2NrY2hpcC1kdzogQWxsb3cgZW5kcG9pbnQgc3VwcGx5CiAg
ICAgIGNvbW1pdDogYzcyZDkwMzlhMDBkZDI4Y2U5Zjk5YmE3MzExMmM2OGNhMDQ2MmIzNQoKQmVz
dCByZWdhcmRzLAotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCu
v+CuteCuruCvjQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
