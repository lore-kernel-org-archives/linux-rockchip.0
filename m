Return-Path: <SRS0=PFct=EI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1215BC00A89
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2020 07:34:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 99F2D20719
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2020 07:34:00 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="AgiESKj7"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 99F2D20719
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZDMAeh6siqg6KcFw4FqrsWmyNwk4c7YFTumwEqIJ4a0=; b=AgiESKj7uzyEfLk0qN+laFvGf
	wv3P7KrRcvdgl+qlRCBzU6sV1PMRM/iGW5S1dwTdK+KEViTP8qQk7NtThZX95tAyKrNH3QrHpySVw
	o1KXd9LiQ36tHJFP9SpVMYXJEShaKzOvpg1YO5mU5BpHZUQFAHFeZoPcbW2R2Jq9LBZUUUJXZIY+H
	ssZowfwDcjXbQ0ThcEsiV9lbz7n5GSoXttN2XJn9vJ6wrNpTHsFpOydv62sjaID39znYBIUovRS9I
	RokKVexD4xAoBK8QRj7ZiXgy1yxivkVnxMhZ1DtFgGIzqnFn/iYLer3y/DQMdH5s0y6Y08krR9ddX
	lkzjCL1VQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZULb-0007j1-HV; Mon, 02 Nov 2020 07:33:47 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZULT-0007gt-Go; Mon, 02 Nov 2020 07:33:41 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 1D7DE20000A;
 Mon,  2 Nov 2020 07:32:59 +0000 (UTC)
Date: Mon, 2 Nov 2020 08:32:58 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?UTF-8?B?6LW15Luq5bOw?= <yifeng.zhao@rock-chips.com>
Subject: Re: [PATCH v13 2/8] mtd: rawnand: rockchip: NFC drivers for RK3308,
 RK2928 and others
Message-ID: <20201102083258.3a748c44@xps13>
In-Reply-To: <20201102114503679684135@rock-chips.com>
References: <20201028095326.15562-1-yifeng.zhao@rock-chips.com>
 <20201028095326.15562-3-yifeng.zhao@rock-chips.com>
 <a8a7875b-f08b-62c6-a630-245687e0df3b@gmail.com>
 <0dabd80e-b281-be65-b8e2-da00f46964fb@gmail.com>
 <20201102114503679684135@rock-chips.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201102_023339_818006_840629C0 
X-CRM114-Status: GOOD (  12.73  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree <devicetree@vger.kernel.org>,
 =?UTF-8?B?SGVpa29TdMO8Ym5lcg==?= <heiko@sntech.de>, richard <richard@nod.at>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 robh+dt <robh+dt@kernel.org>, linux-mtd <linux-mtd@lists.infradead.org>,
 Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 vigneshr <vigneshr@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8sCgrotbXku6rls7AgPHlpZmVuZy56aGFvQHJvY2stY2hpcHMuY29tPiB3cm90ZSBvbiBN
b24sIDIgTm92IDIwMjAgMTE6NDY6MDQKKzA4MDA6Cgo+IEhpIEpvaGFuLAo+IAo+IHZvaWQgbmFu
ZF9kZXNlbGVjdF90YXJnZXQoc3RydWN0IG5hbmRfY2hpcCAqY2hpcCkKPiB7Cj4gCWlmIChjaGlw
LT5sZWdhY3kuc2VsZWN0X2NoaXApCj4gCQljaGlwLT5sZWdhY3kuc2VsZWN0X2NoaXAoY2hpcCwg
LTEpOwo+IAo+IAljaGlwLT5jdXJfY3MgPSAtMTsKPiB9Cj4gCj4gSSBuZWVkIGFkZCB0aGUgY29k
ZSBiZWxvdyBhbmQgaXQgd29yay4gCj4gCj4gwqAgwqBjaGlwLT5sZWdhY3kuc2VsZWN0X2NoaXAg
PSBya19uZmNfc2VsZWN0X2NoaXA7Cj4gCj4gQnV0IEkgZm91bmTCoGFsbW9zdCBhbGwgbmFuZGMg
ZHJpdmVycyBkbyBub3QgYWRkIHRoaXMgY29kZS4gSXMgdGhlcmUgYW55IG90aGVyIHdheSB0byBp
bXBsZW1lbnQgaXTvvJ8KCkluZGVlZCwgd2UgZG9uJ3QgYWNjZXB0IG5ldyBjb2RlIHdlIGxlZ2Fj
eSBiaW5kaW5ncy4KCkkgZG9uJ3QgdW5kZXJzdGFuZCB3aGF0IGV4dHJhIGNvbnN1bXB0aW9uIHlv
dSBhcmUgdHJ5aW5nIHRvIGF2b2lkLApiZWNhdXNlIGlmIGl0IGlzIHRoZSBOQU5EIGRldmljZSBp
dHNlbGYgdGhhdCBpcyBhYmxlIHRvIHNhdmUgcG93ZXIgd2hlbgppdCBnZXRzIHVuc2VsZWN0ZWQs
IGl0J3MgcmVhbGx5IG5vbmUgb2YgeW91IGNvbnRyb2xsZXIncyBidXNpbmVzcy4KClBlcmhhcHMg
aXQncyB0aGUgdGltZSB0byBmb2N1cyBvbiB0aGUgY29udHJvbGxlciBzdXBwb3J0IGFuZCB0dW5l
IHRoZQpjb2RlIGJhc2UgbGF0ZXIgaW4gYSBiaWQgdG8gcmVkdWNlIGNvbnN1bXB0aW9uLgoKVGhh
bmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
