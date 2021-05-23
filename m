Return-Path: <SRS0=9FBq=KS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34CDFC47080
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 May 2021 11:03:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 745656109E
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 May 2021 11:03:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 745656109E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:Date:References:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=srQ/TelOqstKjx/FFELrHvbBvsg8yAsJPcOU/bqboHI=; b=fuGUdoPnjAKhQwhbmd6FV/GYjh
	o4wnKzHz+sNMzcskCBarsHz7bPtVBveYVyecyZoqUMcC2KHnraPNasQD0I/HJ1fa5Te00IEKAwO31
	LFzuHiekJZmkEZnqltrPbMzbVOyBEJ5Wh3tDoVDzrhFJsVPIaeLZB2xC3qZ3JyyNmuPanHI87uf6O
	EHqLuybbCxqWzd1zotey9w6Ds8Dt3QE8BxhQWOKpAfO3DmCcHOG5XJB9pr3ni4+XzcGcb97rm2dj7
	3O2/uRBWE0ugYjaouZ7aoBZm7gj4z+8vte1gXFDqz06ySNeCSbBzMT2ETFuTXncCaUs7fxIUBsUBF
	RIUrIcwQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lklte-004IPu-GY; Sun, 23 May 2021 11:03:50 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lklta-004IP4-KB; Sun, 23 May 2021 11:03:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=9Lt/AIdW6HrrFuSEZPcebw6uiQe1k5wv4Yjw5eCiDSA=; b=pPHoRQBlhwiJpAFtTdHyuQ1WnV
 Cm5ZShZc/LFx7ie3Kh3IGHfTxsIlG++XNm3iwSECjCj0Hz+czY8LBpY1pP1GE7uVvNMHCHocC9xsS
 IXmvTETnI3qHr2hw8uRfs7B6gMAgiZ9Cy8nNnD1OZX4VBmpfHE7mMHPoPrT6CZnJ9z8/axcxN208d
 IDv0egOZdnYFlM3pNbyRjJyg4hl/hHIFaZ64dRNR0E07pZt9PACjHGwdaYbC/kIGWvTTdcQ0c1mMT
 w7Z+89fEQlkAPN9PrMXhpv3iezgvVu2yuAt6csayyr+tI7TFnlU0gfbyQmcFx8yc6rsxjP5uFwUjd
 m8V/IOFQ==;
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lkltW-000Pcj-ME; Sun, 23 May 2021 11:03:45 +0000
Received: by mail-pf1-x42d.google.com with SMTP id e17so7871040pfl.5;
 Sun, 23 May 2021 04:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=9Lt/AIdW6HrrFuSEZPcebw6uiQe1k5wv4Yjw5eCiDSA=;
 b=o/LXRFj1N137rMWJZVD04xNaZdyn41IClD0VDUOUfyQsz+n2l5tELF76mITpZvxrQt
 WwMesJ1N1v5P/kYanMxK7+bIfL6O/mGDHM0ToKwxAL8PPsg9/Iw1sKvLXgkOp755v+yd
 nr/nf3Y220oIMVy5roxxxrwLtIOxVX1W26ceshPhf9tshUGDF7bCl29gKWQeBqkbhfFa
 are3vBf5KcB8GfN+6t5m1ko/LhjPpzf1AidfHmGgK0WduNVcnHQ68gor2O5++/fpsN2s
 6HI5LRGTqsST6BNa2+N3F4s6Wd8I4GOm3cs4fxdDDjW6BZ3804rZb3tMeERJo2ol+y0f
 0cag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=9Lt/AIdW6HrrFuSEZPcebw6uiQe1k5wv4Yjw5eCiDSA=;
 b=ISFLgaQoc9CsZYpIPxL/VvqA7iKCqkAw97Ah+koAUQ38RXVj1olsPsChLNkz7pbUWC
 jhRSt/Z63tUOZNzOQIAjePPGFwwzR/4dzYLMsAYIDJWE5TaiivkVfRMGSte5RumilTJf
 H3/VdbKbwGESVjXGJPqrzDqWZJATg4YgGElWF3O3u7D2NYP/VEzxiqQXJ4GDgGD/Db9J
 7Ojl8QJ6lJ7mp7+2RCh+l5hA/2VGlkoQPvDbi3rwYvSR9wEtvi1FS0Yk541RL2U1Apvc
 UNV87DoT0eqGVmn/zdqw23/+ZLH2DJo8uuBEHdnWMdcC2kUBxwZTAhxyf8AmACRLdxy9
 045w==
X-Gm-Message-State: AOAM5311JskF1nIEP+Ni+WSkCx61x315oBBe86WF0RbwqlUVLXJhZWyn
 /Xclxm+GW+1S48ZyhKJgpZ0=
