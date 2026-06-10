Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFBFDCD8CB9
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 10:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pE/pIaySwt2ZuK3OVedYJeZKKMoIc0RKGi5O15R9Cmc=; b=Qy1qlp3DoGfaEt
	W7D/+9NkL4VZuodhumjWAlLQWUOIzZ9UxKtvpE415aJRUhHV0u2Z9x63pay6hjKFWQw3GqHLkr6vF
	IA80cq6/0zqTn1E7rtIp9T+ZuZyFdaaYmX+/GZ8aG1W36LDHTvfKmipWcooUgHW37gc1aGkRzZxJB
	BYWKcJnjRr6DsHRzBGbE5aoUUcniAJM7MA/87crptFj2bTMQ5tcVxwMOIi6I+sQt3IbBDFZR6vkNc
	6/WCzOhso5Qc2v+7FaED6jl8vnDO46ca/B128AH0U4jqqXbBEWl0q6IT/HF2kDx1bKBzXjJzp2IsW
	+mHBrCjV2dNNf0IEHjfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXG4M-00000007Nq3-0yHA;
	Wed, 10 Jun 2026 10:21:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXG4J-00000007NoC-2oCP
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jun 2026 10:21:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=W1xAQ3kxXWEPxj+qDrh+a29AP/hJ8tSPkUteLT00sjA=; b=NBbmW+NbmS3pkIic+2TuPDqcoo
	t2jUBrBIgVIx6LJ8uC9jB9//B/SrpqbhMSLq+LUbvWvy7fGD/JTWiubTYAqoq5s21K85bVvQ1iY98
	lNRl9Fb9Q02gwBrCs5wKnYoCcQsorqPmobTs4tCS1FHfQ0dTNfI0Xsv5Vhb29OscdaSIhvjDfGGDw
	FA4njdisxO4Ym2HEofLetBXTvVX4UYZNEGffSqgqZ7yfEZ8+4xR7wKOUw72J25jrm4GWJLTUlGZjr
	1lKz89WxeufpcbkmlXxZ0yWMXsijMMvsGkzxXwo10SACxDaC/wabpw+1jVEnMuiNGnC8ac757E2aj
	D28giIvQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Oren Klopfer <oklopfer37@gmail.com>, linux-rockchip@lists.infradead.org,
 Thorsten Leemhuis <regressions@leemhuis.info>
Cc: regressions@lists.linux.dev, pbrobinson@gmail.com, guptarud@gmail.com,
 megi@xff.cz
Subject: Re: [REGRESSION][BISECTED] wireless networking broken on Pinephone Pro
Date: Wed, 10 Jun 2026 12:21:50 +0200
Message-ID: <3761289.R56niFO833@diego>
In-Reply-To: <b68dc2ab-ab54-435f-a4e5-05b1b8397505@leemhuis.info>
References: <20260607225901.64019-1-oklopfer37@gmail.com>
 <b68dc2ab-ab54-435f-a4e5-05b1b8397505@leemhuis.info>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_032155_774284_1A391DF1 
X-CRM114-Status: GOOD (  21.16  )
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

