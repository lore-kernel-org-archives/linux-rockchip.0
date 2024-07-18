Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8070C3DA61
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 08:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZNdYR4fq2u6SyZfbrnrjoz9Kx4RR3UdtE+nXQvM0pZ0=; b=DV+HiuxSPyKVY5
	JQGXc+nXV5RwOPlzJ+zR6ABrUESra1SmSCVBlWfYbufKiGz+xqzNo7se88kEebfiSZHROTJYtBpiX
	2d7aRiAlM7X4LuAP9gsLDge7k4Rc16g/j2+nyfr1O2nC4nIIc1GMLRWalu7p9jwDuTTilcxg/yh1C
	cCurx99ct0L7UdQ6ASL2Q0AU3Eh0ZZvPAQw+8eAJwBNQYPrmv7dKBz/kbNeCjsD1pz2+f/ZodeQEj
	jQvzVCRJUQ2faeSmQMrasZxkW6h3b9uIDyeDhJsbvj4HAg/LIbuEj0+juVtBoQ+qEFYYfEqOFd8Xi
	plX3ayNlVIS5/s9vsvFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUMlc-0000000GRpW-0qwz;
	Thu, 18 Jul 2024 08:45:36 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUMlE-0000000GRhe-1L0Q;
	Thu, 18 Jul 2024 08:45:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721292311;
	bh=fkCywxD3okS1KYREw38tF1DYuPRi9L2ZeQTfpycQs3U=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=rLiF7O9fmaFWzbFQdiQyoRcpH9TaxgcAct7wegDUE+I3wTVmk35/m15OAschwhYpH
	 DbXTMAwcMyeI+w4TwsSNYRldxwxCgB3jz3wRrpX7d1ycz6Y1YO+Q3dpuF+mYBE7Rnq
	 Qlaz49lNlj+KkgbKdWLX3cuUSU5SyctiqacNBIZFl16vgsvFlmwoZxm9En4db9pgi0
	 p572Ix5/w8tpjTDTlXQS73XqXheAy11TWgOb7VG9BSvlpZzlDkvsSXzJEM551TNbGD
	 JQBaBUSrAzDP2ePnicoVymKTS47aL5qFb/qf20ROAz+5Q2SqDGepAJifocY+EuLt7F
	 qaKrn3bsj/jqA==
Received: from [100.77.12.232] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 7F4913782167;
	Thu, 18 Jul 2024 08:45:10 +0000 (UTC)
Message-ID: <7dd789fb26817a8f752b6b0e8224b2ddf7293156.camel@collabora.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add Firefly
 Core-PX30-JD4 with baseboard
From: Christopher Obbard <chris.obbard@collabora.com>
To: Dragan Simic <dsimic@manjaro.org>, Conor Dooley
 <conor.dooley@microchip.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,  linux-kernel@vger.kernel.org, Kever
 Yang <kever.yang@rock-chips.com>,  Collabora Kernel Mailing List
 <kernel@collabora.com>
Date: Thu, 18 Jul 2024 09:45:09 +0100
In-Reply-To: <6ed3e6c6b74ddba1bca1a719dfdf3ac4@manjaro.org>
References: <20240717-rockchip-px30-firefly-v2-0-06541a5a5946@collabora.com>
	 <20240717-rockchip-px30-firefly-v2-1-06541a5a5946@collabora.com>
	 <0c804e9a0227904b16bfb779f2009af1@manjaro.org>
	 <e34f1a0a81de24437be7f582c719d3f128d44b51.camel@collabora.com>
	 <20240718-lapped-suffocate-0216bad82c68@wendy>
	 <6ed3e6c6b74ddba1bca1a719dfdf3ac4@manjaro.org>
User-Agent: Evolution 3.52.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_014512_517239_B42E772C 
X-CRM114-Status: GOOD (  20.90  )
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

