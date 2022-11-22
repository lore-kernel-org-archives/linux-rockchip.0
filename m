Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90CD6C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Nov 2022 12:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N0TTAIkF3ZBDyZGPZMbYTrrMv21Hn9ryk3DqxPD6i0U=; b=vBDm50naZvwXr9
	wDkRumbW8hTZ9q+w4znD8w4VcvTCsH/SAEImOKqQIWNVBvhqFwI0/Y96zcOhnkDZ71KwahNQN2Z+x
	RwSLY2amAVLVO+VvvFHGaqe7l96EM1MI0C68ngp0zhyDxpjvawybiW9r9lOKcWH/CT2EY/H7KuXD1
	/FPyrg17BV/loSa7Mgpvj/AMkWkVrS4t+ra5WajdLmHHUipLFPKLJco++Min6byYD2JBfIDm0FsPK
	EOft3QsijzDlLaSVUfs58t4NHOkGj61lw7n+GmoRG8eYrIySR0puYBxgPHz4uxUxUwq4YmjnFkqrS
	NBBs6PNRS03/OucYPy6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxSgL-009OZe-FX; Tue, 22 Nov 2022 12:47:21 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxSg8-009OPa-Bx; Tue, 22 Nov 2022 12:47:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C9BE1FB;
	Tue, 22 Nov 2022 04:47:12 -0800 (PST)
Received: from [10.57.71.118] (unknown [10.57.71.118])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AED973F73B;
	Tue, 22 Nov 2022 04:47:01 -0800 (PST)
Message-ID: <916a6953-d9b4-c257-c08b-f5277ead71af@arm.com>
Date: Tue, 22 Nov 2022 12:46:56 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH RFC v2 5/7] arm64: dts: imx: fix touchscreen reset GPIO
 polarity
Content-Language: en-GB
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 David Jander <david@protonic.nl>, Fabio Estevam <festevam@gmail.com>
Cc: Quentin Schulz <foss+kernel@0leil.net>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>, Shawn Guo <shawnguo@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Samuel Holland <samuel@sholland.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Bastien Nocera
 <hadess@hadess.net>, Chen-Yu Tsai <wens@csie.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hans de Goede <hdegoede@redhat.com>, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org
References: <20221103-upstream-goodix-reset-v2-0-2c38fb03a300@theobroma-systems.com>
 <20221103-upstream-goodix-reset-v2-5-2c38fb03a300@theobroma-systems.com>
 <CAOMZO5BzWsHAy7KjZe+KEiXVq-Mfpggqjk0vswuzx7nkups3gA@mail.gmail.com>
 <20221122081851.6cb762d8@erd992>
 <907b9321-14dc-dc99-80fc-e1a20ee33a1e@theobroma-systems.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <907b9321-14dc-dc99-80fc-e1a20ee33a1e@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_044708_539370_5BD59DFF 
X-CRM114-Status: GOOD (  33.52  )
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

