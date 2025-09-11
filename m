Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0B54CA1016
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Sep 2025 07:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i43lf1vmdMbCCvwcfxVpE1QvnRLU/qmrD9az2sxOdHY=; b=NQpf5+a3WNe8V9
	KRsNFruXcKZmxwMBS3x3YPYvhVT5eamsh+hE5opr5ATsP6Gn5A2m3MsrltS5GPdBbanZqhx/setPz
	e6MepOpySl3hiKVBvTFQ9DkIQJCegUgLJ7MnILX4uqIbZHw5G1zutTAbB/kZEJqUHC2ePVNGpEh8D
	w+NJzfjuG4FDcdEi0PgdbetRyIyZMmInTdyFlz5/zKo6QULjrkGLsHDUaCQeR+f6dxtYEyv0MEFBS
	UNh9BdBH682r+NlBJ6bCfhDgCkkLTZVIKhZCsotz2OZiGTsLMg9MxZoIPyGRnVYqLeeGqWayN+itH
	0Njoe+FoLqcL+PWPcdnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwcAm-00000001e7x-0Hoh;
	Thu, 11 Sep 2025 07:56:52 +0000
Received: from mail.vexro.pl ([141.94.250.70])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwcAj-00000001dzC-0YrA
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Sep 2025 07:56:50 +0000
Received: by mail.vexro.pl (Postfix, from userid 1002)
	id 0D8D4A57B0; Thu, 11 Sep 2025 09:56:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=vexro.pl; s=mail;
	t=1757577405; bh=Q6Mp/vCJCiZNgk6fb7utkqIErbcoVoR/CugPofoeCtU=;
	h=Date:From:To:Subject:From;
	b=bSdtxMhxdzDBvuxkb0j5kNs/z0t1WOegqlMsZJvwLlVJsAGfArXVOdxymsDlsNVX5
	 UmAIvWhlc+a+u+O2hrMjOyu4g3dhw+x+G2acbVlNco0tiS/ITDitaospXEv0eIhJ+O
	 BSZajYLkStDVhzH/TpOiadKUkh09KC04NoqQGx3/TqLqq/2fd8et7YNtRjBVmqy+wr
	 74yHQauXfUJkdIhDprbpKsHbkv/bXuCxReMdDlDQX2ecW3chiFerkxYk1t0oDJ7O13
	 NwF8vj5EsIBt66ncL9Wwh0qS8GdPlLL/SYt5768fmLr6dz8coNE5JakwvmfB+cU/Vs
	 P6NgdShRdDLpg==
Received: by mail.vexro.pl for <linux-rockchip@lists.infradead.org>; Thu, 11 Sep 2025 07:56:12 GMT
Message-ID: <20250911084501-0.1.nd.3xbuf.0.9eig2n3iq5@vexro.pl>
Date: Thu, 11 Sep 2025 07:56:12 GMT
From: "Adam Drzewiecki" <adam.drzewiecki@vexro.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Pytanie_o_samoch=C3=B3d_?=
X-Mailer: mail.vexro.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_005649_462134_2259A17C 
X-CRM114-Status: UNSURE (   0.54  )
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

RHppZcWEIGRvYnJ5LAoKQ3p5IGludGVyZXN1amUgUGHFhHN0d2Egcm96d2nEhXphbmllIHVtb8W8
bGl3aWFqxIVjZSBtb25pdG9yb3dhbmllIHNhbW9jaG9kw7N3IGZpcm1vd3ljaCBvcmF6IG9wdHlt
YWxpemFjasSZIGtvc3p0w7N3IGljaCB1dHJ6eW1hbmlhPyAKCgpQb3pkcmF3aWFtCkFkYW0gRHJ6
ZXdpZWNraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
