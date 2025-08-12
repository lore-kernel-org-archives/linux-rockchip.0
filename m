Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F6B1C87FCB
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Aug 2025 16:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J3Uku70DRLsNbnBauG76AtPQTSmbLf9UUpf+qcfrLZM=; b=hER4hDl08ybS2a
	Kql3OxhxaPBR/CQyr58t6o7MXOK0HQmVt3X0CAbiPh06Rc0Tq7wMnqyl5bG2Ff6lR5fZ6jSjETCdj
	Zcd5IWYI0ySZLN3I09+riwqmBQlHIZDEiL37BOnaC86nc+QGH//a5bbL57vhQY7zH+zVvN8P7btSt
	ANZnzX72ceGQoVq1bORSnDFaohZN90SQ/f0sIqm3YGldQ5lqxkZdBeVfOMcXv104FTXm66sLfcc7G
	JTLlmDgkFpBHTofifHsluzupswCgqtb6ITn82QYhbekn2O5E3oEn2IFQh3SkdQjoYItl7SfpKUlxC
	iPh5kohUWLTLHvyFmLlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulrig-0000000BIfJ-3t9B;
	Tue, 12 Aug 2025 16:19:26 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulmJS-0000000AVyL-2bMn;
	Tue, 12 Aug 2025 10:33:03 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 49A983D5;
	Tue, 12 Aug 2025 12:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1754994728;
	bh=N/zIXxDe3G/XcFSJ5iLcD4wYwc9bg47M5HzamE2Ado8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n9NDDkggCX2zZjc9kd+xyESuqoBhnKN+B6QOO6dCfmIcyIPR8dsmG02S9uS6Gacky
	 XsvwDKo2NU2ZdfNIZc2pUokrqIX4arAHMesCPqh7Y6EtJHfu3bKP9D9VQinWU0TDde
	 cxSl6WM2Xv6aJ9OPGJ5YW1miOGdCXHCl2cQiKFBU=
Date: Tue, 12 Aug 2025 13:32:43 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Krzysztof =?utf-8?Q?Ha=C5=82asa?= <khalasa@piap.pl>
Cc: Stefan Klug <stefan.klug@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Ondrej Jirman <megi@xff.cz>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: FYI: i.MX8MP ISP (RKISP1) MI registers corruption: resolved
Message-ID: <20250812103243.GK30054@pendragon.ideasonboard.com>
References: <175308758352.3134829.9472501038683860006@localhost>
 <m31pq9y98z.fsf@t19.piap.pl>
 <175326599663.2811177.16620980968274114885@localhost>
 <m3h5z2vw12.fsf@t19.piap.pl>
 <175344176070.2811177.10693943493658922992@localhost>
 <m3qzxyug1s.fsf@t19.piap.pl>
 <m3cy9futcj.fsf@t19.piap.pl>
 <m34iumujcs.fsf@t19.piap.pl>
 <m3zfcet41n.fsf@t19.piap.pl>
 <m3a545t789.fsf@t19.piap.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3a545t789.fsf@t19.piap.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_033302_797085_7E33B317 
X-CRM114-Status: GOOD (  18.96  )
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

