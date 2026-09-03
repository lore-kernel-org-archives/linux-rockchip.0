Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BA82C61DD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 06:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LU4pAYBGDgpZAbh8+aHP5jR8rqzeueU4Cac8FTAOODE=; b=XG0YODVRkTsl9W
	0++JJKWkfc9IgIgJL17ZavFReKKVxKKDz81Vv2wsETIHFJAqXcQubkqjtG5+CyebeoAIXeFKZ0tNC
	IVv5pYUWHVQbUPC8sZvFOEKAochUfd1U4aBCKY2HfQLEObrI5CGig6YguOj2jXgR880/1Ks2yzoFs
	WJiQ2/sRP4xtO5c6PfQn37wOLXJZSIJ3tgfYyapRkbMUVkjE1t9lzQAsJP6+AbxNx8GryLB6MWjIk
	NTpQfMNKItQiTmmtDoR9u/3Xs5kimJyjS61tg2umebU6cpDOFn6L1OmYfbhaxtcZmYU1JC64LS5rj
	dHJNxKPA9vju0UqMZx7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21HV-0000000GVgi-1Tc1;
	Thu, 03 Sep 2026 06:50:41 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21HT-0000000GVfm-09BH;
	Thu, 03 Sep 2026 06:50:40 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1788418227; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Oj5mtDGDWl2NU+yGejaqU6lgE9KyazC8lZoCLTk5ja3vIO7ZRpN92lsAQ5iqSuTgUOafCY+ZumZwWyjFD0jR/dBcrNgVvy4GmirhVb7xAfu3EoxP8m32mUQaj7zAILGpWutfy15hajcI2pwO39s2Ehf6/o00km2DLKcro1OJsEs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1788418227; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=bVRFysRKvF5JRI0gdedHC+kWors6h80025WFIPu9hMQ=; 
	b=Aiv6kn8gOaid7M2GJJ9EOvtMe99Q4v2IUuzDE8hadYydJ2OQFb0/DgWuV4mwODUQ5UKZ7UqUkC/NHGHWM0eOcC/vuIYCuB2PPIGUckk2vo5WLx4eX29A9ZLGskc15uDGw54XSD0d9BXFqTfvWcIYzx64fdlzxuCInqdJc925gik=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1788418227;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=bVRFysRKvF5JRI0gdedHC+kWors6h80025WFIPu9hMQ=;
	b=iP/mUZg8GwltKlv3vjg4vDNEDTRS7KFqE18GrRc+1KneY3T0Xbm14185s3y1oi5J
	iMpRdy0q59JIFA5yOf4DE3Mdm0aDRGMN77UCO4U84HJqN8Sw+cwfWRJgoPHwA4OXego
	eUXnehft3hWOJ6GnZ/gdNx25FWRmyuUZhCCxZqsE=
Received: by mx.zohomail.com with SMTPS id 1788418225291596.2712766780835;
	Wed, 2 Sep 2026 23:50:25 -0700 (PDT)
Message-ID: <14072655-72f2-49bb-bbb2-7d009dc69804@collabora.com>
Date: Thu, 3 Sep 2026 08:50:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/9] media: v4l2-ctrls: validate HEVC tile counts
To: Michael Bommarito <michael.bommarito@gmail.com>,
 Hans Verkuil <hverkuil@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Yunfei Dong <yunfei.dong@mediatek.com>, Jonas Karlman <jonas@kwiboo.se>,
 Heiko Stuebner <heiko@sntech.de>, Kees Cook <kees@kernel.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260617021906.2746743-1-michael.bommarito@gmail.com>
 <20260617021906.2746743-2-michael.bommarito@gmail.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20260617021906.2746743-2-michael.bommarito@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_235039_135627_0249BD4E 
