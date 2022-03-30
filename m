Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B68F3C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 15:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Bb9Wasj+EYU9+6mrHyNrNB394L3nz4A55O7qvbZjro=; b=Vg/iPmfsYe1b3/
	jWv6LcLQkre1HBcZrEoaCoD4k8h9Di9JIwioYIUDaWblHCFYlj2e/S/7QwpW5hy/2t/UmZNtafdl3
	KEeDnASYfQ/N4G9Y+LoiHiIm/XnfhIyMbQtDe31+i1RiVjy+qfes+jXfA1nTjI4+wd8n7LcsMgrG5
	Hyp7Sc50G2Ju3raXxOY1HgdmYStxmRXxwRle3EumCR4GBL7HieKG/N5Y93Aq/7BYkhkaLOWLNlMbK
	3eWdyIfL6nsKnrLWB1RD8/AwOsZ49tLg/jNDAekFXODQC9NpiUiw6CrLru4pw1EVE5pKPS0eRVKXJ
	+nSmu+9LDpZ6XOdQnySg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZa7s-00GWSO-UT; Wed, 30 Mar 2022 15:20:49 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZZwa-00GQr1-IP
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 15:09:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 9A5FA1F45009
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648652946;
 bh=Aosf9iB98FFVsCqRLj8GCfiWN6JEp+BHf9h03wTbGIk=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=YEdcao7wVc60/I8iiFZkfK5uufA4e1CsJmD1gv6g6tMXS/FHE7+PgXex4f8nDkcxY
 4MM0HHbYOc+w0w9ga5u2cvx9lv2loTBden6mFEi+az0BWrzFI1FivbCQ8v7S4ourMW
 XgjUyg8kudAUZls+wdDSRtrf2oRnm9LjfX6IcL2L2rKc2G0TeJKfK9YrG/EbQmziCa
 sv3qplD09yb1czeXTEml6W/5L4dsCdo7/tLhL3cOQJ1nDOV8geXki2IgnaWlGkARJ0
 2La002wbVNT4kXOI/lTPSQOcFm7w22qMvXf8uEwUjeUArEBxHxTf8u8ji09gtT6+Ko
 0Fvp3ycIMdNNA==
Message-ID: <00437ee75b96b457e2d53322883580b011d6e8a8.camel@collabora.com>
Subject: Re: [PATCH v1 21/24] media: hantro: Stop using H.264 parameter pic_num
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel
 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@collabora.com,
 linux-media@vger.kernel.org,  linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev,  linux-kernel@vger.kernel.org
Date: Wed, 30 Mar 2022 11:08:55 -0400
In-Reply-To: <20220330074250.jqyljbr53fgeci6q@basti-XPS-13-9310>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
 <20220328195936.82552-22-nicolas.dufresne@collabora.com>
 <20220330074250.jqyljbr53fgeci6q@basti-XPS-13-9310>
User-Agent: Evolution 3.44.0 (3.44.0-1.fc36) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_080908_795960_598E4E44 
X-CRM114-Status: GOOD (  26.44  )
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

