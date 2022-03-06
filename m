Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00C60C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Mar 2022 10:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XqIcd2tBxLsE9dbjST3breWyKWJGZMpqByIIL2Ohm/4=; b=g5KlrRoPVUezQt
	2L2wfsmVBlGrjo9eNQKtrESQn+6YOtYiSKhKV+TNWXUZWD5fZrFAHd1NNiel4mQAPUOHjJTSSFpIo
	XnA9IpayE09yTzahB4Cjmfg1J8gqaekznqgCRKOZIL19PEmy+FKBckpSDwaLbVCu1XKvJxbG4itsA
	reGiNXrs6VxbGA44IRuyDxJqn2oYJlwnQVLjUWuJ1MJotgYM3FdDElChYKGPNn7OdoaLFVaCx+nIU
	aRs4U2YTbZZBmRYhaxT8AWoUgEbkWq9XPqFEd1aOm3jMTRkMWxeI9MV/lbnIh5lAhuTq6GgZD3TWn
	Hl5QJ5w2hLUKnYRr40Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQoLM-00ESNQ-MN; Sun, 06 Mar 2022 10:42:28 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQoLI-00ESMg-Tz; Sun, 06 Mar 2022 10:42:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1646563315;
 bh=2ZtldoCcuDm+WbdqpxXJgLAgo6KQApSmcxb/CajybcM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=TVnst9cFRbrhq87YlUQPtG/880b2437Wgz+hR0tawgTZHMzRYxBKO4IHJoPwPAGd2
 8iEZJBOZOi1SkfqH5xhMgAB6/dLeRomTlRRBApwSUltS9M+Qn++eDLpg+Jjh4o20kB
 W3STv5tn+Z3pJztwwSPGsMqxmMsiZmFc+o9U9BcU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.145.243] ([217.61.145.243]) by web-mail.gmx.net
 (3c-app-gmx-bs46.server.lan [172.19.170.98]) (via HTTP); Sun, 6 Mar 2022
 11:41:55 +0100
MIME-Version: 1.0
Message-ID: <trinity-d42352e1-d778-40dd-9464-90a145653f74-1646563315484@3c-app-gmx-bs46>
From: Frank Wunderlich <frank-w@public-files.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org, Damien
 Le Moal <damien.lemoal@opensource.wdc.com>, Rob Herring
 <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Gregory Clement
 <gregory.clement@bootlin.com>, Sebastian Hesselbarth
 <sebastian.hesselbarth@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>, Michael
 Riesch <michael.riesch@wolfvision.net>, Hans de Goede
 <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Aw: Re:  Re: [PATCH v5 1/5] dt-bindings: ata: ahci-platform:
 Convert DT bindings to yaml
Date: Sun, 6 Mar 2022 11:41:55 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <b8553651-3cd0-845c-efbf-d2341d5506b3@canonical.com>
References: <20220305112607.257734-1-linux@fw-web.de>
 <20220305112607.257734-2-linux@fw-web.de>
 <a2839b00-d195-131f-b2a7-d2f030a5bd95@canonical.com>
 <trinity-9ef9e0d3-e70c-45d9-bdd8-e43d1c89a8c9-1646560070497@3c-app-gmx-bs46>
 <b8553651-3cd0-845c-efbf-d2341d5506b3@canonical.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:IgvBmzu90ZoZyUnCcz2HIgCPmRbPZNduuH/gVpl4arVQkah6Gb393hXzknNf47A6FD5Kk
 lVZVaUUsnMdOjM+0UP9GsDOGxHcSuagdMLks5xj1ESPWZGoe6unK9Cftuz5YsJCq7MgStOwYOn6b
 itdMhATol7lHJo1iJ2uLzJd96E1JbyWc6v3Prhkq7Pokh8WrNnrWg20LVHUo0MIyxbhIgrsdDs85
 jv8/WNk//9Qns2Or42EAQ+4qtscGkgidXpQYgztmvEPueR1GnVlFDhckpYU99OQhmUqcNs90dKmX
 I4=
