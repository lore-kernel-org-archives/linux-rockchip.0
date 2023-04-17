Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0CD4C77B72
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 12:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9YMzEzFdhLFp2YkvPS1exdcHtrwvmKDdWS3mdUMwNSc=; b=dkWPafCfqLPLgj
	W7SMWFDo5kNDp2vAoR2fgX+hmsJmY5xSA6wILQPS/ZhZF3QqNk6nPRiMcNmPCov76b6azRsZmzOrH
	fydnlp//WuXvu4lJcQnii9Wi3NjP189zmA3fr9ExkfflcK7gcfUAeXO4f1kbe/C6ykJVriTzJsITh
	cFJUbc+BSFyq5zVqpuN0Sv9O+NNHrMfZBT9iKqe+uld4uSDhyp42GZeKXkIhVC4n9DCNTpb/nI2hn
	wIkfhu+e13kUEDiPaOK36SlWJDEatITFhS47TGminxu0QT8+h4mtaY4Ag4zuwvagDXpBLGvhkDlVX
	k2dKUapo6M7fdVyq3+UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poO6r-00GA2j-0R;
	Mon, 17 Apr 2023 12:37:29 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poO6m-00GA1B-2B;
	Mon, 17 Apr 2023 12:37:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1681735036; bh=gJesLtiDnccwIC0RA7jikU/NZ0vOLBaI0EL8Y7OHrAI=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=SKQOE09xi6VRiW3rlypNrv35XlLjZcT1LxzPDOJaBEQcesmiGmOqr67+WxIoTRmZu
	 NubFRUhbrg8yv0kIQWVlY5mn1HUL+NGM34mBpLBiH7bwGgbCaOr6VPJHtxKI6UQXxS
	 U3rc5iLWiNyqO0OKKDbwpyQBbfDzFmcyNfiYcE6s=
Date: Mon, 17 Apr 2023 14:37:16 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Peter Robinson <pbrobinson@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Martijn Braam <martijn@brixit.nl>,
	Caleb Connolly <kc@postmarketos.org>,
	Jarrah Gosbell <kernel@undef.tools>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rk3399-pinephone-pro: Add support for volume
 keys
Message-ID: <20230417123716.c23izju4ezjrzytn@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	Peter Robinson <pbrobinson@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Martijn Braam <martijn@brixit.nl>,
	Caleb Connolly <kc@postmarketos.org>,
	Jarrah Gosbell <kernel@undef.tools>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20230405123813.2272919-1-pbrobinson@gmail.com>
 <20230405135339.bcdyjdbtynuwf5yz@core>
 <4152389.RUnXabflUD@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4152389.RUnXabflUD@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_053725_199151_D025CB67 
X-CRM114-Status: GOOD (  19.95  )
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