TGUgbWVyY3JlZGkgMzAgbWFycyAyMDIyIMOgIDA5OjQyICswMjAwLCBTZWJhc3RpYW4gRnJpY2tl
IGEgw6ljcml0wqA6Cj4gSGV5IE5pY29sYXMsCj4gCj4gVGhlIHRlcm0gcGljX251bSBpcyBub3cg
b25seSBwcmVzZW50IGluIHRoZSBmb2xsb3dpbmcgZmlsZXM6Cj4gYGBgCj4g4p2vIHJnICdwaWNf
bnVtJwo+IHN0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy1oMjY0LmMKPiA3NjY6CSAqIEFzc2ln
biBhbiBpbnZhbGlkIHBpY19udW0gaWYgRFBCIGVudHJ5IGF0IHRoYXQgcG9zaXRpb24gaXMgaW5h
Y3RpdmUuCj4gNzY4OgkgKiByZWZlcmVuY2UgcGljdHVyZSB3aXRoIHBpY19udW0gMCwgdHJpZ2dl
cmluZyBvdXRwdXQgcGljdHVyZQoKSSBzaG91bGQgcHJvYmFibHkgdHJhbnNsYXRlIHRoaXMgb25l
LCBzaW5jZSB0aGUgSFcgdXNlcyBmcmFtZV9udW0sIG5vdCBwaWNfbnVtLgoKPiAKPiBtZWRpYS9w
bGF0Zm9ybS9hbXBoaW9uL3ZwdV93aW5kc29yLmMKPiA0ODU6CXUzMiBwaWNfbnVtOwoKQW1waGlv
biBXaW5kc29yIGlzIGEgc3RhdGVmdWwgZHJpdmVyLCBJIGNhbm5vdCBjb21tZW50IG9uIHRoZSB1
c2VyIG9mIHBpY19udW0KZm9yIHRoYXQgdHlwZSBvZiBkcml2ZXIuCgo+IAo+IG1lZGlhL3BsYXRm
b3JtL21lZGlhdGVrL3Zjb2RlYy92ZGVjL3ZkZWNfaDI2NF9yZXFfaWYuYwo+IDk3Ogl1bnNpZ25l
ZCBzaG9ydCBwaWNfbnVtOwo+IDM0NjoJCWRzdF9lbnRyeS0+cGljX251bSA9IHNyY19lbnRyeS0+
cGljX251bTsKClRoaXMgaXMgYmVpbmcgc2VudCB0byB0aGUgZmlybXdhcmUsIHNvIGl0cyBhIGRp
ZmZpY3VsdCBjaGFuZ2UgdG8gbWFrZSB3aXRob3V0CnRlc3RpbmcgaXQgZmlyc3QuIEkgZG8gaGF2
ZSBIVyB0byB0ZXN0IHRoaXMsIGJ1dCB3b3VsZCBwcmVmZXIgZG9pbmcgc28gaW4gYQpzZXBlcmF0
ZSBwYXRjaHNldC4gTm90ZSB0aGF0IE1USyBkb2VzIG5vdCBzdXBwb3J0IGZpZWxkIGRlY29kaW5n
LCBzbyBwaWNfbnVtID09CmZyYW1lX251bS4gU28gd2hhdGV2ZXIgaXQgZG9lcyBoZXJlIGlzIGxp
a2VseSBjb3JyZWN0LgoKPiAKPiBtZWRpYS92NGwyLWNvcmUvdjRsMi1oMjY0LmMKPiAxNDM6CSAq
IGJ1dCB3aXRoIGZyYW1lX251bSAod3JhcHBlZCkuIEFzIGZvciBmcmFtZSB0aGUgcGljX251bSBh
bmQgZnJhbWVfbnVtCj4gMzA2OgkJLyogdGhpcyBpcyBwaWNfbnVtIGZvciBmcmFtZSBhbmQgZnJh
bWVfbnVtICh3cmFwcGVkKSBmb3IgZmllbGQsCj4gMzA3OgkJICogYnV0IGZvciBmcmFtZSBwaWNf
bnVtIGlzIGVxdWFsIHRvIGZyYW1lX251bSAod3JhcHBlZCkuCj4gYGBgCj4gCj4gSW4gdjRsMi1o
MjY0IGFuZCBya3ZkZWMtaDI2NCBpdCBpcyBvbmx5IHByZXNlbnQgYXMgY29tbWVudCBhbmQgdGhl
IHRlcm0KPiBpcyBub3QgcGFydCBvZiB0aGUgc3BlY2lmaWNhdGlvbi4KPiBJbiB2cHVfd2luZHNv
ciBpdCBpcyBhY3R1YWxseSBuZXZlciB1c2VkLgo+IEFuZCBmb3IgdGhlIG1lZGlhdGVrIGRyaXZl
ciB0aGUgc2FtZSBtaWdodCBhcHBseS4KPiBJdCBtaWdodCBiZSB3b3J0aCBpdCB0byBnZXQgcmlk
IG9mIHRoYXQgdGVybSBhbGwgdG9nZXRoZXIgd2hpbGUgeW91IGFyZQo+IGF0IGl0LgoKQW1waGlv
biBXaW5kc29yIGlzIGEgc3RhdGVmdWwgZHJpdmVyLCBJJ2QgbGVhdmUgaXQgdG8gdGhlIG1haW50
YWluZXIgdG8gY2xlYW51cAp1bnVzZWQgdmFyaWFibGVzIGlmIHRoZXJlIGlzLiBJbiBnZW5lcmFs
IHRoZSB0ZXJtIGlzIG5vdCBpbnZhbGlkLCBpdHMganVzdCB0aGF0CnRoZSB2YWx1ZSBjYW4gYmUg
dHJpdmlhbGx5IGRlZHVjZWQgZnJvbSBmcmFtZV9udW0gYW5kIHRoZSB2YWx1ZSBkZXBlbmRzIG9u
IHRoZQpjdXJyZW50IHBpY3R1cmUgcGFyaXR5LCB3aGljaCBtYWtlcyBpdCBhbiB1bnN0YWJsZSBp
ZGVudGlmaWVyLgoKPiAKPiBPbiAyOC4wMy4yMDIyIDE1OjU5LCBOaWNvbGFzIER1ZnJlc25lIHdy
b3RlOgo+ID4gVGhlIGhhcmR3YXJlIGV4cGVjdHMgRnJhbWVOdW1XcmFwIG9yIGxvbmdfdGVybV9m
cmFtZV9pZHguIFBpY3R1cmUKPiA+IG51bWJlcnMgYXJlIHBlciBmaWVsZCwgYW5kIGFyZSBtb3N0
bHkgdXNlZCBkdXJpbmcgdGhlIG1lbW9yeQo+ID4gbWFuYWdlbWVudCBwcm9jZXNzLCB3aGljaCBp
cyBkb25lIGluIHVzZXJsYW5kLiBUaGlzIGZpeGVzIHR3bwo+ID4gSVRVIGNvbmZvcm1hbmNlIHRl
c3RzOgo+ID4gCj4gPiAgLSBNUjZfQlRfQgo+ID4gIC0gTVI4X0JUX0IKPiA+IAo+ID4gU2lnbmVk
LW9mZi1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29t
Pgo+IFJldmlld2VkLWJ5OiBTZWJhc3RpYW4gRnJpY2tlIDxzZWJhc3RpYW4uZnJpY2tlQGNvbGxh
Ym9yYS5jb20+Cj4gCj4gR3JlZXRpbmdzLAo+IFNlYmFzdGlhbgo+ID4gLS0tCj4gPiBkcml2ZXJz
L3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19oMjY0LmMgfCAyIC0tCj4gPiAxIGZpbGUgY2hh
bmdlZCwgMiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9oYW50cm8vaGFudHJvX2gyNjQuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50
cm8vaGFudHJvX2gyNjQuYwo+ID4gaW5kZXggMGI0ZDI0OTFiZTNiLi4yMjg2MjlmYjNjZGYgMTAw
NjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19oMjY0LmMK
PiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2gyNjQuYwo+ID4g
QEAgLTM1NCw4ICszNTQsNiBAQCB1MTYgaGFudHJvX2gyNjRfZ2V0X3JlZl9uYnIoc3RydWN0IGhh
bnRyb19jdHggKmN0eCwgdW5zaWduZWQgaW50IGRwYl9pZHgpCj4gPiAKPiA+IAlpZiAoIShkcGIt
PmZsYWdzICYgVjRMMl9IMjY0X0RQQl9FTlRSWV9GTEFHX0FDVElWRSkpCj4gPiAJCXJldHVybiAw
Owo+ID4gLQlpZiAoZHBiLT5mbGFncyAmIFY0TDJfSDI2NF9EUEJfRU5UUllfRkxBR19MT05HX1RF
Uk0pCj4gPiAtCQlyZXR1cm4gZHBiLT5waWNfbnVtOwo+ID4gCXJldHVybiBkcGItPmZyYW1lX251
bTsKPiA+IH0KPiA+IAo+ID4gLS0gCj4gPiAyLjM0LjEKPiA+IAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
