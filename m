Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AF2FCA0FED
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Sep 2025 09:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VAq/d1wWCuN4wCe7tM0dh2rkNUPxoXCdpDrsNGqha2U=; b=sip/aekypSX/W9
	HXdpNh/aZslcend2qCNUsrxNT73CkTBrVuQ6fWxz7pPi5RNPSuoICNEuyDhWhU31EYINoEmhnQLdS
	kAUzonfRuYlxFnrQUmTDRIbZ1DlQLCna97vM5fcuq8R1iqJOF+fsPzph+SP4BSCjtW9yuD2s182MW
	Cyr1/uKy2phxSLPh67+A7dFqLBTRbGimVBU03zcf3dpI44Vh0TisN96Fh4MDKzepHmnSu/NdR/LqV
	I4c4m1iBwZiFKxTVc6ISbfoxSJEuNMj8sj7o7F12GCNFs5utfkxd6vV1KSP8thzgyBw4AfzsmOIoo
	JUtaHpmh/pmhra7iraQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvupy-000000063Vu-2Tq4;
	Tue, 09 Sep 2025 09:40:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvtAp-00000005MPv-0x0g
	for linux-rockchip@bombadil.infradead.org;
	Tue, 09 Sep 2025 07:53:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=vUvp0ttX3lOxjdOrvZsKvJKNpHHNusfF6naBdS8j1E8=; b=W8UN+vgh47TiGSK765TZlS6EBT
	xiO5OUoDInEyNdtFdRmgRNKA80BF4lvaBcGAoQbc9BqIkBIZfxTRJKhvmDYO0/hf7dS2rob2DhWVk
	Q0Wqb6v9IdFCCVcnLFGZyXOHp/yCmdSJ6tisDaMkxtwyaKWXOS9JA6GteQaI26fwq8dY7cYAzg/7Y
	EQVgUHS8c1VM0kKE0FDo7qX1ZMadIm5+kqZ5gGjG0Oy9/jUaaNt5GWCcWeSl03X0M//w2VfIIpmw+
	vHbBDvyHA70sgt3MUbPn5z9Bbu/gUUtV//LrkiyfnLw6u0tEU60hsRX2sH9UIxFSIzg5ULDCe4DOY
	aQzvXvRg==;
Received: from mail.fundixo.pl ([57.128.173.14])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvtAl-00000005Ewi-2F7f
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Sep 2025 07:53:53 +0000
Received: by mail.fundixo.pl (Postfix, from userid 1002)
	id 8C1374D94F; Tue,  9 Sep 2025 09:47:07 +0200 (CEST)
Received: by mail.fundixo.pl for <linux-rockchip@lists.infradead.org>; Tue,  9 Sep 2025 07:45:43 GMT
Message-ID: <20250909084501-0.1.hj.43vsm.0.jqxgn7kn8z@CyberCitadel.pl>
Date: Tue,  9 Sep 2025 07:45:43 GMT
From: "Marek Kucharski" <marek.kucharski@fundixo.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.CyberCitadel.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_085351_848963_98ABCDEB 
X-CRM114-Status: UNSURE (   0.76  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RHppZcWEIGRvYnJ5LAoKQ3p5IGplc3QgbW/FvGxpd2/Fm8SHIG5hd2nEhXphbmlhIHdzcMOzxYJw
cmFjeSB6IFBhxYRzdHdlbT8KClogY2jEmWNpxIUgcG9yb3ptYXdpYW0geiBvc29ixIUgemFqbXVq
xIVjxIUgc2nEmSBkemlhxYJhbmlhbWkgendpxIV6YW55bWkgemUgc3ByemVkYcW8xIUuCgpQb21h
Z2FteSBza3V0ZWN6bmllIHBvenlza2l3YcSHIG5vd3ljaCBrbGllbnTDs3cuCgpaYXByYXN6YW0g
ZG8ga29udGFrdHUuCgoKUG96ZHJhd2lhbQpNYXJlayBLdWNoYXJza2kKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
