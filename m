Return-Path: <SRS0=ctb8=HV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17D19C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Feb 2021 15:35:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C872264E24
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Feb 2021 15:35:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C872264E24
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/P/3Ku3Nv9GMuovEUiGJnQo5h5QkOzHY9W7c3cLNU9Q=; b=ycH1ksbNSCzqVsuLhWHGg/Ybs
	asixy0UxeQBnU467NrkKDGUEaWLN5/N6/olJ1Ipvtj6zeV6J0uUxSUdkAcpqvZo+hZEC81Tvh9E+s
	1jqpBcOtwdHQmkD/Hf9yZ5OiF6ExQITz/wqwpR71pHbIqi3mmpvCgh95c9BntdN8BkGjtv68WlrZM
	GXbJ+Do47GnHDH1zDUXLCT+jz2OfUBAX9SEw7wvHJZdA8HcIlgkPtUkUf3fRPSwTczPYGXSix9jbd
	fJ6CWbPBanxS3HvIvATOW6jBqahu7vLiLhBnFPSOmIUne5RvvPl5s+ohg9tr+eCLqzerYOA4yRssP
	WTK8FuZxQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lD7oK-0005ie-RN; Fri, 19 Feb 2021 15:35:16 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lD7oF-0005hB-Q6; Fri, 19 Feb 2021 15:35:12 +0000
Received: from [IPv6:2a01:e0a:4cb:a870:9157:afa6:f219:3c2c] (unknown
 [IPv6:2a01:e0a:4cb:a870:9157:afa6:f219:3c2c])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D16F01F46406;
 Fri, 19 Feb 2021 15:34:54 +0000 (GMT)
Subject: Re: [PATCH v2 4/9] media: uapi: Add a control for HANTRO driver
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@siol.net>,
 ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, peng.fan@nxp.com,
 hverkuil-cisco@xs4all.nl, dan.carpenter@oracle.com
References: <20210218191844.297869-1-benjamin.gaignard@collabora.com>
 <20210218191844.297869-5-benjamin.gaignard@collabora.com>
 <2850677.34AhzSeaHW@kista>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <3ec0c7ba-7492-02d1-8beb-fe692ba7d265@collabora.com>