QW0gTWl0dHdvY2gsIDEwLiBKdW5pIDIwMjYsIDExOjI4OjAzIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgVGhvcnN0ZW4gTGVlbWh1aXM6Cj4gT24gNi84LzI2IDAwOjU5LCBP
cmVuIEtsb3BmZXIgd3JvdGU6Cj4gPiBBcG9sb2dpZXMgaWYgdGhpcyBpcyBub3QgZm9ybWF0dGVk
IHByb3Blcmx5LCB0aGlzIGlzIG15IGZpcnN0Cj4gPiBzdWJtaXNzaW9uIHRvIHRoZSBrZXJuZWwg
bWFpbGluZyBsaXN0LiBXaUZpIHNwZWNpZmljYXRpb25zIHdlcmUKPiA+IGludHJvZHVjZWQgaW50
byB0aGUgUGluZXBob25lIFBybyBkZXZpY2UgdHJlZSBpbgo+ID4gMDk2YmQ4YzY3OTE4NWY4OThj
YWU5OTMzYzZhNjg2NTBmYTI2ZWE0ZiwgYnV0IHRoaXMgY2F1c2VzIGNvbXBsZXRlCj4gPiBuZXR3
b3JraW5nIGZhaWx1cmUgb24gc29tZSBkZXZpY2VzLiBUaGUgcmVncmVzc2lvbiBhZmZlY3RzIGFs
bAo+ID4gdmVyc2lvbnMgdjYuMTgtcmMxLi52Ny4xLXJjNi4KPiA+IAo+ID4gQW4gaWRlbnRpY2Fs
IGlzc3VlIHdhcyByZXBvcnRlZCBmb3IgdGhlIFBpbmVib29rIFBybyBhdCBodHRwczovLwo+ID4g
bG9yZS5rZXJuZWwub3JnL2FsbC9hVUtPbGotUnZUWWxycGlTQHJvY2suZ3J6YWRrYS87IHRoZSBy
ZWdyZXNzaW9uCj4gPiB3YXMgcmV2ZXJ0ZWQgaW4gMjlkMWY1NmM0ZjMwMDFiN2Y1NDcxMjNlMGEz
MDdjMDA5YWM3MTdmOC4gVGhlIGVycm9ycwo+ID4gZmFjZWQgb24gdGhlIFBpbmVwaG9uZSBQcm8g
YXJlIGV4YWN0bHkgdGhlIHNhbWUgYXMgd2VyZSByZXBvcnRlZCBmb3IKPiA+IHRoZSBQaW5lYm9v
ayBQcm8gcmVncmVzc2lvbi4KPiA+IAo+ID4gQSBwcmV2aW91cyBwYXRjaCBhdCBodHRwczovL2xv
cmUua2VybmVsLm9yZy9hbGwvMjAyNjAxMTItCj4gPiBwcHBfY29ubmVjdGl2aXR5LXYxLTMtMjg0
ZDZlODNiMjEyQGdtYWlsLmNvbS8gYXR0ZW1wdGVkIHRvIHJlc29sdmUKPiA+IHRoaXMgaXNzdWUg
YnV0IG5ldmVyIGVuZGVkIHVwIGJlaW5nIG1lcmdlZC4KPiA+IAo+ID4gMDk2YmQ4YzY3OTE4NWY4
OThjYWU5OTMzYzZhNjg2NTBmYTI2ZWE0ZiBpcyB0aGUgZmlyc3QgYmFkIGNvbW1pdAo+ID4gY29t
bWl0IDA5NmJkOGM2NzkxODVmODk4Y2FlOTkzM2M2YTY4NjUwZmEyNmVhNGYKPiA+IEF1dGhvcjog
UGV0ZXIgUm9iaW5zb24gPHBicm9iaW5zb25AZ21haWwuY29tPgo+ID4gRGF0ZTogICBGcmkgQXVn
IDI5IDEyOjM4OjI0IDIwMjUgKzAxMDAKPiA+IAo+ID4gICAgIGFybTY0OiBkdHM6IHJvY2tjaGlw
OiBGdXJ0aGVyIGRlc2NyaWJlIHRoZSBXaUZpIGZvciB0aGUgUGluZXBob25lIFBybwo+ID4gWy4u
Ll0KPiA+IAo+ID4gUmV2ZXJ0aW5nIHRoZSBjb21taXQgYWxsb3dzIHdpcmVsZXNzIGNvbm5lY3Rp
b24gdG8gZnVuY3Rpb24gYWdhaW4uIEkKPiA+IGFtIG5vdCByZWFsbHkgZmFtaWxpYXIgd2l0aCB0
aGUgcHJvY2VzcyBvZiBzdWJtaXR0aW5nIGEgcmV2ZXJ0Cj4gPiBwYXRjaCwgYnV0IEknZCByZXF1
ZXN0IHRoYXQgdGhpcyBiZSBkb25lIG9uIGFsbCBvZiA2LjE4IChMVFMpLCA3LjAKPiA+IChTdGFi
bGUpLCA3LjEgKE1haW5saW5lKS4gVGhhbmtzIQo+IFRoeCBmb3IgdGhlIHJlcG9ydC4gU291bmRz
IGxpa2UgYSByZXZlcnQgaXMgdGhlIHJpZ2h0IGNvdXJzZSBvZiBhY3Rpb24KPiBoZXJlLiBDb3Vs
ZCB5b3Ugc3VibWl0IG9uZSB3aXRoIGEgc3RhYmxlIHRhZyB0byBlbnN1cmUgYmFja3BvcnRpbmc/
IFRoYXQKPiBtaWdodCBiZSB0aGUgZmFzdGVzdCB3YXkgdG8gcmVzb2x2ZSB0aGlzLCBhcyB0aGF0
IG1ha2VzIGl0IGVhc3kgdG8KPiBwcm9jZXNzIGZvciB0aGUgbWFpbnRhaW5lcnMgdG8gcHJvY2Vz
cyB0aGlzLgoKV2FzIGNvbmZ1c2VkIGZvciBsaWtlIDUgbWludXRlcyBiZWNhdXNlICJkaWRuJ3Qg
d2UgZG8gdGhhdCBqdXN0IHJlY2VudGx5IiwKdW50aWwgcmVhbGl6aW5nLCB0aGF0IGl0J3MgdGhl
IFBpbmVwaG9uZSB0aGlzIHRpbWUsIG5vdCB0aGUgUGluZWJvb2suCgpTbyB3ZSdkIG5lZWQgYSBz
aW1pbGFyIG9uZSB0bwpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVs
L2dpdC9zb2Mvc29jLmdpdC9jb21taXQvP2g9Zm9yLW5leHQmaWQ9MjlkMWY1NmM0ZjMwMDFiN2Y1
NDcxMjNlMGEzMDdjMDA5YWM3MTdmOAoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
