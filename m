Return-Path: <SRS0=7T5N=LJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B6FFC48BDF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 22:56:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 311FE61246
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 22:56:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 311FE61246
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SsfHtLKkxmWt8xky9K0jl9xxDIKc3kgke3YnIJj/PvM=; b=UAQ1l4iPyL+on7
	wRdczCXD2wEIAj8A9P8amyZBVYiB8fp6LJ9KE9XUlp0PRcXDG7/MCTjsEpZIBVUHM9nvs/QuehMv5
	ydqDAlGxq4H5SuA4ESDubXz8zmnDU2L194Tb25In00BUaosB2kkG9QiQt+FslUPXQrnE/R8OkcqMO
	ft+6C8qNriGfM45LtQmpslQ6UoBP6sinXX1eOUNYLyvEbDJhFmLJrD+w/eBV+i3yxVXcV8BVxeD/A
	1owvqjZJi3BcD6+snZxqqfn5cJkKu6QDJpPpmQ0Kx2HIATKbvRifkx1gyofz/nTtNw16hNu9GsonP
	gs68G3PsCtGPvrw4NIsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltHya-003idt-KV; Tue, 15 Jun 2021 22:56:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltGcf-0039mA-KQ; Tue, 15 Jun 2021 21:29:27 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E428C6128B;
 Tue, 15 Jun 2021 21:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623792564;
 bh=Z8l5pyigZ4sAnWmGuyoEt4UlPIHTvZnCXuw0L/8f19g=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=RpsO5PGxf3xBHgZ4sDaRCA2ZanT82ESrYyoZ7N6rL+dn6XEyJ2svOySpEXAjFWB1K
 F7leu/66O4NtuC87hfOhbo5AO8fGakjkO/DkVWjajpab+XWg/X+I11rzI2p/kjLPKz
 d50fXBB3Uwn9pGBrMtzLINGw/2UnPPCp0DfrbP6ahz4nUu23cieNZpPLvL39vvi+4g
 x4yLcFQvGfJLwwZLcMNyP+tG4szGTLMbfhb+9Bz0JNoFmkHw78uRGx8Trl3xRtz2Ae
 KOf3mZKAagWiYqckdb4N5UEVfU/iQTUc+Q/5nPh6m1tXljoRM49Zp1p89QHXQ9+i1/
 YL7Kh9Qwsnq6g==
Received: by mail-ej1-f42.google.com with SMTP id g8so156642ejx.1;
 Tue, 15 Jun 2021 14:29:24 -0700 (PDT)
X-Gm-Message-State: AOAM5311qUCQdGwXHIUAV7MVVprbcbvUZOtoNZoaPseoin13DftyczHZ
 Qgxk6bAF9ONaicy9T5E/zASHpieMy6YHmNz1NA==
X-Google-Smtp-Source: ABdhPJwVoFobxS8FdlynGYavo4IkXRj2LN6HkJlOKOVRHthoC5S/usa5DZkbknsweAGrYK/QFnylIoeJu0eNrrbuMcQ=
X-Received: by 2002:a17:907:3da4:: with SMTP id
 he36mr1668881ejc.108.1623792563457; 
 Tue, 15 Jun 2021 14:29:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210607112856.3499682-1-punitagrawal@gmail.com>
 <20210607112856.3499682-5-punitagrawal@gmail.com> <3105233.izSxrag8PF@diego>
In-Reply-To: <3105233.izSxrag8PF@diego>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 15 Jun 2021 15:29:12 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL8iDo5sLmgNVuXs5wt3TpVJbKHfk7gE740DidmvLOwiQ@mail.gmail.com>
Message-ID: <CAL_JsqL8iDo5sLmgNVuXs5wt3TpVJbKHfk7gE740DidmvLOwiQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: Update PCI host bridge
 window to 32-bit address memory
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Punit Agrawal <punitagrawal@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 PCI <linux-pci@vger.kernel.org>, 
 Alexandru Elisei <alexandru.elisei@arm.com>, wqu@suse.com, 
 Robin Murphy <robin.murphy@arm.com>, Peter Geis <pgwipeout@gmail.com>, 
 Ard Biesheuvel <ardb@kernel.org>, Brian Norris <briannorris@chromium.org>, 
 Shawn Lin <shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_142925_786344_F015CA95 
X-CRM114-Status: GOOD (  18.74  )
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