SGkgRHJhZ2FuLAoKT24gVGh1LCAyMDI0LTA3LTE4IGF0IDEwOjQzICswMjAwLCBEcmFnYW4gU2lt
aWMgd3JvdGU6Cj4gT24gMjAyNC0wNy0xOCAxMDozNCwgQ29ub3IgRG9vbGV5IHdyb3RlOgo+ID4g
T24gVGh1LCBKdWwgMTgsIDIwMjQgYXQgMDk6MzE6NDVBTSArMDEwMCwgQ2hyaXN0b3BoZXIgT2Ji
YXJkIHdyb3RlOgo+ID4gPiBUaGFua3MgZm9yIHRoZSByZXZpZXcuCj4gPiA+IAo+ID4gPiBPbiBU
aHUsIDIwMjQtMDctMTggYXQgMDY6MzYgKzAyMDAsIERyYWdhbiBTaW1pYyB3cm90ZToKPiA+ID4g
PiBIZWxsbyBDaHJpc3RvcGhlciwKPiA+ID4gPiAKPiA+ID4gPiBPbiAyMDI0LTA3LTE3IDE4OjQ2
LCBDaHJpc3RvcGhlciBPYmJhcmQgd3JvdGU6Cj4gPiA+ID4gPiBBZGQgYmluZGluZyBmb3IgdGhl
IEZpcmVmbHkgQ29yZS1QWDMwLUpENCBTb00gd2hlbiB1c2VkIGluCj4gPiA+ID4gPiBjb25qdW5j
dGlvbgo+ID4gPiA+ID4gd2l0aCB0aGUgTUItSkQ0LVJLMzMyOCAmIFBYMzAgYmFzZWJvYXJkLgo+
ID4gPiA+ID4gCj4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGhlciBPYmJhcmQgPGNo
cmlzLm9iYmFyZEBjb2xsYWJvcmEuY29tPgo+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiDCoERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCB8IDYgKysrKysr
Cj4gPiA+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPiA+ID4gPiA+IAo+
ID4gPiA+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vcm9ja2NoaXAueWFtbAo+ID4gPiA+ID4gYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPiA+ID4gPiA+IGluZGV4IDFlZjA5ZmJmZGZhZjUuLjMz
Y2E4MDI4YmMxNTEgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPiA+ID4gPiA+ICsrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+ID4gPiA+ID4gQEAgLTE0
OCw2ICsxNDgsMTIgQEAgcHJvcGVydGllczoKPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
IC0gY29uc3Q6IGVuZ2ljYW0scHgzMC1jb3JlCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAtIGNvbnN0OiByb2NrY2hpcCxweDMwCj4gPiA+ID4gPiAKPiA+ID4gPiA+ICvCoMKgwqDCoMKg
IC0gZGVzY3JpcHRpb246IEZpcmVmbHkgQ29yZS1QWDMwLUpENCB3aXRoIE1CLUpENC1QWDMwCj4g
PiA+ID4gPiBiYXNlYm9hcmQKPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoCBpdGVtczoKPiA+ID4g
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogZmlyZWZseSxweDMwLW1iLWpkNAo+ID4g
PiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBmaXJlZmx5LHB4MzAtY29yZS1qZDQK
PiA+ID4gPiAKPiA+ID4gPiBTaW1pbGFybHkgdG8gaG93IEkgc3VnZ2VzdGVkIHRoZSBuZXcgZHRz
KGkpIGZpbGVzIHRvIGJlIG5hbWVkLCBbMV0KPiA+ID4gPiB0aGUgbW9kZWwgbmFtZXMgc2hvdWxk
IGJlIG5hbWVkIGxpa2UgdGhpczoKPiA+ID4gPiAKPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAtIGNvbnN0OiBmaXJlZmx5LHB4MzAtamQ0LWNvcmUKPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAtIGNvbnN0OiBmaXJlZmx5LHB4MzAtamQ0LWNvcmUtbWIKPiA+ID4gCj4gPiA+IEkgc3Vw
cG9zZSB0aGUgb3JkZXIgc2hvdWxkIGJlIHRoZSBvdGhlciB3YXkgYXJvdW5kIHRvIG1hdGNoIG90
aGVyIAo+ID4gPiBlbnRyaWVzLCBlLmcKPiA+ID4gZmlyZWZseSxweDMwLWpkNC1jb3JlLW1iIGZp
cnN0Pwo+ID4gCj4gPiBZZXMuIE1haW5ib2FyZCBmaXJzdCwgdGhlbiBzb20sIHRoZW4gc29jLgo+
IAo+IEFoIHllcywgc29ycnksIEkgc29tZWhvdyBtYW5hZ2VkIHRvIGdldCB0aGUgb3JkZXIgd3Jv
bmcuwqAgQmFzaWNhbGx5LAo+IGl0IGdvZXMgZnJvbSBtb3JlIHNwZWNpZmljIHRvIGxlc3Mgc3Bl
Y2lmaWMuCgpSaWdodCwgSSB0aG91Z2h0IHNvIGFuZCB3YXMganVzdCBkb3VibGUtY2hlY2tpbmcg
Oy0pLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
