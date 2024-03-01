Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C46FC54E49
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Mar 2024 13:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fr9CPwNOkjqNx6y3ZzGt9LHwAzOOMtgb75XFGZ0wck4=; b=ikwwxdtxEo+cdSNE+qJqyB76eo
	FyuCYXHlWupDUngcfYqgp9rMMvA7BF59JIFTxo9a6lbiiAVBxApPQpGpyD4Ujsz3GUotv256N0ImY
	iOfb7k5Zojvi1baEmNouPZRC1wjXW5Smj3rQhrCT0zAoPtxAwf7xA3wXO2CjjXeh1putp7eVixW9/
	FuUqAeat7jk0sU7gd5Vu+7jhxcwOkTobFtzZKAE0Nur6WOK9Fxj5FdRVle391SsfMt5VrtyCun5HP
	3rEkjjk7e8uvaSWYlG/kS2FZCdH2XpHkwRPUDInHo+6iA9knewbNAFqFOz9Xr6fHODDn0gP1zeSlK
	tAl2TmGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg33M-00000000Vtz-3b1V;
	Fri, 01 Mar 2024 13:35:56 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg2fN-00000000KTx-1DOr;
	Fri, 01 Mar 2024 13:11:20 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709298667;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pARlF+NGAspV2QL6E9uhUMg1sZQdY7U/4Iec0zryMSA=;
	b=a3hs1+1fIzU53wCY3lb6T6qn4rGB+TdDENM0Zz7Be/qBbAACfIHP4/G+MvAgciRwK7jnCa
	JrFf0HAEWf2Y0PRr29nbKdW2/tADdqRbV0eFUsR+1A5q8/RKxw6BnH1oSeRQjSWD9zw4By
	sSSwOTAZ6N3C5dsvdn3v9hX+dQFQMBz1d9P+hk3uaQBaDKCmp0TCPZd/YjfAnNO8hlRMxQ
	QNW87CXgXDA17ZLl72ikMEOSOof0asGr/k6kv5y4fOy8PbSbPeAW5wTDD50IUOFUepfTN5
	4Y4AZMaBTYkokM/WdBX37CJhBiW0zeqr1Cfd+DVre0H8VMRrsL7rpkdRtfBidw==
Date: Fri, 01 Mar 2024 14:11:07 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: wens@kernel.org
Cc: Alexey Charkov <alchark@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/5] arm64: dts: rockchip: enable built-in thermal
 monitoring on RK3588
In-Reply-To: <CAGb2v66Fg5dA_p+O9o=1+jkqdGREi_AD73o-J=e3dQ4EoEArjw@mail.gmail.com>
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
 <20240229-rk-dts-additions-v3-1-6afe8473a631@gmail.com>
 <a370efd768021ce1afd6ea5ce841acbb@manjaro.org>
 <CABjd4YxM3HY20BbLZ2bJbEFuf6Uv9P_=v4NdHuvN2M-pxh652Q@mail.gmail.com>
 <ad00189e1a25ca90128be6c8b3841b77@manjaro.org>
 <CABjd4YwMtZUhZG12qXv-=L8e2itwr6_Pex3E_ma1UC9MPQ95EA@mail.gmail.com>
 <8b48eeac7b629c39adc6024ff418724c@manjaro.org>
 <CABjd4YzjQ8NdA-gdux3YPw2K6dwLn5oNWRAix7raSgoGsEdpbA@mail.gmail.com>
 <CAGb2v66Fg5dA_p+O9o=1+jkqdGREi_AD73o-J=e3dQ4EoEArjw@mail.gmail.com>
Message-ID: <c58ab785f5d6176fe0e1843f151e7f1d@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_051118_696263_EB35DFD4 
X-CRM114-Status: GOOD (  27.12  )
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

