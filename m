Return-Path: <SRS0=qRHX=OZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83596C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Oct 2021 09:09:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CAEA461350
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Oct 2021 09:09:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CAEA461350
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rammhold.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zaQjXhBpYJ76w7oTi/zECm1z8ws2QM74WmLDjxJh5Aw=; b=SlY8ZsNm6LZc55
	9A0biD9M8wQ+db1Dkw1cRlbh2vLa3A4QpJnnhp5vYEqBu+8iJXUgqOwCC2OY8XJ8KLV1xM2xJkzsB
	R6XfmlD3cAgakZfYxmBaXV4QN0tSiQ+oPYjS9wSCzHBhWa4YV12ZC3UrtjP4vaMf+22uP0AjoVzqX
	Rhn+9M9tQbVEV460MMRxcMw1pYyw9YsSpuwe6kFqmNrlNBFVtmPXspIQpnCuQzULe8USI6640VkCW
	SNb2NvSkPxosH4OlHdU8YwxR6/JwS5CiXa4PlnOGerrhBEP0R9jmynvbgmtI2swFYhp0eq+yVboCf
	IsgCSD3Y7KNq5kBFuhsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXgRl-009gag-Em; Tue, 05 Oct 2021 09:09:13 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXgRg-009gSZ-AF
 for linux-rockchip@lists.infradead.org; Tue, 05 Oct 2021 09:09:10 +0000
Received: by mail-wm1-x32e.google.com with SMTP id
 a131-20020a1c7f89000000b0030d4c90fa87so2335389wmd.2
 for <linux-rockchip@lists.infradead.org>; Tue, 05 Oct 2021 02:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rammhold-de.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=+NRP6+YwwZPDC6xBF9B2HRbg5ERKmcqeAmIAWlpjJrM=;
 b=c5Yw2ircgC4PU7lpSnr7c3T49mMg32AAE91PNMlXDVI/QZeIJX9wwNRZJsy/FsWd/W
 leA/UmcnSiIV7RvIRwkiSoON8m4yEmLdZtKuKt3t6iBfhT57Uw+SI0S6hc+iDxWMftVw
 0laZU8Ktg6yfOPPy+BRSUsSXro4QujZlYY493NFOy+7Ci7Mw9nyjnwA/h7AOZ9jXADbj
 9p69MvwhuKoXkzbGdOWlC194qUwzkYqYwHmcyaennrv+51pge0DcSVn1dLTu67ZJVKZ1
 MHhpqf1c0+RvfdFtEb4XJfp4XFyCjtVGEmm+jqZyig+g9AtbVFQTD5xmQNTEbXN05U/P
 Y2AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=+NRP6+YwwZPDC6xBF9B2HRbg5ERKmcqeAmIAWlpjJrM=;
 b=tnCgEm/TtyCzXEt2rJzVSpfRdNQaTV7Z33qIzkKjrPgyzLKWk8Zg9OCijG06oS9kwd
 A7frRdv9vUSjkcstgNDGXmKq9GJiXE3R1kO20X6y/Lq5FHR1gRC41JsJVLOezm5LWbHr
 yOVYLAquXXZAi7XzQ5i+Umj6fJoWlu4JPlTX3dtQj9yJ/3FQVGeI+xiRIybeZXDXB991
 Ra/+YVQyvOJQyNVBtbSeulSTJt29xFwFygdO81tW8i1GZK2FT5jmpkWatGRV2vQKQEck
 CjKn7XiCdbRXYP2X+SKRfWsQyD0rBqvxzEOF/XwTHhQKMDBGy8xXhQmJMUbf/0rgk/Qp
 4GIQ==
X-Gm-Message-State: AOAM531GDkgUKzl5ws866f8TBPzAwNvnTWGVjtF+DhkKHBwZr3QQxN8O
 Jp9byqSAhTPIF7z4RLsSP/hTV52p/gwKO1mf
X-Google-Smtp-Source: ABdhPJwUnaB/55ITALv3KemyJXfjyXnToYUVBFOvbZPTsSHy0KcCqrkt9gcpGsiS/iJzMy8TCezM3w==
X-Received: by 2002:a1c:a508:: with SMTP id o8mr2149762wme.29.1633424940434;
 Tue, 05 Oct 2021 02:09:00 -0700 (PDT)
Received: from localhost ([2a00:e67:5c9:a:a1fa:90d6:f435:5294])
 by smtp.gmail.com with ESMTPSA id m14sm1167110wmi.47.2021.10.05.02.08.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Oct 2021 02:08:59 -0700 (PDT)
Date: Tue, 5 Oct 2021 11:08:56 +0200
From: andreas@rammhold.de
To: Punit Agrawal <punitagrawal@gmail.com>
Cc: Andreas Rammhold <andreas@rammhold.de>, Jakub Kicinski <kuba@kernel.org>,
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, davem@davemloft.net,
 peppe.cavallaro@st.com, alexandre.torgue@foss.st.com,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH] net: stmmac: dwmac-rk: Fix ethernet on rk3399 based
 devices
Message-ID: <20211005090856.ccuccgbjejs5g7gd@wrt>
References: <20210929135049.3426058-1-punitagrawal@gmail.com>
 <12744188.XEzkDOsqEc@diego>
 <20211001160238.4335a83d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20211002213303.bofdao6ar7wvodka@wrt>
 <20211002172056.76c6c2d9@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20211003004103.6jdl2v6udxgl5ivx@wrt> <87h7dx2dvv.fsf@stealth>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87h7dx2dvv.fsf@stealth>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_020908_383101_63C1B82D 
