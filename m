Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94946C87FCF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Aug 2025 05:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=16TG/L3oeMkKztoMYL2vCDqWYdWB3qO0y2p9UTAgyks=; b=PCQAJhBWCRpI/r
	pzat938DKT0ExABw5wS7V/z7E4yh9dt/1OZveMXrACINAcx4QaGTnU5ADG1X2MqInkJ0dVivZ89R1
	mS9+y4/3elZidy9zq7l5iveRsVUw2w4QZ1jRUy7qV31zu3aA+WIfzJcMJobhDteFNIVLrVo7nNz+U
	kTPpRCnDNun2gezoi4dLVsZjWjhdxWSDgZJB61ws8euSrSsoI2E9gOUiL+oxXtvcZ88gn7G4GjZ08
	iAuR7TCnRnNfZjp3tHUzUK/Gvm90UIap1SWo5X/sOEy7PuVme/f8sHITPaehLbhrVMLLRr5S5ZlpE
	6vKOjO3Lt1atlf1cA+sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um3n6-0000000Cdjg-0arO;
	Wed, 13 Aug 2025 05:12:48 +0000
Received: from ni.piap.pl ([195.187.100.5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um3kX-0000000Cdcx-0ykL;
	Wed, 13 Aug 2025 05:10:11 +0000
Received: from t19.piap.pl (OSB1819.piap.pl [10.0.9.19])
	by ni.piap.pl (Postfix) with ESMTPS id C17F5C3E4DE7;
	Wed, 13 Aug 2025 07:10:03 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 ni.piap.pl C17F5C3E4DE7
From: =?utf-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>
To: Adam Ford <aford173@gmail.com>
Cc: Stefan Klug <stefan.klug@ideasonboard.com>,  Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>,  Dafna Hirschfeld
 <dafna@fastmail.com>,  Heiko Stuebner <heiko@sntech.de>,  Paul Elder
 <paul.elder@ideasonboard.com>,  Jacopo Mondi
 <jacopo.mondi@ideasonboard.com>,  Ondrej Jirman <megi@xff.cz>,
  linux-media@vger.kernel.org,  linux-rockchip@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org
Subject: Re: FYI: i.MX8MP ISP (RKISP1) MI registers corruption: resolved
In-Reply-To: <CAHCN7xKq_o_u7PhPMcZ2W9nzrFP8+CnhaYJOyxnjpKfbMTBCEw@mail.gmail.com>
	(Adam Ford's message of "Tue, 12 Aug 2025 13:22:54 -0500")
References: <175308758352.3134829.9472501038683860006@localhost>
	<175326599663.2811177.16620980968274114885@localhost>
	<m3h5z2vw12.fsf@t19.piap.pl>
	<175344176070.2811177.10693943493658922992@localhost>
	<m3qzxyug1s.fsf@t19.piap.pl> <m3cy9futcj.fsf@t19.piap.pl>
	<m34iumujcs.fsf@t19.piap.pl> <m3zfcet41n.fsf@t19.piap.pl>
	<m3a545t789.fsf@t19.piap.pl>
	<20250812103243.GK30054@pendragon.ideasonboard.com>
	<175501095338.74722.11604545949710100799@localhost>
	<CAHCN7xKq_o_u7PhPMcZ2W9nzrFP8+CnhaYJOyxnjpKfbMTBCEw@mail.gmail.com>
Date: Wed, 13 Aug 2025 07:10:03 +0200
Message-ID: <m3v7mrst78.fsf@t19.piap.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_221009_437430_E317181C 
X-CRM114-Status: GOOD (  11.47  )
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

SGkgQWRhbSwKCkFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPiB3cml0ZXM6Cgo+IEkgd2Fz
IHJlYWRpbmcgdGhyb3VnaCB0aGUgZGF0YSBzaGVldCAobm90IHRoZSByZWZlcmVuY2UgbWFudWFs
KSwgYW5kCj4gaXQgbGlzdHMgYSBmZXcgbGltaXRhdGlvbnMgZm9yIHRoZSBjbG9ja3M6Cj4KPiBG
b3Igc2luZ2xlIENhbWVyYSwgTUlQSSBDU0kgMSBjYW4gc3VwcG9ydCB1cCB0byA0MDAvNTAwIE1I
eiBwaXhlbAo+IGNsb2NrIGluIHRoZSBOb21pbmFsL092ZXJkcml2ZSBtb2RlLgo+IEZvciBzaW5n
bGUgQ2FtZXJhLCBNSVBJIENTSSAyIGNhbiBzdXBwb3J0IHVwIHRvIDI3NyBNSHogcGl4ZWwgY2xv
Y2suCj4gRm9yIGR1YWwgQ2FtZXJhLCBib3RoIE1JUEkgQ1NJIGNhbiBzdXBwb3J0IHVwIHRvIDI2
NiBNSHogcGl4ZWwgY2xvY2suCj4KPiBJZiB5b3UncmUgcnVubmluZyBkdWFsIGNhbWVyYXMsIGl0
IHNvdW5kcyBsaWtlIHlvdSdyZSBjYXBwZWQgYXQgMjY2Cj4gTUh6IHJlZ2FyZGxlc3Mgb2Ygd2hl
dGhlciBvciBub3QgeW91J3JlIGluIG92ZXJkcml2ZSBvciBub21pbmFsLgoKUmlnaHQuIEJ1dCB0
aGVzZSBhcmUgcGl4ZWwgY2xvY2tzLCBub3QgSVNQIGNsb2NrLiBBdCBsZWFzdCB0aGVvcmV0aWNh
bGx5CmVudGlyZWx5IGRpZmZlcmVudCBzdHVmZi4KRm9yIGV4YW1wbGUsIEknbSB1c2luZyAoYXQg
bW9zdCkgdHdvIElNWDI5MC80NjIgMTkyMHgxMDgwcDYwIHNlbnNvcnMgaW4KMTItYml0IChCYXll
cikgbW9kZSwgcmVzdWx0aW5nIGluOgotIDE0OC41IE1IeiBwaXhlbCBjbG9ja3MKLSAxNzgyIE1i
L3MgdG90YWwgYmFuZHdpZHRoIChmb3IgZWFjaCBzZW5zb3IgLSAxMiBiaXRzKQotIDQ0NS41IE1i
L3MgcGVyIGxhbmUgKGVhY2ggc2Vuc29yIHVzZXMgNCBNSVBJIGxhbmVzKQotIDIyMi43NSBNSHog
TUlQSSBjbG9ja3MgKE1JUEkgdXNlcyBERFIsIHRoZSBkb3VibGUgZGF0YSByYXRlKQoKU28gSSdt
IHdlbGwgd2l0aGluIHNwZWNzLiBUaG91Z2ggSSBkb24ndCBrbm93IGlmIHRoZSBwZW9wbGUgd3Jp
dGluZyB0aGUKZGF0YXNoZWV0cyBkaWQgcmVhbGx5IG1lYW4gd2hhdCB0aGV5IHdyb3RlLCBvciBt
YXliZSB0aGV5IG1lYW50IElTUCBjb3JlCmNsb2NrcyBhcyB3ZWxsLiBXaHk/IEJlY2F1c2UgSVNQ
IGJsb2NrcyAoYW5kIGFsbCBzdWNoIGxvZ2ljIGJsb2NrcykKcmVxdWlyZSBhIGNlcnRhaW4gbnVt
YmVyIG9mIHRoZWlyIGNvcmUgY2xvY2tzIGZvciBhIHNpZ25hbCByYXRlIChpbiB0aGlzCmNhc2Us
IGEgcGl4ZWwgcmF0ZSkuIEFuZCBtYXliZSB3aGF0IHRoZXkgc3BlY2lmaWVkIGluIHRoZSBkYXRh
c2hlZXRzIHdhcwphIGNhbGN1bGF0aW9uIG9mIHRoaXMgKHVucHVibGlzaGVkPykgcmVxdWlyZWQg
cGl4ZWwvSVNQIGNsb2NrIHJhdGlvIGFuZAp0aGUgbWF4IElTUCBjbG9jayByYXRlIChzcGVjaWZp
ZWQgaW5jb3JyZWN0bHkgYXQgNDAwLzUwMCBNSHopLgpBbnl3YXksIHRoaXMgaXMgb25seSBhIHBv
c3NpYmlsaXR5LiBBbm90aGVyIG9uZSBpcyB0aGF0IElTUDIgc2ltcGx5CmNhbm5vdCByZWxpYWJs
eSBydW4gYXQgNTAwIE1IeiwgZm9yIHNvbWUgImFuYWxvZyIgcmVhc29uLCBkZXNpZ24gYnVnCmV0
Yy4KCj4gTXkgdW5kZXJzdGFuZGluZyBpcyB0aGF0IHRoZSBpbXg4bXAuZHRzaSBpcyBwcmUtY29u
ZmlndXJlZCBmb3IKPiBvdmVyZHJpdmUgbW9kZSwgc28gaWYgeW91IG5lZWQgdG8gcnVuIHRoZSBJ
U1AgaW4gbm9taW5hbCwgdGhlIGNsb2NrCj4gdXBkYXRlcyBzaG91bGQgZ28gaW50byBpbXg4bXAt
bm9taW5pYWwuZHRzaS4KCkl0IHNlZW1zIG15IG1vZHVsZXMgYXJlIHNldHVwIGZvciBvdmVyZHJp
dmUgbW9kZS4KLS0gCktyenlzenRvZiAiQ2hyaXMiIEhhxYJhc2EKClNpZcSHIEJhZGF3Y3phIMWB
dWthc2lld2ljegpQcnplbXlzxYJvd3kgSW5zdHl0dXQgQXV0b21hdHlraSBpIFBvbWlhcsOzdyBQ
SUFQCkFsLiBKZXJvem9saW1za2llIDIwMiwgMDItNDg2IFdhcnN6YXdhCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