T24gVGh1LCBKdW4gMTAsIDIwMjEgYXQgMzo1MCBQTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cm90ZToKPgo+IEhpLAo+Cj4gQW0gTW9udGFnLCA3LiBKdW5pIDIwMjEsIDEzOjI4
OjU2IENFU1Qgc2NocmllYiBQdW5pdCBBZ3Jhd2FsOgo+ID4gVGhlIFBDSWUgaG9zdCBicmlkZ2Ug
b24gUkszMzk5IGFkdmVydGlzZXMgYSBzaW5nbGUgNjQtYml0IG1lbW9yeQo+ID4gYWRkcmVzcyBy
YW5nZSBldmVuIHRob3VnaCBpdCBsaWVzIGVudGlyZWx5IGJlbG93IDRHQi4KPiA+Cj4gPiBQcmV2
aW91c2x5IHRoZSBPRiBQQ0kgcmFuZ2UgcGFyc2VyIHRyZWF0ZWQgNjQtYml0IHJhbmdlcyBtb3Jl
Cj4gPiBsZW5pZW50bHkgKGkuZS4sIGFzIDMyLWJpdCksIGJ1dCBzaW5jZSBjb21taXQgOWQ1N2U2
MWJmNzIzICgib2YvcGNpOgo+ID4gQWRkIElPUkVTT1VSQ0VfTUVNXzY0IHRvIHJlc291cmNlIGZs
YWdzIGZvciA2NC1iaXQgbWVtb3J5IGFkZHJlc3NlcyIpCj4gPiB0aGUgY29kZSB0YWtlcyBhIHN0
cmljdGVyIHZpZXcgYW5kIHRyZWF0cyB0aGUgcmFuZ2VzIGFzIGFkdmVydGlzZWQgaW4KPiA+IHRo
ZSBkZXZpY2UgdHJlZSAoaS5lLCBhcyA2NC1iaXQpLgo+ID4KPiA+IFRoZSBjaGFuZ2UgaW4gYmVo
YXZpb3VyIGNhdXNlcyBmYWlsdXJlIHdoZW4gYWxsb2NhdGluZyBidXMgYWRkcmVzc2VzCj4gPiB0
byBkZXZpY2VzIGNvbm5lY3RlZCBiZWhpbmQgYSBQQ0ktdG8tUENJIGJyaWRnZSB0aGF0IHJlcXVp
cmUKPiA+IG5vbi1wcmVmZXRjaGFibGUgbWVtb3J5IHJhbmdlcy4gVGhlIGFsbG9jYXRpb24gZmFp
bHVyZSB3YXMgb2JzZXJ2ZWQKPiA+IGZvciBjZXJ0YWluIFNhbXN1bmcgTlZNZSBkcml2ZXMgY29u
bmVjdGVkIHRvIFJvY2tQcm82NCBib2FyZHMuCj4gPgo+ID4gVXBkYXRlIHRoZSBob3N0IGJyaWRn
ZSB3aW5kb3cgYXR0cmlidXRlcyB0byB0cmVhdCBpdCBhcyAzMi1iaXQgYWRkcmVzcwo+ID4gbWVt
b3J5LiBUaGlzIGZpeGVzIHRoZSBhbGxvY2F0aW9uIGZhaWx1cmUgb2JzZXJ2ZWQgc2luY2UgY29t
bWl0Cj4gPiA5ZDU3ZTYxYmY3MjMuCj4gPgo+ID4gUmVwb3J0ZWQtYnk6IEFsZXhhbmRydSBFbGlz
ZWkgPGFsZXhhbmRydS5lbGlzZWlAYXJtLmNvbT4KPiA+IExpbms6IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL3IvN2ExZTJlYmMtZjdkOC04NDMxLWQ4NDQtNDFhOWMzNmE4OTExQGFybS5jb20KPiA+
IFN1Z2dlc3RlZC1ieTogUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4KPiA+IFNp
Z25lZC1vZmYtYnk6IFB1bml0IEFncmF3YWwgPHB1bml0YWdyYXdhbEBnbWFpbC5jb20+Cj4gPiBU
ZXN0ZWQtYnk6IEFsZXhhbmRydSBFbGlzZWkgPGFsZXhhbmRydS5lbGlzZWlAYXJtLmNvbT4KPiA+
IENjOiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+ID4gQ2M6IFJvYiBIZXJyaW5n
IDxyb2JoK2R0QGtlcm5lbC5vcmc+Cj4KPiBqdXN0IGZvciBjbGFyaXR5LCBzaG91bGQgSSBqdXN0
IHBpY2sgdGhpcyBwYXRjaCBzZXBhcmF0ZWx5IGZvciA1LjEzLXJjIHRvCj4gbWFrZSBpdCBlYXN5
IGZvciBwZW9wbGUgdXNpbmcgY3VycmVudCBrZXJuZWwgZGV2aWNldHJlZXMsIG9yIHNob3VsZAo+
IHRoaXMgd2FpdCBmb3IgdGhlIHVwZGF0ZSBtZW50aW9uZWQgaW4gdGhlIGNvdmVyLWxldHRlciBy
ZXNwb25zZQo+IGFuZCBzaG91bGQgZ28gYWxsIHRvZ2V0aGVyIHRocm91Z2ggdGhlIFBDSSB0cmVl
PwoKVGhpcyB3YXMgZHJvcHBlZCBmcm9tIHY0LCBidXQgc2hvdWxkIHN0aWxsIGJlIGFwcGxpZWQg
SU1PLgoKQWNrZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
