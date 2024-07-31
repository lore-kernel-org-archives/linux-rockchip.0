Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0B70C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 16:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQonL/hqISUQbd6+sZzb0yXpv47olR6OmVjr6iaPe+M=; b=N5U8qKqnrwcU3j
	HHt76doJqSz+VOtCDWP0DjLCUSlmwqKA94qyQyNhckD94ZRY+qPbit554VMYfd3Sg/ggVXnmDWRVs
	ZrzOXSzzLpjsQH+vKOydYDVzDAb+QfWv6s1c6IxkBbT3vPtpfLddn+90PrdGDuaddLuXaVMPFRLAT
	Vc/j+v9Pc3kDTzFZuyx2aJO7MjCKKeBgb8L4Xl1Ku4f87xh0hJkeH2xTlE6GuxBhvptipZ4fQE4cH
	ZIcAB38besNBlh06SGeKP/7KNXgCdxP6yAWKw4RB/kp7tDfvQObWIsrF+taEH2pU8nOoy85wysHQ2
	/42qTFusUXkKkdutTSLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZCSS-00000001tox-385s;
	Wed, 31 Jul 2024 16:45:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZBPD-00000001keQ-0USX;
	Wed, 31 Jul 2024 15:38:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=jERLuTt02jJk/A/GUIrlU2l3C3Z8RJ7b6O+Cw9tC1EM=; b=ajwWNiNEOiiQs+1xwwZ7ifiq+m
	InsNLzOr4QTdbqJaictOEaWvORTQ5Qk5ZZ/lAFLVn7uhhG/lLYw95Vmw51Cq1EbAYewaKdKLMgKgQ
	UhZtbDfMdhUC4iYfKpjprXtPl4K44qtcNFs1YP78O7V2UBK5iPbFOxGjjApTKc39PZhvshWaZ5V+1
	AWTkaB6hDpi5QUUUEHPuYau82C4bSaY7kh3H7uiw2nlqDoLC0pjK55OWasuKfwB0qftI9nupLqaGA
	BrU7n6SPZ7TQqel9O+eQJVhzCAX70OhZA/gTaGe4UuRLpVabjpb43NAY4rqm/8AnziTkQ0d/0+4ZQ
	nCjmWSBQ==;
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZBP7-00000005Fol-3GbL;
	Wed, 31 Jul 2024 15:38:20 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-52f01ec08d6so8878741e87.2;
        Wed, 31 Jul 2024 08:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722440293; x=1723045093; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jERLuTt02jJk/A/GUIrlU2l3C3Z8RJ7b6O+Cw9tC1EM=;
        b=Bh0563tJMVJop7a82++rm+39AlY5ZZ8ng3weP7fO0QcaJ1iRpLUXQl/J6D1ug+8MsH
         1wKlCYIVpF87UL8xIn1MOpm4K/WEaCDwRu+/f0nyb3bhjU8QWZXUcN77YQnm4l3VcpPe
         Xs+xAMVrERQfNwHAL1BHpuaxsquyeAUV+iztfsQRt7yicS949tpdCNXGU6jFCfCjDHBa
         Ihwz62Ct8NnwTUkedhuqCGfsv69njMFUPskLuNrFfddlo6FkSI3UeOekKVoz6Q23fw7c
         /GzC5LOi8pIlL0RBAEPsjGDIqeguUXQrmOwFUWOnnV56ZvwaxQGxwMbVr/pzO3w/ZIbZ
         iJyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722440293; x=1723045093;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jERLuTt02jJk/A/GUIrlU2l3C3Z8RJ7b6O+Cw9tC1EM=;
        b=s+QKT5qUYkz0JKwYfEWWIajb1oDItGVvPOzpXRqn1B4B9NnR1iAaPtd19NAHwLfcOf
         WAR7tNBFllA11TgUMaPumvKMO4GbJuFk7Z6r/PE9wHjsHsmf9E0qwfdTsr7vVU40atlr
         tV9qnSf+w5GsfuG9TYRmErtT27cHsQTNW9Y3CwT47NBumfMFlYQbZK3amPe/+W5fF1R+
         Gxs/iFPn/JHEfqYXKQpjB9E0Q9HqZlWU0dBP7zp35qA88AUFiVPdLotx3xOn+w0P9j5f
         we/JbprNn8TSmJMdrK/qi4Tplc8ktw8RrGaNQWrSIFrBzkz+CnyRLJ+BV96Wy0VMvHUx
         g7qw==
