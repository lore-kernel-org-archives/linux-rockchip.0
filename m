Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589DB606A31A
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 11:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=t914a6Ep;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Owm4O8Cg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0hhTk5srHxLnsAIwk0of0CyWy3Rcon0LHBMzG99k1qo=; b=t914a6EpBwZmnL/pHL5affALVg
	gDxbX6FcLkUFDnB38LPIvj1/J0QDpazWLAtWJIvXKJNHKFDyZJxpG+G3h4Ag+zGfY8C8/F+aR89zX
	8zOVd2SI8kIUyGS+O5KqHwb8sT/nmJds10GqkS874OiCLKngLXUUzP8KhPUZ9Y1OInKR+5Ngy5udw
	oOwcoPDGWx6PqKuc2BenB2DsByBqjEN/8Zh/aZYIS1QfjxUJNol0otsUfoZ1ItgbgfELDTPq4JK/q
	yl0oRxo0CnZwmPx+XCkyU+zI4LTlsSYRUL/nd4d5tux2V1GCTLlHXM5UjxK3q+lCCLDUd/rZxTFLg
	AKGJieoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLfkS-00000004XBT-2Xmf;
	Tue, 27 Oct 2026 11:53:48 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLfkR-00000004XB8-3FUB
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 11:53:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C492860052;
	Tue, 27 Oct 2026 11:53:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0280D1F01825;
	Tue, 27 Oct 2026 11:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793102026;
	bh=dJfiG1Iomn/Als90jreTRRE3FGx9BaAVSsyWgPeYmUk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Owm4O8Cgxa5ntbnWs3OC+0Uad9JnU5pJ9bAWdGy5qekbPVqRtQldiO5DFNx7gsYGl
	 zjzlBaYGJVodzBlxXUQtmZxxMFdW6GkJ/d5GR/Gbb4Of30AZQMirbe5jeTSJhFgv8m
	 g08NIjrA2/O+ahXxwqpryy4wCMJ9wzYw0NHKQwO22zLWGS2T+5z71MB7ELlXLQm97m
	 t/sIYgvnOXATlqSaxWQPfCUcF90hmMPGWpQluFpQPUXcUB2Z/AMefMdZawTT4lItd1
	 pAWfx5sOudYoxDtuwFgi9aiV/uhEhizAj8skGLR0xmmexTQB7C4VnfKIeh1IQbL/T3
	 WDxvpGJHhphRw==
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bjorn Helgaas <bhelgaas@google.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org
In-Reply-To: <1790664898-207928-1-git-send-email-shawn.lin@rock-chips.com>
References: <1790664898-207928-1-git-send-email-shawn.lin@rock-chips.com>
Subject: Re: [PATCH] PCI: dw-rockchip: Enable INTx affinity support
Message-Id: <179310201852.16692.17318855369732407934.b4-ty@b4>
Date: Tue, 27 Oct 2026 17:23:38 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=312;
 i=manivannan.sadhasivam@oss.qualcomm.com; h=from:subject:message-id;
 bh=Ln4DWbgUCH/2gfmwbpXsUFycVVdbQrpXj6f1Z3vneE8=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq4JDHDBZec5crnF0BSQHWIdxBK8PZtqtj2kyXM
 qM2PwAvl2iJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCauCQxwAKCRBVnxHm/pHO
 9ehIB/4tfu7NjWjmZ9W5XSIfDoj9uWXIUt3w8zQndV10pbutrnNj7mhqMlAJFNT8RhvHxp8hxK2
 sHSuycy7Tn36YRnImK/gzgUda1teP5L8J9uJuf6HO9hnrTOy4yH8S4gTvJ7E4UciWKMzOq1+aQj
 amtNorxvCa8AOog6xckB2CvG2JVpmWCVn1dv05OOFkAcMg+rb4NvZN8X76lvawtf/gncfqN1wGv
 /FooAYihOQ99CeUvIg4Ibz10/0xV/JBM1zk0Jdnei3/Vk5QsawLW6/tR2dd6D6G7iIEcy8rnAK5
 uSI+nvm7urGzS1fe3KYgc973nv4swWwjPfG/qUfwaxhQy+GP
X-Developer-Key: i=manivannan.sadhasivam@oss.qualcomm.com; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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
X-Spam-Status: No, score=-7.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Ck9uIFR1ZSwgMjkgU2VwIDIwMjYgMTQ6NTQ6NTggKzA4MDAsIFNoYXduIExpbiB3cm90ZToKPiBQ
Q0k6IGR3LXJvY2tjaGlwOiBFbmFibGUgSU5UeCBhZmZpbml0eSBzdXBwb3J0CgpBcHBsaWVkLCB0
aGFua3MhCgpbMS8xXSBQQ0k6IGR3LXJvY2tjaGlwOiBFbmFibGUgSU5UeCBhZmZpbml0eSBzdXBw
b3J0CiAgICAgIGNvbW1pdDogNzdkYWE0ZDBmNDdkYzM0YTQ0Y2Y5YjgxNDE0NzhjNGMyYTRlYWI3
YgoKQmVzdCByZWdhcmRzLAotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCu
vuCumuCuv+CuteCuruCvjQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
