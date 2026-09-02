Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69584C61DD6
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2026 10:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJv9uYYjlMt/RfRwRq+jNQNdcq89ch4AuAMFAzepds8=; b=ncVJ10jZRfTKZs
	iZ1pn4mBNZ7NfHekrr3tSiJYgFDSS7bKYMsoCnXmBkaTufmVLNvCRGCbMtSrqB0HFMF8zSAtuJJJ0
	+tm5V3K5Pxf1oQ91F9BoRxe5V/E8PcbnhVMLsGsEAK7NeOclh90p/r7sHJIuSePElgsI6E0IM8bNw
	RbtidRRdPAcvJQmIZTqMEi4WciBOwj/VfhjK/AM3eec8WhqzxXygo2MGzHLM3LsOqNWpw27BAOmUJ
	FeaHVw5Iaw6jJ8XBKeILaY4kWMkmazaMXqp4g7DNkdwRQIvPb5k/Pg4Ma0ma2xXkkkkNnC175kW1a
	3tC/KqJDJAL6zz00ry2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1i2E-0000000EKAj-1oF9;
	Wed, 02 Sep 2026 10:17:38 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1i2A-0000000EK9v-3UUK
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Sep 2026 10:17:36 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id F34DB1A1950;
	Wed,  2 Sep 2026 10:17:32 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id C50196053C;
	Wed,  2 Sep 2026 10:17:32 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C45FA11C79340;
	Wed,  2 Sep 2026 12:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1788344247; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=aGdN2UjN2hke+3EUIE2BMe8wlc88G/++lGdHQipHA0o=;
	b=A63GuMXetukibemYG47lx5bU87mEh432g1k0HLhRwhiCKPEQbkCH4l3fyG8CRT1PFYRJj/
	pQH5rHmlpUuhGnxmHT5l4Fb2Bf2E3qrUzfNRDLeL9YN5raFI6wzwDlFROrLiB76VNBXDOJ
	FUkAOdmpTVFCMV+UbNGXUVIQRZI/wrcYaWz4z5CI2ghST2Gn/e34PQRuEsRsm5J4hOvfQh
	ScutLTjTLWc4xrFKDA4XBnirYGPIAHmu+Ev0gxsSywJUk6WJxA4/RHfFt59bPAoXQDkGrS
	5Jp2UkhpDZz2QIe/idUmeim2YtjSKKLzS6bworBKo0TXMZkKEKaSPAnTkzVeWg==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Alexey Charkov <alchark@flipper.net>
Cc: Srinivas Kandagatla <srini@kernel.org>,  Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>,  Heiko Stuebner <heiko@sntech.de>,  Michael Walle
 <michael@walle.cc>,  Finley Xiao <finley.xiao@rock-chips.com>,  Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org,  linux-rockchip@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org,  stable@vger.kernel.org
