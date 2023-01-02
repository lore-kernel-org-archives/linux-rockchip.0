Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AA64C3DA7A
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Jan 2023 10:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PCbLpVEzhgrx8rRD287D3+oQU4E26GjqLwz9NJ/mcIA=; b=mfsDY0igSlyQk+
	9Gqdo32J1tZaAZ5R+F5Bu3bpELA+ZO/9cGMebf1AlX3iQ6HSOnZVDqzAk9TXyRPu0Gw2nl0PTIpr/
	zb/favwhKhj3YXbP4BSPMEPYZriY6O9TfX9f7wRcxxKs4WH65T/YVj7thh1KXxCS849suDOosiACF
	13kVaObDF4HqGsY64ITGyIvzGEHoMAZspMAE4UNTCwg6r3KWSkBOtn5XYGq7jRPQFDgi+BUqg4jYz
	eulcEa67eM/BnVmVrmlaGi6tibSlfdoIGl1HpDTtG2F/WikrBnhSKDiChZ6+C/NdGub6Y06M6V8xU
	05iaLFpCrmTxObTfUcMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCIWY-00AZM8-MQ; Mon, 02 Jan 2023 10:58:35 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCIVw-00AZ4h-0p; Mon, 02 Jan 2023 10:58:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1672657066; bh=F4SkNUKtXmiMKcbm5JjpkGe1luxSiwhxxZE9A69pJoQ=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=t3Gf17cNfS97ha3LFp5M06o5kw9u6PX4x3stnGo1CUvJAdNqxmXcnyjcI3Wg19En1
	 e0HZPRGHjG+pd5NWMDj7TuyAgXfpQpKvc+jNNZhox38nBMbbSOS5zCSwZMii5slNhQ
	 JPV0KP8jgpKaGjz/aBAeO5OPqzeb0BKBDBRYtbnc=
Date: Mon, 2 Jan 2023 11:57:46 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org,
	Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Martijn Braam <martijn@brixit.nl>, Sam Ravnborg <sam@ravnborg.org>,
	Robert Mader <robert.mader@posteo.de>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Peter Robinson <pbrobinson@gmail.com>,
	Onuralp Sezer <thunderbirdtr@fedoraproject.org>,
	dri-devel@lists.freedesktop.org,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Neal Gompa <ngompa13@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 4/4] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
Message-ID: <20230102105746.5abnjzwf365c6hy2@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Javier Martinez Canillas <javierm@redhat.com>,
	linux-kernel@vger.kernel.org,
	Kamil =?utf-8?Q?Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Martijn Braam <martijn@brixit.nl>, Sam Ravnborg <sam@ravnborg.org>,
	Robert Mader <robert.mader@posteo.de>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Peter Robinson <pbrobinson@gmail.com>,
	Onuralp Sezer <thunderbirdtr@fedoraproject.org>,
	dri-devel@lists.freedesktop.org,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Neal Gompa <ngompa13@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20221230113155.3430142-1-javierm@redhat.com>
 <20221230113155.3430142-5-javierm@redhat.com>
 <20221230153745.tfs6n4zy4xfwugbw@core>
 <e21b5c12-0cc0-5ec0-b2c6-9dde633d5e10@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e21b5c12-0cc0-5ec0-b2c6-9dde633d5e10@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230102_025756_290322_5CBE0B94 
X-CRM114-Status: GOOD (  37.77  )
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

