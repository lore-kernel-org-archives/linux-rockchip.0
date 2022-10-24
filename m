Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24680ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Oct 2022 11:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1XNIQfdT5ZH4lubGMl7oerbPGCsbfj4zcJMplvtSMQ=; b=DxZDrslOes3/p7
	lPrzPqeOFBzqt3X74LKOl2uev+hAu7V40OyyaIDK6CmVBljipjvHqcI9j9xVs1snR5NE9UMT62qBn
	Jx3CRJTLgJUlXLrI3DXpI8Fwdl7dfGZTpY1amYaDCubS3zwym8ZsX1H4AYeaqJelBOD0VFN9Ekcnz
	/JH1/i/jlHkAkeNhTLHdiyQ0nQJg8yaAZ6CRmNxw25aO5jClwxCLFBxOdsiSmY6Z4fhEoANRtbb3g
	7dIj+mvOxCydRSw4YMyivsR0FAYYgeQJpk708V81h9etc4wr/0r8cb5eNNdVaubgEzzPfSMf0/aQt
	xqB/O8IEWfniZNidM84A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omvHW-000ta7-PL; Mon, 24 Oct 2022 11:06:10 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omvHE-000tUG-6D; Mon, 24 Oct 2022 11:05:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 532432B;
	Mon, 24 Oct 2022 04:05:52 -0700 (PDT)
Received: from [10.57.36.110] (unknown [10.57.36.110])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D4AD3F7B4;
	Mon, 24 Oct 2022 04:05:43 -0700 (PDT)
Message-ID: <5a8f9934-1959-7962-d575-e3c2f5bc6ade@arm.com>
Date: Mon, 24 Oct 2022 12:05:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk356x: Fix PCIe register map
 and ranges
Content-Language: en-GB
To: Mark Kettenis <mark.kettenis@xs4all.nl>, Peter Geis <pgwipeout@gmail.com>
Cc: megi@xff.cz, heiko@sntech.de, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 michael.riesch@wolfvision.net, frattaroli.nicolas@gmail.com,
 s.hauer@pengutronix.de, frank-w@public-files.de,
 ezequiel@vanguardiasur.com.ar, yifeng.zhao@rock-chips.com,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221005085439.740992-1-megi@xff.cz>
 <CAMdYzYrEXEqOmMeozGBbAAvrujZcOxLh4VYOmu5DSjPWTS-5zQ@mail.gmail.com>
 <20221005220812.4psu6kckej63yo2z@core> <4679102.Wku2Vz74k6@phil>
 <CAMdYzYq3S2rR3Kb61irpV9xHYijNiJY0mkVnJwPrpXzxg_Zh9g@mail.gmail.com>
 <20221021153913.l5ry6v4mcnzcmj2v@core>
 <CAMdYzYpYC6ME_ZYE65UWq__i+rit6_os-+do+JLmEL7y-jKr9g@mail.gmail.com>
 <20221021193248.2he6amnj7knk4biu@core>
 <87edv0sxup.fsf@bloch.sibelius.xs4all.nl>
 <CAMdYzYp6ShLqKxdiAjaRFiRF5i+wzfKiQvwPMzyQLAutWZbApg@mail.gmail.com>
 <875ygbsrf3.fsf@bloch.sibelius.xs4all.nl>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <875ygbsrf3.fsf@bloch.sibelius.xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_040552_458037_AFD4BF27 
X-CRM114-Status: GOOD (  18.53  )
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