T24gMjAyMi0xMS0yMiAwOTo1OCwgUXVlbnRpbiBTY2h1bHogd3JvdGU6Cj4gSGkgRGF2aWQsCj4g
Cj4gVGhhbmtzIEZhYmlvIGZvciB0aGUgQ2MuCj4gCj4gT24gMTEvMjIvMjIgMDg6MTgsIERhdmlk
IEphbmRlciB3cm90ZToKPj4gT24gTW9uLCAyMSBOb3YgMjAyMiAxNToxODozMiAtMDMwMAo+PiBG
YWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+IHdyb3RlOgo+Pgo+Pj4gW0FkZGluZyBB
bmd1cyBhbmQgRGF2aWRdCj4+Cj4+IFRoYW5rcy4gVGhpcyB3YXMgYXBwYXJlbnRseSBuZWNlc3Nh
cnkgOy0pCj4+Cj4+PiBPbiBNb24sIE5vdiAyMSwgMjAyMiBhdCAzOjEyIFBNIFF1ZW50aW4gU2No
dWx6IAo+Pj4gPGZvc3Mra2VybmVsQDBsZWlsLm5ldD4gd3JvdGU6Cj4+Pj4KPj4+PiBGcm9tOiBR
dWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAdGhlb2Jyb21hLXN5c3RlbXMuY29tPgo+Pj4+
Cj4+Pj4gVGhlIHJlc2V0IGxpbmUgaXMgYWN0aXZlIGxvdyBmb3IgdGhlIEdvb2RpeCB0b3VjaHNj
cmVlbiBjb250cm9sbGVyIHNvCj4+Pj4gbGV0J3MgZml4IHRoZSBwb2xhcml0eSBpbiB0aGUgRGV2
aWNlIFRyZWUgbm9kZS4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFF1ZW50aW4gU2NodWx6IDxx
dWVudGluLnNjaHVsekB0aGVvYnJvbWEtc3lzdGVtcy5jb20+Cj4+Pj4gLS0tCj4+Pj4gwqAgYXJj
aC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1tLXBydDhtbS5kdHPCoMKgwqDCoMKgwqDC
oMKgIHwgMiArLQo+Pj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS1s
aWJyZW01LWRldmtpdC5kdHMgfCAyICstCj4+Pj4gwqAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1tLXBydDhtbS5kdHMgCj4+Pj4gYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW0tcHJ0OG1tLmR0cwo+Pj4+IGluZGV4IDlmYmJiYjU1
NmMwYjMuLmRmN2U1YWU5Njk4ZTEgMTAwNjQ0Cj4+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9mcmVlc2NhbGUvaW14OG1tLXBydDhtbS5kdHMKPj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9pbXg4bW0tcHJ0OG1tLmR0cwo+Pj4+IEBAIC0xMDcsNyArMTA3LDcgQEAg
dG91Y2hzY3JlZWVuQDVkIHsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBp
bnRlcnJ1cHQtcGFyZW50ID0gPCZncGlvMT47Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaW50ZXJydXB0cyA9IDw4IElSUV9UWVBFX05PTkU+Owo+Pj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlycS1ncGlvcyA9IDwmZ3BpbzEgOCBHUElPX0FDVElWRV9I
SUdIPjsKPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXNldC1ncGlvcyA9IDwm
Z3BpbzEgOSBHUElPX0FDVElWRV9ISUdIPjsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCByZXNldC1ncGlvcyA9IDwmZ3BpbzEgOSBHUElPX0FDVElWRV9MT1c+Owo+Pgo+PiBOQUNL
IQo+Pgo+PiBUaGUgUFJUOE1NIGhhcyBhbiBpbnZlcnRlciBpbiB0aGUgcmVzZXQgbGluZS4gVGhl
IHJlYXNvbiBmb3IgdGhhdCBpcyAKPj4gdGhhdCB0aGUKPj4gcmVzZXQgbGluZSBuZWVkcyB0byBi
ZSBpbmFjdGl2ZSB3aGVuIHRoZSBkcml2aW5nIHNpZGUgaXMgdW5wb3dlcmVkLgo+PiBUaGUgRFQg
d2FzIGNvcnJlY3QsIHRoaXMgY2hhbmdlIHdpbGwgYnJlYWsgaXQuCj4+Cj4gCj4gVGhlIERUIHdh
cyBjb3JyZWN0LiBUaGUgaW1wbGVtZW50YXRpb24gaW4gdGhlIGRyaXZlciBpcyBjaGFuZ2VkICh0
aGUgCj4gcG9sYXJpdHkgaXMgc3dhcHBlZCkgaW4gdGhpcyBwYXRjaCBzZXJpZXMsIHRoZXJlZm9y
ZSB0aGUgRFQgaXNuJ3QgCj4gY29ycmVjdCBhbnltb3JlLCBoZW5jZSB0aGlzIHBhdGNoLgoKSSdt
IG5vdCBzdXJlIGl0J3MgcXVpdGUgdGhhdCBzaW1wbGUuLi4gRldJVyBJJ20gdXNpbmcgYW4gYWRk
LW9uIExDRCAKbW9kdWxlIHdpdGggYSBHVDkyNzFbMV0gKGFuZCBJIHdvbid0IGJlIHRoZSBvbmx5
IG9uZSAtIFJhc3BiZXJyeSBQaSBhbmQgCm90aGVyIFNCQyB1c2VycyB1c2luZyBEVCBvdmVybGF5
cyBvciBjdXN0b20tYnVpbHQgRFRCcyBhcmUgYSB3aG9sZSBvdGhlciAKY2FuIG9mIHdvcm1zIGhl
cmUpLCB3aGVyZSBHUElPX0FDVElWRV9MT1cgaXMgY29ycmVjdGx5IHNwZWNpZmllZCBwZXIgdGhl
IApzY2hlbWF0aWNzLCB0aHVzICJ3cm9uZyIgZm9yIHRoZSBjdXJyZW50IGRyaXZlciBiZWhhdmlv
dXIsIHlldCBpdCAqaXMqIAp3b3JraW5nIE9LIGFzLWlzLiBJIGd1ZXNzIHRoYXQncyBiZWNhdXNl
IC9SU1RCIGVuZHMgdXAgZHJpdmVuIGxvdyBmb3IgCmxvbmcgZW5vdWdoIGJldHdlZW4gdGhlIGN1
cnJlbnQgImRlYXNzZXJ0aW9uIiBieSAKZ3Bpb2RfZGlyZWN0aW9uX291dHB1dCgxKSBhbmQgZ3Bp
b2RfZGlyZWN0aW9uX2lucHV0KCkgYWxsb3dpbmcgdGhlIApleHRlcm5hbCBwdWxsLXVwIHRvIHRh
a2UgaXQgaGlnaCBhZ2Fpbi4KClJvYmluLgoKWzFdIApodHRwczovL3d3dy5mcmllbmRseWVsZWMu
Y29tL2luZGV4LnBocD9yb3V0ZT1wcm9kdWN0L3Byb2R1Y3QmcGF0aD04MSZwcm9kdWN0X2lkPTIz
MAoKPiAKPiBTZWUgCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtaW5wdXQvMjAyMjEx
MDMtdXBzdHJlYW0tZ29vZGl4LXJlc2V0LXYyLTAtMmMzOGZiMDNhMzAwQHRoZW9icm9tYS1zeXN0
ZW1zLmNvbS8gZm9yIHRoZSB3aG9sZSBwYXRjaCBzZXJpZXMuCj4gCj4gVGhpcyBEVCBwYXRjaCBh
bG9uZSBpcyBvYnZpb3VzbHkgaW5jb3JyZWN0LCBidXQgdGhlIGNvbnRleHQgYXJvdW5kIGl0IAo+
IG1hdHRlcnMuIEkgY291bGQvc2hvdWxkIGhhdmUgbWFkZSBpdCBhbGwgaW50byBvbmUgYmlnIHBh
dGNoLCB0aGUgCj4gcXVlc3Rpb24gaXMgdGhlbiBob3cgdGhpcyBiaWcgdHJlZS1jcm9zc2luZyBw
YXRjaCB3b3VsZCBiZSBtZXJnZWQgaW50byAKPiBMaW51eCAoaWYgdGhlcmUncyBjb25zZW5zdXMp
LiBXZSdyZSBub3QgdGhlcmUgeWV0Lgo+IAo+IEZvciBzb21lIGFkZGl0aW9uYWwgYmFja2dyb3Vu
ZCBvbiB0aGUgZGlzY3Vzc2lvbiB0aGF0IHdhcyBoYWQgaW4gdGhlIHYxOgo+IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2FsbC8yNjdkZTk2YS0wMTI5LWE5N2QtOWJmNi1lMTAwMWI0MjJhMWFAdGhl
b2Jyb21hLXN5c3RlbXMuY29tLwo+IEkgbWVzc2VkIHVwIHRoZSBDYyBsaXN0IGluIHRoZSB2MSwg
YXBvbG9naWVzIGZvciB0aGUgbWlzc2luZyBjb250ZXh0IGluIAo+IHRoZSBhcmNoaXZlZCBtYWls
cywgSSB0aGluayBvbmUgc2hvdWxkIGJlIGFibGUgdG8gdW5kZXJzdGFuZCB0aGUgCj4gaW1wb3J0
YW50IGJpdHMgYnkgcmVhZGluZyB0aGUgYW5zd2VycyBpbi1tYWlsLiBUaGVyZSwgRG1pdHJ5LCBI
YW5zIGFuZCBJIAo+IGRpc2N1c3NlZCB0aGUgbWVhbmluZyBvZiB0aGUgYWN0aXZlIGxldmVsIG9m
IEdQSU9zL3Jlc2V0IGxpbmVzIGFuZCBJIAo+IGV4cHJlc3NlZCB0aGUgcmVhc29ucyBmb3Igc3Vj
aCBhIGNoYW5nZSAod2hpY2ggYXJlIGFsc28gbGlzdGVkIGluIHRoZSAKPiBjb3ZlciBsZXR0ZXIg
b2YgdGhpcyBwYXRjaCBzZXJpZXMpLgo+IAo+IEFzIHN0YXRlZCBpbiB2MSBjb3ZlciBsZXR0ZXIs
IG5vIGltcGxlbWVudGF0aW9uIHdpbGwgc2F0aXNmeSBldmVyeSBvbmUuIAo+IFdlIGVpdGhlciBt
YWtlIHRoZSBEVCBiaW5kaW5nIGltcGxlbWVudGF0aW9uIHNwZWNpZmljICh3aGljaCBpcyB3aGF0
IGl0IAo+IHNob3VsZG4ndCBiZSksIG9yIHdlIHN3YXAgdGhlIHBvbGFyaXR5IGluIHRoZSBMaW51
eCBpbXBsZW1lbnRhdGlvbiBhbmQgCj4gdGh1cyB0aGUgRFQgYnV0IHRoZW4gYnJlYWsgRFQgYmFj
a3dhcmQgY29tcGF0aWJpbGl0eS4KPiAKPiBDaGVlcnMsCj4gUXVlbnRpbgo+IAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