SGkgS3J6eXN6dG9mLAoKT24gVHVlLCBBdWcgMTIsIDIwMjUgYXQgMDc6NTQ6NDZBTSArMDIwMCwg
S3J6eXN6dG9mIEhhxYJhc2Egd3JvdGU6Cj4gSGkgU3RlZmFuIGV0IGFsLAo+IAo+IEJUVyBJJ3Zl
IGFkZGVkIEx1Y2FzIFN0YWNoIGFuZCBTaGF3biBHdW8gdG8gIkNjIiBsaXN0Lgo+IAo+IFRoZSBw
cm9ibGVtIGlzIHRoZSBDUFUgY29yZSBwb3dlciBzdXBwbHkgdm9sdGFnZSA6LSkKCkFoLCB0aGUg
ZHJlYWRmdWwgb3ZlcmRyaXZlIG1vZGUuCgo+IC0gd2hpbGUgdGhlIHJlZmVyZW5jZSBtYW51YWwg
c3BlY2lmaWVzIHRoZSBtYXggSVNQIGFuZCBNRURJQSBjbG9ja3MgYXQKPiAgIDUwMCBNSHosIHRo
ZSBkYXRhc2hlZXRzIHNob3cgdGhpcyByZXF1aXJlcyB0aGUgIm92ZXJkcml2ZSIgbW9kZSA9Cj4g
ICBpbmNyZWFzZWQgQ1BVIHBvd2VyIHN1cHBseSB2b2x0YWdlLiBJbiAibm9ybWFsIiBtb2RlIHRo
ZSBJU1BzIGFyZQo+ICAgbGltaXRlZCB0byA0MDAgTUh6ICh0aGVyZSBhcmUgb3RoZXIgbGltaXRz
LCB0b28pLgo+IAo+IC0gSSd2ZSB0cmllZCBsb3dlcmluZyB0aGUgY2xvY2sgcmF0ZSBhZnRlciBi
b290aW5nIHRoZSBzeXN0ZW1zICh3aXRoCj4gICBhIENDTSByZWdpc3RlciB3cml0ZSksIGJ1dCBp
dCBkaWRuJ3QgZml4IHRoZSBwcm9ibGVtLiBJIGd1ZXNzIHNvbWUKPiAgIHJlc2V0IGxvZ2ljIGlz
IGFmZmVjdGVkIGhlcmUsIGFuZCB0aGUgKGxvd2VyKSBjbG9jayByYXRlIG11c3QgYmUgc2V0Cj4g
ICByaWdodCBmcm9tIHRoZSBzdGFydCwgaW4gdGhlIERULgoKVGhhdCdzIGludGVyZXN0aW5nLiBJ
IHdvdWxkbid0IGhhdmUgZXhwZWN0ZWQgdGhhdC4KCj4gLSBhbnl3YXksIGxvd2VyaW5nIHRoZSBm
cmVxdWVuY2llcyBvZiBJU1AgYW5kIE1FRElBIHJvb3QgY2xvY2tzIGZpeGVzCj4gICB0aGUgSVNQ
MiBNSSBjb3JydXB0aW9uLiBJJ20gY3VycmVudGx5IGludmVzdGlnYXRpbmcgUE1JQyBzZXR0aW5n
cwo+ICAgKGJvdGggbXkgQ29tcHVsYWIgYW5kIFNvbGlkUnVuIG1vZHVsZXMgdXNlIFBDQTk0NTBD
IFBNSUNzKSwgc28gcGVyaGFwcwo+ICAgSSdsbCBiZSBhYmxlIHRvIHVzZSB0aGUgaGlnaGVyIDUw
MCBNSHogY2xvY2tzLiBJdCBkb2Vzbid0IG1hdHRlciBtdWNoLAo+ICAgdGhvdWdoLgo+IAo+IC0g
dGhlIHF1ZXN0aW9uIGlzIGlmIHdlIHNob3VsZCBsb3dlciB0aGUgY2xvY2tzIGluIHRoZSBtYWlu
IGlteDhtcC5kdHNpCj4gICBEVCBmaWxlLCBvciB0aGUgb3ZlcmRyaXZlIG1vZGUgc2hvdWxkIHN0
YXkgdGhlcmUsIGFuZCB0aGUgY2hhbmdlcwo+ICAgc2hvdWxkIGJlIG1hZGUgdG8gdGhlIGluZGl2
aWR1YWwgYm9hcmQgZmlsZXMsIG9yIG1heWJlIHRoZSBVLUJvb3QKPiAgIGNvbmZpZ3MgKFBNSUMg
b3V0cHV0IHZvbHRhZ2VzKSBzaG91bGQgYmUgY2hhbmdlZCBldGMuCgpJIHRoaW5rIGl0IHdvdWxk
IG1ha2Ugc2Vuc2UgdG8gbG93ZXIgdGhlIGRlZmF1bHQgY2xvY2sgZnJlcXVlbmNpZXMsIGFuZApw
cm92aWRlIGFuIG92ZXJsYXkgdG8gZW5hYmxlIG92ZXJkcml2ZSBtb2RlLgoKSXQncyBhbHNvIGlu
dGVyZXN0aW5nIHRoYXQgdGhlIGlzc3VlIG9ubHkgYWZmZWN0ZWQgdGhlIHNlY29uZCBJU1AsIGFz
CnRoZSBmaXJzdCBvbmUgc2hvdWxkIGFsc28gYmUgbGltaXRlZCB0byA0MDAgTUh6IGluIG5vcm1h
bCBtb2RlLgoKLS0gClJlZ2FyZHMsCgpMYXVyZW50IFBpbmNoYXJ0CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