X-Forwarded-Encrypted: i=1; AJvYcCXxhyUa1PhLNPp0g10hRT4P1IpN0wplX6zVsIQ+SqskoBAtzetQ1mrcWdzC5/mX5WIyW6CHbakvHzcL6Y6kjiQxCe0uM2TJGK78wzEVBQJHLkCMUswgJNUDIBLA+0UZmH7iv1ZgwCN8U5AIGpFOsLBWTjqaTolp93c=
X-Gm-Message-State: AOJu0YzP032yQxV2DQKslC3Y2B7Pa+zsiyqIPBJely9xKCOcfCzRXVAl
	zfSRUhsRapkA+usDPRIbLSUBem3mDOkdWPAor5B2LSDCDP5LnYbgtpRWB6Qssm4I905q0pHPibj
	h62I/9B9Cff+7igUgbWQLACVptX33E1mH
X-Google-Smtp-Source: AGHT+IGkJsJtNdAtG/b1OGSx0qCLw0OdPM2gilMKAJkE1fAxyLPvtTaf8Ncjy/D6UEHIX+V3+SrgLLfetZIu+f87aI0=
X-Received: by 2002:a05:6512:292:b0:52f:c13f:23d2 with SMTP id
 2adb3069b0e04-5309b2803e4mr8857034e87.25.1722440292308; Wed, 31 Jul 2024
 08:38:12 -0700 (PDT)
MIME-Version: 1.0
References: <20231208062510.893392-1-CFSworks@gmail.com> <66f413d2-1a5b-b9e3-3c86-35a1d150f486@gmail.com>
 <659dfd80-5962-4265-836d-5761c3e41ca0@incomsystems.biz> <2401016.9fHWaBTJ5E@diego>
In-Reply-To: <2401016.9fHWaBTJ5E@diego>
From: Sam Edwards <cfsworks@gmail.com>
Date: Wed, 31 Jul 2024 08:38:00 -0700
Message-ID: <CAH5Ym4gW0KBcRGjfazMAjKDHmJFPYK6yc5MBFKC34Jh=P_Erkw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add PCIe pinctrls to Turing RK1
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Jonathan Bennett <jbennett@incomsystems.biz>, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	=?UTF-8?Q?Daniel_Kukie=C5=82a?= <daniel@kukiela.pl>, 
	Sven Rademakers <sven.rademakers@gmail.com>, Joshua Riek <jjriek@verizon.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_163818_058985_4F923C41 
X-CRM114-Status: GOOD (  49.72  )
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

