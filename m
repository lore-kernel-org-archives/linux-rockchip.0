Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E40E8CE7AA8
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 10:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dDkfgJ6L+8OyJOyjUIB5HjXIxq63nVm6IosTTuppNgA=; b=BLqAgLagXNB+Nd
	HhGrM8w8turB+Nax065t5YAQjFeeT9HC15YdxcTMBayW2ZhXW/yYy8L4fcVOfU/A1ZJZgawBIny7z
	q0eMjNuB/kzp+VK2+H6UoIFwFPZAsJtYEnliG+321yqss6V1jYwHcP9Utln3I6qSwnUph7B1VAe9E
	r8ysbsZBSjhXVB8m4gZvguoK3Rn6125Qel7YMT6VMcfHhNIX5gxo38aWFhNlABZY7LH+gqAXIDh/1
	rBpQoHGqem0+Y8DbFXYvu0jC6WQK3SXy9oIwEDFENAFN9A5uIMe4757c/u3xLJcPgJHhNgj0b8/bC
	yCKxpX8vp6w5mnM9Pdcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJr8V-0000000C1tN-1heS;
	Fri, 14 Nov 2025 10:34:35 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJr8S-0000000C1sI-3WVl
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 10:34:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 822844325F;
	Fri, 14 Nov 2025 10:34:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E75F0C4CEF1;
	Fri, 14 Nov 2025 10:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763116472;
	bh=Yx8aYHaNzs7BiMp0GEId+mQ4OvxUgnf1ojr2ioJQPII=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=uxcQJSh//IYZjjJXBFljswRXEpjUcifHFl04ALPZpFNFG6Ny6YkdpXyuV7yDODd+m
	 BjvbVtpTFLwTGzDAu+5z6lwJ85xb/cI7yHp8Y8gEGTGgrCP+J6RGwEx4ba+a2cNVAY
	 ZXWjojDNwCYb5PuODIGNfjd5Snif18I0qgNRctQnMjm/Yxe3t8qqNk5N3ClGX6xcHl
	 apVpGP3uu9aLzE/ofEE7eiYg+OJ3jJAG7NduROAzzU0MleT8GCMmmjdI6ix3tlGRPF
	 73/az3/zFHVmJG1E3NQGW3anuLXzWHJ0xhYyW+BcVCplWtzv3j7omWFiz3Cq5BZiZx
	 rA4vWlCRfcUWw==
Message-ID: <99309e42-dfdc-4632-8681-c9763b9e8ad4@kernel.org>
Date: Fri, 14 Nov 2025 11:34:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, Joseph Kogut <joseph.kogut@gmail.com>,
 heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jonas@kwiboo.se, kever.yang@rock-chips.com, honyuenkwun@gmail.com,
 quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <CAMWSM7gezjVSoF+-7ivboTeB=5gQAE-QVrbAbKu3M=obmb3Axg@mail.gmail.com>
 <617FDAB231C501DC+3f9809df-87df-4a02-bd5f-ebc6299b3aa7@radxa.com>
 <a10340af-1d0a-bb0b-4835-7b2c9e67d664@manjaro.org>
 <2892FE50237CD58E+0f15924c-a915-4446-954c-d81a782d23e9@radxa.com>
 <19ce0a41-563c-6202-6b94-b2c644a0b827@manjaro.org>
 <F02BA2E6B1111826+2445b38d-b5e0-499c-83e7-4521c57b2210@radxa.com>
 <f2bc30de-119b-4f4a-844a-8a908c9290b6@kernel.org>
 <49c39864-3e58-2e0e-7abc-50502f2afb02@manjaro.org>
 <f156cd48-d764-43c8-99ed-24ab212d8eee@collabora.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <f156cd48-d764-43c8-99ed-24ab212d8eee@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_023432_928409_0BC3C1A7 
X-CRM114-Status: GOOD (  20.16  )
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

