Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DC3AD79779
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Jan 2026 15:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=47pMYOEOlbR47jArvr9ykoDvj5vdRTvCEUP7xwbYF30=; b=AiF4KQ1Yygjrq1B7S2U4mZzLGP
	WRFuVIqL7dM9GEK4UmfBd2aS3/hTHiYRll5ZR27Qc8jAgf1MLCETybjMIby82RQuGkUap3ctyqfy+
	JEEpc9YUYsVgqEWAFXu02gx4a2+MeSMrCTXLhoR1fbBpEb99Lx86r42f5QOelzNP/def3dKoHwvca
	uzNzYqA+4eNP3o36TBbJO12H2vo0zb+b5COOcgD+J4Wu44LIk334rd17Ude/7L2183Y3GQWAmpbpZ
	fILm2BLFlHmEdCiC/E3xN8frZuBYecGP/Sgm0Exyg/raZKmeFI6Yh0pwznTvZq/iurj6P5eJraI48
	8f2TOHgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmCiL-00000002jcZ-362R;
	Sat, 31 Jan 2026 15:16:45 +0000
Received: from mailgate01.uberspace.is ([95.143.172.20])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmCiI-00000002jbk-1APV
	for linux-rockchip@lists.infradead.org;
	Sat, 31 Jan 2026 15:16:44 +0000
Received: from mailgate02.uberspace.is (mailgate02.uberspace.is [185.26.156.114])
	by mailgate01.uberspace.is (Postfix) with ESMTPS id 652B46050E
	for <linux-rockchip@lists.infradead.org>; Sat, 31 Jan 2026 16:16:31 +0100 (CET)
Received: from devico.uberspace.de (devico.uberspace.de [185.26.156.185])
	by mailgate02.uberspace.is (Postfix) with ESMTPS id 524D717F433
	for <linux-rockchip@lists.infradead.org>; Sat, 31 Jan 2026 16:16:31 +0100 (CET)
Received: (qmail 24632 invoked by uid 990); 31 Jan 2026 15:16:31 -0000
Authentication-Results: devico.uberspace.de;
	auth=pass (plain)
Received: from unknown (HELO unkown) (::1)
	by devico.uberspace.de (Haraka/3.1.1) with ESMTPSA; Sat, 31 Jan 2026 16:16:30 +0100
Message-ID: <5509db37-85ab-47fe-8879-57dc650af4ea@lausen.nl>
Date: Sat, 31 Jan 2026 15:16:29 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: RK3576 Rock 4D: PCIe NVMe device not detected in mainline kernel
 despite working in U-Boot
To: FUKAUMI Naoki <naoki@radxa.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 linux-rockchip@lists.infradead.org
References: <4d25ff80-1cd6-4d84-b516-92aafd5be62e@lausen.nl>
 <6e3ea290-5930-40b7-82da-5dd18f3dd247@lausen.nl>
 <25AF3D04647ABA51+f6f704f6-1ecc-492a-9369-7dd0993a505e@radxa.com>
Content-Language: en-US
From: Leonard Lausen <leonard@lausen.nl>
In-Reply-To: <25AF3D04647ABA51+f6f704f6-1ecc-492a-9369-7dd0993a505e@radxa.com>
X-Rspamd-Bar: ---
X-Rspamd-Report: BAYES_HAM(-2.952758) XM_UA_NO_VERSION(0.01) MIME_GOOD(-0.1)
X-Rspamd-Score: -3.042758
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lausen.nl; s=uberspace;
	h=from:to:subject:date;
	bh=5cChNS2oeJcUkm5HRC3KH4WmtxW7JjiX+WGthjFMxqs=;
	b=wXpsRccXUCJKBahyK2k8n69vcRTxb9yd5uFAiK3i86vL2bMqQpyUMsffZABrcrxd48g+Sr33/5
	y/9JvhmavlA/4iR2PMrmVGSUpYORxIeOB7O7E6yyFWC27pTUBWy7sDkNhI/vZA9DGx5BUZnk4aDQ
	IBIe3fjlsraojWXTp5ATM0TvKRzq+BR74kLclfCBx+Aq2uibtKKTOW/haPDVLGgaCCK+UwOC2GNW
	ld94URvjqNdVF+qHFVrWH55lsEIfK/4gN9ORQ9ChpB6/fS/dzvXnBl8r+dBT7VK3AHIHC6EGq/k5
	3wsNyKcXrVUNaUZKdcT7t8Pm/Kr09NfwlTMG8LtwQu0fgy0FzQAE8fkG61izSA6QihWbO6l8tnAd
	TbiDUVgzkAPjFrh69HAhqCRYfxX/6yMt6pycloZAkgjbp0fvr7tBKo1aMCpWtg8FjoOmbRCmoWYK
	7+e3VT1drLAxOGnJHUKRHh5ROP3sgf4TuXtKO+KkgdzOilbya8LMiWVTdhd3PjaJCucsIRCEsn7S
	8BCVoBi8kX3xiIZwtkm1NWN1YdZAKz2w4LpxrtC9+V5srygwDv6p9u73gPT6poL/K4bAysDwAZT9
	sn7jHehQe/pr0UrfbzBhJJD16M1h3+SSM9WdLL+NLoZOwBAgJVYaD227kOL7hraAtXeiDBkC30id
	c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260131_071642_686704_89A4C1A0 