X-CRM114-Status: GOOD (  15.54  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDE3LzA2LzIwMjYgw6AgMDQ6MTgsIE1pY2hhZWwgQm9tbWFyaXRvIGEgw6ljcml0wqA6Cj4g
VGhlIHN0YXRlbGVzcyBIRVZDIGRlY29kZXJzIHJlYWQgbnVtX3RpbGVfY29sdW1uc19taW51czEg
KyAxIGVudHJpZXMgZnJvbQo+IGNvbHVtbl93aWR0aF9taW51czFbXSBhbmQgbnVtX3RpbGVfcm93
c19taW51czEgKyAxIGZyb20gcm93X2hlaWdodF9taW51czFbXQo+IGFuZCB1c2UgdGhlbSBhcyB0
aWxlLWxvb3AgYm91bmRzLCBidXQgc3RkX3ZhbGlkYXRlX2NvbXBvdW5kKCkgZG9lcyBub3QKPiBi
b3VuZCB0aGVzZSB1OCBjb3VudHMuIFJlamVjdCBhIFY0TDJfQ1RSTF9UWVBFX0hFVkNfUFBTIHdp
dGggdGlsaW5nCj4gZW5hYmxlZCB3aG9zZSB0aWxlIGNvdW50cyBleGNlZWQgdGhlIHVBUEkgYXJy
YXkgY2FwYWNpdHksIG1pcnJvcmluZyB0aGUKPiBleGlzdGluZyBjb21wb3VuZC1jb250cm9sIHJh
bmdlIGNoZWNrcy4KPgo+IEZpeGVzOiAyNTZmYTM5MjA4NzQgKCJtZWRpYTogdjRsOiBBZGQgZGVm
aW5pdGlvbnMgZm9yIEhFVkMgc3RhdGVsZXNzIGRlY29kaW5nIikKPiBBc3Npc3RlZC1ieTogQ2xh
dWRlOmNsYXVkZS1vcHVzLTQtOAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgQm9tbWFyaXRvIDxt
aWNoYWVsLmJvbW1hcml0b0BnbWFpbC5jb20+CgpSZXZpZXdlZC1ieTogQmVuamFtaW4gR2FpZ25h
cmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+ICAgZHJpdmVycy9t
ZWRpYS92NGwyLWNvcmUvdjRsMi1jdHJscy1jb3JlLmMgfCAxMiArKysrKysrKysrKysKPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
ZWRpYS92NGwyLWNvcmUvdjRsMi1jdHJscy1jb3JlLmMgYi9kcml2ZXJzL21lZGlhL3Y0bDItY29y
ZS92NGwyLWN0cmxzLWNvcmUuYwo+IGluZGV4IDZiMzc1NzIwZTM5NWMuLjZkNDc4ZTFhNWVmMjIg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS92NGwyLWNvcmUvdjRsMi1jdHJscy1jb3JlLmMK
PiArKysgYi9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWN0cmxzLWNvcmUuYwo+IEBAIC0x
MjQyLDYgKzEyNDIsMTggQEAgc3RhdGljIGludCBzdGRfdmFsaWRhdGVfY29tcG91bmQoY29uc3Qg
c3RydWN0IHY0bDJfY3RybCAqY3RybCwgdTMyIGlkeCwKPiAgIAo+ICAgCQkJcF9oZXZjX3Bwcy0+
ZmxhZ3MgJj0KPiAgIAkJCQl+VjRMMl9IRVZDX1BQU19GTEFHX0xPT1BfRklMVEVSX0FDUk9TU19U
SUxFU19FTkFCTEVEOwo+ICsJCX0gZWxzZSB7Cj4gKwkJCS8qCj4gKwkJCSAqIFRoZXNlIGNvdW50
IHRoZSBlbnRyaWVzIHRoZSBzdGF0ZWxlc3MgSEVWQyBkcml2ZXJzCj4gKwkJCSAqIHJlYWQgZnJv
bSBjb2x1bW5fd2lkdGhfbWludXMxW10gLyByb3dfaGVpZ2h0X21pbnVzMVtdCj4gKwkJCSAqIGFu
ZCB1c2UgYXMgdGlsZS1sb29wIGJvdW5kcy4KPiArCQkJICovCj4gKwkJCWlmIChwX2hldmNfcHBz
LT5udW1fdGlsZV9jb2x1bW5zX21pbnVzMSA+PQo+ICsJCQkgICAgQVJSQVlfU0laRShwX2hldmNf
cHBzLT5jb2x1bW5fd2lkdGhfbWludXMxKSkKPiArCQkJCXJldHVybiAtRUlOVkFMOwo+ICsJCQlp
ZiAocF9oZXZjX3Bwcy0+bnVtX3RpbGVfcm93c19taW51czEgPj0KPiArCQkJICAgIEFSUkFZX1NJ
WkUocF9oZXZjX3Bwcy0+cm93X2hlaWdodF9taW51czEpKQo+ICsJCQkJcmV0dXJuIC1FSU5WQUw7
Cj4gICAJCX0KPiAgIAo+ICAgCQlpZiAocF9oZXZjX3Bwcy0+ZmxhZ3MgJgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