SGVsbG8gSmF2aWVyLAoKT24gU2F0LCBEZWMgMzEsIDIwMjIgYXQgMDQ6Mjk6NDlQTSArMDEwMCwg
SmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzIHdyb3RlOgo+IEhlbGxvIE9uZMWZZWosCj4gCj4gVGhh
bmtzIGEgbG90IGZvciB5b3VyIGZlZWRiYWNrLgo+IAo+IE9uIDEyLzMwLzIyIDE2OjM3LCBPbmTF
mWVqIEppcm1hbiB3cm90ZToKPiAKPiBbLi4uXQo+IAo+ID4+ICAmaTJjMCB7Cj4gPj4gIAljbG9j
ay1mcmVxdWVuY3kgPSA8NDAwMDAwPjsKPiA+PiAgCWkyYy1zY2wtcmlzaW5nLXRpbWUtbnMgPSA8
MTY4PjsKPiA+PiBAQCAtMjE0LDYgKzI1MSw5IEBAIHZjYzN2MF90b3VjaDogTERPX1JFRzIgewo+
ID4+ICAJCQkJcmVndWxhdG9yLW5hbWUgPSAidmNjM3YwX3RvdWNoIjsKPiA+PiAgCQkJCXJlZ3Vs
YXRvci1taW4tbWljcm92b2x0ID0gPDMwMDAwMDA+Owo+ID4+ICAJCQkJcmVndWxhdG9yLW1heC1t
aWNyb3ZvbHQgPSA8MzAwMDAwMD47Cj4gPj4gKwkJCQlyZWd1bGF0b3Itc3RhdGUtbWVtIHsKPiA+
PiArCQkJCQlyZWd1bGF0b3Itb2ZmLWluLXN1c3BlbmQ7Cj4gPj4gKwkJCQl9Owo+ID4gCj4gPiBZ
b3UncmUgaW5zdHJ1Y3RpbmcgUks4MTggdG8gc2h1dCBkb3duIHRoZSByZWd1bGF0b3IgZm9yIHRv
dWNoIGNvbnRyb2xsZXIgZHVyaW5nCj4gPiBzdXNwZW5kLCBidXQgSSB0aGluayBHb29kaXggZHJp
dmVyIGV4cGVjdHMgdG91Y2ggY29udHJvbGxlciB0byBiZSBrZXB0IHBvd2VyZWQgb24KPiA+IGR1
cmluZyBzdXNwZW5kLiBBbSBJIG1pc3Npbmcgc29tZXRoaW5nPwo+ID4gCj4gPiBodHRwczovL2Vs
aXhpci5ib290bGluLmNvbS9saW51eC9sYXRlc3Qvc291cmNlL2RyaXZlcnMvaW5wdXQvdG91Y2hz
Y3JlZW4vZ29vZGl4LmMjTDE0MDUKPiA+Cj4gCj4gWW91IHRlbGwgbWUsIGl0IGlzIHlvdXIgcGF0
Y2ggOikgSSBqdXN0IGNoZXJyeS1waWNrZWQgdGhpcyBmcm9tIHlvdXIgdHJlZToKCkkgaGF2ZSBv
dGhlciBwYXRjaGVzIHRvIGdvb2RpeCBkcml2ZXIgdGhhdCBkbyBwb3dlciBvZmYgdGhlIHRvdWNo
IHNlbnNvciBjaGlwCmR1cmluZyBzbGVlcCwgc28gdGhhdCBpdCBkb2Vzbid0IGNvbnN1bWUgZXhj
ZXNzaW52ZSBhbW91bnRzIG9mIHBvd2VyIHdoZW4KdGhlIHBob25lIGlzIHN1c3BlbmRlZC4gTWFp
bmxpbmUgZG9lc24ndC4gWW91IGhhdmUgdG8gYWRhcHQgdGhpcyB0byBtYWlubGluZSwKYmVjYXVz
ZSB5b3UncmUgbm90IHVwc3RyZWFtaW5nIHRoZSByZXF1aXJlZCBHb29kaXggcGF0Y2hlcywgZm9y
IHJlZ3VsYXRvci1vZmYtaW4tc3VzcGVuZAp0byBub3QgYnJlYWsgdGhpbmdzLgoKPiBodHRwczov
L2dpdGh1Yi5jb20vbWVnb3VzL2xpbnV4L2NvbW1pdC8xMWY4ZGE2MGQ2YTUKPiAKPiBCdXQgaWYg
dGhhdCBpcyBub3QgY29ycmVjdCwgdGhlbiBJIGNhbiBkcm9wIHRoZSByZWd1bGF0b3Itb2ZmLWlu
LXN1c3BlbmQuCj4gIAo+IFsuLi5dCj4gCj4gPj4gKwo+ID4+ICsJdG91Y2hzY3JlZW5AMTQgewo+
ID4+ICsJCWNvbXBhdGlibGUgPSAiZ29vZGl4LGd0OTE3cyI7Cj4gPiAKPiA+IFRoaXMgaXMgbm90
IHRoZSBjb3JyZWN0IGNvbXBhdGlibGUuIFBpbmVwaG9uZSBQcm8gdXNlcyBHb29kaXggR1QxMTU4
Ogo+ID4gCj4gPiBHb29kaXgtVFMgMy0wMDE0OiBJRCAxMTU4LCB2ZXJzaW9uOiAwMTAwCj4gPiBH
b29kaXgtVFMgMy0wMDE0OiBEaXJlY3QgZmlybXdhcmUgbG9hZCBmb3IgZ29vZGl4XzExNThfY2Zn
LmJpbiBmYWlsZWQgd2l0aCBlcnJvciAtMgo+ID4gCj4gPgo+IAo+IFNhbWUgdGhpbmcuIEkgd2Fz
bid0IGF3YXJlIG9mIHRoaXMgc2luY2UgeW91ciBwYXRjaCB3YXMgdXNpbmcgdGhpcyBjb21wYXRp
YmxlCj4gc3RyaW5nLiBJZiAiZ29vZGl4LGd0MTE1OCIgaXMgdGhlIGNvcnJlY3QgY29tcGF0aWJs
ZSBzdHJpbmcsIHRoZW4gSSBhZ3JlZSB3ZQo+IHNob3VsZCBoYXZlIHRoYXQgaW5zdGVhZCBldmVu
IHdoZW4gdGhlIGZpcm13YXJlIGlzIG1pc3NpbmcuIEJlY2F1c2UgdGhlIERUIGlzCj4gc3VwcG9z
ZWQgdG8gZGVzY3JpYmUgdGhlIGhhcmR3YXJlLiBUaGUgRlcgaXNzdWUgY2FuIGJlIHRhY2tsZWQg
YXMgYSBmb2xsb3ctdXAuCj4gCj4gWy4uLl0gCgpZZXMsIGNvbXBhdGlibGUgc3RyaW5nIGlzIHNv
cnQgb2YgaXJyZWxldmFudCwgYmVjYXVzZSB0aGUgZHJpdmVyIGRvZXMgcnVudGltZQphdXRvLWRl
dGVjdGlvbiBiYXNlZCBvbiBjaGlwIElELiBJIGRpZG4ndCBib3RoZXIgd2l0aCBzdXBlcmZpY2lh
bCBpc3N1ZXMgaW4gdGhlCm9yaWdpbmFsIGNvZGUgZnJvbSBNYXJ0aWpuL0thbWlsLiBOb3cgdGhh
dCB5b3UncmUgbWFpbmxpbmluZyB0aGUgY29kZSwgdGhpcwpzaG91bGQgYmUgc29ydGVkIG91dCwg
dGhvdWdoLgoKVGhlcmUncyBubyBGVyBpc3N1ZSwgSSB3YXMganVzdCB1c2luZyB0aGUgbG9nIHRv
IHNob3cgeW91IHRoZSBhY3R1YWwgY2hpcCBJRCB0aGUKZHJpdmVyIGRldGVjdHMuCgooWW91IHNo
b3VsZCBwcm9iYWJseSBwdXQgbXkgU29CIGFmdGVyIEthbWlsL01hcnRpam4sIHNpbmNlIEkgdG9v
ayB0aGUKbWFpbnRlbmFuY2UvZGV2ZWxvcG1lbnQgb2YgdGhlIGRyaXZlciBhZnRlciB0aGV5IHdy
b3RlIHRoZSBiYXNlIHN1cHBvcnQKaW5pdGlhbGx5IGluIHNlY3JldC4gSSdtIG5vdCB0aGUgb3Jp
Z2luYWwgYXV0aG9yIG9mIHRoZSBjb2RlLikKCj4gPj4gKwo+ID4+ICsmdm9wYiB7Cj4gPj4gKwlz
dGF0dXMgPSAib2theSI7Cj4gPj4gKwlhc3NpZ25lZC1jbG9ja3MgPSA8JmNydSBEQ0xLX1ZPUDBf
RElWPiwgPCZjcnUgRENMS19WT1AwPiwKPiA+PiArCQkJICA8JmNydSBBQ0xLX1ZPUDA+LCA8JmNy
dSBIQ0xLX1ZPUDA+Owo+ID4+ICsJYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MD4sIDwwPiwgPDQw
MDAwMDAwMD4sIDwxMDAwMDAwMDA+Owo+ID4+ICsJYXNzaWduZWQtY2xvY2stcGFyZW50cyA9IDwm
Y3J1IFBMTF9DUExMPiwgPCZjcnUgRENMS19WT1AwX0ZSQUM+Owo+ID4+ICt9Owo+ID4gCj4gPiBT
byBoZXJlIHlvdSdyZSBwdXR0aW5nIGEgZnJhY3Rpb25hbCBjbG9jayBpbnRvIHBhdGggYmV0d2Vl
biBDUExMIC0+IFZPUDBfRElWCj4gPiAtPiBEQ0xLX1ZPUDBfRlJBQyAtPiBEQ0xLX1ZPUDAuCj4g
PiAKPiA+IEZyYWN0aW9uYWwgY2xvY2tzIHJlcXVpcmUgMjB4IGRpZmZlcmVuY2UgYmV0d2VlbiBp
bnB1dCBhbmQgb3V0cHV0IHJhdGVzLCBhbmQKPiA+IENQTEwgaXMgODAwTWh6IElJUkMsIHdoaWxl
IHlvdSByZXF1aXJlIDc0LjI1TUh6IERDTEssIHNvIHRoaXMgd2lsbCBub3Qgd29yawo+ID4gY29y
cmVjdGx5Lgo+ID4gCj4gPiBFdmVuIGlmIHRoaXMgc29tZWhvdyB3b3JrcyBieSBmcmFjdGlvbmFs
IGNsb2NrIGJlaW5nIGJ5cGFzc2VkLCBJIGRpZCBub3QgZGVzaWduCj4gPiB0aGUgcGFuZWwgbW9k
ZSB0byBiZSB1c2VkIHdpdGggQ1BMTCdzIDgwMCBNSHosIGJ1dCB3aXRoIEdQTEwgZnJlcXVlY3kg
b2YgNTk0IE1Iei4KPiA+IAo+ID4gR1BMTCA1OTQvNzQuMjUgPSA4ICAoaW50ZWdyYWwgZGl2aWRl
ciB3aXRob3V0IHRoZSBuZWVkIGZvciBmcmFjdGlvbmFsIGNsb2NrKQo+ID4gQ1BMTCA4MDAvNzQu
MjUgPSB+MTAuNzc0NDEwNzc0NDEwNzc0NDEwNzcKPiA+IAo+ID4gSWYgeW91IHJlYWxseSB3YW50
IHRvIHVzZSBmcmFjdGlvbmFsIGNsb2NrLCB5b3UnZCBuZWVkIHRvIHBhcmVudCBpdCB0byBWUExM
Cj4gPiBhbmQgc2V0IFZQTEwgcmVhbGx5IGhpZ2gsIGxpa2UgY2xvc2UgdG8gMkdIei4KPiA+Cj4g
Cj4gVGhhbmtzIGZvciB0aGUgZXhwbGFuYXRpb24uIFRoZW4gSSBqdXN0IG5lZWQgdG8gc3F1YXNo
IG9uIHRvcCBvZiB0aGlzLCB0aGUKPiBmb2xsb3dpbmcgcGF0Y2guIElzIHRoYXQgY29ycmVjdD8K
PiAKPiBodHRwczovL2dpdGh1Yi5jb20vbWVnb3VzL2xpbnV4L2NvbW1pdC9mMTljZTdiYjdkNzIK
ClllcywgYW5kIHRlc3QgdGhlIGRyaXZlciBtb3JlIHRob3JvdWdobHk6CgotIGxvb2sgYXQgY2xr
X3N1bW1hcnkgdG8gdmVyaWZ5IGNsb2NrIHJhdGUgdGhlIGtlcm5lbCB0aGlua3MgaXQncyB1c2lu
ZwotIHRlc3QgcmVmcmVzaCByYXRlLCBzb21laG93LCB0byBhZ2FpbiB2ZXJpZnkgdGhlIGFjdHVh
bCBjbG9jayByYXRlIChrZXJuZWwgY2FuCiAgbGllIGluIGRlYnVnZnMpCi0gdGVzdCBwb3dlciBj
eWNsaW5nIHRoZSBwYW5lbCAoZWcuIHZpYSBzeXN0ZW0gc3VzcGVuZC9yZXN1bWUgb3Igb3RoZXIg
bWVhbnMpCgp0aGFuayB5b3UgYW5kIGtpbmQgcmVnYXJkcywKCW8uCgo+IC0tIAo+IEJlc3QgcmVn
YXJkcywKPiAKPiBKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMKPiBDb3JlIFBsYXRmb3Jtcwo+IFJl
ZCBIYXQKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
