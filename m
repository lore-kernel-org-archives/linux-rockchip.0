Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F088CCA0FED
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Sep 2025 17:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/l0W0xWQM1WaAhVR3NoMxfoarMwoTdtO29tNWfm+0g=; b=1nvvuFzIijptLZ
	+BgjyRiYU79hCer88WPZnQvDbFBIfjul+NHDw95pvfv4WGT0La0fjGxIBJPMdK9dOWpvWYKeWJkfA
	daRsmbsBWL03GwZtSCVliP1Ahec+MzS8pfeBIvaWTEnqDilK+cCIgFOo/oyRSncWvRKN5MT0AsAu4
	v+HQE9soUFy9Eq8yiVSPC+5x2WColarONJisH/gsN8qY5y26FBog6n0wBdntb/l/RkgRn74xfhk/v
	bjFDR56B6lcz9GqbaXTwZvcQEDRdxKhDLkf8sk7iyOzMxhqUAvbuxFkXhZb56XmMOpMH+U7y1fOkZ
	nUGVCOX1I+WmC1E6Lcbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw25u-000000093jg-17hE;
	Tue, 09 Sep 2025 17:25:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw0Rz-00000008A7i-37gV;
	Tue, 09 Sep 2025 15:40:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=BFeRB9wMbzR5Lg36gM813vRngWsNJslGbR1E32rRVEo=; b=VKaksjaK+PgOCh7qIEUxmdJKsp
	6NIzmASvKY3ll8cRpNyZ7Zb49fbx4YmufT0Qkv1J2MAlBK8IatmJOOkQscTWmcTN9XCcdcKSy5PE8
	/igNLIQ8mJPOGzvXFT3aN54Eu+aXkAUUWVG2LYoPTFe0deG6ileAh8dqYeCsD4Uwn9xM4HqiJtWl/
	aHjwUIK635NEuWeyVnYbmL/Dv4mOjsvPcyHM7zNQcPCPx3uZlXZ2IImbPKPJVNnX9fROqhaiRzCWc
	GgmAJyrTSNeeNkJMwwyDi2Z5DnWiXWcdaNEHFZ52l8u9R3VOq7Zm506BRLSYoihpDOZTAePtnIaTG
	CDhVtw7A==;