X-CRM114-Status: GOOD (  14.21  )
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

SGkgTmFva2ksCgpUaGFuayB5b3UgZm9yIHRoZSBhZHZpY2UuIEkgZmxhc2hlZCBtYWlubGluZSBV
LUJvb3QgdjIwMjYuMDQtcmMxIHRvIFNQSSAKYW5kIGNvbmZpcm1lZCBOVk1FIGJvb3Qgb2YgbWFp
bmxpbmUga2VybmVsIDYuMTktcmM3IHdvcmtzIHdpdGggaXQuCgpCZXN0IHJlZ2FyZHMKTGVvbmFy
ZAoKQW0gMDIuMDEuMjYgdW0gMTM6MjAgc2NocmllYiBGVUtBVU1JIE5hb2tpOgo+IEhpIExlb25h
cmQsCj4gCj4gT24gMTIvMjQvMjUgMjI6MzAsIExlb25hcmQgTGF1c2VuIHdyb3RlOgo+PiBBdHRh
Y2hlZCB0aGUgcHJvbWlzZWQgZnVsbCBib290IGxvZyBpbmNsdWRpbmcgdGhlIHUtYm9vdCBwYXJ0
IGFuZCAKPj4ga2VybmVsIFBDSV9ERUJVRyBvdXRwdXQuCj4gCj4gQ291bGQgeW91IHRyeSBtYWlu
bGluZSBVLUJvb3QgYW5kIHRoZSBEVEIgZnJvbSBlaXRoZXIgbWFpbmxpbmUgTGludXggb3IgCj4g
VS1Cb290Pwo+IAo+IFRoZSBmb2xsb3dpbmcgSEFUcyBhcmUgd29ya2luZzoKPiAKPiAtIER1YWwg
Mi41RyBSb3V0ZXIgSEFUCj4gLSBQZW50YSBTQVRBIEhBVAo+IAo+IHdpdGg6Cj4gCj4gLSBVLUJv
b3QgdjIwMjYuMDEtcmM1Cj4gLSBMaW51eCB2Ni4xOC4xL3Y2LjE5LXJjMwo+IAo+IEJlc3QgcmVn
YXJkcywKPiAKPiAtLSAKPiBGVUtBVU1JIE5hb2tpCj4gUmFkeGEgQ29tcHV0ZXIgKFNoZW56aGVu
KSBDby4sIEx0ZC4KPiAKPj4gQW0gMjQuMTIuMjUgdW0gMTQ6Mjkgc2NocmllYiBMZW9uYXJkIExh
dXNlbjoKPj4+IEhpIGxpbnV4LXJvY2tjaGlwLCBIaSBOaWNvbGFzLAo+Pj4KPj4+IEknbSB0ZXN0
aW5nIG1haW5saW5lIGtlcm5lbCBzdXBwb3J0IG9uIHRoZSBSb2NrIDREIGJvYXJkIGFuZCAKPj4+
IGVuY291bnRlcmluZyBhbiBpc3N1ZSB3aGVyZSBQQ0llIE5WTWUgZGV2aWNlcyBhcmUgbm90IGRl
dGVjdGVkIGJ5IHRoZSAKPj4+IGtlcm5lbCwgZGVzcGl0ZSB3b3JraW5nIGNvcnJlY3RseSBpbiBV
LUJvb3QuIFRoYXQgaXMgZGVzcGl0ZSBOaWNvbGFzIAo+Pj4gcmVjZW50bHkgZW5hYmxpbmcgUENJ
ZSBzdXBwb3J0IGZvciBSb2NrIDREIGluIAo+Pj4gMjlmZjRiYmZmNzkzMzM0ZDZhZmYyMjM4ZmRj
M2NjZjM4NTlkNjBkYS4KPj4+Cj4+PiBVLUJvb3Qgc3VjY2Vzc2Z1bGx5IGRldGVjdHMgYW5kIGlu
aXRpYWxpemVzIHRoZSBOVk1lIGRldmljZToKPj4+Cj4+PiBwY2llQDJhMjAwMDAwOiBQQ0llIExp
bmtpbmcuLi4gTFRTU00gaXMgMHgwCj4+PiBwY2llQDJhMjAwMDAwOiBQQ0llIExpbmsgdXAsIExU
U1NNIGlzIDB4MTMwMDExCj4+PiBwY2llQDJhMjAwMDAwOiBQQ0lFLTA6IExpbmsgdXAgKEdlbjIt
eDEsIEJ1czApCj4+Pgo+Pj4gRGV2aWNlIDA6IFZlbmRvcjogMHgxMzQ0IFJldjogSFBTMDA1MMKg
IFByb2Q6IFVURlJRMDE3MEo4UVNaCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgVHlwZTog
SGFyZCBEaXNrCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQ2FwYWNpdHk6IDQ4ODM4Ni4z
IE1CID0gNDc2LjkgR0IgKDEwMDAyMTUyMTYgeCA1MTIpCj4+Pgo+Pj4KPj4+IEhvd2V2ZXIsIGFm
dGVyIGtlcm5lbCBib290LCBvbmx5IHRoZSBQQ0llIHJvb3QgcG9ydCBpcyB2aXNpYmxlOgo+Pj4K
Pj4+IDAwOjAwLjAgUENJIGJyaWRnZTogRGV2aWNlIDFkODc6MzU3NiAocmV2IDAxKQo+Pj4KPj4+
Cj4+PiBQQ0llIHJlc2NhbiBkZWJ1ZyBvdXRwdXQ6Cj4+Pgo+Pj4gKGluaXRyYW1mcykgZWNobyAx
ID4gL3N5cy9idXMvcGNpL3Jlc2Nhbgo+Pj4gW8KgIDEwNi43ODIzOTJdIHBjaV9idXMgMDAwMDow
MDogc2Nhbm5pbmcgYnVzCj4+PiBbwqAgMTA2Ljc5NjI0OV0gcGNpZXBvcnQgMDAwMDowMDowMC4w
OiByZXN0b3JlIGNvbmZpZyAweDJjOiAweDAwMDAwMDAwIAo+Pj4gLT4gMHgwMDAwMDAwMAo+Pj4g
W8KgIDEwNi43OTcwNjBdIHBjaWVwb3J0IDAwMDA6MDA6MDAuMDogcmVzdG9yZSBjb25maWcgMHgy
ODogMHgwMDAwMDAwMCAKPj4+IC0+IDB4MDAwMDAwMDAKPj4+IFvCoCAxMDYuNzk3ODA4XSBwY2ll
cG9ydCAwMDAwOjAwOjAwLjA6IHJlc3RvcmUgY29uZmlnIDB4MjQ6IDB4MDAwMWZmZjEgCj4+PiAt
PiAweDAwMDFmZmYxCj4+PiBbwqAgMTA2Ljc5ODU4M10gcGNpZXBvcnQgMDAwMDowMDowMC4wOiBQ
TUUjIGRpc2FibGVkCj4+PiBbwqAgMTA2Ljc5OTA2OV0gcGNpZXBvcnQgMDAwMDowMDowMC4wOiBz
Y2FubmluZyBbYnVzIDAxLWZmXSBiZWhpbmQgCj4+PiBicmlkZ2UsIHBhc3MgMAo+Pj4gW8KgIDEw
Ni43OTk3OTVdIHBjaV9idXMgMDAwMDowMTogc2Nhbm5pbmcgYnVzCj4+PiBbwqAgMTA2LjgwMzQ3
MV0gcGNpX2J1cyAwMDAwOjAxOiBidXMgc2NhbiByZXR1cm5pbmcgd2l0aCBtYXg9MDEKPj4+IFvC
oCAxMDYuODA0MDczXSBwY2llcG9ydCAwMDAwOjAwOjAwLjA6IHNjYW5uaW5nIFtidXMgMDEtZmZd
IGJlaGluZCAKPj4+IGJyaWRnZSwgcGFzcyAxCj4+PiBbwqAgMTA2LjgwNDgyOV0gcGNpX2J1cyAw
MDAwOjAwOiBidXMgc2NhbiByZXR1cm5pbmcgd2l0aCBtYXg9ZmYKPj4+IChpbml0cmFtZnMpIFvC
oCAxMDYuOTI0MTU0XSBwY2llcG9ydCAwMDAwOjAwOjAwLjA6IHNhdmUgY29uZmlnIDB4MDA6IAo+
Pj4gMHgzNTc2MWQ4Nwo+Pj4gW8KgIDEwNi45MjQ3NjVdIHBjaWVwb3J0IDAwMDA6MDA6MDAuMDog
c2F2ZSBjb25maWcgMHgwNDogMHgwMDEwMDUwNwo+Pj4gW8KgIDEwNi45MjUzNjRdIHBjaWVwb3J0
IDAwMDA6MDA6MDAuMDogc2F2ZSBjb25maWcgMHgwODogMHgwNjA0MDAwMQo+Pj4gW8KgIDEwNi45
MjU5NThdIHBjaWVwb3J0IDAwMDA6MDA6MDAuMDogc2F2ZSBjb25maWcgMHgwYzogMHgwMDAxMDAw
MAo+Pj4gW8KgIDEwNi45MjY1MzRdIHBjaWVwb3J0IDAwMDA6MDA6MDAuMDogc2F2ZSBjb25maWcg
MHgxMDogMHgwMDAwMDAwMAo+Pj4gW8KgIDEwNi45MzIxNDJdIHBjaWVwb3J0IDAwMDA6MDA6MDAu
MDogc2F2ZSBjb25maWcgMHgxNDogMHgwMDAwMDAwMAo+Pj4gW8KgIDEwNi45MzQ2MDhdIHBjaWVw
b3J0IDAwMDA6MDA6MDAuMDogc2F2ZSBjb25maWcgMHgxODogMHgwMGZmMDEwMAo+Pj4gW8KgIDEw
Ni45MzcyMDZdIHBjaWVwb3J0IDAwMDA6MDA6MDAuMDogc2F2ZSBjb25maWcgMHgxYzogMHgwMDAw
MDBmMAo+Pj4gW8KgIDEwNi45Mzk1NzVdIHBjaWVwb3J0IDAwMDA6MDA6MDAuMDogc2F2ZSBjb25m
aWcgMHgyMDogMHgwMDAwZmZmMAo+Pj4gW8KgIDEwNi45NDE4ODNdIHBjaWVwb3J0IDAwMDA6MDA6
MDAuMDogc2F2ZSBjb25maWcgMHgyNDogMHgwMDAxZmZmMQo+Pj4gW8KgIDEwNi45NDQxMzhdIHBj
aWVwb3J0IDAwMDA6MDA6MDAuMDogc2F2ZSBjb25maWcgMHgyODogMHgwMDAwMDAwMAo+Pj4gW8Kg
IDEwNi45NDYzMzVdIHBjaWVwb3J0IDAwMDA6MDA6MDAuMDogc2F2ZSBjb25maWcgMHgyYzogMHgw
MDAwMDAwMAo+Pj4gW8KgIDEwNi45NDg0OTBdIHBjaWVwb3J0IDAwMDA6MDA6MDAuMDogc2F2ZSBj
b25maWcgMHgzMDogMHgwMDAwMDAwMAo+Pj4gW8KgIDEwNi45NTA2MDFdIHBjaWVwb3J0IDAwMDA6
MDA6MDAuMDogc2F2ZSBjb25maWcgMHgzNDogMHgwMDAwMDA0MAo+Pj4gW8KgIDEwNi45NTI2OThd
IHBjaWVwb3J0IDAwMDA6MDA6MDAuMDogc2F2ZSBjb25maWcgMHgzODogMHgwMDAwMDAwMAo+Pj4g
W8KgIDEwNi45NTQ3NjVdIHBjaWVwb3J0IDAwMDA6MDA6MDAuMDogc2F2ZSBjb25maWcgMHgzYzog
MHgwMDAyMDEyZAo+Pj4gW8KgIDEwNi45NTY4NDddIHBjaWVwb3J0IDAwMDA6MDA6MDAuMDogUE1F
IyBlbmFibGVkCj4+PiBscyAvc3lzL2J1cy9wY2kvZGV2aWNlcy8KPj4+IGRyd3hyLXhyLXggMiAw
IDAgMCAuCj4+PiBkcnd4ci14ci14IDUgMCAwIDAgLi4KPj4+IGxyd3hyd3hyd3ggMSAwIDAgMCAw
MDAwOjAwOjAwLjAgLT4gLi4vLi4vLi4vZGV2aWNlcy9wbGF0Zm9ybS8gCj4+PiBzb2MvMjIwMDAw
MDAucGNpZS9wY2kwMDAwOjAwLzAwMDA6MDA6MDAuMAo+Pj4KPj4+IFRoZSBmdWxsIGJvb3QgbG9n
IGluY2x1ZGluZyB0aGUgdS1ib290IHBhcnQgYW5kIGtlcm5lbCBQQ0lfREVCVUcgCj4+PiBvdXRw
dXQgaXMgYWxzbyBhdHRhY2hlZC4KPj4+Cj4+PiBUaGFua3MgZm9yIGFueSBpbnNpZ2h0cyEKPj4+
Cj4+PiBCZXN0IHJlZ2FyZHMsCj4+PiBMZW9uYXJkCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dAo+PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+IGh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKPiAKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
