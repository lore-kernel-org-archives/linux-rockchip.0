Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B2F4D74EC9
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jan 2026 13:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r+gcEKiOfCGlwAG43A5y2CKD75qWx9Q/aRqC6LGWBME=; b=xN3pyS8dq4nkxB
	6USDCj/sVY7yceQ4qF3BbvTnZuMEvhocRf1Zvv3vY/l9zwxmBCloz1inQaa74Yi2PSubyHEeRIHCw
	sM0rVypzAlC/x0aP2xgIt6BhM55Gpkz4J4qn36Wt8fHpRwvJB0bS94kwDDcEWv2pCXppFicEJFARn
	rHPNfPWpiC6mjkXGCawNR7IC0hlHARm0nFFYv1iPOaLIRXZM2Px6ecafpc8FOCTqKEwj5wPxhH9w/
	LYjorlc7A3xg82EhRgTGHhQgjcKOVGx9P4+NhzGpH6O1Qi/qB65lQ2oVj4Y1oRufyBWreMeBdffNq
	S2mtggOxVaFDt4u9SW1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHCB-00000008xdK-0IeC;
	Fri, 23 Jan 2026 13:27:27 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHC4-00000008xbj-1qKx;
	Fri, 23 Jan 2026 13:27:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 876731476;
	Fri, 23 Jan 2026 05:26:59 -0800 (PST)
Received: from [10.57.51.35] (unknown [10.57.51.35])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 862413F632;
	Fri, 23 Jan 2026 05:27:04 -0800 (PST)
Message-ID: <447e8d5a-916b-4d58-b39c-3467c152379c@arm.com>
Date: Fri, 23 Jan 2026 13:27:02 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] gpio: rockchip: mark the GPIO controller as sleeping
To: Bartosz Golaszewski <brgl@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
 Linus Walleij <linusw@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>
References: <20260106090011.21603-1-bartosz.golaszewski@oss.qualcomm.com>
 <aWGSQYCXP4R08koQ@venus>
 <CAMRc=Mf0tRxRrh7tn5OaDn3a47N_qvUcjO=zqbTi-GhY-Y9hOg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <CAMRc=Mf0tRxRrh7tn5OaDn3a47N_qvUcjO=zqbTi-GhY-Y9hOg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_052721_184008_2C086A3E 
X-CRM114-Status: GOOD (  24.48  )
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