SGVsbG8gQ2hlbi1ZdSwKCk9uIDIwMjQtMDMtMDEgMTM6MDIsIENoZW4tWXUgVHNhaSB3cm90ZToK
PiBPbiBGcmksIE1hciAxLCAyMDI0IGF0IDc6MTDigK9QTSBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFy
a0BnbWFpbC5jb20+IAo+IHdyb3RlOgo+PiBPbiBGcmksIE1hciAxLCAyMDI0IGF0IDEyOjUy4oCv
UE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IAo+PiB3cm90ZToKPj4gPiBPbiAy
MDI0LTAzLTAxIDA5OjI1LCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPj4gPiA+IE9uIEZyaSwgTWFy
IDEsIDIwMjQgYXQgOTo1MeKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPiB3
cm90ZToKPj4gPiBUaHVzLCB3aG8ga25vd3Mgd2hhdCBtaWdodCAob3IgbWlnaHQgbm90KSBnbyB3
cm9uZyBpZiB3ZSBkb24ndCByZXNldCB0aGUKPj4gPiBQTUlDIGF0IHRoZSBzYW1lIHRpbWUgd2hl
biB0aGUgQ1JVIHJlc2V0cyB0aGUgU29DPyAgVW5mb3J0dW5hdGVseSwgdGhlCj4+ID4gdGhpbmdz
IGFyZW4ndCB0aGF0IHN0cmFpZ2h0Zm9yd2FyZC4KPj4gPgo+PiA+IE9uIHRvcCBvZiB0aGF0LCBz
b21lIGJvYXJkcywgc3VjaCBhcyB0aGUgUm9jayA1QiwgdXNlIGEgZmV3IGFkZGl0aW9uYWwKPj4g
PiBkaXNjcmV0ZSB2b2x0YWdlIHJlZ3VsYXRvcnMgaW5zdGVhZCBvZiBhIG1hc3Rlci1zbGF2ZSBQ
TUlDCj4+ID4gY29uZmlndXJhdGlvbiwKPj4gPiB3aGljaCBtYXkgYWN0dWFsbHkgaW50cm9kdWNl
IHNvbWUgd2VpcmQgcG93ZXItcmVsYXRlZCBpc3N1ZXMsIHdoaWNoIGFsc28KPj4gPiBtYXkgYmUg
aW50ZXJtaXR0ZW50LiAgQWN0dWFsbHksIEkndmUgYWxyZWFkeSBvdmVyaGVhcmQgdGhhdCB0aGUg
Um9jayA1Qgo+PiA+IGV4cGVyaWVuY2VzIHNvbWUgaXNzdWVzIG9mIHRoYXQgbmF0dXJlLCBidXQg
SSBkb24ndCBrbm93IHRoZSBkZXRhaWxzLgo+PiAKPj4gVGhvc2UgZGlzY3JldGUgcmVndWxhdG9y
cyBzZWVtIHRvIGJlIG91dCBvZiBzY29wZSBvZiB0aGlzIGRpc2N1c3Npb24uCj4+IAo+PiBJIGFn
cmVlIHRoYXQgYSBkZWVwZXIgcG93ZXItY3ljbGUgd2l0aCBwcm9wZXIgcG93ZXItdXAgc2VxdWVu
Y2UgdG8KPj4gZm9sbG93IGl0IGlzIGJldHRlciB3aGVuIGl0J3MgYXZhaWxhYmxlIGluIHRoZSBy
ZXNwZWN0aXZlIGhhcmR3YXJlLgo+PiBJJ20gYWxzbyBoYXBweSB0byBwcm92aWRlIGEgZm9sbG93
LXVwIHBhdGNoIHRvIHN3aXRjaCBmcm9tIENSVSB0byBQTUlDCj4+IHJlc2V0cyBmb3IgdGhlIGJv
YXJkcyBJIGZvdW5kIHRvIHN1cHBvcnQgdGhlIGxhdHRlci4KPj4gCj4+IFRoZSBxdWVzdGlvbiB3
ZSBoYXZlIGF0IGhhbmQgaXMgc29sZWx5IGFib3V0IHRoZSBkZWZhdWx0IGJlaGF2aW9yIGZvcgo+
PiBhIGh5cG90aGV0aWNhbCBuZXcgYm9hcmQgd2l0aCBtaW5pbWFsIC5kdHMsIG9yIGFuIGV4aXN0
aW5nIGJvYXJkIHdoZXJlCj4+IHdlIGNhbid0IGRldGVybWluZSB0aGUgd2lyaW5nIG9mIHRoZSBU
U0hVVCBzaWduYWw6Cj4+IE9wdGlvbiAxLiBMZXQgdGhlbSBzdGF5IG5pY2UgYW5kIHdhcm0gYXQg
MTIwQysgdW5kZXIgbG9hZCwgYmVjYXVzZQo+PiB0aGV5IHNob3VsZCBoYXZlIGtub3duIGJldHRl
ciBhbmQgc2hvdWxkIGhhdmUgZW5hYmxlZCB0aGUgVFNBREMgaW4KPj4gdGhlaXIgZGV2aWNlIHRy
ZWUgYmVmb3JlIHB1dHRpbmcgdGhlIHN5c3RlbSB1bmRlciBsb2FkCj4+IE9wdGlvbiAyLiBHZXQg
dGhlbSBwYXNzaXZlbHkgY29vbGVkIGF0IDg1QyB1bmRlciBsb2FkIGV2ZW4gd2l0aCBubwo+PiBo
ZWF0c2luaywgdGhlbiBmb3JjZSBhIENSVSByZXNldCBvdXQgb2YgYWJ1bmRhbmNlIG9mIGNhdXRp
b24gYXQgMTIwQwo+PiB1bmxlc3MgdGhleSBkZWZpbmVkIFBNSUMgcmVzZXQgaW4gdGhlaXIgZGV2
aWNlIHRyZWUKPj4gCj4+IEknbSBhZHZvY2F0aW5nIGZvciB0aGUgbGF0dGVyLgo+IAo+IEZXSVcs
IHRoZSBDUlUgcmVzZXQgaXMgd2hhdCB0aGUga2VybmVsIHVzZXMgZm9yIHJlYm9vdGluZyB0aGUg
c3lzdGVtLAo+IGVpdGhlciBkdXJpbmcgYSByZWJvb3Qgb3IgYSBrZXJuZWwgcGFuaWMuIFNvIGl0
IGlzIGFscmVhZHkgdXNlZCBmb3IgCj4gYm90aAo+IG5vcm1hbCBhbmQgYWJub3JtYWwgc2NlbmFy
aW9zLiBBbmQgeWVzLCBpdCBzb21ldGltZXMgbGVhdmVzIHJlZ3VsYXRvcnMKPiBvciBvdGhlciBw
YXJ0cyBvZiB0aGUgc3lzdGVtIGluIHNvbWUgd2VpcmQgc3RhdGUgdGhhdCB0aGUgQlJPTSBpc24n
dAo+IGV4cGVjdGluZy4KCkFjY29yZGluZyB0byBkcml2ZXJzL21mZC9yazh4eC1jb3JlLmMsIHNv
bWUgUE1JQ3MgKFJLODA5IGFuZCBSSzgxNywgdG8KYmUgcHJlY2lzZSkgYWxyZWFkeSBzdXBwb3J0
IHRha2luZyBvdmVyIHRoZSBib2FyZCByZXNldHMgd2hlbiBjb25maWd1cmVkCndpdGggInJvY2tj
aGlwLHN5c3RlbS1wb3dlci1jb250cm9sbGVyIi4gIFBlcmhhcHMgd2Ugc2hvdWxkIGRvIHRoZSBz
YW1lCndpdGggdGhlIFJLODA2LCB0byBhdm9pZCBhbnkgcG9zc2libGUgaXNzdWVzIHdpdGggQ1JV
LWJhc2VkIGJvYXJkIApyZXNldHM7CkknbGwgc2VlIHRvIGludmVzdGlnYXRlIHRoYXQgZnVydGhl
ci4KCk5vdCBhbGwgUm9ja2NoaXAgUE1JQ3MgKFJLODA4LCBmb3IgZXhhbXBsZSkgc3VwcG9ydCBz
b2Z0d2FyZS1pbml0aWF0ZWQKcmVzZXRzLCB1bmZvcnR1bmF0ZWx5LiAgQWNjb3JkaW5nIHRvIHRo
ZSBSSzgwNiBkYXRhc2hlZXQsIGl0IHNlZW1zIApjYXBhYmxlCm9mIHRoYXQ7ICBzZWUgcGFnZXMg
MjcgYW5kIDI4IGluIHRoZSB2ZXJzaW9uIDEuMCBvZiB0aGUgZGF0YXNoZWV0LgoKPiBXaHkgc2hv
dWxkIGEgaGFyZHdhcmUgdHJpZ2dlcmVkIHJlc2V0IGJlIGFueSBkaWZmZXJlbnQ/CgpBY2NvcmRp
bmcgdG8gdGhlIFJLODA2IGRhdGFzaGVldCwgcmVzZXR0aW5nIHRocm91Z2ggUE1JQyhzKSBjYXVz
ZXMgdGhlClBNSUMocykgdG8gY3V0IHRoZSBwb3dlciByYWlscyBpbiBhIGNvbnRyb2xsZWQgd2F5
LCBpLmUuIHdpdGggdGhlIApleHBlY3RlZApyYW1wLWRvd25zIGFuZCBzZXF1ZW5jaW5nLCBhbmQg
dGhlIFNvQyB0aGVuIHdha2VzIHVwIGluIGEgc3RhdGUgb2YgdGhlCnJlZ3VsYXRvcnMgdGhhdCdz
IGV4YWN0bHkgdGhlIHNhbWUgYXMgd2hlbiBpdCBnZXRzIHBvd2VyZWQgdXAgb24gY29sZCAKYm9v
dC4KRG9pbmcgaXQgdGhhdCB3YXkgc2hvdWxkIGJlIGJldHRlci4KClRoZSByZXNldCBwcm9jZWR1
cmUgX3Nob3VsZF8gYmUgdmlydHVhbGx5IHRoZSBzYW1lIGZvciBhbGwgUm9ja2NoaXAgClBNSUNz
LApidXQgcGxlYXNlIGRvbid0IHRha2UgbXkgd29yZCBvbiB0aGF0LiAgUmVzZXRzIGFyZSBkZXNj
cmliZWQgcXVpdGUgCnBvb3JseQppbiBzb21lIFBNSUMgZGF0YXNoZWV0cy4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
