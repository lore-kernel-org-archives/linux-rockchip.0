Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DDD9CF11CF
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 10:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLNy/fbS+13+dR120EKlgSeSACjA4Fa6atwsjnuGB/A=; b=QXzaWOycopQlBr
	gMOakqovPrVbuD1mB6iWPE4RGuRVNg/WLuoQJAHWCzCS8O8NQ4Y76rdxMT+1ySYbOKvxCRDrUCLO9
	YEC5OKWDR9qlmxSF66WaXpdO4RVSMI95UnUHaLD72eVXvixyXcCjnKgon3CCpUAWf8JVpgpKTZK4P
	MjI3WcOmSNm7Vqrjti1jqxmQL9ptKZtOAWLGn0ghXKWg5h3qlZltrI4/VpOBz5ot+VwbINm4v+0OZ
	DDrDq1cfZUxHBqO2pX5+nRJ+UVI/eFw/ch1uN52W9s6eoSfh8UIHfur8AoLgiud6SKUzsqrqVkfoy
	pfAAqHtAUeFE2Uag80HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syqmf-0000000CSyq-43E0;
	Thu, 10 Oct 2024 10:52:41 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syqjj-0000000CSfv-1pEF
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Oct 2024 10:49:42 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-20c70abba48so4633955ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2024 03:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728557378; x=1729162178; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8OP7rFv1ItxJzUjX6NY8zwJJLoQ3wPQcZ92A8zcOhBU=;
        b=RWrYTRwahSRsB8Jf/0Ctag4goh5fNihH11LeqvbiPG2WQBajGln3xNidLKn0oJw9L5
         drP8Et3Xju3/PLqFOWZ1pnkeYXbTZ7uwvVnQFshSZGfkBx5Y8NJJboIuMa3Sz/xz5KiJ
         AFZcpjon7C9VTtUZ0RY9YwQEqxl7/bIWNi1NQ3YY/33+wicLjN6Ux/LZzz5dOJc/KnMb
         f3SUO+xyhIkzSxafGGYSciY/F1udMbAYNlV55SEzt7PBMf7bQ5UElusoI4qIv2mbAxN3
         L3l6xyT2GHhZfLDY03TWuLP22O2rJq83HZXBY44HHwbNxrF+O7T+fgc7Znsowgyuz+3v
         7OtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728557378; x=1729162178;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8OP7rFv1ItxJzUjX6NY8zwJJLoQ3wPQcZ92A8zcOhBU=;
        b=XXzxr8UVaMGr5Zk4gEUcwfX4mNdNvLHY3tuWVkpUobPKKNOno2FFV8ieDUK02DQRlG
         D/6dpBbcWxVGlBbAJEYRk8X2t8rKjk3RgkdRp8ZFaoIFNC6LicLfYZwQhJpaQxnGlGbW
         vmxBCLFmF92NviMxWxBgm9/+ad1w2tdFDMsN7KN0HRDkPB5hcxfYaSvmQyyUTCyCze9e
         s565Emu+oOQuXOECMpcwmDEL2j+6aQFAqYByFvDHvIBJD0E7ipNaFzV8NES7kk7soUkR
         b8NqDYhq+56gfcNve3i2WKfloidC91Am06kbX2rMXPlI1TQfp0J9SGmOdsUMdXrNEjtf
         m+QQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0Le7XamVtPyaylM7ROfVKIRIzSI34ut0Wd0vMsAioEiyrTaWgI9Gj4jy0tzE0OXw4xF8HUjueXcdYyAgSAg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxHiVah7VTwl3EYOT8/0RJDbkzm/BPTbHRds/6dyVWE2bmdcQtc
	P/SavM/IH2iqlYS2ji+MIIZXV4Fh2smvsZpJI17R1lLWHmFYePmgXcXZdJuNaA==