X-UI-Out-Filterresults: notjunk:1;V03:K0:SDYmm5A0j74=:ar+rov1pSfJOh5XSZpkgDx
 vDTBNscaWQyXvDE9R7NHwOjrq3gR9A+jGU680w9yw9HTtn1R/xEXud8fJG4w/zhoPy2+1rYnE
 HvV3bDdCyj34vWXznxOCIW//U+TL6vPM/lTq+IIBFPqvoZEP0KopHTwydNfGHPUhklpGsbiWY
 16MVEF4gJtNziWBcUpOUI72Bl4oJrKuLX36m1MbjjgJXkXq0QTBJpsuBqn1bpwMT1Des1KhdL
 tvYI3sTD2bdpOZDY+/x5pauglpiDG+eMi0lH+iq5xm8vNRC3mtH8iDyMrMoNb9AVaiOWTdnVS
 +0LiBsrj/dAEN5AqDvqsjpZMoLLPFBpTlv4aAFgr7pSLQz6ee3B2KjmidTtudd1bbDN8gyJgd
 XWlssn1ucEB0mx2h5QEQZoEbIfw5KJ2Ujr3rf57r7kZ5rAGpI80Zkv7//3CpgRvdr/VkmsEba
 G/8abntHgPGaGH0pdpY8nUPUk+r0qFOFqYxPflH8p0fdWB9N7Oz+bK+kHX8AWBkoebpDD3f6q
 4LcpGynTXdLkAH2Zxt4oRcbGY+qjX1tetqg9QAlLfB1Y+3P3Zo2drJ2B5K8gxATrStJlaHBTF
 /5o1kO+dFSPPzI+6trkHuPalGz3/VnPFNz7tspKpF28YKKxnT13TB1iKlevXgltNrerWbshl0
 M85LrajLNBfSEhYibiqbHZetpjoJq+Epp7ALSgexsEqHwKPoJqGBRe+tt0HnNb1kwBBiFkZ6f
 pS1rIcwGB9rDlTJa2syFp9ocPE1t8wE9EoYaqB6JCRf8zxqsoAMTysgOSu+ac/qHi7fDZpYDN
 sMIWPVj
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220306_024225_310226_F702D3F6 
X-CRM114-Status: GOOD (  17.06  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

PiBHZXNlbmRldDogU29ubnRhZywgMDYuIE3DpHJ6IDIwMjIgdW0gMTE6MjcgVWhyCj4gVm9uOiAi
S3J6eXN6dG9mIEtvemxvd3NraSIgPGtyenlzenRvZi5rb3psb3dza2lAY2Fub25pY2FsLmNvbT4K
PiA+ICAgICBhZGQgY29tcGF0aWJsZXMgdXNlZCB0b2dldGhlciB3aXRoIGdlbmVyaWMtYWhjaQo+
ID4gICAgICAgLSBtYXJ2ZWxsLGJlcmxpbjItYWhjaQo+IAo+IFRoaXMgaXMgZmluZSwganVzdCBt
ZW50aW9uIGl0IGluIGNvbW1pdCBtc2cuCj4gCj4gPiAgICAgICAtIHFjb20sYXBxODA2NC1haGNp
Cj4gPiAgICAgICAtIHFjb20saXBxODA2eC1haGNpCj4gCj4gVGhlc2UgeW91IG5lZWQgdG8gY29u
c3VsdCB3aXRoIHFjb20tc2F0YS50eHQuIFRoaXMgY291bGQgYmUgYSBmb2xsb3dpbmcKPiBjb21t
aXQgd2hpY2ggd2lsbCBpbnRlZ3JhdGUgcWNvbS1zYXRhLnR4dCBhbmQgcmVtb3ZlIGl0LgoKdGhp
cyBkZXBlbmRzIG9uIFJvYnMgb3BpbmlvbgoKPiBFaXRoZXIgeW91IGhhdmUKPiBiaW5kaW5nIGRv
Y3VtZW50IGZvciBhbGwgZGV2aWNlcyBvciB5b3UgY3JlYXRlIGEgY29tbW9uIHBhcnQsIGxpa2Ug
Zm9yIFVGUzoKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1kZXZpY2V0cmVlLzIwMjIw
MjIyMTQ1ODU0LjM1ODY0Ni0xLWtyenlzenRvZi5rb3psb3dza2lAY2Fub25pY2FsLmNvbS8KPiBo
dHRwczovL2dpdGh1Yi5jb20va3J6ay9saW51eC9jb21taXRzL24vZHQtYmluZGluZ3MtdWZzLXYy
Cj4gCj4gVGhlIGNob2ljZSBkZXBlbmRzIG1vcmUgb3IgbGVzcyBvbiBjb21wbGV4aXR5IG9mIGJp
bmRpbmdzLCBJT1csIGhvdyBiaWcKPiBhbmQgY29tcGxpY2F0ZWQgYmluZGluZ3Mgd291bGQgYmUg
aWYgeW91IGNvbWJpbmUgZXZlcnl0aGluZyB0byBvbmUgWUFNTC4KPiAKPiBJbiB0aGUgY2FzZSBv
ZiBVRlMsIHRoZSBkZXZpY2VzIGRpZmZlciAtIGJ5IGNsb2NrcywgcmVzZXRzLCBwaHlzIGFuZAo+
IHNvbWV0aW1lcyBzdXBwbGllcy4gVGhlcmVmb3JlIGl0IGVhc2llciB0byBoYXZlIG9uZSBjb21t
b24gc2hhcmVkIHBhcnQKPiBhbmQgc2V2ZXJhbCBkZXZpY2UgYmluZGluZ3MuCj4gCj4gQUhDSSBs
b29rcyBtb3JlIGNvbnNpc3RlbnQgLSBleGNlcHQgdGhhdCBRdWFsY29tbSAtIHNvIG1heWJlIGJl
dHRlciB0bwo+IGhhdmUgb25lIGRvY3VtZW50Lgo+IAo+ID4gICAgIGluY3JlYXNlIHJlZy1jb3Vu
dCB0byAyICh1c2VkIGluIG9tYXA1LWw0LmR0c2kpCj4gPiAgICAgaW5jcmVhc2UgY2xvY2stY291
bnQgdG8gNSAodXNlZCBpbiBxY29tLWFwcTgwNjQuZHRzaSkKPiAKPiBUaGlzIHdvdWxkIG5lZWQg
YWxsT2YraWYuCgppZiBpIGdldCBvayBmcm9tIHJvYiBpIGFkZCBvbmx5IHRoZSBiZXJsaW4tY29t
cGF0aWJsZSBhbmQgc2tpcCB0aGUgcWNvbStyZWcvY2xvY2stY2hhbmdlIGluIHRoZSBmaXJzdCBh
cHBsaWVkIHZlcnNpb24uIEFkZGluZyB0aGUgYWxsT2YvaWYgKGFuZCBtYWtpbmcgaXQgcmlnaHQp
IHdpbGwgb25seSBkZWxheSB0aGUgc2F0YS1iaW5kaW5nL2R0cy1jaGFuZ2UuCgo+ID4gCj4gPiBj
YW4gaSBzdGlsbCBhZGQgeW91IHJldmlld2VkLWJ5IHRvIHY2Pwo+IAo+IEtlZXBpbmcgcmV2aWV3
ZWQtYnkgd291bGQgYmUgZmluZSB3aGVuIGFkZGluZyBjb21wYXRpYmxlcyBhbmQgYnVtcGluZwo+
IG1heEl0ZW1zLCBidXQgaW4geW91ciBjYXNlIHlvdSBuZWVkIHRvIHJld29yayB0aGVzZSBiaW5k
aW5ncy4gRWl0aGVyIGJ5Cj4gZ3Jvd2luZyBkb2N1bWVudCB3aXRoIHNldmVyYWwgImlmOiIgb3Ig
Ynkgc3BsaXR0aW5nIHRoZW0sIHNvIGl0IHdpbGwgYmUKPiBzaWduaWZpY2FudCBjaGFuZ2UuIFNr
aXAgbXkgcmV2aWV3IHRoZW4uCj4gCj4gPiAKPiA+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vZnJh
bmstdy9CUEktUjItNC4xNC9jb21taXRzLzUuMTctbmV4dC0yMDIyMDIyNQoKcmVnYXJkcyBGcmFu
awoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