T24gTW9uLCBKdWwgMjksIDIwMjQgYXQgMTI6MDnigK9QTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29A
c250ZWNoLmRlPiB3cm90ZToKPgo+IEhpIEpvbmF0aGFuLCBTYW0sCj4KPiBBbSBNaXR0d29jaCwg
NS4gSnVuaSAyMDI0LCAyMTo0NTo0MiBDRVNUIHNjaHJpZWIgSm9uYXRoYW4gQmVubmV0dDoKPiA+
IE9uIDEyLzgvMjMgMTE6MjcgQU0sIFNhbSBFZHdhcmRzIHdyb3RlOgo+ID4gPiBPbiAxMi84LzIz
IDA0OjA1LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiA+ID4+IEFtIEZyZWl0YWcsIDguIERlemVt
YmVyIDIwMjMsIDA3OjI1OjEwIENFVCBzY2hyaWViIFNhbSBFZHdhcmRzOgo+ID4gPj4+IFRoZSBS
SzM1ODggUENJZSAzLjAgY29udHJvbGxlciBzZWVtcyB0byBoYXZlIHVucHJlZGljdGFibGUgYmVo
YXZpb3IKPiA+ID4+PiB3aGVuCj4gPiA+Pj4gbm8gQ0xLUkVRL1BFUlNUL1dBS0UgcGlucyBhcmUg
Y29uZmlndXJlZCBpbiB0aGUgcGlubXV4LiBJbgo+ID4gPj4+IHBhcnRpY3VsYXIsIGl0Cj4gPiA+
Pj4gd2lsbCBzb21ldGltZXMgKHZhcnlpbmcgYmV0d2VlbiBzcGVjaWZpYyBSSzM1ODggY2hpcHMs
IG5vdCBvdmVyCj4gPiA+Pj4gdGltZSkgc2h1dAo+ID4gPj4+IG9mZiB0aGUgREJJIGJsb2NrLCBh
bmQgcmVhZHMgdG8gdGhpcyByYW5nZSB3aWxsIGluc3RlYWQgc3RhbGwKPiA+ID4+PiBpbmRlZmlu
aXRlbHkuCj4gPiA+Pj4KPiA+ID4+PiBXaGVuIHRoaXMgaGFwcGVucywgaXQgd2lsbCBwcmV2ZW50
IExpbnV4IGZyb20gYm9vdGluZyBhbHRvZ2V0aGVyLiBUaGUKPiA+ID4+PiBQQ0llIGRyaXZlciB3
aWxsIHN0YWxsIHRoZSBDUFUgY29yZSBvbmNlIGl0IGF0dGVtcHRzIHRvIHJlYWQgdGhlCj4gPiA+
Pj4gdmVyc2lvbgo+ID4gPj4+IGluZm9ybWF0aW9uIGZyb20gdGhlIERCSSByYW5nZS4KPiA+ID4+
Pgo+ID4gPj4+IEZpeCB0aGlzIGJvb3QgaGFuZyBieSBhZGRpbmcgdGhlIGNvcnJlY3QgcGluY3Ry
bCBjb25maWd1cmF0aW9uIHRvIHRoZQo+ID4gPj4+IFBDSWUgMy4wIGRldmljZSBub2RlLCB3aGlj
aCBpcyB0aGUgcHJvcGVyIHRoaW5nIHRvIGRvIGFueXdheS4gV2hpbGUKPiA+ID4+PiB3ZSdyZSBh
dCBpdCwgYWxzbyBhZGQgdGhlIG5lY2Vzc2FyeSBjb25maWd1cmF0aW9uIHRvIHRoZSBQQ0llIDIu
MCBub2RlLAo+ID4gPj4+IHdoaWNoIG1heSBvciBtYXkgbm90IGZpeCB0aGUgZXF1aXZhbGVudCBw
cm9ibGVtIG92ZXIgdGhlcmUgLS0gYnV0IGlzCj4gPiA+Pj4gdGhlCj4gPiA+Pj4gcHJvcGVyIHRo
aW5nIHRvIGRvIGFueXdheS4gOikKPiA+ID4+Pgo+ID4gPj4+IEZpeGVzOiAyODA2YTY5ZjNmZWY2
ICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBUdXJpbmcgUksxIFNvTQo+ID4gPj4+IHN1cHBv
cnQiKQo+ID4gPj4+IFNpZ25lZC1vZmYtYnk6IFNhbSBFZHdhcmRzIDxDRlN3b3Jrc0BnbWFpbC5j
b20+Cj4gPiA+Pj4gLS0tCj4gPiA+Pj4KPiA+ID4+PiBIaSBsaXN0LAo+ID4gPj4+Cj4gPiA+Pj4g
Q29tcGFyZWQgdG8gdjEsIHYyIHJlbW92ZXMgdGhlIGByZXNldC1ncGlvc2AgcHJvcGVydGllcyBh
cyB3ZWxsIC0tCj4gPiA+Pj4gdGhpcyBzaG91bGQKPiA+ID4+PiBnaXZlIGNvbnRyb2wgb2YgdGhl
IFBDSWUgcmVzZXRzIGV4Y2x1c2l2ZWx5IHRvIHRoZSBQQ0llIGNvcmVzLiAoQW5kCj4gPiA+Pj4g
ZXZlbiBpZiB0aGUKPiA+ID4+PiBgcmVzZXQtZ3Bpb3NgIHByb3BzIGhhZCBubyBlZmZlY3QgaW4g
djEsIGl0J2QgYmUgY29uZnVzaW5nIHRvIGhhdmUKPiA+ID4+PiB0aGVtIHRoZXJlLikKPiA+ID4+
Cj4gPiA+PiBIbW0sIEknZCB0aGluayB0aGlzIGNvdWxkIHJlc3VsdCBpbiBkaWZmZXJpbmcgYmVo
YXZpb3VyLgo+ID4gPj4KPiA+ID4+IEkuZS4gSSB0cmllZCB0aGUgc2FtZSBvbiBhIGRpZmZlcmVu
dCBib2FyZCB3aXRoIGEgbnZtZSBkcml2ZSBvbiB0aGUKPiA+ID4+IHBjaTMweDQKPiA+ID4+IGNv
bnRyb2xsZXIuIEJ1dCBtb3ZpbmcgdGhlIHJlc2V0IGZyb20gdGhlIGdwaW8td2F5IHRvICJqdXN0
IiBzZXR0aW5nIHRoZQo+ID4gPj4gcGVyc3RuIHBpbmN0cmwsIHNpbXBseSBodW5nIHRoZSBjb250
cm9sbGVyIHdoZW4gcHJvYmluZyB0aGUgZGV2aWNlLgo+ID4gPgo+ID4gPiBBaCwgSSdtIGd1ZXNz
aW5nIGl0IGRpZWQgaW46Cj4gPiA+IHZlciA9IGR3X3BjaWVfcmVhZGxfZGJpKHBjaSwgUENJRV9W
RVJTSU9OX05VTUJFUik7Cj4gPiA+Cj4gPiA+IElmIHNvLCB0aGF0J3MgdGhlIHNhbWUgaGFuZyB0
aGF0IHRoaXMgcGF0Y2ggaXMgYWltaW5nIHRvIHNvbHZlLiBJJ20KPiA+ID4gc3RhcnRpbmcgdG8g
d29uZGVyIGlmIGhhdmluZyBtdXhlZCBwaW5zICE9IDEgZm9yIGEgZ2l2ZW4gc2lnbmFsIHVwc2V0
cwo+ID4gPiB0aGUgUkMocykuIElzIHlvdXIgYm9hcmQgKGluIGFuIGVhcmxpZXIgYm9vdCBzdGFn
ZToKPiA+ID4gcmVzZXQvbWFza3JvbS9ib290bG9hZGVyKSBtdXhpbmcgYSBkaWZmZXJlbnQgcGVy
c3RuIHBpbiBvcHRpb24gdG8gdGhhdAo+ID4gPiBjb250cm9sbGVyIChhbmQgTGludXggZG9lc24n
dCBrbm93IHRvIGNsZWFyIGl0IGF3YXkpPyBUaGVuIHdoZW4geW91Cj4gPiA+IGFkZCB0aGUgcGVy
c3RuIHBpbmN0cmwgdGhlIHRvdGFsIG51bWJlciBvZiBwZXJzdG5zIG11eGVkIHRvIHRoZQo+ID4g
PiBjb250cm9sbGVyIGNvbWVzIHRvIDIsIGFuZCB3aXRob3V0IGEgcmVzZXQtZ3Bpb3MgPSA8Li4u
PjsgdG8gdGFrZSBpdAo+ID4gPiBhd2F5IGFnYWluLCB0aGF0IG51bWJlciBzdGF5cyBhdCAyIHRv
IGNhdXNlIHRoZSBoYW5nIHVwb24gdGhlIERCSSByZWFkPwo+ID4gPgo+ID4gPiBJZiBzbywgdGhh
dCdkIG1lYW4gdGhlIGNoYW5nZSByZXNvbHZlcyB0aGUgaGFuZyBmb3IgbWUsIGJlY2F1c2UgaXQK
PiA+ID4gYnJpbmdzIHRoZSB0b3RhbCB1cCB0byAxIChmcm9tIDApLCBidXQgYWxzbyBjYXVzZXMg
dGhlIGhhbmcgZm9yIHlvdSwKPiA+ID4gYmVjYXVzZSBpdCBicmluZ3MgdGhlIHRvdGFsIHVwIHRv
IDIgKGF3YXkgZnJvbSAxKS4KPiA+ID4KPiA+ID4+Cj4gPiA+PiBTbyBJIGd1ZXNzIEknZCB0aGlu
ayB0aGUgYmVzdCB3YXkgd291bGQgYmUgdG8gc3BsaXQgdGhlIHBpbmN0cmwgdXAKPiA+ID4+IGlu
dG8gdGhlCj4gPiA+PiAzIHNlcGFyYXRlIGZ1bmN0aW9ucyAoY2xrcmVxbiwgcGVyc3RuLCB3YWtl
bikgc28gdGhhdCBib2FyZHMgY2FuIGluY2x1ZGUKPiA+ID4+IHRoZW0gaW5kaXZpZHVhbGx5Lgo+
ID4gPgo+ID4gPiBNbSwgbWF5YmUuIFRob3VnaCB0aGF0IG1pZ2h0IGJlIG1vcmUgYXBwcm9wcmlh
dGUgaWYgYSBib2FyZCBjb21lcwo+ID4gPiBhbG9uZyB0aGF0IGRvZXNuJ3QgY29ubmVjdCBhbGwg
b2YgdGhvc2Ugc2lnbmFscyB0byB0aGUgc2FtZSBncm91cCBvZgo+ID4gPiBwaW5zLiBJIHdvcnJ5
IHRoYXQgYXR0ZW1wdGluZyB0byBzb2x2ZSB0aGlzIGhhbmcgYnkgZG9pbmcgdGhhdCB3aWxsCj4g
PiA+IGluc3RlYWQganVzdCBtYXNrIHRoZSByZWFsIHByb2JsZW0uCj4gPiA+Cj4gPiA+Pgo+ID4g
Pj4gTm9ib2R5IGlzIHVzaW5nIHRoZSBjb250cm9sbGVyIHBpbmN0cmwgZW50cmllcyBzbyBmYXIg
YW55d2F5IDotKSAuCj4gPiA+Cj4gPiA+IFRoZW4gaXQncyBpbnRlcmVzdGluZyB0aGF0IHRoaXMg
Ym9hcmQgcmVxdWlyZXMgdGhlbSBpbiBvcmRlciB0byBhdm9pZAo+ID4gPiBhIGhhbmcgb24gYm9v
dC4gSSdsbCBzZWUgaWYgdGhlcmUncyBhbnl0aGluZyBlbHNlIHRoYXQgSSBjYW4gZmluZCBvdXQu
Cj4gPgo+ID4gSSd2ZSBqdXN0IGZpbmlzaGVkIHRlc3RpbmcgdGhlIGxhdGVzdCBpdGVyYXRpb24g
b2YgdGhpcyBwYXRjaCB3aXRoCj4gPiA2LjEwLXJjMiBvbiBteSBSSzEgb24gYSBUdXJpbmcgUGkg
MiBjYXJyaWVyIGJvYXJkLiBJIGNhbiBjb25maXJtIHRoYXQKPiA+IHVucGF0Y2hlZCBtYWlubGlu
ZSBmYWlscyB0byBib290IHdpdGggdGhlIHNhbWUgaGFuZyBkZXNjcmliZWQgaGVyZSwgYW5kCj4g
PiB0aGUgcGF0Y2ggZG9lcyBtYWtlIHRoZSBib2FyZCBib290IGFnYWluLgo+Cj4gQ2FuIHlvdSBw
b3NzaWJseSB0ZXN0IGlmCj4KPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgv
a2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvY29tbWl0Lz9pZD0yOGI4ZDc3OTNiODU3MzU2
M2IzZDQ1MzIxMzc2ZjM2MTY4ZDc3YjFlCj4KPiBjaGFuZ2VzIGFueXRoaW5nPyBJbiA2LjExLXJj
MSBub3cuCj4KPiBUaGUgUEVSU1QjIHRvZ2dsaW5nIGhhcHBlbmluZyBiZWZvcmUgdGhhdCBwYXRj
aCBjb3VsZCd2ZSBjYXVzZWQKPiBpc3N1ZXMgd2l0aCB5b3VyIFBDSWUgZGV2aWNlLgo+Cj4KPiBI
ZWlrbwo+Cj4KCkdvb2QgZGF5IEhlaWtvLAoKVGhhbmtzIGZvciB0aGlua2luZyBvZiB0aGlzISBC
dXQgSSBiZWxpZXZlIHRoYXQgdGhpcyBwcm9ibGVtIGlzIG5vdAp3aXRoIFBFUlNUIyBidXQgcmF0
aGVyIENMS1JFUSM6CgpFdmlkZW50bHksIHRoZSBSSzM1ODgncyBQQ0llIDMuMCAoYW5kIG5vdCAy
LjA/KSBQSFlzIGRlcGVuZCBvbiB0aGUgYnVzCnJlZmVyZW5jZSBjbG9jayBub3QganVzdCBmb3Ig
ZXh0ZXJuYWwgdHJhbnNmZXJzLCBidXQgZm9yIGNvbXBsZXRpb24gb2YKc29tZS9hbGwgUElQRSB0
cmFuc2FjdGlvbnMgYXMgd2VsbC4gVGhpcyBtZWFucyB0aGF0LCB3aXRob3V0IHRoYXQKZXh0ZXJu
YWwgY2xvY2ssIHRoZSBSQyBibG9jayBzdGFsbHMgaW5kZWZpbml0ZWx5IGV2ZW4gZm9yIHRyaXZp
YWwKdGhpbmdzIGxpa2UgcmVhZGluZyB0aGUgdmVyc2lvbiBpbmZvcm1hdGlvbiBmcm9tIHRoZSBE
QkkgcmFuZ2UuIFRoaXMKaXMgdGhlIGJvb3QgaGFuZyB0aGF0IEpvbmF0aGFuIGFuZCBJIGFyZSBz
ZWVpbmcuCgpJIHdvdWxkIGd1ZXNzIHRoYXQgaXQgaGFzbid0IGJlZW4gYSBwcm9ibGVtIGZvciBt
b3N0IFJLMzU4OCBib2FyZHMsCndoaWNoIGVpdGhlciBkbyBub3Qgc3VwcG9ydCBQQ0llIDMuMCAo
YW5kIHRodXMgaGF2ZSB0aGVzZSBibG9ja3MKZGlzYWJsZWQgaW4gdGhlIERUKSBvciBoYXZlIGEg
Zml4ZWQgY2xvY2sgZ2VuZXJhdG9yIGZlZWRpbmcgdGhlCm5lY2Vzc2FyeSBwaW5zLiBIb3dldmVy
LCBtYW55IEpldHNvbiBTb00tdHlwZSBib2FyZHMgKFR1cmluZyBSSzEsCk1peHRpbGUgQ29yZSAz
NTg4RSBbMV0sIC4uLikgaGF2ZSB0aGUgY2xvY2sgc3dpdGNoYWJsZSwgcmVxdWlyaW5nIHRoYXQK
Q0xLUkVRIyBiZSBhc3NlcnRlZC9sb3cgdG8gcHJvdmlkZSB0aGF0IHRvIHRoZSBSSzM1ODguCgpG
b3J0dW5hdGVseSwgdGhlIFBDSWUgMy4wIFBIWSBrbm93cyB3aGVuIGl0IG5lZWRzIHRoYXQgY2xv
Y2sgYW5kCnByb3ZpZGVzIHRoZSBuZWNlc3NhcnkgQ0xLUkVRIyBzaWduYWwuIEJ1dCB1bmZvcnR1
bmF0ZWx5LCB0aGUgY3VycmVudApEVCBkb2VzIG5vdCBtdXggdGhpcyBvdXQgdG8gdGhlIGJvYXJk
LCBjYXVzaW5nIHRoaXMgYm9vdCBoYW5nIGZvciBvbmx5CnRob3NlIFJLMzU4OCBib2FyZHMuCgpJ
IGNhbiBzdGlsbCBnaXZlIDYuMTEtcmMxIGEgd2hpcmwgbm93IGlmIHlvdSB0aGluayBpdCBoYXMg
YSBzdHJvbmcKY2hhbmNlIG9mIG1pdGlnYXRpbmcgdGhlIGlzc3VlLCBvciBpZiBub3QgSSBjYW4g
dGFrZSBhbm90aGVyIHN0YWIgYXQKdGhlIERUIHBhdGNoIGluIGEgZmV3IHdlZWtzIG9uY2UgbXkg
YXZhaWxhYmlsaXR5IGZvciBrZXJuZWwgaGFja2luZwpyZXR1cm5zLiA6KQoKQ2hlZXJzLApTYW0K
ClsxXTogaHR0cHM6Ly9kb3dubG9hZHMubWl4dGlsZS5jb20vY29yZTM1ODhlL2ZpbGUvY29yZTM1
ODhlX3NjaGVtYXRpY19kcmF3aW5nX3YxXzFfMF8yMDIzMDkyMi5wZGYKc2hlZXQgMTkgb2YgMjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