Subject: Re: [PATCH 1/4] nvmem: rockchip-otp: Serialize reads
In-Reply-To: <CAKTNdwH5S3MxgR=5s2LXPquCFRXE-61LTTsZoHP9+YmXo_P4Ag@mail.gmail.com>
	(Alexey Charkov's message of "Wed, 2 Sep 2026 13:24:00 +0400")
References: <20260901-rk3576-otp-cpuid-mac-v1-0-ea9135270fc2@flipper.net>
	<20260901-rk3576-otp-cpuid-mac-v1-1-ea9135270fc2@flipper.net>
	<87ecfc81e9.fsf@bootlin.com>
	<CAKTNdwH5S3MxgR=5s2LXPquCFRXE-61LTTsZoHP9+YmXo_P4Ag@mail.gmail.com>
User-Agent: mu4e 1.12.12; emacs 30.2
Date: Wed, 02 Sep 2026 12:17:24 +0200
Message-ID: <87y0dk6jpn.fsf@bootlin.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_031735_013303_97490C7A 
X-CRM114-Status: GOOD (  18.10  )
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

T24gMDIvMDkvMjAyNiBhdCAxMzoyNDowMCArMDQsIEFsZXhleSBDaGFya292IDxhbGNoYXJrQGZs
aXBwZXIubmV0PiB3cm90ZToKCj4gT24gV2VkLCBTZXAgMiwgMjAyNiBhdCAxOjEw4oCvUE0gTWlx
dWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIDAx
LzA5LzIwMjYgYXQgMTk6MzM6MTEgKzA0LCBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BmbGlwcGVy
Lm5ldD4gd3JvdGU6Cj4+Cj4+ID4gVGhlIE9UUCBjb250cm9sbGVyIGlzIGRyaXZlbiB0aHJvdWdo
IGEgc2luZ2xlIHNldCBvZiByZWdpc3RlcnMgaG9sZGluZyBhCj4+ID4gc3RhdGUgbWFjaGluZSB3
aGljaCBoYXMgdG8gYmUgc3RlcHBlZCB0aHJvdWdoIGZvciBldmVyeSB3b3JkIHJlYWQsIHlldAo+
PiA+IG5vdGhpbmcga2VlcHMgdHdvIHJlYWRlcnMgb3V0IG9mIGVhY2ggb3RoZXIncyB3YXkuIENv
bmN1cnJlbnQgcmVhZHMKPj4gPiBpbnRlcmxlYXZlLCBhbmQgdGhlIG91dGNvbWUgaXMgZWl0aGVy
IGEgcmVhZGVyIGJhaWxpbmcgb3V0Ogo+PiA+Cj4+ID4gICByb2NrY2hpcC1vdHAgMmE1ODAwMDAu
b3RwOiB0aW1lb3V0IGR1cmluZyByZWFkIHNldHVwCj4+ID4KPj4gPiBvciwgd29yc2UsIG9uZSBv
ZiB0aGVtIHNpbGVudGx5IHRha2luZyBkZWxpdmVyeSBvZiB0aGUgb3RoZXIncyBkYXRhLgo+PiA+
Cj4+ID4gUmVhZGluZyB0d28gY2VsbHMgaW4gcGFyYWxsZWwgZnJvbSB1c2Vyc3BhY2Ugb24gUksz
NTc2IHJlcHJvZHVjZXMgYm90aAo+PiA+IHdpdGhpbiAxNTAgaXRlcmF0aW9ucyAtIDUzIHJlYWQg
ZXJyb3JzIGFuZCA5IGNvcnJ1cHRlZCByZXN1bHRzLCB0aGUgbGF0dGVyCj4+ID4gZWl0aGVyIGxv
c2luZyB0aGVpciBmaXJzdCB3b3JkIG9yLCBpbiBvbmUgY2FzZSwgZW5kaW5nIGluIHRoZSB0d28g
Ynl0ZXMKPj4gPiB3aGljaCBiZWxvbmcgdG8gdGhlIG90aGVyIHJlYWRlcidzIGNlbGwgLSB3aGVy
ZWFzIHRoZSBzYW1lIHJlYWRzIGlzc3VlZAo+PiA+IHNlcXVlbnRpYWxseSBuZXZlciBmYWlsLiBD
b25jdXJyZW5jeSBpcyBub3QgaHlwb3RoZXRpY2FsIGhlcmUsIGFzIHNpeAo+PiA+IHRoZXJtYWwg
c2Vuc29ycyBzb3VyY2UgdGhlaXIgdHJpbSB2YWx1ZXMgZnJvbSB0aGUgT1RQIGFuZCByZWFjaCB0
aGUgZHJpdmVyCj4+ID4gc3RyYWlnaHQgZnJvbSBhc3luY2hyb25vdXMgZHJpdmVyIHByb2Jpbmcu
Cj4+ID4KPj4gPiBHdWFyZCB0aGUgcmVhZCBwYXRoIHdpdGggYSBtdXRleC4gUmVhZHMgYXJlIHRo
ZSBvbmx5IHdheSBpbnRvIHRoZSBoYXJkd2FyZSwKPj4gPiBhcyB0aGUgZHJpdmVyIHJlZ2lzdGVy
cyBubyB3cml0ZSBjYWxsYmFjaywgYW5kIHRoZXkgYWx3YXlzIHJ1biBpbiBwcm9jZXNzCj4+ID4g
Y29udGV4dCwgc28gYSBwbGFpbiBtdXRleCBzcGFubmluZyB0aGUgd2hvbGUgY2xvY2stZW5hYmxl
LCByZWFkLAo+PiA+IGNsb2NrLWRpc2FibGUgc2VxdWVuY2UgaXMgZW5vdWdoLgo+PiA+Cj4+ID4g
Rml4ZXM6IDc1NTg2NGZlYjcyOSAoIm52bWVtOiBhZGQgUm9ja2NoaXAgT1RQIGRyaXZlciIpCj4+
ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPj4gPiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkg
Q2hhcmtvdiA8YWxjaGFya0BmbGlwcGVyLm5ldD4KPj4KPj4gUmV2aWV3ZWQtYnk6IE1pcXVlbCBS
YXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+Cj4KPiBUaGFua3MgZm9yIHlvdXIgcmV2
aWV3IE1pcXVlbCEKPgo+IFNhc2hpa28gY29tcGxhaW5lZCBhYm91dCBtaXhpbmcgYSBzY29wZS1i
YXNlZCBndWFyZCBpbnRvIGEgZnVuY3Rpb24KPiB3aXRoIGdvdG8tYmFzZWQgZXJyb3IgaGFuZGxp
bmcsIHNvIEkgYW0gcmVwbGFjaW5nIHRoZSBndWFyZChtdXRleCkKPiB3aXRoIGV4cGxpY2l0IGxv
Y2sgYW5kIHVubG9jayBjYWxscyBmb3IgdjIuIFRoZXJlIHdvbid0IGJlIGFueQo+IHNlbWFudGlj
IGNoYW5nZSB0aG91Z2gsIHNvIGlmIHlvdSBkb24ndCBtaW5kIEknZCBsaWtlIHRvIGNhcnJ5IHlv
dXIKPiB0YWcgaW50byB0aGUgdjIgdmVyc2lvbi4KCk9mIGNvdXJzZS4KCkkgaGF2ZW4ndCBzZWVu
IFNhc2hpa28ncyBhbnN3ZXIgYnV0IGlzbid0IHRoZSBnb2FsIG9mIGd1YXJkcyB0byBqdXN0IGJl
CnJlbGVhc2VkIHdoYXRldmVyIHRoZSBhY3R1YWwgcmV0dXJuIHBhdGg/CgpUaGFua3MsCk1pcXXD
qGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