T24gMjAyMi0xMC0yMiAxODoyNCwgTWFyayBLZXR0ZW5pcyB3cm90ZToKPj4gRnJvbTogUGV0ZXIg
R2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4KPj4gRGF0ZTogU2F0LCAyMiBPY3QgMjAyMiAwODox
OTo1NyAtMDQwMAo+IAo+IEhlbGxvIFBldGVyLAo+IAo+PiBPbiBGcmksIE9jdCAyMSwgMjAyMiBh
dCA0OjUyIFBNIE1hcmsgS2V0dGVuaXMgPG1hcmsua2V0dGVuaXNAeHM0YWxsLm5sPiB3cm90ZToK
Pj4+Cj4+Pj4gRGF0ZTogRnJpLCAyMSBPY3QgMjAyMiAyMTozMjo0OCArMDIwMAo+Pj4+IEZyb206
IE9uZMWZZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPj4+Pgo+Pj4+IE9uIEZyaSwgT2N0IDIxLCAy
MDIyIGF0IDEyOjQ4OjE1UE0gLTA0MDAsIFBldGVyIEdlaXMgd3JvdGU6Cj4+Pj4+IE9uIEZyaSwg
T2N0IDIxLCAyMDIyIGF0IDExOjM5IEFNIE9uZMWZZWogSmlybWFuIDxtZWdpQHhmZi5jej4gd3Jv
dGU6Cj4+Pj4+Pgo+Pj4+Pj4gT24gRnJpLCBPY3QgMjEsIDIwMjIgYXQgMDk6MDc6NTBBTSAtMDQw
MCwgUGV0ZXIgR2VpcyB3cm90ZToKPj4+Pj4+PiBHb29kIE1vcm5pbmcgSGVpa28sCj4+Pj4+Pj4K
Pj4+Pj4+PiBBcG9sb2dpZXMgZm9yIGp1c3QgZ2V0dGluZyB0byB0aGlzLCBJJ20gc3RpbGwgaW4g
dGhlIG1pZGRsZSBvZiBtb3ZpbmcKPj4+Pj4+PiBhbmQganVzdCBnb3QgbXkgbGFiIHNldCBiYWNr
IHVwLgo+Pj4+Pj4+Cj4+Pj4+Pj4gSSd2ZSB0ZXN0ZWQgdGhpcyBwYXRjaCBzZXJpZXMgYW5kIGl0
IGxlYWRzIHRvIHRoZSBzYW1lIHJlZ3Jlc3Npb24gd2l0aAo+Pj4+Pj4+IE5WTWUgZHJpdmVzLiBB
IGxvb3Agb2YgbWQ1c3VtIG9uIHR3byBpZGVudGljYWwgNEdCIHJhbmRvbSBmaWxlcwo+Pj4+Pj4+
IHByb2R1Y2VzIHRoZSBmb2xsb3dpbmcgcmVzdWx0czoKPj4+Pj4+PiBkMTFjZjBjYWE1NDFiNzI1
NTFjYTIyZGM1YmVmMmRlMCAgdGVzdC1yYW5kLmltZwo+Pj4+Pj4+IGZhZDk3ZTkxZGE4ZDRmZDU1
NGM4OTVjYWZhODk4MDliICB0ZXN0LXJhbmQyLmltZwo+Pj4+Pj4+IDJkNTZhN2JhYTA1YzM4NTM1
ZjRjMTlhMmIzNzFmOTBhICB0ZXN0LXJhbmQuaW1nCj4+Pj4+Pj4gNzRlOGU2ZjkzZDdjM2RjM2Fk
MjUwZTkxMTc2ZjU5MDEgIHRlc3QtcmFuZDIuaW1nCj4+Pj4+Pj4gMjVjZmNmZWNmNGRkNTI5ZTRl
OWZiYmUyYmU0ODIwNTMgIHRlc3QtcmFuZC5pbWcKPj4+Pj4+PiA3NGU4ZTZmOTNkN2MzZGMzYWQy
NTBlOTExNzZmNTkwMSAgdGVzdC1yYW5kMi5pbWcKPj4+Pj4+PiBiOTYzNzUwNWJmODhlZDcyNWY2
ZDAzZGViNzA2NWRhYiAgdGVzdC1yYW5kLmltZwo+Pj4+Pj4+IGY3NDM3ZTg4ZDUyNGVhOTJlMDk3
ZGI1MWRjZTFjNjBkICB0ZXN0LXJhbmQyLmltZwo+Pj4+Pj4+Cj4+Pj4+Pj4gQmVmb3JlIHRoaXMg
cGF0Y2ggc2VyaWVzOgo+Pj4+Pj4+IGQxMWNmMGNhYTU0MWI3MjU1MWNhMjJkYzViZWYyZGUwICB0
ZXN0LXJhbmQuaW1nCj4+Pj4+Pj4gZDExY2YwY2FhNTQxYjcyNTUxY2EyMmRjNWJlZjJkZTAgIHRl
c3QtcmFuZDIuaW1nCj4+Pj4+Pj4gZDExY2YwY2FhNTQxYjcyNTUxY2EyMmRjNWJlZjJkZTAgIHRl
c3QtcmFuZC5pbWcKPj4+Pj4+PiBkMTFjZjBjYWE1NDFiNzI1NTFjYTIyZGM1YmVmMmRlMCAgdGVz
dC1yYW5kMi5pbWcKPj4+Pj4+PiBkMTFjZjBjYWE1NDFiNzI1NTFjYTIyZGM1YmVmMmRlMCAgdGVz
dC1yYW5kLmltZwo+Pj4+Pj4+IGQxMWNmMGNhYTU0MWI3MjU1MWNhMjJkYzViZWYyZGUwICB0ZXN0
LXJhbmQyLmltZwo+Pj4+Pj4+IGQxMWNmMGNhYTU0MWI3MjU1MWNhMjJkYzViZWYyZGUwICB0ZXN0
LXJhbmQuaW1nCj4+Pj4+Pj4gZDExY2YwY2FhNTQxYjcyNTUxY2EyMmRjNWJlZjJkZTAgIHRlc3Qt
cmFuZDIuaW1nCj4+Pj4+Pj4KPj4+Pj4+PiBUaG91Z2ggSSBkbyBsb3ZlIHdoZXJlIHRoaXMgcGF0
Y2ggaXMgZ29pbmcgYW5kIHdvdWxkIGxpa2UgdG8gc2VlIGlmIGl0Cj4+Pj4+Pj4gY2FuIGJlIG1h
ZGUgdG8gd29yaywgaW4gaXRzIGN1cnJlbnQgZm9ybSBpdCBkb2VzIG5vdC4KPj4+Pj4+Cj4+Pj4+
PiBUaGFua3MgZm9yIHRoZSB0ZXN0LiBDYW4geW91IHBsZWFzZSBhbHNvIHRlc3QgdjE/IEFsc28g
cGxlYXNlIHNoYXJlIGxzcGNpIC12dnYKPj4+Pj4+IG9mIHlvdXIgbnZtZSBkcml2ZSwgc28gdGhh
dCB3ZSBjYW4gc2VlIGFsbG9jYXRlZCBhZGRyZXNzIHJhbmdlcywgZXRjLgo+Pj4+Pgo+Pj4+PiBH
b29kIGNhdGNoLCB3aXRoIHlvdXIgcGF0Y2ggYXMgaXMsIHRoZSBmb2xsb3dpbmcgaXNzdWUgY3Jv
cHMgdXA6Cj4+Pj4+IFJlZ2lvbiAwOiBNZW1vcnkgYXQgMzAwMDAwMDAwICg2NC1iaXQsIG5vbi1w
cmVmZXRjaGFibGUpIFtzaXplPTE2S10KPj4+Pj4gUmVnaW9uIDI6IEkvTyBwb3J0cyBhdCAxMDAw
IFtkaXNhYmxlZF0gW3NpemU9MjU2XQo+Pj4+Pgo+Pj4+PiBIb3dldmVyLCB3aXRoIGEgc2ltcGxl
IGZpeCwgd2UgY2FuIGdldCB0aGlzOgo+Pj4+PiBSZWdpb24gMDogTWVtb3J5IGF0IDMwMDAwMDAw
MCAoNjQtYml0LCBub24tcHJlZmV0Y2hhYmxlKSBbdmlydHVhbF0gW3NpemU9MTZLXQo+Pj4+PiBS
ZWdpb24gMjogSS9PIHBvcnRzIGF0IDEwMDAgW3ZpcnR1YWxdIFtzaXplPTI1Nl0KPj4+Pj4KPj4+
Pj4gYW5kIHdpdGggaXQgYSB3b3JraW5nIE5WTWUgZHJpdmUuCj4+Pj4+Cj4+Pj4+IENoYW5nZSB0
aGUgZm9sbG93aW5nIHJhbmdlOgo+Pj4+PiAweDAyMDAwMDAwIDB4MCAweDQwMDAwMDAwIDB4MyAw
eDAwMDAwMDAwIDB4MCAweDQwMDAwMDAwPjsKPj4+Pj4gdG8KPj4+Pj4gMHgwMjAwMDAwMCAweDAg
MHgwMDAwMDAwMCAweDMgMHgwMDAwMDAwMCAweDAgMHg0MDAwMDAwMD47Cj4+Pj4KPj4+PiBJJ3Zl
IGFscmVhZHkgdHJpZWQgdGhpcywgYnV0IHRoaXMgdW5mcm90dW5hdGVseSBicmVha3MgdGhlIHdp
ZmkgY2FyZHMuCj4+Pj4gKHRob3NlIG9ubHkgdXNlIHRoZSBJL08gc3BhY2UpIE1heWJlIGJlY2F1
c2UgSS9PIGFuZCBtZW1vcnkgYWRkcmVzcyBzcGFjZXMKPj4+PiBub3cgb3ZlcmxhcCwgSSBkb24n
dCBrbm93LiBUaGF0J3Mgd2h5IEkgdXNlZCB0aGUgMUdpQiBvZmZzZXQgZm9yIG1lbW9yeQo+Pj4+
IHNwYWNlLgo+Pj4KPj4+IE1lYW53aGlsZSwgSSBoYXZlIGFuIE5WTWUgZHJpdmUgdGhhdCBvbmx5
IHdvcmtzIGlmIG1taW8gaXMgY29tcGxldGVseQo+Pj4gdW50cmFuc2xhdGVkLiAgVGhpcyBpcyBh
biBBREFUQSBTWDgwMDBOUCBkcml2ZSwgd2hpY2ggdXNlcyBhIFNpbGljb24KPj4+IE1vdGlvbiBT
TTIyNjAgY29udHJvbGxlci4KPj4+Cj4+PiBTbyBmb3IgbWUsIGEgd29ya2luZyBjb25maWd1cmF0
aW9uIGhhcyB0aGUgZm9sbG93aW5nICJyYW5nZXMiOgo+Pj4KPj4+IHJhbmdlcyA9IDwweDAxMDAw
MDAwIDB4MCAweDAwMDAwMDAwIDB4MyAweDNmZmYwMDAwIDB4MCAweDAwMDEwMDAwPiwKPj4+ICAg
ICAgICAgICA8MHgwMjAwMDAwMCAweDAgMHhmNDAwMDAwMCAweDAgMHhmNDAwMDAwMCAweDAgMHgw
MjAwMDAwMD4sCj4+PiAgICAgICAgICAgPDB4MDMwMDAwMDAgMHgzIDB4MTAwMDAwMDAgMHgzIDB4
MTAwMDAwMDAgMHgwIDB4MmZmZjAwMDA+Owo+Pj4KPj4+IFRoaXMgYWxzbyBuZWVkcyBjaGFuZ2Vz
IHRvIHRoZSAicmVnIiBwcm9wZXJ5Ogo+Pj4KPj4+IHJlZyA9IDwweDMgMHhjMDAwMDAwMCAweDAg
MHgwMDQwMDAwMD4sCj4+PiAgICAgICAgPDB4MCAweGZlMjYwMDAwIDB4MCAweDAwMDEwMDAwPiwK
Pj4+ICAgICAgICA8MHgzIDB4MDAwMDAwMDAgMHgwIDB4MTAwMDAwMDA+Owo+Pgo+PiBOb3cgdGhp
cyBpcyBpbnRlcmVzdGluZy4gSSd2ZSBiZWVuIHJlYWRpbmcgdXAgb24gUENJZSByYW5nZXMgYW5k
IHdoYXQKPj4gaXMgbmVjZXNzYXJ5IGZvciB0aGluZ3MgdG8gd29yayBwcm9wZXJseSwgYW5kIEkg
Zm91bmQgdGhpcyBpbnRlcmVzdGluZwo+PiBhcnRpY2xlIGZyb20gQVJNOgo+PiBodHRwczovL2Rl
dmVsb3Blci5hcm0uY29tL2RvY3VtZW50YXRpb24vMTAyMzM3LzAwMDAvUHJvZ3JhbW1lcnMtbW9k
ZWwvTWVtb3J5LW1hcHMvQVAtc3lzdGVtLW1lbW9yeS1tYXAvUENJZS1NTUlPLWFuZC1FQ0FNLW1l
bW9yeS1yZWdpb25zCj4+Cj4+IFRMRFI6IFdlIG5lZWQgYSBsb3cgcmVnaW9uIChiZWxvdyA0Zykg
YW5kIGEgaGlnaCByZWdpb24uCj4gCj4gV2VsbCwgdGhhdCBkZXNjcmlwdGlvbiBhcHBsaWVzIHRv
IGEgc3BlY2lmaWMgQVJNIHJlZmVyZW5jZSBkZXNpZ24uCj4gQW5kIGl0IGFwcGVhcnMgdGhhdCB0
aGUgUENJZS1SQyB1c2VkIGluIHRoYXQgcmVmZXJlbmNlIGRlc2lnbiBkb2VzIG5vdAo+IHN1cHBv
cnQgYWRkcmVzcyB0cmFuc2xhdGlvbi4KCkluZGVlZCwgdGhhdCdzIG5vdCBhbiAiaW50ZXJlc3Rp
bmcgYXJ0aWNsZSIsIGl0J3MganVzdCBkb2N1bWVudGF0aW9uIGZvciAKc29tZSBvdGhlciBzeXN0
ZW0gdGhhdCBpc24ndCB0aGlzIG9uZS4gSW4gZmFjdCBpdCdzIGEgc3lzdGVtIHRoYXQgCnN0cmlj
dGx5IGRvZXNuJ3QgZXZlbiAqaGF2ZSogUENJZTsgdGhlIHJlZmVyZW5jZSBkZXNpZ25zIGFyZSBu
b3QgCmNvbXBsZXRlIFNvQ3MsIGFuZCBhbGwgdGhhdCBpcyBiZWluZyBkZXNjcmliZWQgdGhlcmUg
aXMgdGhlIGludGVyY29ubmVjdCAKYWRkcmVzcyBtYXAgZm9yIHRoZSBwYXJ0cyB3aGljaCBhcmUg
aW4gcGxhY2UgcmVhZHkgZm9yIGEgY3VzdG9tZXIgdG8gCnN0aXRjaCB0aGVpciBjaG9pY2Ugb2Yg
UENJZSBpbXBsZW1lbnRhdGlvbiB0by4KClRoZSBlcXVpdmFsZW50IGZvciBSSzM1NjggaXMgdGhh
dCB5b3UgKmRvKiBoYXZlICJsb3ciIGFuZCAiaGlnaCIgUENJZSAKd2luZG93cyBhdCAweGZ4MDAw
MDAwIGFuZCAweDN4eHgwMDAwMCByZXNwZWN0aXZlbHkgaW4gdGhlIHN5c3RlbSAKaW50ZXJjb25u
ZWN0IGFkZHJlc3MgbWFwLiBIb3cgdGhlIFBDSWUgY29udHJvbGxlcnMgY2hvb3NlIHRvIHJlbGF0
ZSAKdGhvc2Ugc3lzdGVtIE1NSU8gYWRkcmVzc2VzIHRvIHRob3NlIHRvIFBDSSBNZW1vcnksIEkv
TyBhbmQgQ29uZmlnIHNwYWNlIAphZGRyZXNzZXMgaXMgYW5vdGhlciBtYXR0ZXIgZW50aXJlbHku
CgpSb2Jpbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
