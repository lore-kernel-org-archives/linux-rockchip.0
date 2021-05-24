Return-Path: <SRS0=SEAf=KT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D1B8C04FF3
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 May 2021 19:41:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 504096140B
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 May 2021 19:41:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 504096140B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=suse.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:Subject:From:References:Cc:To:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pAk5Yb5/lHPr0V9RTswFAdCtwHOh1NjdT8E4EsRVvFw=; b=gDugBzxp7FZr5H+xWg4P1uxeGE
	bP6LLNOhb+zTaH5q3vxV/jYm2fEWWC+nAmC+el0hgdp4MFTzrCBqYDN6d4elrfh5xzibzdSzXGgue
	Fgs5vzI/57ALH0NlqTietJofDj4qlsFhu/WWweRAbrcyd+VDSVnF8qojthAbr9pNqg5o3zhHZp9Lp
	SiwP4Fv+JiscoW91nS1seL04BQISLYCCaVrCsGKKI4UE3touOW9154mAlgYwuDEK7WM4gOG3oHzzi
	mzLgb1X9y6ZMk5Oat4dg286gAsb4pS/MH9DeCsHy8SYHMhOt4Cd3TtJe9RJkuU35XwK0w0BXUdBBw
	uCtzYV7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1llGSB-001iTA-0f; Mon, 24 May 2021 19:41:31 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1llAhL-000xYs-2i; Mon, 24 May 2021 13:32:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1621863162; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fngeBbRzIW6nlJ53AZGy5yxd7oCB3Cr2B2bVvOTUNdc=;
 b=XTyEwbIZBGXyQcJK6Alb1Wiun1N6b43M0EZsGKCU22bwWVwRBNktzmdkcWvTz3ad/p9PoK
 M9Nthn86LE95WVBDq6aSSOCSv0JnCjegq9IlOiyBGSZZrcQFRJFr+PWdqPYEfxVTRk0wc1
 KvV6oOwsR56UpbcrEkYoI9Gy/ceEriI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1621863162;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fngeBbRzIW6nlJ53AZGy5yxd7oCB3Cr2B2bVvOTUNdc=;
 b=PhvcpzL9yDwab/l7WMWp5NGSwCfEkMCdsnH49mgihRYhe9cK6xFP41ULq8nDq1f4UMxcLM
 Mw4JT63AGD1u4uAQ==
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 5E791AB6D;
 Mon, 24 May 2021 13:32:42 +0000 (UTC)
To: Marc Zyngier <maz@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org
References: <20210516230551.12469-1-afaerber@suse.de>
 <20210516230551.12469-4-afaerber@suse.de> <87h7j1vhq7.wl-maz@kernel.org>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Subject: Re: [PATCH 3/9] arm64: dts: rockchip: Prepare Rockchip RK1808
Message-ID: <7ef183f1-00f8-13c4-1fd3-eae9e0bbf74c@suse.de>
Date: Mon, 24 May 2021 15:32:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <87h7j1vhq7.wl-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210524_063247_442233_4E3929C4 
X-CRM114-Status: GOOD (  17.85  )
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