T24gMjAyNi0wMS0xMiA5OjA4IGFtLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+IE9uIFNh
dCwgSmFuIDEwLCAyMDI2IGF0IDEyOjU14oCvQU0gU2ViYXN0aWFuIFJlaWNoZWwKPiA8c2ViYXN0
aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4+Cj4+IEhpLAo+Pgo+PiBPbiBUdWUs
IEphbiAwNiwgMjAyNiBhdCAxMDowMDoxMUFNICswMTAwLCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdy
b3RlOgo+Pj4gVGhlIEdQSU8gY29udHJvbGxlciBpcyBjb25maWd1cmVkIGFzIG5vbi1zbGVlcGlu
ZyBidXQgaXQgdXNlcyBnZW5lcmljCj4+PiBwaW5jdHJsIGhlbHBlcnMgd2hpY2ggdXNlIGEgbXV0
ZXggZm9yIHN5bmNocm9uaXphdGlvbi4KPj4+Cj4+PiBUaGlzIGNhbiBjYXVzZSB0aGUgZm9sbG93
aW5nIGxvY2tkZXAgc3BsYXQgd2l0aCBzaGFyZWQgR1BJT3MgZW5hYmxlZCBvbgo+Pj4gYm9hcmRz
IHdoaWNoIGhhdmUgbXVsdGlwbGUgZGV2aWNlcyB1c2luZyB0aGUgc2FtZSBHUElPOgo+Pj4KPiAK
PiBbc25pcF0KPiAKPj4+Cj4+PiBGaXhlczogOTM2ZWUyNjc1ZWVlICgiZ3Bpby9yb2NrY2hpcDog
YWRkIGRyaXZlciBmb3Igcm9ja2NoaXAgZ3BpbyIpCj4+PiBDYzogc3RhYmxlQHZnZXIua2VybmVs
Lm9yZwo+Pj4gUmVwb3J0ZWQtYnk6IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1z
dW5nLmNvbT4KPj4+IENsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2QwMzVmYzI5
LTNiMDMtNGNkNi1iOGVjLTAwMWY5MzU0MGJjNkBzYW1zdW5nLmNvbS8KPj4+IFNpZ25lZC1vZmYt
Ynk6IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJhcnRvc3ouZ29sYXN6ZXdza2lAb3NzLnF1YWxjb21t
LmNvbT4KPj4+IC0tLQo+Pj4gICBkcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jIHwgMSArCj4+
PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAu
Ywo+Pj4gaW5kZXggNDcxNzRlYjNiYTc2Li5iYWUyMDYxZjE1ZmMgMTAwNjQ0Cj4+PiAtLS0gYS9k
cml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jCj4+PiArKysgYi9kcml2ZXJzL2dwaW8vZ3Bpby1y
b2NrY2hpcC5jCj4+PiBAQCAtNTkzLDYgKzU5Myw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZ3Bp
b2xpYl9yZWdpc3RlcihzdHJ1Y3Qgcm9ja2NoaXBfcGluX2JhbmsgKmJhbmspCj4+PiAgICAgICAg
Z2MtPm5ncGlvID0gYmFuay0+bnJfcGluczsKPj4+ICAgICAgICBnYy0+bGFiZWwgPSBiYW5rLT5u
YW1lOwo+Pj4gICAgICAgIGdjLT5wYXJlbnQgPSBiYW5rLT5kZXY7Cj4+PiArICAgICBnYy0+Y2Fu
X3NsZWVwID0gdHJ1ZTsKPj4KPj4gVGhpcyBtZWFucyBhbGwgb3BlcmF0aW9ucyBhcmUgbWFya2Vk
IGFzIGNhbl9zbGVlcCwgZXZlbiB0aG91Z2gKPj4gcGluY3RybCBvcGVyYXRpb25zIGFyZSBvbmx5
IHVzZWQgZm9yIHRoZSBkaXJlY3Rpb24gc2V0dGluZy4KPj4gSS5lLiB0aGUgY29tbW9uIGdldC9z
ZXQgb3BlcmF0aW9ucyBhbHdheXMgd29ya2VkIGluIGF0b21pYyBtb2RlLAo+PiBidXQgbm93IGNv
bXBsYWluLiBTZWUgZm9yIGV4YW1wbGU6Cj4+Cj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2Fs
bC8yMDI2MDEwOC1tZWRpYS1zeW5vcHN5cy1oZG1pcngtZml4LWdwaW8tY2Fuc2xlZXAtdjEtMS0z
NTcwNTE4ZDhiYWJAa2VybmVsLm9yZy8KPj4KPj4gSXQncyBub3QgYSBiaWcgaXNzdWUgZm9yIHRo
ZSBoZG1pcnggZHJpdmVyIHNwZWNpZmljYWxseSwgYnV0IEkgd29uZGVyCj4+IGhvdyBtYW55IG1v
cmUgKGxlc3Mgb2Z0ZW4gdGVzdGVkKSByb2NrY2hpcCBkcml2ZXJzIHVzZSBHUElPcyBmcm9tIHRo
ZWlyCj4+IElSUSBoYW5kbGVyLgoKWWVhaCwgc2VlbXMgdGhpcyBmaW5hbGx5IHJlYWNoZWQgbXkg
ZGlzdHJvIGtlcm5lbCBhbmQgbm93IHRoZSBrZXJuZWwgbG9nIApvbiBvbmUgb2YgbXkgYm9hcmRz
IGlzIHRvdGFsbHkgZmxvb2RlZCBmcm9tIGdwaW9faXJfcmVjdl9pcnEoKSAKKGxlZ2l0aW1hdGVs
eSkgY2FsbGluZyBncGlvX2dldF92YWx1ZSgpLi4uIHRoYXQncyBub3QgcmVhbGx5IE9LIDovCgpU
aGFua3MsClJvYmluLgoKPj4gQ29uc2lkZXJpbmcgc2V0dGluZyBvciBnZXR0aW5nIHRoZSBHUElP
IGZyb20gYXRvbWljIGNvbnRleHQgaXMgbXVjaAo+PiBtb3JlIGNvbW1vbiB0aGFuIGNoYW5naW5n
IHRoZSBkaXJlY3Rpb24gLSBpcyB0aGVyZSBzb21lIHdheSB0bwo+PiBkZXNjcmliZSB0aGUgc2xl
ZXAgYmVoYXZpb3IgaW4gYSBtb3JlIHNwZWNpZmljIHdheSBpbiB0aGUgR1BJTwo+PiBjb250cm9s
bGVyPwo+Pgo+IAo+IE5vLCB0aGVyZSdzIG5vIHN1Y2ggc3dpdGNoIGF0IHRoZSBtb21lbnQuIFRo
aXMgaXMgYmVjYXVzZSB0aGVyZSBhcmUKPiBwYXRocyB0aGF0IHdlIGNhbiB0YWtlLCB3aGVyZSB3
ZSAqZG8qIGVuZCB1cCBzZXR0aW5nIGRpcmVjdGlvbiBmcm9tCj4gZ3Bpb2Rfc2V0X3ZhbHVlKCku
IEZvciBpbnN0YW5jZToKPiAKPiBncGlvZF9zZXRfdmFsdWUoKQo+ICAgIGdwaW9kX3NldF92YWx1
ZV9ub2NoZWNrKCkKPiAgICAgIGdwaW9fc2V0X29wZW5fZHJhaW5fdmFsdWVfY29tbWl0KCkKPiAg
ICAgICAgZ3Bpb2NoaXBfZGlyZWN0aW9uX291dHB1dCgpCj4gCj4gSSdtIGFmcmFpZCwgZm9yIGNv
cnJlY3RuZXNzLCBpdCBoYXMgdG8gYmUgZWl0aGVyIHNsZWVwaW5nLCBvciBub3QuIEkKPiB3b3Vs
ZCBsb3ZlIC0gYXQgc29tZSBwb2ludCAtIHRvIG1ha2UgcGluY3RybCBtb3N0bHkgbG9ja2xlc3Mg
d2l0aAo+IFNSQ1UsIGxpa2Ugd2UgZGlkIHdpdGggR1BJTy4gVGhhdCB3b3VsZCBzb2x2ZSB0aGlz
IGlzc3VlIGNvcnJlY3RseS4KPiBCdXQgdW50aWwgdGhlbiwgSSdtIGFmcmFpZCB3ZSBuZWVkIHRv
IGtlZXAgYSBjaGlwLWdsb2JhbCBzd2l0Y2ggZm9yCj4gc2xlZXBpbmcuCj4gCj4gQmFydG9zego+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