X-CRM114-Status: GOOD (  22.91  )
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

T24gMjE6MDYgMDQuMTAuMjEsIFB1bml0IEFncmF3YWwgd3JvdGU6Cj4gQW5kcmVhcyBSYW1taG9s
ZCA8YW5kcmVhc0ByYW1taG9sZC5kZT4gd3JpdGVzOgo+IAo+ID4gT24gMTc6MjAgMDIuMTAuMjEs
IEpha3ViIEtpY2luc2tpIHdyb3RlOgo+ID4+IE9uIFNhdCwgMiBPY3QgMjAyMSAyMzozMzowMyAr
MDIwMCBBbmRyZWFzIFJhbW1ob2xkIHdyb3RlOgo+ID4+ID4gT24gMTY6MDIgMDEuMTAuMjEsIEph
a3ViIEtpY2luc2tpIHdyb3RlOgo+ID4+ID4gPiBPbiBXZWQsIDI5IFNlcCAyMDIxIDIzOjAyOjM1
ICswMjAwIEhlaWtvIFN0w7xibmVyIHdyb3RlOiAgCj4gPj4gPiA+ID4gT24gYSByazMzOTktcHVt
YSB3aGljaCBoYXMgdGhlIGRlc2NyaWJlZCBpc3N1ZSwKPiA+PiA+ID4gPiBUZXN0ZWQtYnk6IEhl
aWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+ICAKPiA+PiA+ID4gCj4gPj4gPiA+IEFwcGxp
ZWQsIHRoYW5rcyEgIAo+ID4+ID4gCj4gPj4gPiBUaGlzIGFsc28gZml4ZWQgdGhlIGlzc3VlIG9u
IGEgUm9ja1BpNC4KPiA+PiA+IAo+ID4+ID4gV2lsbCBhbnkgb2YgeW91IHN1Ym1pdCB0aGlzIHRv
IHRoZSBzdGFibGUga2VybmVscyAoYXMgdGhpcyBicm9rZSB3aXRoaW4KPiA+PiA+IDMuMTMgZm9y
IG1lKSBvciBzaGFsbCBJIGRvIHRoYXQ/Cj4gPj4gCj4gPj4gSSB3b24ndC4gVGhlIHBhdGNoIHNo
b3VsZCBiZSBpbiBMaW51cydzIHRyZWUgaW4gYXJvdW5kIDEgd2VlayAtIGF0IHdoaWNoCj4gPj4g
cG9pbnQgYW55b25lIGNhbiByZXF1ZXN0IHRoZSBiYWNrcG9ydC4KPiA+PiAKPiA+PiBUaGF0IHNh
aWQsIGFzIHlvdSBwcm9iYWJseSBrbm93LCA0LjQgaXMgdGhlIG9sZGVzdCBhY3RpdmUgc3RhYmxl
IGJyYW5jaCwKPiA+PiB0aGUgc2hpcCBoYXMgc2FpbGVkIGZvciBhbnl0aGluZyAzLnguCj4gPgo+
ID4gSSBhbSBzb3JyeS4gSSBtZWFudCA1LjEzLgo+IAo+IEFGQUlDVCwgMmQyNmY2ZTM5YWZiICgi
bmV0OiBzdG1tYWM6IGR3bWFjLXJrOiBmaXggdW5iYWxhbmNlZAo+IHBtX3J1bnRpbWVfZW5hYmxl
IHdhcm5pbmdzIikgaXMgbm90IGluIDUuMTMgc3RhYmxlLgo+IAo+IEVpdGhlciB5b3UncmUgbm90
IHVzaW5nIHRoZSBzdGFibGUga2VybmVsIG9yIHRoZXJlJ3MgYW5vdGhlciBpc3N1ZQo+IGJyZWFr
aW5nIHRoaW5ncyBvbiB0aGUgUm9ja1BpNC4KCkkgd2FzIHVzaW5nIHRoZSA1LjEzIGJyYW5jaCwg
c29tZXdoZXJlIGFmdGVyIDUuMTMuMTIgdGhlIG5ldHdvcmsgc3RhcnRlZAp0byBmYWlsIG9uIGJv
b3R1cC4gRHVlIHRvIHRoZSBuYXR1cmUgb2YgdGhlIHN5c3RlbSBJIGRvbid0IGhhdmUKcGVyc2lz
dGVudCBsb2dzIG9uIGl0LiBXaGVuIEkgbmV4dCBsb29rZWQgYXQgdGhlIHN5c3RlbSAoYW5kIHVw
ZGF0ZWQgdG8KNS4xNC54KSB0aGUgaXNzdWUgc3RpbGwgb2NjdXJlZCB1bnRpbCBJIGFwcGxpZWQg
dGhpcyBwYXRjaCBvbiB0byA1LjE0LjguCk1pZ2h0IGhhdmUgYmVlbiB0aGUgc2FtZSB1c2UtZmFj
aW5nIGlzc3VlIGJ1dCBkaWZmZXJlbnQgYnVncz8KCkkgY2FuIHRyeSB0byBuYXJyb3cgdGhlIGlz
c3VlIGRvd24gZnVydGhlci4gSXQnbGwgcHJvYmFibHkgdGFrZSBhIGZldwpldmVuaW5ncyB0byB0
ZXN0IHRoaXMgb3V0LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