SGVsbG8gSGVpa28sCgpPbiBNb24sIEFwciAxNywgMjAyMyBhdCAxMDozNDoyMEFNICswMjAwLCBI
ZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBIaSBQZXRlciwgT25kcmVqLAo+IAo+IEFtIE1pdHR3b2No
LCA1LiBBcHJpbCAyMDIzLCAxNTo1MzozOSBDRVNUIHNjaHJpZWIgT25kxZllaiBKaXJtYW46Cj4g
PiBbLi4uXQo+ID4KPiA+IChJIGhhdmUgdG8gcHJlc3MgcXVpdGUgaGFyZCB0byBnZXQgYmVsbG93
IDMwMCBhbmQgdG8gZ2V0IHJlbGlhYmxlIGRldGVjdGlvbgo+ID4gb2Ygdm9sdW1lIGRvd24ga2V5
IHByZXNzKQo+ID4gCj4gPiBPbiBkZXZlbG9wbWVudCB2ZXJzaW9uIG9mIHRoZSBwaG9uZSwgdGhl
IHZhbHVlIHJldHVybmVkIGJ5IHNhcmRhYyBpcyBsZXNzCj4gPiB2YXJpYWJsZS4gQmFzaWNhbGx5
IGVpdGhlciAyOTguODI4MTI1IG9yIDMwMC41ODU5Mzc1IGJ1dCBpdCdzIGFsc28gb24KPiA+IHRo
ZSBlZGdlLgo+ID4gCj4gPiBJIHN1Z2dlc3QgcmFpc2luZyB0aGUgdGhyZXNob2xkIHRvIHNvbWV0
aGluZyBsaWtlIDYwMCBhbmQgdG8gZG8geW91ciBvd24KPiA+IHRlc3RpbmcsIHRvIGdldCBtb3Jl
IGRhdGEgcG9pbnRzLiBVbnByZXNzZWQgdmFsdWUgaXMgfjE3OTEuMjEwOTM3NSBvbiBib3RoCj4g
PiBwaG9uZXMsIHNvIDQwMCBzdGlsbCBnZXRzIGEgbG90IG9mIGhlYWRyb29tLiBBbmQgdm9sdW1l
IHVwIGlzIGFsd2F5cyA8IDE1Cj4gPiBpbiBteSB0ZXN0cy4KPiAKPiBkaWQgdGhpcyBnZXQgbW9y
ZSBhdHRlbnRpb24gbWVhbndoaWxlPwo+IAo+IEkgZG9uJ3QgaGF2ZSBhIFBpbmVwaG9uZSBQcm8g
bXlzZWxmLCBzbyB5b3UnbGwgbmVlZCB0byBkZWNpZGUgYmV0d2VlbiB5b3UKPiBhYm91dCB0aGUg
dmFsdWUgYW5kIHRoZSBjb25jZXJuIE9uZHJlaiByYWlzZWQgaGVyZSBmb3IgdGhlIHZhbHVlLgoK
SXQncyBzYWZlIGFuZCBuZWVkZWQgdG8gdXNlIGEgaGlnaGVyIHZhbHVlLgoKU0FSIEFEQyBpbnB1
dCBpcyBwdWxsZWQgaGlnaCB0byAxLjhWIHVubGVzcyBzb21lIGtleSBpcyBwcmVzc2VkLCBzbyB1
bnByZXNzZWQKdmFsdWUgd2lsbCBhbHdheXMgYmUgYXJvdW5kIDE4MDAgb24gYWxsIFBpbmVwaG9u
ZXMsIGFuZCBwcmVzc2VkIHZhbHVlIHdpbGwKZGVwZW5kIG9uIGNvbnRhY3QgcXVhbGl0eSBhbmQg
dG9sZXJhbmNlcy4gRm9yIHZvbHVtZSBkb3duLCBTQVIgQURDIGlucHV0IGlzIGZlZApmcm9tIGEg
cmVzaXN0b3IgZGl2aWRlciBvZiAoMTBrT2htICsgMmtPaG0pIGZyb20gMS44ViBwb3dlciByYWls
LiBTbyB0aGF0IGdpdmVzCjIvMTIqMS44ID0gMC4zVi4gV2UgY2FuJ3QgaGF2ZSB0aGUgcHJlc3Mg
ZGV0ZWN0aW9uIHRocmVzaG9sZCByaWdodCBhdCB0aGlzCnZvbHRhZ2UsIGJlY2F1c2U6CgoxKSB0
aGVzZSByZXNpc3RvcnMgaGF2ZSB0b2xlcmFuY2VzIHRoYXQgd2lsbCByYW5kb21seSByZXN1bHQg
aW4gbWVhc3VyZWQgdm9sdGFnZQogICBiZWluZyBhYm92ZSBvciBiZWxvdyB0aGUgMC4zViBvbiBy
ZWFsIGRldmljZXMgKC0xJSBvbiAxMGsgYW5kICsxJSBvbiAyayA9CiAgIDIqMS4wMS8oMTAqMC45
OSsyKjEuMDEpKjEuOCA9IDMwNSBtViAtIGFscmVhZHkgdG9vIGhpZ2ggZXZlbiB3aXRob3V0CiAg
IGNvbnNpZGVyaW5nIHN3aXRjaCBjb250YWN0IHF1YWxpdHkpLCBhbmQKCjIpIHRob3NlIHBpZGRs
eSBtZW1icmFuZSBzd2l0Y2hlcyBhcHBhcmVudGx5IGhhdmUgdGhlaXIgb3duIHJhbmRvbSByZXNp
c3RhbmNlCiAgIHRoYXQgaXMgYWRkZWQgdG8gdGhlIGJvdHRvbSBsZWcgb2YgdGhlIHJlc2lzdG9y
IGRpdmlkZXIsIGFuZCBkZXBlbmRzIG9uCiAgIHN0cmVuZ2h0IG9mIHRoZSBwcmVzcyBvbiBzb21l
IGRldmljZXMgKGFuZCBzd2l0Y2hlcyBtYXkgZGV2ZWxvcCBoaWdoZXIKICAgcmVzaXN0YW5jZSB3
aXRoIGFnZS91c2UpLgoKU2NoZW1hdGljOiBodHRwczovL21lZ291cy5jb20vZGwvdG1wLzExMjVk
OTI0OGE4MjEzYjMucG5nCgpraW5kIHJlZ2FyZHMsCglvLgoKPiBUaGFua3MKPiBIZWlrbwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
