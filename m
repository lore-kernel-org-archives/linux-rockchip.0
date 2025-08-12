Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F403CCA0EDC
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Aug 2025 16:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d323HHt8luGFhu5FKFgW1MggVrXzzlWPKhgvfBulHkU=; b=uP91rpCgKOuaUI
	hDwmaCGI2SYSRJA3NaZ7oDTGoI4cMohMJA2a9yogaZN0/DoXrJYS9Spon86TBPLeymLaIWB690/Rv
	ZNfWodAYDy9rdv4k58Kjk3s5lWjFx77fQYuFyOnmYY5m5luVgsmoscL5chG7GUR30G+xONTYrTaCr
	4CGI61M4FzCCJkvgrNKrg0BxGZ5Q8Cm5CapISmWZ9+V7BD1TbKe09WRfiNECZOjuogopOt1oqUusA
	Pwx7oTXxBITMwHpHh2CRj3vvZjAibrRDqYrDuyymyqtg+HIeS+TRBGFZ4LXtTWrW76Qg2dwipxBtN
	aAtDdWgXkpdfICZKaAVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulrld-0000000BMwy-3kZ7;
	Tue, 12 Aug 2025 16:22:29 +0000
Received: from ni.piap.pl ([195.187.100.5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulo6y-0000000AgYW-1IgD;
	Tue, 12 Aug 2025 12:28:18 +0000
Received: from t19.piap.pl (OSB1819.piap.pl [10.0.9.19])
	by ni.piap.pl (Postfix) with ESMTPS id 2EB4CC3E4DE9;
	Tue, 12 Aug 2025 14:28:08 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 ni.piap.pl 2EB4CC3E4DE9
From: =?utf-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Stefan Klug <stefan.klug@ideasonboard.com>,  Dafna Hirschfeld
 <dafna@fastmail.com>,  Heiko Stuebner <heiko@sntech.de>,  Paul Elder
 <paul.elder@ideasonboard.com>,  Jacopo Mondi
 <jacopo.mondi@ideasonboard.com>,  Ondrej Jirman <megi@xff.cz>,
  linux-media@vger.kernel.org,  linux-rockchip@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org
Subject: Re: FYI: i.MX8MP ISP (RKISP1) MI registers corruption: resolved
In-Reply-To: <20250812103243.GK30054@pendragon.ideasonboard.com> (Laurent
	Pinchart's message of "Tue, 12 Aug 2025 13:32:43 +0300")
References: <175308758352.3134829.9472501038683860006@localhost>
	<m31pq9y98z.fsf@t19.piap.pl>
	<175326599663.2811177.16620980968274114885@localhost>
	<m3h5z2vw12.fsf@t19.piap.pl>
	<175344176070.2811177.10693943493658922992@localhost>
	<m3qzxyug1s.fsf@t19.piap.pl> <m3cy9futcj.fsf@t19.piap.pl>
	<m34iumujcs.fsf@t19.piap.pl> <m3zfcet41n.fsf@t19.piap.pl>
	<m3a545t789.fsf@t19.piap.pl>
	<20250812103243.GK30054@pendragon.ideasonboard.com>
Date: Tue, 12 Aug 2025 14:28:07 +0200
Message-ID: <m3zfc4sp0o.fsf@t19.piap.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_052816_511475_997CA90C 
X-CRM114-Status: GOOD (  13.23  )
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

SGkgTGF1cmVudCwKCj4+IC0gYW55d2F5LCBsb3dlcmluZyB0aGUgZnJlcXVlbmNpZXMgb2YgSVNQ
IGFuZCBNRURJQSByb290IGNsb2NrcyBmaXhlcwo+PiAgIHRoZSBJU1AyIE1JIGNvcnJ1cHRpb24u
IEknbSBjdXJyZW50bHkgaW52ZXN0aWdhdGluZyBQTUlDIHNldHRpbmdzCj4+ICAgKGJvdGggbXkg
Q29tcHVsYWIgYW5kIFNvbGlkUnVuIG1vZHVsZXMgdXNlIFBDQTk0NTBDIFBNSUNzKSwgc28gcGVy
aGFwcwo+PiAgIEknbGwgYmUgYWJsZSB0byB1c2UgdGhlIGhpZ2hlciA1MDAgTUh6IGNsb2Nrcy4g
SXQgZG9lc24ndCBtYXR0ZXIgbXVjaCwKPj4gICB0aG91Z2guCgpXZWxsLCBhcHBhcmVudGx5IG15
IENvbXB1bGFiIFVDTSBtb2R1bGUgcHJvdmlkZXMgb3ZlcmRyaXZlIHBvd2VyLiBBdApsZWFzdCB0
aGUgUE1JQyBkcml2ZXIgc2F5cyBzbyAoaW4gL3N5cyBwc2V1ZG9maWxlcykuIEkgZ3Vlc3MgU29s
aWRSdW4Kd29uJ3QgYmUgZGlmZmVyZW50LgoKMS4gQXQgbGVhc3QgdHdvIGRpZmZlcmVudCBkZXNp
Z25zIGFyZSBhZmZlY3RlZCAoQ29tcHVsYWIgYW5kIFNvbGlkUnVuKSwKMi4gdGhlIFBDQTk0NTBD
IGlzIFRIRSBpLk1YOE1QIFBNSUMsIG1vc3QgcHJvYmFibHkgY29ubmVjdGVkIHRvIHRoZSBDUFUK
ICAgZXhhY3RseSBhcyBpbiB0aGUgZGF0YXNoZWV0IChhdCBsZWFzdCBXUlQgVkREX1NPQyBwb3dl
ciBsaW5lcyksCjMuIE5YUCBwZW9wbGUgZXhwZXJpZW5jZWQgdGhlIHByb2JsZW0gb24gdGhlaXIg
KHdoaWNoIG9uZXM/KSBib2FyZHMsIHRvbwoKV2VsbC4uLiBUaGV5IHNwZWNpZnkgKElNWDhNUElF
QyA9IHRoZSBkYXRhc2hlZXQpOgoKIlR3byBpbnN0YW5jZXMgb2YgNC1sYW5lIE1JUEkgQ1NJIGlu
dGVyZmFjZSBhbmQgSERSIElTUArigKIgRm9yIHNpbmdsZSBDYW1lcmEsIE1JUEkgQ1NJIDEgY2Fu
IHN1cHBvcnQgdXAgdG8gNDAwLzUwMCBNSHogcGl4ZWwKICBjbG9jayBpbiB0aGUgTm9taW5hbC9P
dmVyZHJpdmUgbW9kZS4K4oCiIEZvciBzaW5nbGUgQ2FtZXJhLCBNSVBJIENTSSAyIGNhbiBzdXBw
b3J0IHVwIHRvIDI3NyBNSHogcGl4ZWwgY2xvY2suCuKAoiBGb3IgZHVhbCBDYW1lcmEsIGJvdGgg
TUlQSSBDU0kgY2FuIHN1cHBvcnQgdXAgdG8gMjY2IE1IeiBwaXhlbCBjbG9jay4K4oCiIDJ4IElT
UCBzdXBwb3J0aW5nIDM3NSBNcGl4ZWwvcyBhZ2dyZWdhdGUgcGVyZm9ybWFuY2UgYW5kIHVwIHRv
CiAgMy1leHBvc3VyZSBIRFIgcHJvY2Vzc2luZy4KICAgIOKAoldoZW4gb25lIGNhbWVyYSBpcyB1
c2VkLCBzdXBwb3J0IHVwIHRvIDEyTVBAMzBmcHMgb3IgNGtwNDUKICAgIOKAoldoZW4gdHdvIGNh
bWVyYXMgYXJlIHVzZWQsIGVhY2ggc3VwcG9ydHMgdXAgdG8gMTA4MHA4MCIKClNvLCB3aGlsZSBJ
U1AgY2xvY2sgaXMgbm90IGV4YWN0bHkgcGl4ZWwgY2xvY2ssIHBlcmhhcHMgdGhleSBtZWFuIHRo
YXQKdGhlIElTUCBjbG9jayBpcyB0byBiZSBsaW1pdGVkIGFzIHdlbGwuCgpJU1AyIGF0IDQwMCBN
SHogKHNpbmdsZSBjYW1lcmEpIHdvcmtzIGZvciBtZSAod2l0aCBhIDEwODBwNjAgMTItYml0CklN
WDQ2MiBzZW5zb3IpLCBidXQgSSBoYXZlbid0IHRlc3RlZCBpbiBleHRyZW1lIGNvbmRpdGlvbnMg
ZXRjLgoKPiBJIHRoaW5rIGl0IHdvdWxkIG1ha2Ugc2Vuc2UgdG8gbG93ZXIgdGhlIGRlZmF1bHQg
Y2xvY2sgZnJlcXVlbmNpZXMsIGFuZAo+IHByb3ZpZGUgYW4gb3ZlcmxheSB0byBlbmFibGUgb3Zl
cmRyaXZlIG1vZGUuCj4KPiBJdCdzIGFsc28gaW50ZXJlc3RpbmcgdGhhdCB0aGUgaXNzdWUgb25s
eSBhZmZlY3RlZCB0aGUgc2Vjb25kIElTUCwgYXMKPiB0aGUgZmlyc3Qgb25lIHNob3VsZCBhbHNv
IGJlIGxpbWl0ZWQgdG8gNDAwIE1IeiBpbiBub3JtYWwgbW9kZS4KClJpZ2h0LiBNYXliZSBpdCdz
IG5vdCB0aGUgb3ZlcmRyaXZlIG1vZGUgYWZ0ZXIgYWxsLiBJIHdpbGwgZG8gbW9yZSB0ZXN0cwpz
b29uLgotLSAKS3J6eXN6dG9mICJDaHJpcyIgSGHFgmFzYQoKU2llxIcgQmFkYXdjemEgxYF1a2Fz
aWV3aWN6ClByemVteXPFgm93eSBJbnN0eXR1dCBBdXRvbWF0eWtpIGkgUG9taWFyw7N3IFBJQVAK
QWwuIEplcm96b2xpbXNraWUgMjAyLCAwMi00ODYgV2Fyc3phd2EKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