X-Google-Smtp-Source: AGHT+IGJjVtOiKbr25esMOTIqockU31uxYYocHnt+AMIt4sX47lPwC3evjefw2bFIO7rvf8rBony3w==
X-Received: by 2002:a17:902:e842:b0:208:d856:dbb7 with SMTP id d9443c01a7336-20c6377c6b9mr76048285ad.39.1728557378381;
        Thu, 10 Oct 2024 03:49:38 -0700 (PDT)
Received: from thinkpad ([220.158.156.184])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bad33d6sm7438735ad.33.2024.10.10.03.49.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 03:49:38 -0700 (PDT)
Date: Thu, 10 Oct 2024 16:19:32 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 12/12] PCI: rockchip-ep: Handle PERST# signal in
 endpoint mode
Message-ID: <20241010104932.gfrunorhpnhan5wp@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-13-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007041218.157516-13-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_034939_561452_E1DC7026 
X-CRM114-Status: GOOD (  32.74  )
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

T24gTW9uLCBPY3QgMDcsIDIwMjQgYXQgMDE6MTI6MThQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gQ3VycmVudGx5LCB0aGUgUm9ja2NoaXAgUENJZSBlbmRwb2ludCBjb250cm9sbGVy
IGRyaXZlciBkb2VzIG5vdCBoYW5kbGUKPiBQRVJTVCMgc2lnbmFsLCB3aGljaCBwcmV2ZW50cyBk
ZXRlY3Rpbmcgd2hlbiBsaW5rIHRyYWluaW5nIHNob3VsZAo+IGFjdHVhbGx5IGJlIHN0YXJ0ZWQg
b3IgaWYgdGhlIGhvc3QgcmVzZXQgdGhlIGRldmljZS4gVGhpcyBob3dldmVyIGNhbgo+IGJlIHN1
cHBvcnRlZCB1c2luZyB0aGUgY29udHJvbGxlciBlcF9ncGlvLCBzZXQgYXMgYW4gaW5wdXQgR1BJ
TyBmb3IKPiBlbmRwb2ludCBtb2RlLgo+IAo+IE1vZGlmeSB0aGUgZW5kcG9pbnQgcm9ja2NoaXAg
ZHJpdmVyIHRvIGdldCB0aGUgZXBfZ3BpbyBhbmQgaXRzCj4gYXNzb2NpYXRlZCBpbnRlcnJ1cHQg
d2hpY2ggaXMgc2VydmljZWQgdXNpbmcgYSB0aHJlYWRlZCBJUlEgd2l0aCB0aGUKPiBmdW5jdGlv
biByb2NrY2hpcF9wY2llX2VwX3BlcnN0X2lycV90aHJlYWQoKSBhcyBoYW5kbGVyLgo+IAo+IFRo
aXMgaGFuZGxlciBmdW5jdGlvbiBub3RpZmllcyBhIGxpbmsgZG93biBldmVudCBjb3JyZXNwb25k
aW5nIHRvIHRoZSBSQwo+IHNpZGUgYXNzZXJ0aW5nIHRoZSBQRVJTVCMgc2lnbmFsIHVzaW5nIHBj
aV9lcGNfbGlua2Rvd24oKSB3aGVuIHRoZSBncGlvCj4gaXMgaGlnaC4gT25jZSB0aGUgZ3BpbyB2
YWx1ZSBnb2VzIGRvd24sIGNvcnJlc3BvbmRpbmcgdG8gdGhlIFJDCj4gZGUtYXNzZXJ0aW5nIHRo
ZSBQRVJTVCMgc2lnbmFsLCBsaW5rIHRyYWluaW5nIGlzIHN0YXJ0ZWQuIFRoZSBwb2xhcml0eQo+
IG9mIHRoZSBncGlvIGludGVycnVwdCB0cmlnZ2VyIGlzIGNoYW5nZWQgZnJvbSBoaWdoIHRvIGxv
dyBhZnRlciB0aGUgUkMKPiBhc3NlcnRlZCBQRVJTVCMsIGFuZCBjb252ZXJzZWx5IGNoYW5nZWQg
ZnJvbSBsb3cgdG8gaGlnaCBhZnRlciB0aGUgUkMKPiBkZS1hc3NlcnRzIFBFUlNUIy4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBEYW1pZW4gTGUgTW9hbCA8ZGxlbW9hbEBrZXJuZWwub3JnPgoKSnVzdCBt
aW5vciBuaXRzIGJlbG93LiBPdmVyYWxsIExHVE0uCgo+IC0tLQo+ICBkcml2ZXJzL3BjaS9jb250
cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAuYyB8IDExOCArKysrKysrKysrKysrKysrKysrKystCj4g
IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jICAgIHwgIDEyICstLQo+ICAy
IGZpbGVzIGNoYW5nZWQsIDEyMiBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAuYyBiL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jCj4gaW5kZXggYWY1MDQzMjUy
NWI0Li5jNzBhNjRjMzdhNTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9w
Y2llLXJvY2tjaGlwLWVwLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9j
a2NoaXAtZXAuYwo+IEBAIC0xOCw2ICsxOCw3IEBACj4gICNpbmNsdWRlIDxsaW51eC9zaXplcy5o
Pgo+ICAjaW5jbHVkZSA8bGludXgvd29ya3F1ZXVlLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9pb3Bv
bGwuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2dwaW8vY29uc3VtZXIuaD4KClBsZWFzZSBzb3J0IHRo
ZSBpbmNsdWRlcy4KCj4gIAo+ICAjaW5jbHVkZSAicGNpZS1yb2NrY2hpcC5oIgo+ICAKPiBAQCAt
NTAsNiArNTEsOSBAQCBzdHJ1Y3Qgcm9ja2NoaXBfcGNpZV9lcCB7Cj4gIAl1NjQJCQlpcnFfcGNp
X2FkZHI7Cj4gIAl1OAkJCWlycV9wY2lfZm47Cj4gIAl1OAkJCWlycV9wZW5kaW5nOwo+ICsJaW50
CQkJcGVyc3RfaXJxOwo+ICsJYm9vbAkJCXBlcnN0X2Fzc2VydGVkOwo+ICsJYm9vbAkJCWxpbmtf
dXA7Cj4gIAlzdHJ1Y3QgZGVsYXllZF93b3JrCWxpbmtfdHJhaW5pbmc7Cj4gIH07Cj4gIAo+IEBA
IC00NjIsMTMgKzQ2NiwxNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfZXBfc3RhcnQoc3Ry
dWN0IHBjaV9lcGMgKmVwYykKPiAgCj4gIAlyb2NrY2hpcF9wY2llX3dyaXRlKHJvY2tjaGlwLCBj
ZmcsIFBDSUVfQ09SRV9QSFlfRlVOQ19DRkcpOwo+ICAKPiArCWlmIChyb2NrY2hpcC0+ZXBfZ3Bp
bykKPiArCQllbmFibGVfaXJxKGVwLT5wZXJzdF9pcnEpOwo+ICsKPiAgCS8qIEVuYWJsZSBjb25m
aWd1cmF0aW9uIGFuZCBzdGFydCBsaW5rIHRyYWluaW5nICovCj4gIAlyb2NrY2hpcF9wY2llX3dy
aXRlKHJvY2tjaGlwLAo+ICAJCQkgICAgUENJRV9DTElFTlRfTElOS19UUkFJTl9FTkFCTEUgfAo+
ICAJCQkgICAgUENJRV9DTElFTlRfQ09ORl9FTkFCTEUsCj4gIAkJCSAgICBQQ0lFX0NMSUVOVF9D
T05GSUcpOwo+ICAKPiAtCXNjaGVkdWxlX2RlbGF5ZWRfd29yaygmZXAtPmxpbmtfdHJhaW5pbmcs
IDApOwo+ICsJaWYgKCFyb2NrY2hpcC0+ZXBfZ3BpbykKPiArCQlzY2hlZHVsZV9kZWxheWVkX3dv
cmsoJmVwLT5saW5rX3RyYWluaW5nLCAwKTsKPiAgCj4gIAlyZXR1cm4gMDsKPiAgfQo+IEBAIC00
NzgsNiArNDg2LDExIEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfZXBfc3RvcChzdHJ1Y3Qg
cGNpX2VwYyAqZXBjKQo+ICAJc3RydWN0IHJvY2tjaGlwX3BjaWVfZXAgKmVwID0gZXBjX2dldF9k
cnZkYXRhKGVwYyk7Cj4gIAlzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAgPSAmZXAtPnJv
Y2tjaGlwOwo+ICAKPiArCWlmIChyb2NrY2hpcC0+ZXBfZ3Bpbykgewo+ICsJCWVwLT5wZXJzdF9h
c3NlcnRlZCA9IHRydWU7Cj4gKwkJZGlzYWJsZV9pcnEoZXAtPnBlcnN0X2lycSk7Cj4gKwl9Cj4g
Kwo+ICAJY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZlcC0+bGlua190cmFpbmluZyk7Cj4gIAo+
ICAJLyogU3RvcCBsaW5rIHRyYWluaW5nIGFuZCBkaXNhYmxlIGNvbmZpZ3VyYXRpb24gKi8KPiBA
QCAtNTQwLDYgKzU1MywxMyBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF9wY2llX2VwX2xpbmtfdHJh
aW5pbmcoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+ICAJaWYgKCFyb2NrY2hpcF9wY2llX2Vw
X2xpbmtfdXAocm9ja2NoaXApKQo+ICAJCWdvdG8gYWdhaW47Cj4gIAo+ICsJLyoKPiArCSAqIElm
IFBFUlNUIHdhcyBhc3NlcnRlZCB3aGlsZSBwb2xsaW5nIHRoZSBsaW5rLCBkbyBub3Qgbm90aWZ5
Cj4gKwkgKiB0aGUgZnVuY3Rpb24uCj4gKwkgKi8KPiArCWlmIChlcC0+cGVyc3RfYXNzZXJ0ZWQp
Cj4gKwkJcmV0dXJuOwo+ICsKPiAgCXZhbCA9IHJvY2tjaGlwX3BjaWVfcmVhZChyb2NrY2hpcCwg
UENJRV9DTElFTlRfQkFTSUNfU1RBVFVTMCk7Cj4gIAlkZXZfaW5mbyhkZXYsCj4gIAkJICJMaW5r
IFVQIChOZWdvY2lhdGVkIHNwZWVkOiAlc0dUL3MsIHdpZHRoOiB4JWx1KVxuIiwKPiBAQCAtNTQ5
LDYgKzU2OSw3IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfZXBfbGlua190cmFpbmluZyhz
dHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4gIAo+ICAJLyogTm90aWZ5IHRoZSBmdW5jdGlvbiAq
Lwo+ICAJcGNpX2VwY19saW5rdXAoZXAtPmVwYyk7Cj4gKwllcC0+bGlua191cCA9IHRydWU7Cj4g
IAo+ICAJcmV0dXJuOwo+ICAKPiBAQCAtNTU2LDYgKzU3Nyw5NCBAQCBzdGF0aWMgdm9pZCByb2Nr
Y2hpcF9wY2llX2VwX2xpbmtfdHJhaW5pbmcoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+ICAJ
c2NoZWR1bGVfZGVsYXllZF93b3JrKCZlcC0+bGlua190cmFpbmluZywgbXNlY3NfdG9famlmZmll
cyg1KSk7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfZXBfcGVyc3RfYXNz
ZXJ0KHN0cnVjdCByb2NrY2hpcF9wY2llX2VwICplcCkKPiArewo+ICsJc3RydWN0IHJvY2tjaGlw
X3BjaWUgKnJvY2tjaGlwID0gJmVwLT5yb2NrY2hpcDsKPiArCXN0cnVjdCBkZXZpY2UgKmRldiA9
IHJvY2tjaGlwLT5kZXY7Cj4gKwo+ICsJZGV2X2RiZyhkZXYsICJQRVJTVCBhc3NlcnRlZCwgbGlu
ayBkb3duXG4iKTsKPiArCj4gKwlpZiAoZXAtPnBlcnN0X2Fzc2VydGVkKQo+ICsJCXJldHVybjsK
PiArCj4gKwllcC0+cGVyc3RfYXNzZXJ0ZWQgPSB0cnVlOwo+ICsKPiArCWNhbmNlbF9kZWxheWVk
X3dvcmtfc3luYygmZXAtPmxpbmtfdHJhaW5pbmcpOwo+ICsKPiArCWlmIChlcC0+bGlua191cCkg
ewo+ICsJCXBjaV9lcGNfbGlua2Rvd24oZXAtPmVwYyk7Cj4gKwkJZXAtPmxpbmtfdXAgPSBmYWxz
ZTsKPiArCX0KPiArfQo+ICsKPiArc3RhdGljIHZvaWQgcm9ja2NoaXBfcGNpZV9lcF9wZXJzdF9k
ZWFzc2VydChzdHJ1Y3Qgcm9ja2NoaXBfcGNpZV9lcCAqZXApCj4gK3sKPiArCXN0cnVjdCByb2Nr
Y2hpcF9wY2llICpyb2NrY2hpcCA9ICZlcC0+cm9ja2NoaXA7Cj4gKwlzdHJ1Y3QgZGV2aWNlICpk
ZXYgPSByb2NrY2hpcC0+ZGV2Owo+ICsKPiArCWRldl9kYmcoZGV2LCAiUEVSU1QgZGUtYXNzZXJ0
ZWQsIHN0YXJ0aW5nIGxpbmsgdHJhaW5pbmdcbiIpOwo+ICsKPiArCWlmICghZXAtPnBlcnN0X2Fz
c2VydGVkKQo+ICsJCXJldHVybjsKPiArCj4gKwllcC0+cGVyc3RfYXNzZXJ0ZWQgPSBmYWxzZTsK
PiArCj4gKwkvKiBFbmFibGUgbGluayByZS10cmFpbmluZyAqLwo+ICsJcm9ja2NoaXBfcGNpZV9l
cF9yZXRyYWluX2xpbmsocm9ja2NoaXApOwo+ICsKCkkgaG9wZSB0aGF0IG5vIHJlZ2lzdGVycyBh
cmUgZ2V0dGluZyByZXNldCBwb3N0IFBFUlNUIyBhc3NlcnQuCgo+ICsJLyogU3RhcnQgbGluayB0
cmFpbmluZyAqLwo+ICsJc2NoZWR1bGVfZGVsYXllZF93b3JrKCZlcC0+bGlua190cmFpbmluZywg
MCk7Cj4gK30KPiArCj4gK3N0YXRpYyBpcnFyZXR1cm5fdCByb2NrY2hpcF9wY2llX2VwX3BlcnN0
X2lycV90aHJlYWQoaW50IGlycSwgdm9pZCAqZGF0YSkKPiArewo+ICsJc3RydWN0IHBjaV9lcGMg
KmVwYyA9IGRhdGE7Cj4gKwlzdHJ1Y3Qgcm9ja2NoaXBfcGNpZV9lcCAqZXAgPSBlcGNfZ2V0X2Ry
dmRhdGEoZXBjKTsKPiArCXN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCA9ICZlcC0+cm9j
a2NoaXA7Cj4gKwl1MzIgcGVyc3QgPSBncGlvZF9nZXRfdmFsdWUocm9ja2NoaXAtPmVwX2dwaW8p
Owo+ICsKPiArCWlmIChwZXJzdCkKPiArCQlyb2NrY2hpcF9wY2llX2VwX3BlcnN0X2Fzc2VydChl
cCk7Cj4gKwllbHNlCj4gKwkJcm9ja2NoaXBfcGNpZV9lcF9wZXJzdF9kZWFzc2VydChlcCk7Cj4g
Kwo+ICsJaXJxX3NldF9pcnFfdHlwZShlcC0+cGVyc3RfaXJxLAo+ICsJCQkgKHBlcnN0ID8gSVJR
Rl9UUklHR0VSX0hJR0ggOiBJUlFGX1RSSUdHRVJfTE9XKSk7Cj4gKwo+ICsJcmV0dXJuIElSUV9I
QU5ETEVEOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfZXBfc2V0dXBfaXJx
KHN0cnVjdCBwY2lfZXBjICplcGMpCj4gK3sKPiArCXN0cnVjdCByb2NrY2hpcF9wY2llX2VwICpl
cCA9IGVwY19nZXRfZHJ2ZGF0YShlcGMpOwo+ICsJc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tj
aGlwID0gJmVwLT5yb2NrY2hpcDsKPiArCXN0cnVjdCBkZXZpY2UgKmRldiA9IHJvY2tjaGlwLT5k
ZXY7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCWlmICghcm9ja2NoaXAtPmVwX2dwaW8pCj4gKwkJcmV0
dXJuIDA7Cj4gKwo+ICsJLyogUENJZSByZXNldCBpbnRlcnJ1cHQgKi8KPiArCWVwLT5wZXJzdF9p
cnEgPSBncGlvZF90b19pcnEocm9ja2NoaXAtPmVwX2dwaW8pOwo+ICsJaWYgKGVwLT5wZXJzdF9p
cnEgPCAwKSB7Cj4gKwkJZGV2X2VycihkZXYsICJObyBjb3JyZXNwb25kaW5nIElSUSBmb3IgUEVS
U1QgR1BJT1xuIik7Cj4gKwkJcmV0dXJuIGVwLT5wZXJzdF9pcnE7Cj4gKwl9Cj4gKwo+ICsJZXAt
PnBlcnN0X2Fzc2VydGVkID0gdHJ1ZTsKCkhvdyBjb21lPwoKPiArCWlycV9zZXRfc3RhdHVzX2Zs
YWdzKGVwLT5wZXJzdF9pcnEsIElSUV9OT0FVVE9FTik7Cj4gKwlyZXQgPSBkZXZtX3JlcXVlc3Rf
dGhyZWFkZWRfaXJxKGRldiwgZXAtPnBlcnN0X2lycSwgTlVMTCwKPiArCQkJCQlyb2NrY2hpcF9w
Y2llX2VwX3BlcnN0X2lycV90aHJlYWQsCj4gKwkJCQkJSVJRRl9UUklHR0VSX0hJR0ggfCBJUlFG
X09ORVNIT1QsCj4gKwkJCQkJInBjaWUtZXAtcGVyc3QiLCBlcGMpOwo+ICsJaWYgKHJldCkgewo+
ICsJCWRldl9lcnIoZGV2LCAiUmVxdWVzdCBQRVJTVCBHUElPIElSUSBmYWlsZWQgJWRcbiIsIHJl
dCk7Cj4gKwkJcmV0dXJuIHJldDsKPiArCX0KPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiAg
c3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZXBjX2ZlYXR1cmVzIHJvY2tjaGlwX3BjaWVfZXBjX2Zl
YXR1cmVzID0gewo+ICAJLmxpbmt1cF9ub3RpZmllciA9IHRydWUsCj4gIAkubXNpX2NhcGFibGUg
PSB0cnVlLAo+IEBAIC03MTksNiArODI4LDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2Vw
X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlyb2NrY2hpcC0+aXNfcmMg
PSBmYWxzZTsKPiAgCXJvY2tjaGlwLT5kZXYgPSBkZXY7Cj4gIAlJTklUX0RFTEFZRURfV09SSygm
ZXAtPmxpbmtfdHJhaW5pbmcsIHJvY2tjaGlwX3BjaWVfZXBfbGlua190cmFpbmluZyk7Cj4gKwll
cC0+bGlua191cCA9IGZhbHNlOwoKJ2ZhbHNlJyBpcyB0aGUgZGVmYXVsdCBzdGF0ZSwgaXNuJ3Qg
aXQ/CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a
4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
