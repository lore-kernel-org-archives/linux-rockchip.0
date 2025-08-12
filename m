Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F5F0CA0EDA
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Aug 2025 05:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWywTQUAKwZGImbgW1ClT5Sy26a91MPiInIAgIuJTTA=; b=zrTLSjG0VkZd+t
	BIH0UyupO77JCXvjbZaENHbACGKr9S1pglHdl3niadI6Dk+L4I/2dphoF3bhYEOF01KXZ4r4NyS0K
	64vHmULtejd7uG5Qzmn9aekFn6xn+6eG0oNEv6kSH3cl1IutJgxSyWmJ4ve65GAqsfsuYzEho6+Ye
	uZEdDth7fpQT/J3xlrCcaVw7DQCSdwDktm7ZwvUEvwJGiY5A8V2WG4qgVimgp3S3fgIHJm9u43tdf
	PGk4l+CC4YKSX1omBmVvQt2BtyChXuib7gH8mfTO8mqq2+r9BdRc+Bx9Q0UBP5mnrEPPEseCDk8Jj
	KdHSJTyPrCiJOu0gzbcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uli1s-00000009yRH-3ZA2;
	Tue, 12 Aug 2025 05:58:36 +0000
Received: from [195.187.100.5] (helo=ni.piap.pl)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulhyH-00000009xwK-23GT;
	Tue, 12 Aug 2025 05:54:55 +0000
Received: from t19.piap.pl (OSB1819.piap.pl [10.0.9.19])
	by ni.piap.pl (Postfix) with ESMTPS id 8C855C3E4DEA;
	Tue, 12 Aug 2025 07:54:46 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 ni.piap.pl 8C855C3E4DEA
From: =?utf-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>
To: Stefan Klug <stefan.klug@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,  Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>,  Heiko Stuebner <heiko@sntech.de>,
  Paul Elder <paul.elder@ideasonboard.com>,  Jacopo Mondi
 <jacopo.mondi@ideasonboard.com>,  Ondrej Jirman <megi@xff.cz>,
  linux-media@vger.kernel.org,  linux-rockchip@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org
Subject: Re: FYI: i.MX8MP ISP (RKISP1) MI registers corruption: resolved
In-Reply-To: <m3zfcet41n.fsf@t19.piap.pl> ("Krzysztof =?utf-8?Q?Ha=C5=82as?=
 =?utf-8?Q?a=22's?= message of
	"Tue, 05 Aug 2025 13:13:08 +0200")
References: <m3h5zbxkc6.fsf@t19.piap.pl> <m38qknx939.fsf@t19.piap.pl>
	<175308758352.3134829.9472501038683860006@localhost>
	<m31pq9y98z.fsf@t19.piap.pl>
	<175326599663.2811177.16620980968274114885@localhost>
	<m3h5z2vw12.fsf@t19.piap.pl>
	<175344176070.2811177.10693943493658922992@localhost>
	<m3qzxyug1s.fsf@t19.piap.pl> <m3cy9futcj.fsf@t19.piap.pl>
	<m34iumujcs.fsf@t19.piap.pl> <m3zfcet41n.fsf@t19.piap.pl>
Date: Tue, 12 Aug 2025 07:54:46 +0200
Message-ID: <m3a545t789.fsf@t19.piap.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_225453_729424_771DE058 
X-CRM114-Status: GOOD (  11.72  )
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