Received: from i53875b3d.versanet.de ([83.135.91.61] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uw0Rm-0002H9-HC; Tue, 09 Sep 2025 17:39:54 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>, Jonas Karlman <jonas@kwiboo.se>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>,
 Chukun Pan <amadeus@jmu.edu.cn>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Radxa E24C
Date: Tue, 09 Sep 2025 17:39:53 +0200
Message-ID: <17232684.geO5KgaWL5@diego>
In-Reply-To: <7d3c3b29-f89f-4801-8fd7-d6d0645095af@kwiboo.se>
References: <20250727144409.327740-1-jonas@kwiboo.se>
 <B055BC95C67D129C+d7a2ff39-8367-48cf-8697-f12fd9f885a4@radxa.com>
 <7d3c3b29-f89f-4801-8fd7-d6d0645095af@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_084009_100606_AA77D7E5 
X-CRM114-Status: GOOD (  22.12  )
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

QW0gRGllbnN0YWcsIDkuIFNlcHRlbWJlciAyMDI1LCAxNjo0ODoyNSBNaXR0ZWxldXJvcMOkaXNj
aGUgU29tbWVyemVpdCBzY2hyaWViIEpvbmFzIEthcmxtYW46Cj4gT24gOS85LzIwMjUgMjoyOCBQ
TSwgRlVLQVVNSSBOYW9raSB3cm90ZToKPiA+IEhpIEpvbmFzLAo+ID4gCj4gPiBPbiA3LzI3LzI1
IDIzOjQ0LCBKb25hcyBLYXJsbWFuIHdyb3RlOgo+ID4+IFRoZSBSYWR4YSBFMjRDIGlzIGEgY29t
cGFjdCwgaGlnaC1wZXJmb3JtYW5jZSBuZXR3b3JrIGNvbXB1dGVyCj4gPj4gZGV2ZWxvcGVkIGJ5
IFJhZHhhLCBiYXNlZCBvbiB0aGUgUm9ja2NoaXAgUkszNTI4QSBTb0MuCj4gPj4KPiA+PiBBZGQg
aW5pdGlhbCBkZXZpY2UgdHJlZSBmb3IgdGhlIFJhZHhhIEUyNEMuCj4gPj4KPiA+PiBTaWduZWQt
b2ZmLWJ5OiBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+Cj4gPj4gUmV2aWV3ZWQtYnk6
IEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4KPiA+PiAtLS0KPiA+PiBTY2hlbWF0aWNzOiBo
dHRwczovL2RsLnJhZHhhLmNvbS9lL2UyNGMvZG9jcy9yYWR4YV9lMjRjX3YxMjAwX3NjaGVtYXRp
Yy5wZGYKPiA+PiAtLS0KPiA+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZp
bGUgICAgICAgICB8ICAgMSArCj4gPj4gICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LXJh
ZHhhLWUyNGMuZHRzICAgfCA1MTkgKysrKysrKysrKysrKysrKysrCj4gPj4gICAyIGZpbGVzIGNo
YW5nZWQsIDUyMCBpbnNlcnRpb25zKCspCj4gPj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtcmFkeGEtZTI0Yy5kdHMKPiA+Pgo+ID4+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+ID4+IGluZGV4IDA2NjJmY2YwMDYyOC4u
ZGM2MmZkNTMwNWJlIDEwMDY0NAo+ID4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvTWFrZWZpbGUKPiA+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2Vm
aWxlCj4gPj4gQEAgLTkyLDYgKzkyLDcgQEAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9
IHJrMzM5OXByby1yb2NrLXBpLW4xMC5kdGIKPiA+PiAgIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tD
SElQKSArPSByazM1MjgtYXJtc29tLXNpZ2UxLmR0Ygo+ID4+ICAgZHRiLSQoQ09ORklHX0FSQ0hf
Uk9DS0NISVApICs9IHJrMzUyOC1uYW5vcGktemVybzIuZHRiCj4gPj4gICBkdGItJChDT05GSUdf
QVJDSF9ST0NLQ0hJUCkgKz0gcmszNTI4LXJhZHhhLWUyMGMuZHRiCj4gPj4gK2R0Yi0kKENPTkZJ
R19BUkNIX1JPQ0tDSElQKSArPSByazM1MjgtcmFkeGEtZTI0Yy5kdGIKPiA+PiAgIGR0Yi0kKENP
TkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1Mjgtcm9jay0yYS5kdGIKPiA+PiAgIGR0Yi0kKENP
TkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1Mjgtcm9jay0yZi5kdGIKPiA+PiAgIGR0Yi0kKENP
TkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1NjItZXZiMi12MTAuZHRiCj4gPj4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LXJhZHhhLWUyNGMuZHRzIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtcmFkeGEtZTI0Yy5kdHMKPiA+PiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4+IGluZGV4IDAwMDAwMDAwMDAwMC4uMjI1ZjJiMGM1MzM5
Cj4gPj4gLS0tIC9kZXYvbnVsbAo+ID4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTI4LXJhZHhhLWUyNGMuZHRzCj4gPj4gQEAgLTAsMCArMSw1MTkgQEAKPiA+PiArLy8g
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCj4gPj4gKwo+ID4+ICsv
ZHRzLXYxLzsKPiA+PiArCj4gPj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnB1dC9pbnB1dC5o
Pgo+ID4+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvbGVkcy9jb21tb24uaD4KPiA+PiArI2luY2x1
ZGUgInJrMzUyOC5kdHNpIgo+ID4+ICsKPiA+PiArLyB7Cj4gPj4gKwltb2RlbCA9ICJSYWR4YSBF
MjRDIjsKPiA+PiArCWNvbXBhdGlibGUgPSAicmFkeGEsZTI0YyIsICJyb2NrY2hpcCxyazM1Mjgi
Owo+ID4+ICsKPiA+PiArCWFsaWFzZXMgewo+ID4+ICsJCWV0aGVybmV0MCA9ICZnbWFjMTsKPiA+
PiArCQlpMmMwID0gJmkyYzA7Cj4gPj4gKwkJaTJjMSA9ICZpMmMxOwo+ID4+ICsJCWkyYzUgPSAm
aTJjNTsKPiA+PiArCQltbWMwID0gJnNkaGNpOwo+ID4+ICsJCW1tYzEgPSAmc2RtbWM7Cj4gPj4g
KwkJcnRjMCA9ICZoeW04NTYzOwo+ID4+ICsJCXJ0YzEgPSAmcms4MDU7Cj4gPj4gKwkJc2VyaWFs
MCA9ICZ1YXJ0MDsKPiA+PiArCX07Cj4gPj4gKwo+ID4+ICsJY2hvc2VuIHsKPiA+PiArCQlzdGRv
dXQtcGF0aCA9ICJzZXJpYWwwOjE1MDAwMDBuOCI7Cj4gPj4gKwl9Owo+ID4+ICsKPiA+PiArCWFk
Yy1rZXlzIHsKPiA+PiArCQljb21wYXRpYmxlID0gImFkYy1rZXlzIjsKPiA+PiArCQlpby1jaGFu
bmVscyA9IDwmc2FyYWRjIDA+Owo+ID4+ICsJCWlvLWNoYW5uZWwtbmFtZXMgPSAiYnV0dG9ucyI7
Cj4gPj4gKwkJa2V5dXAtdGhyZXNob2xkLW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKPiA+PiArCQlw
b2xsLWludGVydmFsID0gPDEwMD47Cj4gPj4gKwo+ID4+ICsJCWJ1dHRvbi1tYXNrcm9tIHsKPiA+
PiArCQkJbGFiZWwgPSAiTUFTS1JPTSI7Cj4gPj4gKwkJCWxpbnV4LGNvZGUgPSA8S0VZX1NFVFVQ
PjsKPiA+PiArCQkJcHJlc3MtdGhyZXNob2xkLW1pY3Jvdm9sdCA9IDwwPjsKPiA+PiArCQl9Owo+
ID4+ICsJfTsKPiA+PiArCj4gPj4gKwlncGlvLWtleXMgewo+ID4+ICsJCWNvbXBhdGlibGUgPSAi
Z3Bpby1rZXlzIjsKPiA+PiArCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4+ICsJCXBp
bmN0cmwtMCA9IDwmZ3BpbzBfYTBfdXNlcj47Cj4gPj4gKwo+ID4+ICsJCWJ1dHRvbi11c2VyIHsK
PiA+PiArCQkJZ3Bpb3MgPSA8JmdwaW8wIFJLX1BBMCBHUElPX0FDVElWRV9MT1c+Owo+ID4+ICsJ
CQlsYWJlbCA9ICJVU0VSIjsKPiA+PiArCQkJbGludXgsY29kZSA9IDxCVE5fMT47Cj4gPiAKPiA+
IEkgcHJlZmVyIHRvIGFzc2lnbiBCVE5fMCB0byB0aGUgMXN0IGJ1dHRvbiA6KQo+IAo+IFRoZSBF
MjBDIChhbmQgb3RoZXIgUksgYm9hcmRzKSBhbHJlYWR5IHVzZSBCVE5fMSBmb3IgdXNlciBidXR0
b24sIGl0Cj4gb25seSBzZWVtIHRvIGJlIHRoZSByZWNlbnRseSBhZGRlZCBFNTRDIHRoYXQgaXMg
dXNpbmcgQlROXzAuCj4gCj4gRm9yIGNvbnNpc3RlbmN5IEkgc3VnZ2VzdCB3ZSBrZWVwIHVzaW5n
IEJUTl8xIGZvciB0aGlzIHVzZXIgYnV0dG9uIGFuZAo+IHBvc3NpYmxlIGZpeHVwIEU1NEMsIGlm
IHlvdSB3YW50IHRvIHVzZSBzYW1lIGJ1dHRvbiBmb3IgYWxsIHZhcmlhbnRzLgoKWWVwLCB0aGF0
IHdvdWxkIGFsc28ga2VlcCB0aGUgYW1vdW50IG9mIHVzZXJzcGFjZS1mYWNpbmcgY2hhbmdlcwpt
aW5pbWFsLgoKSGVpa28KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
