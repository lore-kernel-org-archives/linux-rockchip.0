Return-Path: <SRS0=5mPC=KV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 390A8C4708B
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 15:23:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 03D2E61378
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 15:23:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 03D2E61378
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQ9TxYM7wc1WRDkxi3XW/b16nKtdRAKQ6Wm3CUwX6yw=; b=NfFCTzniMLdCNz
	C/EJbcnhlnbkukG8f3QfNhBe35+fUQ5MWdpocUXOO7e7W4QWifKAmzAtyYr0S+e4RmT0R2WYxUaXU
	jV0s1x6WNr0pnoyj4aStrX+Cn01XQTVa5ipDIxLnx8rxXqHGDJA11wRm/JDLJnwVXfdykEyOHnsBS
	OHrX0bkO0OdYotdza6uiI9ZjEb0mShQiJUo1lznXxII7bDuB5I1843EvMvqsusVGGRHkff86mdQnb
	a6Eb9CvHdGD7cPeYVGsGfnTaDfkAcduoItmKMFNrxX20sUqSPiu0/eeHAUZpyPDHNvYAPbKuMdmci
	L9gQn0WFquLnlmGe8ZDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llvNp-00FKcX-3S; Wed, 26 May 2021 15:23:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lluJV-00EmE7-Uy; Wed, 26 May 2021 14:15:15 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7054B613E1;
 Wed, 26 May 2021 14:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622038513;
 bh=V9yfVGz48znBhoLYjEcvRlIp+daisCyNDfH0CN868s4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=dvLySTxEZiqHBU8DH6u3hrzj/0VudX+Pm4o9KGnIC8axkD+9PaZiv2F7PbCAMhuXl
 ZeeO7mNhyyyXa9eue79WEGTCXLOOHL4gm432bZz7BcvKQV38DZvaX+GPQIxzETcm8T
 mD24awDK8Uz+0BUmBoOAbktmxDwSqKnRjK9wiYEzrSANcvvsqFHEbpWBWST4A8FTx3
 HclZI2Quz0gpF21n72viLd14SRFeky5BDhX4phZGE3Y7QzuEgUlbhAQtBrD12xLRls
 AOb2wzA2NOhnENSybyHuEQ+jbJa4Oslqju8HYAuZs9c/n3g2MwlPkKXBHIIfMYWBoL
 fbBwjsDcOveFg==
Received: by mail-ot1-f45.google.com with SMTP id
 66-20020a9d02c80000b02903615edf7c1aso1106416otl.13; 
 Wed, 26 May 2021 07:15:13 -0700 (PDT)
X-Gm-Message-State: AOAM533cfbb7fQqgkm4eH0gTNMdt4eaX6Ja44V7shqnUzh657KyMFA3O
 PkAkqVxrwjDlqc14QRsSs9sY9A5fI9q4ddY735o=
X-Google-Smtp-Source: ABdhPJwW8Rk3emRD0hkgXQcN7xcSCM6FPDi3/JYZuHbFrFSjxpSMXx/i0GLgZamflQJyw1kM6Iit6JpDO+OpdpVyfzw=
X-Received: by 2002:a05:6830:4da:: with SMTP id
 s26mr2542142otd.77.1622038512765; 
 Wed, 26 May 2021 07:15:12 -0700 (PDT)
MIME-Version: 1.0
References: <7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com>
 <01efd004-1c50-25ca-05e4-7e4ef96232e2@arm.com>
 <87eedxbtkn.fsf@stealth>
 <CAMj1kXE3U+16A6bO0UHG8=sx45DE6u0FtdSnoLDvfGnFJYTDrg@mail.gmail.com>
 <877djnaq11.fsf@stealth>
 <CAMj1kXFk2u=tbTYpa6Vqz5ihATFq61pCDiEbfRgXL_Rw+q_9Fg@mail.gmail.com>
 <CAMdYzYo-vdJvT_MPNTYvdveG3W8na7qMVEZFL4AjyQWqcLZi=Q@mail.gmail.com>
 <CAMj1kXEBePfKDOc6eo9yjZPnVeFimX-zxR+R3As+2pP9XnZkuQ@mail.gmail.com>
 <CAMdYzYrH_M92Pc6AqTgagtATr1TPq7Pdm57hadZeAmMBF2f0nA@mail.gmail.com>
 <CAMj1kXHsGgFedbhW2CiS5gveK3=ZxhXQ5siDeHJyttkOVKBQrQ@mail.gmail.com>
 <CAMdYzYruNYtJ8hwKPBUHPed1-=tV=CWDd_oSQtRmr4BJHp=YxA@mail.gmail.com>
 <CAMj1kXHLCJbzRpic-kkdWh5wKTE=6fqkesYbB6XoeJELKn93tw@mail.gmail.com>
 <9b99d520-e4b1-ae44-44eb-93c2e3d0c0cb@gmail.com>