SGkgU3RlZmFuIGV0IGFsLAoKQlRXIEkndmUgYWRkZWQgTHVjYXMgU3RhY2ggYW5kIFNoYXduIEd1
byB0byAiQ2MiIGxpc3QuCgpUaGUgcHJvYmxlbSBpcyB0aGUgQ1BVIGNvcmUgcG93ZXIgc3VwcGx5
IHZvbHRhZ2UgOi0pCgotIHdoaWxlIHRoZSByZWZlcmVuY2UgbWFudWFsIHNwZWNpZmllcyB0aGUg
bWF4IElTUCBhbmQgTUVESUEgY2xvY2tzIGF0CiAgNTAwIE1IeiwgdGhlIGRhdGFzaGVldHMgc2hv
dyB0aGlzIHJlcXVpcmVzIHRoZSAib3ZlcmRyaXZlIiBtb2RlID0KICBpbmNyZWFzZWQgQ1BVIHBv
d2VyIHN1cHBseSB2b2x0YWdlLiBJbiAibm9ybWFsIiBtb2RlIHRoZSBJU1BzIGFyZQogIGxpbWl0
ZWQgdG8gNDAwIE1IeiAodGhlcmUgYXJlIG90aGVyIGxpbWl0cywgdG9vKS4KCi0gSSd2ZSB0cmll
ZCBsb3dlcmluZyB0aGUgY2xvY2sgcmF0ZSBhZnRlciBib290aW5nIHRoZSBzeXN0ZW1zICh3aXRo
CiAgYSBDQ00gcmVnaXN0ZXIgd3JpdGUpLCBidXQgaXQgZGlkbid0IGZpeCB0aGUgcHJvYmxlbS4g
SSBndWVzcyBzb21lCiAgcmVzZXQgbG9naWMgaXMgYWZmZWN0ZWQgaGVyZSwgYW5kIHRoZSAobG93
ZXIpIGNsb2NrIHJhdGUgbXVzdCBiZSBzZXQKICByaWdodCBmcm9tIHRoZSBzdGFydCwgaW4gdGhl
IERULgoKLSBhbnl3YXksIGxvd2VyaW5nIHRoZSBmcmVxdWVuY2llcyBvZiBJU1AgYW5kIE1FRElB
IHJvb3QgY2xvY2tzIGZpeGVzCiAgdGhlIElTUDIgTUkgY29ycnVwdGlvbi4gSSdtIGN1cnJlbnRs
eSBpbnZlc3RpZ2F0aW5nIFBNSUMgc2V0dGluZ3MKICAoYm90aCBteSBDb21wdWxhYiBhbmQgU29s
aWRSdW4gbW9kdWxlcyB1c2UgUENBOTQ1MEMgUE1JQ3MpLCBzbyBwZXJoYXBzCiAgSSdsbCBiZSBh
YmxlIHRvIHVzZSB0aGUgaGlnaGVyIDUwMCBNSHogY2xvY2tzLiBJdCBkb2Vzbid0IG1hdHRlciBt
dWNoLAogIHRob3VnaC4KCi0gdGhlIHF1ZXN0aW9uIGlzIGlmIHdlIHNob3VsZCBsb3dlciB0aGUg
Y2xvY2tzIGluIHRoZSBtYWluIGlteDhtcC5kdHNpCiAgRFQgZmlsZSwgb3IgdGhlIG92ZXJkcml2
ZSBtb2RlIHNob3VsZCBzdGF5IHRoZXJlLCBhbmQgdGhlIGNoYW5nZXMKICBzaG91bGQgYmUgbWFk
ZSB0byB0aGUgaW5kaXZpZHVhbCBib2FyZCBmaWxlcywgb3IgbWF5YmUgdGhlIFUtQm9vdAogIGNv
bmZpZ3MgKFBNSUMgb3V0cHV0IHZvbHRhZ2VzKSBzaG91bGQgYmUgY2hhbmdlZCBldGMuCi0tIApL
cnp5c3p0b2YgIkNocmlzIiBIYUJhc2EKClNpZcSHIEJhZGF3Y3phIEF1a2FzaWV3aWN6ClByemVt
eXPFgm93eSBJbnN0eXR1dCBBdXRvbWF0eWtpIGkgUG9taWFyw7N3IFBJQVAKQWwuIEplcm96b2xp
bXNraWUgMjAyLCAwMi00ODYgV2Fyc3phd2EKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