T24gMTcuMDUuMjEgMTE6MjEsIE1hcmMgWnluZ2llciB3cm90ZToKPiBPbiBNb24sIDE3IE1heSAy
MDIxIDAwOjA1OjQ1ICswMTAwLAo+IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4g
d3JvdGU6Cj4+Cj4+IEFkZCBhbiBpbml0aWFsIERldmljZSBUcmVlIGZvciBSb2NrY2hpcCBSSzE4
MDggU29DLgo+PiBCYXNlZCBvbiBzaGlwcGluZyBUQi1SSzE4MDhNMCBEVEIuCj4+Cj4+IFNpZ25l
ZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KPj4gLS0tCj4+ICBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMTgwOC5kdHNpIHwgMjAzICsrKysrKysrKysr
KysrKysrKysrKysrCj4+ICAxIGZpbGUgY2hhbmdlZCwgMjAzIGluc2VydGlvbnMoKykKPj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMTgwOC5kdHNp
Cj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMTgwOC5k
dHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazE4MDguZHRzaQo+PiBuZXcgZmls
ZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLmFmMmI1MWFmZGE3ZAo+PiAtLS0g
L2Rldi9udWxsCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsxODA4LmR0
c2kKWy4uLl0KPj4gKwkJZ2ljOiBpbnRlcnJ1cHQtY29udHJvbGxlckBmZjEwMDAwMCB7Cj4+ICsJ
CQljb21wYXRpYmxlID0gImFybSxnaWMtdjMiOwo+PiArCQkJcmVnID0gPDB4ZmYxMDAwMDAgMHgx
MDAwMD4sIC8qIEdJQ0QgKi8KPj4gKwkJCSAgICAgIDwweGZmMTQwMDAwIDB4YzAwMDA+LCAvKiBH
SUNSICovCj4gCj4gVGhpcyBpcyBvYnZpb3VzbHkgd3JvbmcuIFlvdSBoYXZlIHR3byBDUFVzLCBh
bmQgeWV0IGRlc2NyaWJlIGEgcmFuZ2UKPiB0aGF0IHNwYW5zIDYuIEkgZ3Vlc3MgdGhpcyBpcyBh
IGNvcHkgcGFzdGUgZnJvbSByazMzOTkgYWdhaW4/CgpOb3Qgb24gbXkgcGFydCBhdCBsZWFzdC4g
QXMgaW5kaWNhdGVkLCB0aGVzZSBudW1iZXJzIGFyZSB3aGF0IHNoaXBzIGluCnRoZSBEVEIgb24g
dGhlIFJLMTgwOCBjYXJkLCBhcyBwZXIgZHRjIC1JIGR0YiAtTyBkdHMuIENvdWxkIGJlIGEgbWlz
dGFrZQpieSBSb2NrY2hpcCwgb2YgY291cnNlLgoKQXJlIHlvdSBzdWdnZXN0aW5nIDB4YzAwMDAv
NioyID0gMHg0MDAwMCBmb3IgdHdvIENQVXMgaGVyZT8KV29ya3MgYXMgYmFkIGFzIGJlZm9yZSAt
IGludmVzdGlnYXRpb24gc3RpbGwgb25nb2luZyB3aXRoIGxhdGVzdCBuZXh0LgoKQXMgZm9yICJv
YnZpb3VzbHkiOiBUaGUgR0lDdjMgWUFNTCBiaW5kaW5nIGhhcyBubyBkZXNjcmlwdGlvbiBmb3Ig
bWUgdG8KdmFsaWRhdGUgdGhvc2UgbnVtYmVyczogIkdJQyBSZWRpc3RyaWJ1dG9ycyAoR0lDUiks
IG9uZSByYW5nZSBwZXIKcmVkaXN0cmlidXRvciByZWdpb24iIC0gc2F5cyBub3RoaW5nIGFib3V0
IGNvcnJlbGF0aW9uIHRvIG51bWJlciBvZiBDUFVzCm9yIHNpemUgcGVyIENQVSwgYW5kIHRoZSBl
eGFtcGxlcyBhcmUgbm90IGV4cGxhaW5pbmcgZWl0aGVyOiAweDIwMDAwMApoYXMgbm8gbnVtYmVy
IG9mIENQVXMgYXNzb2NpYXRlZCwgYW5kIGJ5IG15IGNhbGN1bGF0aW9uIDB4ODAwMDAwIGZvciAz
MgpDUFVzIHJlc3VsdHMgaW4gMHg0MDAwMCBwZXIgQ1BVOyBidXQgdGhlbiBhZ2FpbiB0aGUgZXhh
bXBsZXMgYWxzbyBoYXZlCkdJQ0MgZXRjLiBhdCBkaXZlcmdpbmcgMHgyMDAwIHNpemUuCgo+PiAr
CQkJICAgICAgPDB4ZmYzMDAwMDAgMHgxMDAwMD4sIC8qIEdJQ0MgKi8KPj4gKwkJCSAgICAgIDww
eGZmMzEwMDAwIDB4MTAwMDA+LCAvKiBHSUNIICovCj4+ICsJCQkgICAgICA8MHhmZjMyMDAwMCAw
eDEwMDAwPjsgLyogR0lDViAqLwo+PiArCQkJaW50ZXJydXB0LWNvbnRyb2xsZXI7Cj4+ICsJCQkj
aW50ZXJydXB0LWNlbGxzID0gPDM+Owo+PiArCQkJaW50ZXJydXB0cyA9IDxHSUNfUFBJIDkgSVJR
X1RZUEVfTEVWRUxfSElHSD47Cj4+ICsJCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4gKwkJCSNz
aXplLWNlbGxzID0gPDE+Owo+PiArCQkJcmFuZ2VzOwo+PiArCj4+ICsJCQlnaWNfaXRzOiBtc2kt
Y29udHJvbGxlckBmZjEyMDAwMCB7Cj4+ICsJCQkJY29tcGF0aWJsZSA9ICJhcm0sZ2ljLXYzLWl0
cyI7Cj4+ICsJCQkJcmVnID0gPDB4ZmYxMjAwMDAgMHgyMDAwMD47Cj4+ICsJCQkJbXNpLWNvbnRy
b2xsZXI7Cj4+ICsJCQkJI21zaS1jZWxscyA9IDwxPjsKPj4gKwkJCX07Cj4gCj4gV2hhdCB1c2Vz
IHRoZSBJVFM/CgpEVC13aXNlIHNlZW1pbmdseSBvbmx5IHRoZSBfX3N5bWJvbHNfXyB0YWJsZSAo
bmFtZWQganVzdCAiaXRzIiB0aGVyZSwgSQpub3RpY2UpLCBzbyB3ZSBjb3VsZCBkcm9wIChvciBy
ZW5hbWUpIHRoZSBsYWJlbCBpZiB5b3UgcHJlZmVyLgoKUmVnYXJkcywKQW5kcmVhcwoKLS0gClNV
U0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSApNYXhmZWxkc3RyLiA1LCA5MDQwOSBO
w7xybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlcgpIUkIgMzY4MDkgKEFHIE7D
vHJuYmVyZykKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