Date: Fri, 19 Feb 2021 16:34:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <2850677.34AhzSeaHW@kista>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210219_103511_963036_994E8DA3 
X-CRM114-Status: GOOD (  21.16  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDE4LzAyLzIwMjEgw6AgMjI6MzQsIEplcm5laiDFoGtyYWJlYyBhIMOpY3JpdMKgOgo+IEhp
IQo+Cj4gRG5lIMSNZXRydGVrLCAxOC4gZmVicnVhciAyMDIxIG9iIDIwOjE4OjM5IENFVCBqZSBC
ZW5qYW1pbiBHYWlnbmFyZCBuYXBpc2FsKGEpOgo+PiBUaGUgSEVWQyBIQU5UUk8gZHJpdmVyIG5l
ZWRzIHRvIGtub3cgdGhlIG51bWJlciBvZiBiaXRzIHRvIHNraXAgYXQKPj4gdGhlIGJlZ2lubmlu
ZyBvZiB0aGUgc2xpY2UgaGVhZGVyLgo+PiBUaGF0IGlzIGEgaGFyZHdhcmUgc3BlY2lmaWMgcmVx
dWlyZW1lbnQgc28gY3JlYXRlIGEgZGVkaWNhdGVkIGNvbnRyb2wKPj4gdGhhdCB0aGlzIHB1cnBv
c2UuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWln
bmFyZEBjb2xsYWJvcmEuY29tPgo+PiAtLS0KPj4gICBpbmNsdWRlL3VhcGkvbGludXgvaGFudHJv
LXY0bDItY29udHJvbHMuaCB8IDIwICsrKysrKysrKysrKysrKysrKysrCj4+ICAgaW5jbHVkZS91
YXBpL2xpbnV4L3Y0bDItY29udHJvbHMuaCAgICAgICAgfCAgNSArKysrKwo+PiAgIDIgZmlsZXMg
Y2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKQo+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRl
L3VhcGkvbGludXgvaGFudHJvLXY0bDItY29udHJvbHMuaAo+Pgo+PiBkaWZmIC0tZ2l0IGEvaW5j
bHVkZS91YXBpL2xpbnV4L2hhbnRyby12NGwyLWNvbnRyb2xzLmggYi9pbmNsdWRlL3VhcGkvbGlu
dXgvCj4gaGFudHJvLXY0bDItY29udHJvbHMuaAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBp
bmRleCAwMDAwMDAwMDAwMDAuLjMwYjE5OTliN2FmMwo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBi
L2luY2x1ZGUvdWFwaS9saW51eC9oYW50cm8tdjRsMi1jb250cm9scy5oCj4+IEBAIC0wLDAgKzEs
MjAgQEAKPj4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wIFdJVEggTGludXgt
c3lzY2FsbC1ub3RlICovCj4+ICsKPj4gKyNpZm5kZWYgX19VQVBJX0hBTlRST19WNEwyX0NPTllU
Uk9MU19IX18KPj4gKyNkZWZpbmUgX19VQVBJX0hBTlRST19WNEwyX0NPTllUUk9MU19IX18KPj4g
Kwo+PiArI2luY2x1ZGUgPGxpbnV4L3Y0bDItY29udHJvbHMuaD4KPj4gKyNpbmNsdWRlIDxtZWRp
YS9oZXZjLWN0cmxzLmg+Cj4+ICsKPj4gKyNkZWZpbmUgVjRMMl9DSURfSEFOVFJPX0hFVkNfRVhU
UkFfREVDT0RFX1BBUkFNUwkKPiAoVjRMMl9DSURfVVNFUl9IQU5UUk9fQkFTRSArIDApCj4+ICsK
Pj4gKy8qKgo+PiArICogc3RydWN0IGhhbnRyb19oZXZjX2V4dHJhX2RlY29kZV9wYXJhbXMgLSBl
eHRyYSBkZWNvZGUgcGFyYW1ldGVycyBmb3IKPiBoYW50cm8gZHJpdmVyCj4+ICsgKiBAaGV2Y19o
ZHJfc2tpcF9sZW5naHQ6CWhlYWRlciBmaXJzdCBiaXRzIG9mZnNldAo+PiArICovCj4+ICtzdHJ1
Y3QgaGFudHJvX2hldmNfZXh0cmFfZGVjb2RlX3BhcmFtcyB7Cj4+ICsJX191MzIJaGV2Y19oZHJf
c2tpcF9sZW5naHQ7Cj4gdHlwbzogbGVuZ2h0IC0+IGxlbmd0aAo+Cj4gU2FtZSBtaXN0YWtlIGlu
IGRlc2NyaXB0aW9uIGFib3ZlLgoKVGhhbmtzIEkgd2lsbCBmaXggdGhhdCBpbiB2MwoKQmVuamFt
aW4KCj4KPiBCZXN0IHJlZ2FyZHMsCj4gSmVybmVqCj4KPj4gKwlfX3U4CXBhZGRpbmdbNF07Cj4+
ICt9Owo+PiArCj4+ICsjZW5kaWYKPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9saW51eC92
NGwyLWNvbnRyb2xzLmggYi9pbmNsdWRlL3VhcGkvbGludXgvdjRsMi0KPiBjb250cm9scy5oCj4+
IGluZGV4IDAzOWMwZDdhZGQxYi4uY2VkNzQ4NmM3ZjQ2IDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRl
L3VhcGkvbGludXgvdjRsMi1jb250cm9scy5oCj4+ICsrKyBiL2luY2x1ZGUvdWFwaS9saW51eC92
NGwyLWNvbnRyb2xzLmgKPj4gQEAgLTIwOSw2ICsyMDksMTEgQEAgZW51bSB2NGwyX2NvbG9yZngg
ewo+PiAgICAqIFdlIHJlc2VydmUgMTI4IGNvbnRyb2xzIGZvciB0aGlzIGRyaXZlci4KPj4gICAg
Ki8KPj4gICAjZGVmaW5lIFY0TDJfQ0lEX1VTRVJfQ0NTX0JBU0UJCQkoVjRMMl9DSURfVVNFUl9C
QVNFICsKPiAweDEwZjApCj4+ICsvKgo+PiArICogVGhlIGJhc2UgZm9yIEhBTlRSTyBkcml2ZXIg
Y29udHJvbHMuCj4+ICsgKiBXZSByZXNlcnZlIDMyIGNvbnRyb2xzIGZvciB0aGlzIGRyaXZlci4K
Pj4gKyAqLwo+PiArI2RlZmluZSBWNEwyX0NJRF9VU0VSX0hBTlRST19CQVNFCQkoVjRMMl9DSURf
VVNFUl9CQVNFICsKPiAweDExNzApCj4+ICAgCj4+ICAgLyogTVBFRy1jbGFzcyBjb250cm9sIElE
cyAqLwo+PiAgIC8qIFRoZSBNUEVHIGNvbnRyb2xzIGFyZSBhcHBsaWNhYmxlIHRvIGFsbCBjb2Rl
YyBjb250cm9scwo+PiAtLSAKPj4gMi4yNS4xCj4+Cj4+Cj4KPgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