T24gMTQvMTEvMjAyNSAwOTo1MSwgQ3Jpc3RpYW4gQ2lvY2FsdGVhIHdyb3RlOgo+IE9uIDExLzE0
LzI1IDk6MTcgQU0sIERyYWdhbiBTaW1pYyB3cm90ZToKPj4gSGVsbG8gS3J6eXN6dG9mLAo+Pgo+
PiBPbiBGcmlkYXksIE5vdmVtYmVyIDE0LCAyMDI1IDA4OjEwIENFVCwgS3J6eXN6dG9mIEtvemxv
d3NraSA8a3J6a0BrZXJuZWwub3JnPiB3cm90ZToKPj4+IE9uIDE0LzExLzIwMjUgMDY6MDMsIEZV
S0FVTUkgTmFva2kgd3JvdGU6Cj4+Pj4gT24gMTEvMTIvMjUgMDk6NDYsIERyYWdhbiBTaW1pYyB3
cm90ZToKPj4+Pj4gT24gV2VkbmVzZGF5LCBOb3ZlbWJlciAxMiwgMjAyNSAwMDoyNiBDRVQsIEZV
S0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4gd3JvdGU6Cj4+Pj4+PiBPbiAxMS8xMS8yNSAy
MzozMywgRHJhZ2FuIFNpbWljIHdyb3RlOgo+Pj4+Pj4+IE9uIFR1ZXNkYXksIE5vdmVtYmVyIDEx
LCAyMDI1IDEyOjUyIENFVCwgRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29tPiB3cm90ZToK
Pj4+Pj4+Pj4gT24gMTEvNi8yNSAwMjo0OCwgSm9zZXBoIEtvZ3V0IHdyb3RlOgo+Pj4+Pj4+Pj4g
T24gV2VkLCBOb3YgNSwgMjAyNSBhdCA0OjE14oCvQU0gRlVLQVVNSSBOYW9raSA8bmFva2lAcmFk
eGEuY29tPiB3cm90ZToKPj4+Pj4+Pj4+PiBJJ2QgbGlrZSB0byBjbGFyaWZ5IHRoZSBzaXR1YXRp
b24gcmVnYXJkaW5nIHRoZSB2NiBwYXRjaCBzZXJpZXMgSSBzdWJtaXR0ZWQuCj4+Pj4+Pj4+Pj4K
Pj4+Pj4+Pj4+PiBUaGUgb3JpZ2luYWwgZGV2aWNlIHRyZWUgd29yayBmb3IgdGhlIFJhZHhhIENN
NSBhbmQgSU8gQm9hcmQgd2FzCj4+Pj4+Pj4+Pj4gYXV0aG9yZWQgYnkgSm9zZXBoIEtvZ3V0LiBJ
IHRvb2sgb3ZlciB0aGUgcmVzcG9uc2liaWxpdHkgb2YgZ2V0dGluZyBpdAo+Pj4+Pj4+Pj4+IHVw
c3RyZWFtZWQgd2l0aCBoaXMgYWdyZWVtZW50Lgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IEknbGwgY29u
ZmlybSB0aGlzLiBJJ3ZlIGJlZW4gaW4gY29tbXVuaWNhdGlvbiB3aXRoIE5hb2tpLiBUaGV5IG1h
ZGUgYQo+Pj4+Pj4+Pj4gbGFyZ2UgbnVtYmVyIG9mIHJldmlzaW9ucyB0byBteSBvcmlnaW5hbCBw
YXRjaCBzZXJpZXMsIHdoaWNoIEkgdGhpbmsKPj4+Pj4+Pj4+IGhhdmUgdGVjaG5pY2FsIG1lcml0
LiBJIHN1Z2dlc3RlZCB0aGV5IHN1Ym1pdCB0aGUgcGF0Y2hlcyB0aGVtc2VsdmVzLAo+Pj4+Pj4+
Pj4gYW5kIGdhdmUgdGhlbSBleHBsaWNpdCBwZXJtaXNzaW9uIHRvIGFkZCBteSBTaWduZWQtb2Zm
LWJ5IGFuZCBDQyBtZS4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBJIGFzc3VtZSB0aGlzIHdhcyB0aGUg
Y29ycmVjdCB3YXkgZm9yIHRoZW0gdG8gY29udGludWUgdGhlIHdvcmsgSQo+Pj4+Pj4+Pj4gc3Rh
cnRlZCwgYnV0IGlmIG5vdCwgcGxlYXNlIGxldCB1cyBrbm93IHRoZSBiZXN0IHdheSB0byBwcm9j
ZWVkLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBDYW4gYW55b25lIGhlbHAgdXM/Cj4+Pj4+Pj4KPj4+Pj4+
PiBJJ20gbm90IGV4YWN0bHkgc3VyZSBob3cgdG8gcmVzb2x2ZSB0aGUgY3VycmVudCBzaXR1YXRp
b24sIGJ1dCBmb3IKPj4+Pj4+PiBTaWduZWQtb2ZmLWJ5IHRhZ3MgdG8gYmUgcHJlc2VudCwgaW4g
dGhpcyBjYXNlIHlvdSdkIG5lZWQgdG8gaGF2ZQo+Pj4+Pj4+IENvLWRldmVsb3BlZC1ieSB0YWdz
IGFzIHdlbGwsIGJlY2F1c2UgdGhlIGZpbmFsIHBhdGNoIHZlcnNpb25zLAo+Pj4+Pj4+IHdoaWNo
IHdvdWxkIGJlIHN1Ym1pdHRlZCBieSBOYW9raSwgd291bGQgZGlmZmVyIHNpZ25pZmljYW50bHkg
ZnJvbQo+Pj4+Pj4+IHRoZSB2ZXJzaW9ucyB0aGF0IEpvc2VwaCBhY3RpdmVseSB3b3JrZWQgb24s
IGlmIEkgdW5kZXJzdG9vZAo+Pj4+Pj4+IGV2ZXJ5dGhpbmcgY29ycmVjdGx5LiAgVGhvdWdoLCBm
b3IgSm9zZXBoJ3MgU2lnbmVkLW9mZi1ieSB0YWdzIHRvCj4+Pj4+Pj4gYmUgaW5jbHVkZWQgdGhl
cmUsIGhlIHdvdWxkIGFsc28gbmVlZCB0byBwYXJ0aWNpcGF0ZSBhY3RpdmVseSBpbgo+Pj4+Pj4+
IHRoZSBkZXZlbG9wbWVudCBvZiB0aGUgZmluYWwgcGF0Y2ggdmVyc2lvbnMuCj4+Pj4+Pgo+Pj4+
Pj4gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvcHJvY2Vzcy9zdWJtaXR0
aW5nLXBhdGNoZXMuaHRtbCN3aGVuLXRvLXVzZS1hY2tlZC1ieS1jYy1hbmQtY28tZGV2ZWxvcGVk
LWJ5Cj4+Pj4+Pgo+Pj4+Pj4gSWYKPj4+Pj4+IC0tLS0KPj4+Pj4+IEZyb206IEpvc2VwaCBLb2d1
dCA8am9zZXBoLmtvZ3V0QGdtYWlsLmNvbT4KPj4+Pj4+Cj4+Pj4+PiA8Y2hhbmdlbG9nPgo+Pj4+
Pj4KPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEpvc2VwaCBLb2d1dCA8am9zZXBoLmtvZ3V0QGdtYWls
LmNvbT4KPj4+Pj4+IENvLWRldmVsb3BlZC1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEu
Y29tPgo+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29t
Pgo+Pj4+Pj4gLS0tLQo+Pj4+Pj4gdGhlbiBJIGNhbiBzdWJtaXQgbXkgcGF0Y2ggc2VyaWVzPwo+
Pj4+Pgo+Pj4+PiBBY3R1YWxseSwgdGhlIENvLWRldmVsb3BlZC1ieSB0YWdzIHdvdWxkIGJlIHBv
aW50aW5nIHRvIEpvc2VwaAo+Pj4+PiBpbiB0aGF0IGNhc2UsIGJ1dCBhcyBJIGRlc2NyaWJlZCBp
dCBhYm92ZSwgdGhpcyBhcHByb2FjaCBiYXNpY2FsbHkKPj4+Pj4gY2Fubm90IGJlIHVzZWQsIGJl
Y2F1c2UgSm9zZXBoJ3Mgb3JpZ2luYWwgd29yayBkaWZmZXJzIGEgbG90IGZyb20KPj4+Pj4gd2hh
dCB5b3UnZCBhY3R1YWxseSBzdWJtaXQgdG8gdGhlIG1haWxpbmcgbGlzdChzKS4KPj4+Pj4KPj4+
Pj4+IE9yLAo+Pj4+Pj4KPj4+Pj4+PiBBbm90aGVyIG9wdGlvbiwgdGVjaG5pY2FsbHkgYSBiaXQg
c2ltcGxlciwgd291bGQgYmUgdG8gaW5jbHVkZSBqdXN0Cj4+Pj4+Pj4gT3JpZ2luYWxseS1ieSB0
YWdzIGZvciBKb3NlcGgsIHdoaWNoIHdvdWxkIGluZGljYXRlIHRoYXQgSm9zZXBoIGdhdmUKPj4+
Pj4+PiB1cCBvbiB0aGUgZGV2ZWxvcG1lbnQgb2YgdGhlIHBhdGNoZXMgYW5kIGhhbmRlZCB0aGVt
IG92ZXIgdG8gTmFva2kKPj4+Pj4+PiBmb3IgZnV0dXJlIGRldmVsb3BtZW50IGFuZCBzdWJtaXNz
aW9uIHRvIHRoZSBtYWlsaW5nIGxpc3RzLiBUaG91Z2gsCj4+Pj4+Pj4gdGhhdCB3b3VsZCByZXF1
aXJlIEpvc2VwaCB0byBwdWJsaWNseSBzdGF0ZSBleGFjdGx5IHRoYXQuCj4+Pj4+Pgo+Pj4+Pj4g
SSBjYW5ub3QgZmluZCBhbnkgZG9jdW1lbnRhdGlvbiBhYm91dCAiT3JpZ2luYWxseS1ieSIuCj4+
Pj4+PiBJcyB0aGlzIGNvcnJlY3Q/Cj4+Pj4+PiAtLS0tCj4+Pj4+PiA8Y2hhbmdlbG9nPgo+Pj4+
Pj4KPj4+Pj4+IE9yaWdpbmFsbHktYnk6IEpvc2VwaCBLb2d1dCA8am9zZXBoLmtvZ3V0QGdtYWls
LmNvbT4KPj4+Cj4+PiBUaGVyZSBpcyBubyBzdWNoIHRhZy4gRG9uJ3QgaW52ZW50IHRhZ3MuCj4+
Cj4+IFRydWUsIGl0IGRvZXNuJ3QgZXhpc3Qgb2ZmaWNpYWxseSwgYnV0IGl0J3MgYmVlbiB1c2Vk
IGZhaXJseSBvZnRlbi4KPiAKPiBIbW0sIGFjdHVhbGx5IHRoaXMgdGFnIHNlZW1zIHRvIGJlIGRv
Y3VtZW50ZWQsIG9yIGF0IGxlYXN0IGdpdmVuIGFzIGFuIGV4YW1wbGU6Cj4gCj4gaHR0cHM6Ly9n
aXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0
L3RyZWUvRG9jdW1lbnRhdGlvbi9wcm9jZXNzL21haW50YWluZXItdGlwLnJzdD9oPXY2LjE4LXJj
NSNuMzA5CgpZZXMsIGZvciB0aGUgdGlwIGZvbGtzIChzbyB0aHJlZSBwZW9wbGUpLiBJZiB5b3Ug
c2VuZCB0byB0aGUgVElQLCB0aGVpcgptYWludGFpbmVyIHByb2ZpbGUgYXBwbGllcy4gVGhlcmUg
YXJlIGFsc28gb3RoZXIgc3BlY2lmaWMgcnVsZXMgaW4gVElQCndoaWNoIGFyZSBpbiBjb250cmFy
eSB0byBjb21tb24gKGFzIG1vc3QgdXNlZCkgcHJvY2VzcywgZS5nLiBjb21wbGV0ZWx5CnJldmVy
c2VkIHRhZ3MgKHNlZSBhbHNvIEtvbnN0YW50aW4ncyBleHBsYW5hdGlvbiBhYm91dCB0aGUgb3Jk
ZXIgd2hpY2gKaGUgaW1wbGVtZW50ZWQgaW4gYjQpLgoKSWYgeW91IHdhbnQgdG8gdXNlIGl0IG91
dHNpZGUgb2YgdGlwLCBmaXJzdCB0aGlzIHNob3VsZCBiZSBhZGRlZCB0bwpjb21tb24gZG9jcyBh
bmQgY2hlY2twYXRjaC4gSnVzdCBsaWtlIGI0IHNob3VsZCBiZSBjaGFuZ2VkIGlmIHlvdSB3YW50
CnRvIHVzZSB0aGVpciBvcmRlciBvZiB0YWdzLgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