In-Reply-To: <9b99d520-e4b1-ae44-44eb-93c2e3d0c0cb@gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 26 May 2021 16:15:01 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGBEuV=OUeCWUj5iUbFmko549uKCt5eHFM_j2KW-_FNdw@mail.gmail.com>
Message-ID: <CAMj1kXGBEuV=OUeCWUj5iUbFmko549uKCt5eHFM_j2KW-_FNdw@mail.gmail.com>
Subject: Re: [BUG] rockpro64: PCI BAR reassignment broken by commit
 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource flags for 64-bit
 memory addresses")
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Cc: Peter Geis <pgwipeout@gmail.com>, Punit Agrawal <punitagrawal@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Leonardo Bras <leobras.c@gmail.com>, 
 Rob Herring <robh@kernel.org>, PCI <linux-pci@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_071514_082550_BF5DBBBA 
X-CRM114-Status: GOOD (  18.46  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gV2VkLCAyNiBNYXkgMjAyMSBhdCAxNTo1NSwgQ2hyaXN0aWFuIEvDtm5pZwo8Y2tvZW5pZy5s
ZWljaHR6dW1lcmtlbkBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGkgQXJkLAo+Cj4gQW0gMjUuMDUu
MjEgdW0gMTk6MTggc2NocmllYiBBcmQgQmllc2hldXZlbDoKPiA+IFtTTklQXQo+ID4+PiBJIHNl
cmlvdXNseSBkb3VidCB0aGF0IHRoaXMgaXMgd2hhdCBpcyBnb2luZyBvbiBoZXJlLgo+ID4+Pgo+
ID4+PiBsc3BjaSAteCB3aWxsIGdpdmUgeW91IHRoZSBiYXJlIEJBUiB2YWx1ZXMgLSBJIHN1c3Bl
Y3QgdGhhdCB0aG9zZSBhcmUKPiA+Pj4gcHJvYmFibHkgZmluZS4KPiA+PiBsc3BjaSAteAo+ID4+
IDAwOjAwLjAgUENJIGJyaWRnZTogRnV6aG91IFJvY2tjaGlwIEVsZWN0cm9uaWNzIENvLiwgTHRk
IERldmljZSAzNTY2IChyZXYgMDEpCj4gPj4gMDA6IDg3IDFkIDY2IDM1IDA3IDA1IDEwIDQwIDAx
IDAwIDA0IDA2IDAwIDAwIDAxIDAwCj4gPj4gMTA6IDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAwIDAw
IDAxIGZmIDAwIDEwIDEwIDAwIDIwCj4gPj4gMjA6IDAwIDEwIDAwIDEwIDAxIDAwIGYxIDBmIDAw
IDAwIDAwIDAwIDAwIDAwIDAwIDAwCj4gPj4gMzA6IDAwIDAwIDAwIDAwIDQwIDAwIDAwIDAwIDAw
IDAwIDAwIDAwIDVmIDAxIDAyIDAwCj4gPj4KPiA+PiAwMTowMC4wIFZHQSBjb21wYXRpYmxlIGNv
bnRyb2xsZXI6IEFkdmFuY2VkIE1pY3JvIERldmljZXMsIEluYy4KPiA+PiBbQU1EL0FUSV0gVHVy
a3MgUFJPIFtSYWRlb24gSEQgNzU3MF0KPiA+PiAwMDogMDIgMTAgNWQgNjcgMDcgMDAgMTAgMjAg
MDAgMDAgMDAgMDMgMDAgMDAgODAgMDAKPiA+PiAxMDogMGMgMDAgMDAgMDAgMDAgMDAgMDAgMDAK
PiA+IFRoaXMgaXMgYSA2NC1iaXQgcHJlZmV0Y2hhYmxlIEJBUiBwcm9ncmFtbWVkIHdpdGggYnVz
IGFkZHJlc3MgMHgwCj4gPgo+ID4+IDA0IDAwIDAwIDEwIDAwIDAwIDAwIDAwCj4gPiBUaGlzIGlz
IGEgNjQtYml0IG5vbi1wcmVmZXRjaGFibGUgQkFSIHByb2dyYW1tZWQgd2l0aCBidXMgYWRkcmVz
cyAweDEwMDBfMDAwMAo+ID4KPiA+IChodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9QQ0lf
Y29uZmlndXJhdGlvbl9zcGFjZSBkZXNjcmliZXMgdGhlCj4gPiBtZWFuaW5nIG9mIHRoZSBsb3cg
b3JkZXIgQkFSIGJpdHMpCj4KPiBTb3JyeSBmb3IganVtcGluZyBpbnRvIHRoZSBtaWRkbGUgb2Yg
dGhlIGRpc2N1c3Npb24gYW5kIHRvIGJlIGhvbmVzdCBJCj4gaGF2ZW4ndCBmdWxseSByZWFkIGl0
Lgo+Cj4gVGhpcyBsb29rcyBhIGJpdCBvZGQgc2luY2Ugb24gQU1EIFZHQSBoYXJkd2FyZSB0aGUg
bm9uLXByZWZldGNoYWJsZSBCQVIKPiBpcyB1c3VhbGx5IG9ubHkgMzJiaXQsIG5vdCA2NGJpdC4K
Pgo+IEJ1dCB0aGlzIGhhcmR3YXJlIGdlbmVyYXRpb24gaXMgcmF0aGVyIG9sZCBhbmQgSSdtIG5v
dCBzdXJlIHdoYXQgdGhlIEJBUgo+IGFzc2lnbm1lbnQgZm9yIHRoYXQgZ2VuZXJhdGlvbiB3YXMu
IEkgd291bGQgbmVlZCB0byBkaWcgdXAgdGhlIHJlZ2lzdGVyCj4gZGVzY3JpcHRpb24gaW4gb3Vy
IGFyY2hpdmVzIGFzIHdlbGwuCj4KCkkgaGF2ZSBhbm90aGVyIG11c2V1bSBwaWVjZSBpbiBteSBB
TUQgU2VhdHRsZToKCjAyOjAwLjAgVkdBIGNvbXBhdGlibGUgY29udHJvbGxlcjogQWR2YW5jZWQg
TWljcm8gRGV2aWNlcywgSW5jLgpbQU1EL0FUSV0gT2xhbmQgWFQgW1JhZGVvbiBIRCA4NjcwIC8g
UjcgMjUwLzM1MF0gKHJldiA4MSkgKHByb2ctaWYgMDAKW1ZHQSBjb250cm9sbGVyXSkKICBTdWJz
eXN0ZW06IERlbGwgT2xhbmQgWFQgW1JhZGVvbiBIRCA4NjcwIC8gUjcgMjUwLzM1MF0KICBGbGFn
czogYnVzIG1hc3RlciwgZmFzdCBkZXZzZWwsIGxhdGVuY3kgMCwgSVJRIDI1NQogIE1lbW9yeSBh
dCAxMDAwMDAwMDAgKDY0LWJpdCwgcHJlZmV0Y2hhYmxlKSBbc2l6ZT00R10KICBNZW1vcnkgYXQg
NDAwMDAwMDAgKDY0LWJpdCwgbm9uLXByZWZldGNoYWJsZSkgW3NpemU9MjU2S10KICBJL08gcG9y
dHMgYXQgMTAwMCBbZGlzYWJsZWRdIFtzaXplPTI1Nl0KICBFeHBhbnNpb24gUk9NIGF0IDQwMDYw
MDAwIFtkaXNhYmxlZF0gW3NpemU9MTI4S10KICBDYXBhYmlsaXRpZXM6IDxhY2Nlc3MgZGVuaWVk
PgogIEtlcm5lbCBtb2R1bGVzOiByYWRlb24sIGFtZGdwdQoKU28gQU1EL0FUSSBBU0lDcyBkZWZp
bml0ZWx5IGV4aXN0IHRoYXQgZXhwb3NlIGEgNjQtYml0IHByZWYgYW5kIGEKNjQtYml0IG5vbi1w
cmVmIEJBUi4KCi0tIApBcmQuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