X-Google-Smtp-Source: ABdhPJxsHyU5CpFgPLpX10jkw6h9MAsYtH8flePtQusfoht55zKY+VvtUG3rEeTURcuLbdbrXtM2+Q==
X-Received: by 2002:a63:1210:: with SMTP id h16mr8084566pgl.189.1621767819261; 
 Sun, 23 May 2021 04:03:39 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id w206sm8282820pfc.61.2021.05.23.04.03.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 23 May 2021 04:03:38 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Alexandru Elisei <alexandru.elisei@arm.com>,  Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>,  linux-rockchip@lists.infradead.org,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 heiko.stuebner@theobroma-systems.com,  leobras.c@gmail.com,  Rob Herring
 <robh@kernel.org>,  linux-pci@vger.kernel.org
Subject: Re: [BUG] rockpro64: PCI BAR reassignment broken by commit
 9d57e61bf723 ("of/pci: Add IORESOURCE_MEM_64 to resource flags for 64-bit
 memory addresses")
References: <7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com>
 <01efd004-1c50-25ca-05e4-7e4ef96232e2@arm.com>
Date: Sun, 23 May 2021 20:03:36 +0900
In-Reply-To: <01efd004-1c50-25ca-05e4-7e4ef96232e2@arm.com> (Robin Murphy's
 message of "Wed, 19 May 2021 12:27:48 +0100")
Message-ID: <87eedxbtkn.fsf@stealth>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210523_040342_761609_BE7C2CED 
X-CRM114-Status: GOOD (  21.78  )
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

Um9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4gd3JpdGVzOgoKPiBbICtsaW51eC1w
Y2kgZm9yIHZpc2liaWxpdHkgXQo+Cj4gT24gMjAyMS0wNS0xOCAxMDowOSwgQWxleGFuZHJ1IEVs
aXNlaSB3cm90ZToKPj4gQWZ0ZXIgZG9pbmcgYSBnaXQgYmlzZWN0IEkgd2FzIGFibGUgdG8gdHJh
Y2UgdGhlIGZvbGxvd2luZyBlcnJvciB3aGVuIGJvb3RpbmcgbXkKPj4gcm9ja3BybzY0IHYyIChy
azMzOTkgU29DKSB3aXRoIGEgUENJRSBOVk1FIGV4cGFuc2lvbiBjYXJkOgo+PiBbLi5dCj4+IFvC
oMKgwqAgMC4zMDUxODNdIHJvY2tjaGlwLXBjaWUgZjgwMDAwMDAucGNpZTogaG9zdCBicmlkZ2Ug
L3BjaWVAZjgwMDAwMDAgcmFuZ2VzOgo+PiBbwqDCoMKgIDAuMzA1MjQ4XSByb2NrY2hpcC1wY2ll
IGY4MDAwMDAwLnBjaWU6wqDCoMKgwqDCoCBNRU0gMHgwMGZhMDAwMDAwLi4weDAwZmJkZmZmZmYg
LT4KPj4gMHgwMGZhMDAwMDAwCj4+IFvCoMKgwqAgMC4zMDUyODVdIHJvY2tjaGlwLXBjaWUgZjgw
MDAwMDAucGNpZTrCoMKgwqDCoMKgwqAgSU8gMHgwMGZiZTAwMDAwLi4weDAwZmJlZmZmZmYgLT4K
Pj4gMHgwMGZiZTAwMDAwCj4+IFvCoMKgwqAgMC4zMDYyMDFdIHJvY2tjaGlwLXBjaWUgZjgwMDAw
MDAucGNpZTogc3VwcGx5IHZwY2llMXY4IG5vdCBmb3VuZCwgdXNpbmcgZHVtbXkKPj4gcmVndWxh
dG9yCj4+IFvCoMKgwqAgMC4zMDYzMzRdIHJvY2tjaGlwLXBjaWUgZjgwMDAwMDAucGNpZTogc3Vw
cGx5IHZwY2llMHY5IG5vdCBmb3VuZCwgdXNpbmcgZHVtbXkKPj4gcmVndWxhdG9yCj4+IFvCoMKg
wqAgMC4zNzM3MDVdIHJvY2tjaGlwLXBjaWUgZjgwMDAwMDAucGNpZTogUENJIGhvc3QgYnJpZGdl
IHRvIGJ1cyAwMDAwOjAwCj4+IFvCoMKgwqAgMC4zNzM3MzBdIHBjaV9idXMgMDAwMDowMDogcm9v
dCBidXMgcmVzb3VyY2UgW2J1cyAwMC0xZl0KPj4gW8KgwqDCoCAwLjM3Mzc1MV0gcGNpX2J1cyAw
MDAwOjAwOiByb290IGJ1cyByZXNvdXJjZSBbbWVtIDB4ZmEwMDAwMDAtMHhmYmRmZmZmZiA2NGJp
dF0KPj4gW8KgwqDCoCAwLjM3Mzc3N10gcGNpX2J1cyAwMDAwOjAwOiByb290IGJ1cyByZXNvdXJj
ZSBbaW/CoCAweDAwMDAtMHhmZmZmZl0gKGJ1cwo+PiBhZGRyZXNzIFsweGZiZTAwMDAwLTB4ZmJl
ZmZmZmZdKQo+PiBbwqDCoMKgIDAuMzczODM5XSBwY2kgMDAwMDowMDowMC4wOiBbMWQ4NzowMTAw
XSB0eXBlIDAxIGNsYXNzIDB4MDYwNDAwCj4+IFvCoMKgwqAgMC4zNzM5NzNdIHBjaSAwMDAwOjAw
OjAwLjA6IHN1cHBvcnRzIEQxCj4+IFvCoMKgwqAgMC4zNzM5OTJdIHBjaSAwMDAwOjAwOjAwLjA6
IFBNRSMgc3VwcG9ydGVkIGZyb20gRDAgRDEgRDNob3QKPj4gW8KgwqDCoCAwLjM3ODUxOF0gcGNp
IDAwMDA6MDA6MDAuMDogYnJpZGdlIGNvbmZpZ3VyYXRpb24gaW52YWxpZCAoW2J1cyAwMC0wMF0p
LAo+PiByZWNvbmZpZ3VyaW5nCj4+IFvCoMKgwqAgMC4zNzg3NjVdIHBjaSAwMDAwOjAxOjAwLjA6
IFsxNDRkOmE4MDhdIHR5cGUgMDAgY2xhc3MgMHgwMTA4MDIKPj4gW8KgwqDCoCAwLjM3ODg2OV0g
cGNpIDAwMDA6MDE6MDAuMDogcmVnIDB4MTA6IFttZW0gMHgwMDAwMDAwMC0weDAwMDAzZmZmIDY0
Yml0XQo+PiBbwqDCoMKgIDAuMzc5MDUxXSBwY2kgMDAwMDowMTowMC4wOiBNYXggUGF5bG9hZCBT
aXplIHNldCB0byAyNTYgKHdhcyAxMjgsIG1heCAyNTYpCj4+IFvCoMKgwqAgMC4zNzk2NjFdIHBj
aSAwMDAwOjAxOjAwLjA6IDguMDAwIEdiL3MgYXZhaWxhYmxlIFBDSWUgYmFuZHdpZHRoLCBsaW1p
dGVkIGJ5Cj4+IDIuNSBHVC9zIFBDSWUgeDQgbGluayBhdCAwMDAwOjAwOjAwLjAgKGNhcGFibGUg
b2YgMzEuNTA0IEdiL3Mgd2l0aCA4LjAgR1QvcyBQQ0llCj4+IHg0IGxpbmspCj4+IFvCoMKgwqAg
MC4zOTMyNjldIHBjaV9idXMgMDAwMDowMTogYnVzbl9yZXM6IFtidXMgMDEtMWZdIGVuZCBpcyB1
cGRhdGVkIHRvIDAxCj4+IFvCoMKgwqAgMC4zOTMzMTFdIHBjaSAwMDAwOjAwOjAwLjA6IEJBUiAx
NDogbm8gc3BhY2UgZm9yIFttZW0gc2l6ZSAweDAwMTAwMDAwXQo+PiBbwqDCoMKgIDAuMzkzMzMz
XSBwY2kgMDAwMDowMDowMC4wOiBCQVIgMTQ6IGZhaWxlZCB0byBhc3NpZ24gW21lbSBzaXplIDB4
MDAxMDAwMDBdCj4+IFvCoMKgwqAgMC4zOTMzNTZdIHBjaSAwMDAwOjAxOjAwLjA6IEJBUiAwOiBu
byBzcGFjZSBmb3IgW21lbSBzaXplIDB4MDAwMDQwMDAgNjRiaXRdCj4+IFvCoMKgwqAgMC4zOTMz
NzVdIHBjaSAwMDAwOjAxOjAwLjA6IEJBUiAwOiBmYWlsZWQgdG8gYXNzaWduIFttZW0gc2l6ZSAw
eDAwMDA0MDAwIDY0Yml0XQo+PiBbwqDCoMKgIDAuMzkzMzk3XSBwY2kgMDAwMDowMDowMC4wOiBQ
Q0kgYnJpZGdlIHRvIFtidXMgMDFdCj4+IFvCoMKgwqAgMC4zOTM4MzldIHBjaWVwb3J0IDAwMDA6
MDA6MDAuMDogUE1FOiBTaWduYWxpbmcgd2l0aCBJUlEgNzgKPj4gW8KgwqDCoCAwLjM5NDE2NV0g
cGNpZXBvcnQgMDAwMDowMDowMC4wOiBBRVI6IGVuYWJsZWQgd2l0aCBJUlEgNzgKPj4gWy4uXQo+
PiB0byB0aGUgY29tbWl0IDlkNTdlNjFiZjcyMyAoIm9mL3BjaTogQWRkIElPUkVTT1VSQ0VfTUVN
XzY0IHRvCj4+IHJlc291cmNlIGZsYWdzIGZvcgo+PiA2NC1iaXQgbWVtb3J5IGFkZHJlc3NlcyIp
Lgo+Cj4gRldGVywgbXkgaHVuY2ggaXMgdGhhdCB0aGUgaG9zdCBicmlkZ2UgYWR2ZXJ0aXNpbmcg
bm8gMzItYml0IG1lbW9yeQo+IHJlc291cmNlLCBvbmx5IG9ubHkgYSBzaW5nbGUgNjQtYml0IG5v
bi1wcmVmZXRjaGFibGUgb25lIChldmVuIHRob3VnaCAKPiBpdCdzIGVudGlyZWx5IGJlbG93IDRH
QikgbWlnaHQgYmUgYSBiaXQgd2VpcmQgYW5kIHRyaXBwaW5nIHNvbWV0aGluZwo+IHVwIGluIHRo
ZSByZXNvdXJjZSBhc3NpZ25tZW50IGNvZGUuIEl0IGNlcnRhaW5seSBzZWVtcyBsaWtlIHRoZSB0
aGluZwo+IG1vc3QgZGlyZWN0bHkgcmVsYXRlZCB0byB0aGUgb2ZmZW5kaW5nIGNvbW1pdC4KPgo+
IEknZCBiZSB0ZW1wdGVkIHRvIHRyeSBmaWRkbGluZyB3aXRoIHRoYXQgaW4gdGhlIERUIChpLmUu
IGNoYW5naW5nCj4gMHg4MzAwMDAwMCB0byAweDgyMDAwMDAwIGluIHRoZSBQQ0llIG5vZGUncyAi
cmFuZ2VzIiBwcm9wZXJ0eSkgdG8gc2VlCj4gaWYgaXQgbWFrZXMgYW55IGRpZmZlcmVuY2UuIE5v
dGUgdGhhdCBldmVuIGlmIGl0IGhlbHBzLCB0aG91Z2gsIEkKPiBkb24ndCBrbm93IHdoZXRoZXIg
dGhhdCdzIHRoZSBjb3JyZWN0IGZpeCBvciBqdXN0IGEgYm9kZ2UgYXJvdW5kIGEKPiBjb3JuZXIt
Y2FzZSBidWcgc29tZXdoZXJlIGluIHRoZSByZXNvdXJjZSBjb2RlLgoKRnJvbSBkaWdnaW5nIGlu
dG8gdGhpcyBmdXJ0aGVyIHRoZSBmYWlsdXJlIHNlZW1zIHRvIGJlIGR1ZSB0byBhIG1pc21hdGNo
Cm9mIGZsYWdzIHdoZW4gYWxsb2NhdGluZyByZXNvdXJjZXMgaW4gcGNpX2J1c19hbGxvY19mcm9t
X3JlZ2lvbigpIC0KCiAgICBpZiAoKHJlcy0+ZmxhZ3MgXiByLT5mbGFncykgJiB0eXBlX21hc2sp
CiAgICAgICAgICAgIGNvbnRpbnVlOwoKVGhvdWdoIEkgYW0gYWxzbyBub3Qgc3VyZSB3aHkgdGhl
IGZhaWx1cmUgaXMgb25seSBiZWluZyByZXBvcnRlZCBvbgpSSzMzOTkgLSBkb2VzIGEgc2luZ2xl
IDY0LWJpdCB3aW5kb3cgaGF2ZSBhbnl0aGluZyB0byBkbyB3aXRoIGl0PwoKQWxzbywgSSBkb24n
dCB1bmRlcnN0YW5kIHRoZSBtb3RpdmF0aW9uIGZvciB0aGUgb3JpZ2luYWwgY29tbWl0LiBJdCBp
cwpub3QgY2xlYXIgd2hhdCBwcm9ibGVtIGl0IGlzIHNvbHZpbmcgYW5kIHRoZSBkaXNjdXNzaW9u
IHRocmVhZCBzZWVtcyB0bwpzdWdnZXN0IHRoYXQgdGhpbmdzIHdvcmsgZmluZSB3aXRob3V0IGl0
WzBdLgoKWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWRldmljZXRyZWUvQ0FMX0pz
cUpYS1ZVRmg5S3JKam9ibi1qRS1QRktOMHctVl9pM3FrZkJycFRhaDRnOFh3QG1haWwuZ21haWwu
Y29tLwoKWy4uLl0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
