Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AA33C4450B
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 07:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQhPrbgeWYjmeDvd1iOC7YWu68+/x2cAbBycDCfuTXM=; b=hAEi90ZJyy/v+t
	8nY7tvq8VtLaIYG53RB72TC5FA5kVVN/6bKj0HhH33RJjBiKl8CfkkDPp4qi5ds7nyi+hNwyb8fqI
	U8H35kgJbArEidA6Xkx+bfblFwST8ZOroMvVbgJOUA9j+Qsgcm3eQYC4uAjnQtsuApmJ1s5419HCo
	JIbK6xQcdIyVnTNo/Oa/7BqleUXdR+aFReh2ynL9tPG+ssFJsI5Ake+BiDyIP8DsVhSUoqKvu8nUj
	JHKJeFk3KunTPYFNvGybPVeZGGSgpzyBzuHGwdcm7R40PJMGs80wPN2K9e11DZtW4KyEvU3b4vlXb
	+5p5A+UegWPv3kvq/GRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjuVO-0000000E5Rw-3ZWi;
	Wed, 15 Jul 2026 07:58:10 +0000
Received: from mail-ed2-x01.google.com ([2a00:1450:4864:33::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjuVE-0000000E5OH-3VmB
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jul 2026 07:58:02 +0000
Received: by mail-ed2-x01.google.com with SMTP id 4fb4d7f45d1cf-69a75ad755cso580283a12.0
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jul 2026 00:58:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784102279; cv=none;
        d=google.com; s=arc-20260327;
        b=hDN1Z5mFbEczqZda9kVhmPHJGzgSSdynZaAtB4kAzfboIgCFWLSv02NoEFzvTh3HNS
         mVD3GwZ7yZpGcV0LeBHnM0anbNctFt50+7RPd2a6NNOjLkLgKTT6orwpUyfiEKmA9F6j
         vEQ8khaQVb6jrx4yq98oxE2rUTNvlHhq64ESHooUEcb8RBcqO6MASAJcikJpoLaUFHSf
         6uqEGEFO1R+peNmmIKaglgQc/0GIgf7KaB+uQLs9Z0r6lJdtZI/zU9QOhnsep/wktg5j
         kXBB3yW1KIuox111ir5MbRVfsEh7WaXRT87OieWxc48VHiKkYHvmTC1hnIoz6C7KQIwK
         WjgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=wJj9Wc7Rwy3gTAMQK9yQ4wfZtHEgVyepO/YIt/wDURE=;
        fh=iteIqCTxG4fSSWQaU+TDilwa0efilbA9D1slob9Hcws=;
        b=VPI2rOhmM40V5ay+N4/jw9gmCy7bzVjG+xbznUnff9IUw6j/ZahG1XspVG9YzX0mRH
         /ficp8N+RtH2MQn85l3JpLtBJvn7mEQUVnpJoApXVLVyX38g46mNfRF6jwNHueHMVm1w
         ql1ko+WK4SJJgcW60VtZbjOTk2HnMoqcE+LukH7Yzdcc5sNMxm5gAIs7QvwDlR/wjN7J
         8SPJtVzYchoHZ72kxltlhvXdo0Pk8oaf2dG25ide9PcDoNmtcoy8i8SJVnEyMaaBskr8
         42Byr605syMUknjzoSBMGLchdmyRIJzMw4xhgn00Exw9XV04uxP813y5ozISOusfwyzY
         PTmw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784102279; x=1784707079; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=wJj9Wc7Rwy3gTAMQK9yQ4wfZtHEgVyepO/YIt/wDURE=;
        b=O2KajnGjPHGdDD2VkQBQsvc5hfm9Sr9W4JCKRpfx2w8aHxDEw6tzJvjFykv2uq2rLE
         qPFMssSk0A9nA32+HpopsUTmSdYN/iISWirwMuot23o9EWlhRqNKvC2uhSW1I+0UvRM1
         CydF1DnQM/l6JR1kXNTHSreAT6lo+hZdUjol/QZgHoWIBeedpufb6YSsP/B2Qkj0zTVO
         cseLzt2ELF3yn7KamkdW4AlUE14lu872AYCxdoeTv0e2/aR8Z7snpMZuYR0GWZQ7cEmu
         YjliYzSbs5ZtLCkWPiSPMj5vxVIe/OtJ1DFVOYbWXfiXNV19pVaSTLxhjK5KUq0QrSni
         pBwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784102279; x=1784707079;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wJj9Wc7Rwy3gTAMQK9yQ4wfZtHEgVyepO/YIt/wDURE=;
        b=PsDImjhHkW14AeyPNnCa972GnuSTmWEvjguM5FyeukZiSaXHHnam+3eicfqvXtXeLN
         40CuFZCP6/RYIv8+o6HddRcbjv0vaDMYhUNxFV/7KVw+iihJSeJYBQVict3o2p+CM8z8
         3UwpaqMOT2uj69hTX4TC57ER6I5VRhWfvT/smcFjd2aNrxfFkihiW0DY9zJsAhcE3cc4
         mU1bMDcT19xksMQ0wsdbIxSgpgqskHRbPeRvpLkXhM2aDNf6FrTyNX7PdgjrGal5wUuF
         Yh7S551ZK/5p09ezhUHFVf1bnSLQH4SmI6QyTwUa8zhnMmo17ro6432oY8/Dl+V/ZED9
         6rsg==
X-Forwarded-Encrypted: i=1; AHgh+RqjeJA0lUCAGsS0VAgzn/N+x0UmT5MiZSkNGahZKALNkl9O1KoMmDuAwAY7d9rfCbSB1JEBjA9EPCsPQEqqIQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywd2CT/feaZ3F/R8Tet2YWa8Qqokp9lPTlzGbo004DweYOE9/A6
	+RGTu9vJAIcJyA9/vL69+85qmn0hR1rAgtLiwdkOZzklA61tI8x4aStAzEvedXJLYIrggxkfm+F
	6ZymIfly/4y+tP2+l9nat4E5RjZRwr6w=
X-Gm-Gg: AfdE7cnOpbMvGBMkuySSPgh/rAEJ5yxTp/73TyQRERivXAKNiioIZw15RfZD1LBprpI
	aX9hVm/X5VJg+kvYZmFBfnmldmfqzeTg+nc4N0+lcK4qQXIVl5AhwoPkx7DjSBmTQSHDAdYLXTe
	J+axsAS7N8vIRcYacq0vBvhtfgvyNsjRm5sHRz3omQTqYqrd5aXm2rFq8eO03whmF8K925o7Zfd
	iQh85cnTD63P4uVjBH3ZiG6qyr96TaosYaAbeCX3IIHZniTs+O176sI/wQNVV9o8cd6+eH0ECOP
	8x9XHUN9eewyH8tRSjc9SQ==
X-Received: by 2002:a17:906:9fce:b0:c16:11b2:ae9b with SMTP id
 a640c23a62f3a-c161e98c3ecmr826018266b.17.1784102278649; Wed, 15 Jul 2026
 00:57:58 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-8-coiaprant@gmail.com>
 <4823c1d9-51d9-45fa-a96c-f2caab1cb29e@bootlin.com>
In-Reply-To: <4823c1d9-51d9-45fa-a96c-f2caab1cb29e@bootlin.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Wed, 15 Jul 2026 15:57:47 +0800
X-Gm-Features: AUfX_mz1XbF_hj8SltUaP6VQCiYz735WcPjxUivwpVyatqEOGiO47eZKOAvcnaA
Message-ID: <CALj3r0h4cFd-tp9-UVxihL9-a1W7_4nvnKoXW_cP5WECKc66Hw@mail.gmail.com>
Subject: Re: [RFC PATCH 07/10] net: pcs: xpcs: add Rockchip RK3568 platform
 glue driver
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Cc: kuba@kernel.org, davem@davemloft.net, edumazet@google.com, 
	pabeni@redhat.com, andrew+netdev@lunn.ch, robh@kernel.org, krzk+dt@kernel.org, 
	heiko@sntech.de, netdev@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_005800_910949_8705190D 
X-CRM114-Status: GOOD (  25.56  )
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

TWF4aW1lIENoZXZhbGxpZXIgPG1heGltZS5jaGV2YWxsaWVyQGJvb3RsaW4uY29tPiDkuo4yMDI2
5bm0N+aciDE15pel5ZGo5LiJIDE1OjQz5YaZ6YGT77yaCj4KPiBIaSwKPgo+IE9uIDcvMTQvMjYg
MjE6MDgsIENvaWEgUHJhbnQgd3JvdGU6Cj4gPiBUaGUgUkszNTY4IFNvQyBpbnRlZ3JhdGVzIGEg
U3lub3BzeXMgRGVzaWduV2FyZSBYUENTIHRoYXQgaXMgYWNjZXNzZWQKPiA+IHZpYSBBUEIzIG1l
bW9yeS1tYXBwZWQgcmVnaXN0ZXJzLgo+ID4gVGhpcyBkcml2ZXIgcHJvdmlkZXMgdGhlIGdsdWUg
bG9naWMgdG8gbWFrZSB0aGUgWFBDUyBhY2Nlc3NpYmxlIHRvCj4gPiB0aGUgZ2VuZXJpYyBwY3Mt
eHBjcyBjb3JlLgo+ID4KPiA+IFRoZSBYUENTIGJsb2NrIGNvbnRhaW5zIGZvdXIgTUlJIHBvcnRz
ICgwLi4zKSwgZWFjaCBvZiB3aGljaCBjYW4gYmUKPiA+IHJvdXRlZCB0byBHTUFDMCBvciBHTUFD
MSB2aWEgdGhlIHBjcy1oYW5kbGUgcHJvcGVydHkgaW4gdGhlIE1BQyBub2RlLgo+ID4gVGhlIGhh
cmR3YXJlIG1hcHMgdGhlc2UgcG9ydHMgdG8gZGlmZmVyZW50IE1NRHM6Cj4gPiAgIC0gcG9ydCAw
OiBNTUQgNyAoUk9DS0NISVBfTU1EX01JSSkKPiA+ICAgLSBwb3J0IDE6IE1NRCAyIChST0NLQ0hJ
UF9NTURfTUlJMSkKPiA+ICAgLSBwb3J0IDI6IE1NRCAzIChST0NLQ0hJUF9NTURfTUlJMikKPiA+
ICAgLSBwb3J0IDM6IE1NRCA0IChST0NLQ0hJUF9NTURfTUlJMykKPiA+Cj4gPiBUaGlzIGRyaXZl
ciBjcmVhdGVzIGEgdmlydHVhbCBNRElPIGJ1cyB0aGF0IHRyYW5zbGF0ZXMgTURJTyBvcGVyYXRp
b25zCj4gPiB0byBBUEIzIHJlZ2lzdGVyIGFjY2Vzc2VzLCB3aXRoIHByb3BlciBhZGRyZXNzIHJl
bWFwcGluZyBmb3IgZWFjaCBwb3J0Lgo+ID4gVGhlIGdlbmVyaWMgeHBjcyBkcml2ZXIgdGhlbiBj
cmVhdGVzIGEgcGh5bGlua19wY3MgaW5zdGFuY2Ugb24gdG9wIG9mCj4gPiB0aGlzIGJ1cywgYWxs
b3dpbmcgdGhlIE1BQyB0byB1c2UgdGhlIFBDUyB2aWEgdGhlIHN0YW5kYXJkIHBoeWxpbmsgQVBJ
Lgo+ID4KPiA+IExpbms6IGh0dHBzOi8vZGwucmFkeGEuY29tL3JvY2szL2RvY3MvaHcvZGF0YXNo
ZWV0L1JvY2tjaGlwJTIwUkszNTY4JTIwVFJNJTIwUGFydDIlMjBWMS4xLTIwMjEwMzAxLnBkZiAo
UGFnZSAyMDc4KQo+ID4gU2lnbmVkLW9mZi1ieTogQ29pYSBQcmFudCA8Y29pYXByYW50QGdtYWls
LmNvbT4KPgo+IFsuLi5dCj4KPiA+ICtzdGF0aWMgaW50IHhwY3NfcmtfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPiA+ICt7Cj4gPiArICAgICBzdHJ1Y3QgZHdfeHBjc19yayAq
cHhwY3M7Cj4gPiArICAgICBpbnQgcmV0Owo+ID4gKwo+ID4gKyAgICAgcHhwY3MgPSB4cGNzX3Jr
X2NyZWF0ZV9kYXRhKHBkZXYpOwo+ID4gKyAgICAgaWYgKElTX0VSUihweHBjcykpCj4gPiArICAg
ICAgICAgICAgIHJldHVybiBQVFJfRVJSKHB4cGNzKTsKPiA+ICsKPiA+ICsgICAgIC8qCj4gPiAr
ICAgICAgKiBUaGUgWFBDUyBtYXkgYmUgYXR0YWNoZWQgdG8gYSBwb3dlciBkb21haW4gKGUuZy4g
UERfUElQRSkuIFRoZSBkb21haW4KPiA+ICsgICAgICAqIG11c3QgYmUgcG93ZXJlZCBvbiBiZWZv
cmUgYW55IHJlZ2lzdGVyIGFjY2Vzcywgb3RoZXJ3aXNlIHRoZSBTb0Mgd2lsbAo+ID4gKyAgICAg
ICogdHJpZ2dlciBhIHN5bmNocm9ub3VzIGV4dGVybmFsIGFib3J0IChTRXJyb3IpLgo+ID4gKyAg
ICAgICoKPiA+ICsgICAgICAqIEFjY2Vzc2luZyB0aGUgWFBDUyByZWdpc3RlcnMgYWxzbyByZXF1
aXJlcyBhIFRYIGNsb2NrIGZyb20gdGhlIFNlckRlcywKPiA+ICsgICAgICAqIHdoaWNoIGlzIG5l
ZWRlZCBmb3IgdGhlIHNvZnQgcmVzZXQuCj4gPiArICAgICAgKi8KPiA+ICsgICAgIHJldCA9IHhw
Y3Nfcmtfc2VyZGVzX3BoeV9pbml0KHB4cGNzKTsKPiA+ICsgICAgIGlmIChyZXQpCj4gPiArICAg
ICAgICAgICAgIHJldHVybiByZXQ7Cj4gPiArCj4gPiArICAgICByZXQgPSB4cGNzX3JrX3NlcmRl
c19waHlfcG93ZXJvbihweHBjcyk7Cj4gPiArICAgICBpZiAocmV0KQo+ID4gKyAgICAgICAgICAg
ICByZXR1cm4gcmV0Owo+ID4KPiBUaGVyZSBhcmUgMiB1bnVzdWFsIHRoaW5ncyBoZXJlLgo+Cj4g
VGhlIGZpcnN0IG9uZSBpcyB0aGF0IHlvdSBtYW5hZ2UgdGhlIHNlcmRlcyBwaHkgZnJvbSB0aGUg
UENTIGRyaXZlciwgdXN1YWxseSBpdCdzCj4gdGhlIE1BQyBkcml2ZXIgZG9pbmcgc28uIEluIHN0
bW1hYywgd2UgaGF2ZSB0aGUgc2VyZGVzX3Bvd2Vyb24gYW5kIHNlcmRlc19wb3dlcm9mZgo+IGNh
bGxiYWNrcyB0byBob29rIGludG8gZm9yIFNlcmRlcyBjb250cm9sLgo+Cj4gVGhlIHNlY29uZCB0
aGluZyBpcyB0aGF0IHlvdSdyZSBzZXR0aW5nIHRoZSBzZXJkZXMgT04gYXQgcHJvYmUgdGltZSwg
dGhlcmUncyBubwo+IGR5bmFtaWMgY29udHJvbCBvZiBpdC4gVXN1YWxseSB3ZSB0cnkgdG8gb25s
eSBwb3dlciB0aGlzIG9uIGF0IGFkbWluLXVwIHRpbWUuCj4KPiBDYW4geW91IGV4cGxhaW4gdGhl
IHJhdGlvbmFsZSBiZWhpbmQgY29udHJvbGxpbmcgdGhlIHNlcmRlcyBoZXJlIGRpcmVjdGx5LCBh
bmQgbm90Cj4gZnJvbSB0aGUgTUFDIGRyaXZlciA/IEkgZG9uJ3Qgc2VlIGFueSBtZW50aW9uIG9m
IHRoYXQgaW4gdGhlIGNvbW1pdCBsb2csIGFuZCBJJ20gbm90Cj4gY29udmluY2VkIHRoaXMgaXMg
dGhlIGNvcnJlY3QgYXBwcm9hY2guCj4KPiBNYXhpbWUKCkhpIE1heGltZSwKClRoYW5rcyBmb3Ig
dGhlIHJldmlldy4KClRoaXMgaXMgaW50ZW50aW9uYWwuIFRoZSBTZXJEZXMgaXMgYXR0YWNoZWQg
dG8gdGhlIFhQQ1Mgbm9kZSBiZWNhdXNlCm9uIFJLMzU2OCwgYSBzaW5nbGUgU2VyRGVzIHNlcnZl
cyBhbGwgZm91ciBYUENTIE1JSSBwb3J0cyBpbiBRU0dNSUkKbW9kZS4gSWYgd2UgbWFuYWdlZCBp
dCBmcm9tIGR3bWFjLXJrLCB3ZSB3b3VsZCBuZWVkIGNvbXBsZXgKcmVmY291bnRpbmcgYWNyb3Nz
IG11bHRpcGxlIE1BQyBpbnN0YW5jZXMuIEtlZXBpbmcgaXQgYXQgdGhlIFhQQ1MKbGV2ZWwgc2lt
cGxpZmllcyB0aGUgZGVzaWduIGFuZCBwcmVwYXJlcyBmb3IgZnV0dXJlIFFTR01JSSBzdXBwb3J0
LgoKVGhlIHByb2JlLXRpbWUgcG93ZXItb24gaXMgYSBvbmUtdGltZSBpbml0aWFsaXphdGlvbiAo
bW9kZSBzZWxlY3Rpb24pLApub3QgYSBydW50aW1lIHBvd2VyIHRvZ2dsZS4gVGhlIGFjdHVhbCBw
b3dlciBpcyBjb250cm9sbGVkIGJ5IHRoZQpQRF9QSVBFIGRvbWFpbiB2aWEgUE0gcnVudGltZS4g
QWxzbywgcGh5X3Bvd2VyX29uKCkgb24gdGhpcyBQSFkgaXMKZWZmZWN0aXZlbHkgYSBuby1vcDsg
b25seSBwaHlfaW5pdCgpIGlzIHJlcXVpcmVkLgoKSSBjb25zaWRlcmVkIHRoZSBzdG1tYWMgc2Vy
ZGVzX3Bvd2Vyb24vc2VyZGVzX3Bvd2Vyb2ZmIGNhbGxiYWNrcywgYnV0CnRoZXkgZG8gbm90IGhh
bmRsZSBzaGFyZWQgU2VyRGVzIHdlbGwuIEkgYW0gaGFwcHkgdG8gcmV3b3JrIGlmIHRoZQpjb21t
dW5pdHkgcHJlZmVycyBvdGhlcndpc2UsIGJ1dCB0aGlzIGFwcHJvYWNoIHNlZW1zIGNsZWFuZXIg
Zm9yCm11bHRpLXBvcnQgc2V0dXBzLgoKVGhhbmtzLApDb2lhCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
