Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1989D79764
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Jan 2026 09:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/VMgFnSboJTT9tw2R0j+PkC3KKr4hvQmPzK8kgDwxU=; b=xMfmhla1SC/ne6
	SA/a28+2hVrvtn4nWkC3Wrp9XrnmNditqVfATw0z1BuXS2MHR0vF93nLlOcOf/zk6NjRsOzx0fB4z
	+zCGNgYUDUzcrQZ26+5cZ/5WG4urK2fEqY11jZP6BZ1PLBFT6+I9B0x1haQSgWcvCRO0B4DIU7KmY
	AfCuuwlqQrjDLrYTSOuXt9wWPF0Xxo99JeXct+E9U9Tx0CSFlwloygk+7MJy8yXsuRClJ6TNWJKvm
	fq3RV72ASqwPs6wvUxwk8VpvACH+CIq5N4zYSwMDASGmB3odOT8kKdsE6se+BPQ8U7g8+B7CyAl9q
	OryPrvgT8vXsdHMOEcAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vm7RS-00000002Sf1-1biE;
	Sat, 31 Jan 2026 09:38:58 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vm7RK-00000002SdO-2FDX
	for linux-rockchip@lists.infradead.org;
	Sat, 31 Jan 2026 09:38:56 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-64b9dfc146fso5206164a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 31 Jan 2026 01:38:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769852328; cv=none;
        d=google.com; s=arc-20240605;
        b=HpsE+7RE9tGXHzx8AcDXSuD5VD2JD1x6Aiiaf5mONkKbl66Hd7A6HYCnCEKEvfkoHD
         pX7Z94bHpDGBwPUNPpeld/zjGlTUyLXPJ3M7V/tnK1z95rdIPxlCjGtZIveTzNPji9R4
         Ll4Zn+ta1eSbHi86CnchESxWg/RhGvS/u07Re8WZg6tKARP2+yxbK1Q+25XLbexAMGLw
         cAtf0Ix//lkApZJqWTM0Hm4TsIvjY+2Fy9lZDItB9khaZoFC/U1Z2QXf/ZSBcnEEWYMC
         7EbNmDpHd+KiZO6DaMhjG5/QfcVvHry6uCgiNYJ5hRxHFNqnIfmThJ0H9KcbCMQ9Jtdz
         njsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=CnkO+pyfjOjiofNSg49xQZUi6tf7VfPDjwPBlAQ3BQ8=;
        fh=WG8TNOHr23gBio23tGslRJHLgDM/wySKu7RaKehPp8c=;
        b=iLV+5oLmrFW/vEoCIx977szfVpMvxn9HmnepwaRGvwdSLQE/20sGXzCr6Gkzzq3oe0
         N/vt+7aq8gOxKNvqcRzDc981r+Id/f3mLaKazGJhFNLss7oH+uMpZAVfBHTXjN0ZHDKJ
         7swCoQdIaZD8WhmVJOq0BnBSb+VR1OfFlGN+/QLXArxWJLA+BpcOAh8P9jbsxESqivEK
         SPDXsx8VNs6RzLJIvkZ4sn4mRrZnKGG6euAQoGm+m2aDIi12FXwLP7NMEsDkfjtRYGRq
         9R3L/OiWmHtiXACO5U/ESHln99a5Q9wxyAAwd6CgPRn5p5kkYvTcJUW2XEHu9Yx9lhhj
         H1/w==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769852328; x=1770457128; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CnkO+pyfjOjiofNSg49xQZUi6tf7VfPDjwPBlAQ3BQ8=;
        b=kMDE663K4o+pjlnMHifR1wXF9QeoCH65tCpgmyVViT2Miz93n81PYKEBVH2n5GGe6j
         HDoagKSHt/yOzmVPox9brBCQX9pn2rDHT1gdDnXg/DFad2qMM3NrSg6/vOxj9vC4YxGQ
         tKuj9WJALLvQWmTPG7jWostB6RgTHFHRt2kix2v+UYEGqgh5CfNvAg4Akygo92TGiqev
         6RoqZHxk2qs95yhm4y47vb4NOP9bbiSsWEFZ1d2zT81QLLK2G21w0MIY9niqSpVMFpMY
         Sv8N3aZrqChshYDEfaLQvMrkrLB3HZpSvjrpJSV+AdSPf0OZ86jyIDUnGWNw6P7K6FV/
         t1bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769852328; x=1770457128;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CnkO+pyfjOjiofNSg49xQZUi6tf7VfPDjwPBlAQ3BQ8=;
        b=o7NBr3UkZ4OXSRxTPJTloap7xf5VpRBoyHtHHQZZLITNin+vqf/QUJIvrH5EkJaUJ4
         B/dj/oRm21C9fwhkcxTBP3Rhd0aKxe79cTjUu8Al97Syg598OWb4dhY1M0s1/5vxcnME
         pof1FFFXMUhkc/TdP0gX1r5cJqvRylRI16Ipv4mHajTiEsb08tRBoyKVSFS6TooaZHQb
         Lfyks9O5UtpiAwJkBXIfxV9+pxH94Tn2Z9JBxlhyVr1gL2KA2x+mhcPARF1CpR8IpBnY
         kfjxO4M6ivQYyT07kMIHqJbc/4plb++3x9WmfawbyyUokzS1IDWe6Gm3ebzlxrSx2/74
         szHg==
X-Forwarded-Encrypted: i=1; AJvYcCWffZJ5Gk6kODjxS13ZgZR1T4N1lTQvtlE23ekVPfZJ2M46mk1m4SB1YX+ZSOhez+l8VcKkqEzi+dR8kXOgwA==@lists.infradead.org
X-Gm-Message-State: AOJu0YykdIP3yjbYWd5c0nu9xL5y5IBPaM/59+N4q+hNG/FZNUlwxnJc
	LtMqQQnEeubF7ZF64GbUhoZlpFr/hOfS6dY5CirdA1awgcIv0PV6Dc7fRe1U1a4KZa7Q0WNa1Cr
	WPfBmkpg6jgXQLONrEABLX387oT7eO9s=
X-Gm-Gg: AZuq6aJSyEXkY7SXFHzgL898gdw2fq+dUfetohlz3zlKpujR91Qt5rzcuYZLvTxUF50
	Wh1FsNwMyvTyK1oplB+mPDEIJjwpfeqyjCtaOM2Q/yEYF10A/W7VzFN2J+oBZMuvvFwALbz4MBx
	MCLY68jafBSVNfe11lz39iwZLgweGkqSK6D7hO3G7Z59Jv9DrcOSLaheSw2BwmuawNIm9y6zv3S
	tlM/d6K3QjzNcmAuZtaVYGi8ff7y0Hj2E+c0f5CGW6VCntExaPdZlXGDFn5FNRiCwc+ynUPTuzH
	pg==
X-Received: by 2002:a05:6402:51d1:b0:658:ba49:96b8 with SMTP id
 4fb4d7f45d1cf-658e2e9f42cmr3349030a12.3.1769852327465; Sat, 31 Jan 2026
 01:38:47 -0800 (PST)
MIME-Version: 1.0
References: <20240809073610.2517-1-linux.amoon@gmail.com> <aXtpg0V_sifQEWHJ@grimm-nixos-ssd-2>
 <aXyHITrZ89Mmn8_J@ryzen>
In-Reply-To: <aXyHITrZ89Mmn8_J@ryzen>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 31 Jan 2026 15:08:42 +0530
X-Gm-Features: AZwV_Qi4rUDA22e6_H2MBH2utJIBF_ID2Uvxh97zfsLPgTyq0rIRh2L52PovAls
Message-ID: <CANAwSgTQ-cdyzd2WjHMYCY33p7um3CpjMeTzRO7vcd0fTF6X9Q@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: dw-rockchip: Enable async probe by default
To: Niklas Cassel <cassel@kernel.org>
Cc: Grimmauld <grimmauld@grimmauld.de>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260131_013852_980670_20DC0B10 
X-CRM114-Status: GOOD (  47.30  )
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

SGkgTmlrbGFzLyBHcmltbWF1bGQsCgpPbiBGcmksIDMwIEphbiAyMDI2IGF0IDE1OjU1LCBOaWts
YXMgQ2Fzc2VsIDxjYXNzZWxAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBIZWxsbyBHcmltbWF1bGQs
Cj4KPiBPbiBUaHUsIEphbiAyOSwgMjAyNiBhdCAwMzowNjo1OVBNICswMTAwLCBHcmltbWF1bGQg
d3JvdGU6Cj4gPiBIZWxsbyBBbmFuZCwKPiA+Cj4gPiBJIGhhdmUgdGVzdGVkIHRoaXMgcGF0Y2gu
Cj4gPiBIYXJkd2FyZS9LZXJuZWwgaW5mb3JtYXRpb246Cj4gPiAtIHJhZHhhIHJvY2sgNWMgbGl0
ZQo+ID4gLSByazM1ODhzIENQVSwgYXJtNjQKPiA+IC0gZGVmY29uZmlnIE5peE9TIGtlcm5lbAo+
ID4gLSBwaWNrZWQgb250byA2LjE4LjcKPiA+IC0gRFQ6IHJvY2tjaGlwL3JrMzU4OHMtcm9jay01
Yy5kdGIKPiA+IC0gdGVzdGVkIGJvdGggdWJvb3QgKG1haW5saW5lKSBhbmQgZWRrMiAodmVuZG9y
KQo+ID4KPiA+IE9uIEZyaSwgQXVnIDA5LCAyMDI0IGF0IDAxOjA2OjA5UE0gKzA1MzAsIEFuYW5k
IE1vb24gd3JvdGU6Cj4gPiA+IFJvY2tjaGlwIERXQyBQQ0llIGRyaXZlciBjdXJyZW50bHkgd2Fp
dHMgZm9yIHRoZSBjb21ibyBQSFkgbGluawo+ID4gPiAoUENJZSAzLjAsIFBDSWUgMi4wLCBhbmQg
U0FUQSAzLjApIHRvIGJlIGVzdGFibGlzaGVkIGxpbmsgdHJhaW5pbmcKPiA+ID4gZHVyaW5nIGJv
b3QsIGl0IGFsc28gd2FpdHMgZm9yIHRoZSBsaW5rIHRvIGJlIHVwLCB3aGljaCBjb3VsZCBjb25z
dW1lCj4gPiA+IHNldmVyYWwgbWlsbGlzZWNvbmRzIGR1cmluZyBib290Lgo+ID4KPiA+IEkgZm91
bmQgdGhhdCB3aXRob3V0IHRoaXMgcGF0Y2gsIFVTQiAzIHBvcnRzIGFzIHdlbGwgYXMgdGhlIFBD
SWUgY29ubmVjdG9yIHNlZW1pbmdseSBzdGF5IHVuaW5pdGlhbGl6ZWQgZHVyaW5nIGJvb3Qgb24g
bXkgaGFyZHdhcmUuCj4gPiBUaGlzIG1hbmlmZXN0cyBpbiBhIGJvb3RhYmxlIFVTQiBmbGFzaCBk
cml2ZSBsb2FkaW5nIGluaXRyZCBmcm9tIGJvb3Rsb2FkZXIgKGJvdGggdWJvb3QgYW5kIGVkazIp
IHBlcmZlY3RseSwgYnV0IHRoZW4gZmFpbHMgdG8gbW91bnQgdGhlIHJvb3RmcyBmcm9tIHRoZSBk
cml2ZS4KPiA+IEluIGVmZmVjdCwgYm9vdCBpcyBub3QganVzdCBzbG93ZXIgdGhhbiBpdCBzaG91
bGQgYmUsIGl0IGp1c3QgZG9lcyBub3QgYm9vdCBhbGwgdGhlIHdheSBhdCBhbGwuCj4gPiBJbiB0
aGF0IHNjZW5hcmlvLCB0aGUgZGV2ZnMgZW50cmllcyBjb3JyZXNwb25kaW5nIHRvIHRoZSBmbGFz
aCBkcml2ZSBhcmUgc2ltcGx5IG1pc3NpbmcsIHNhbWUgZm9yIHRoZSBzeXNmcyB3aGVyZSBpIHdv
dWxkIGV4cGVjdCB0aGUgVVNCIGRldmljZSBsaXN0ZWQuCj4gPiBSZXBsdWdnaW5nIHRoZSBVU0Ig
Zmxhc2ggZHJpdmUgZHVyaW5nIGluaXRyZCBkb2VzIHNlZW0gdG8gZml4IHRoYXQsIGJ1dCBpcyB0
ZWRpb3VzIGFuZCBub3QgdmlhYmxlIGZvciBhIHNlcnZlci4KPiA+IFNpbWlsYXJseSwgYm9vdGlu
ZyBmcm9tIG0uMiBTU0QgYXR0YWNoZWQgdmlhIFBDSWUgZmFpbHMgdGhlIHNhbWUgd2F5LCB3aXRo
IHJvb3RmcyB0aW1pbmcgb3V0IGRlc3BpdGUgdGhlIGJvb3Rsb2FkZXIgY29ycmVjdGx5IHJlYWRp
bmcgaW5pdHJkIG9uIHRoZSBzYW1lIGRyaXZlLgo+ID4gRndpdywgcmVwbHVnZ2luZyB0aGUgU1NE
IGRvZXMgbm90IHdvcmsgbGlrZSBpdCBkb2VzIGZvciBVU0IgZmxhc2ggZHJpdmVzLCBhbmQgaXMg
ZXZlbiB3b3JzZSBvZiBhbiBpZGVhLgo+ID4gVVNCIDIgcG9ydHMgYXMgd2VsbCBhcyBTRCBjYXJk
IGJvb3RzIGNvcnJlY3RseSwgZXZlbiB3aXRob3V0IHlvdXIgcGF0Y2guCj4gPiBXaXRob3V0IHlv
dXIgcGF0Y2gsIGkgYW0gc2VlaW5nICJkZWZlcnJlZCBwcm9iZSBwZW5kaW5nIiBpbiBkbWVzZyBi
ZWZvcmUgYm9vdCBnZXRzIHN0dWNrLCB3aGljaCB3YXMgdGhlIGhpbnQgd2hpY2ggbWFkZSBtZSBm
aW5kIHlvdXIgcGF0Y2guCj4gPiBJIGFtIG5vdCBzdXJlIHdoZXRoZXIgdGhhdCBpcyB0aGUgYWN0
dWFsIGNhdXNlIG9yIGp1c3QgYSBzeW1wdG9tIGZvciB3aHkgZHJpdmVzIGFyZSBub3QgcmVjb2du
aXplZCBkdXJpbmcgYm9vdCwgYW5kIGFtIG5vdCBxdWl0ZSBzdXJlIGhvdyB0byBkZWJ1ZyB0aGlz
IGZ1cnRoZXIuCj4gPgo+ID4gPiBUbyBvcHRpbWl6ZSBib290IHRpbWUsIHRoaXMgY29tbWl0IGFs
bG93cyBhc3luY2hyb25vdXMgcHJvYmluZy4KPiA+ID4gVGhpcyBjaGFuZ2UgZW5hYmxlcyB0aGUg
UENJZSBsaW5rIGVzdGFibGlzaG1lbnQgdG8gb2NjdXIgaW4gdGhlCj4gPiA+IGJhY2tncm91bmQg
d2hpbGUgb3RoZXIgZGV2aWNlcyBhcmUgYmVpbmcgcHJvYmVkLgo+ID4KPiA+IFdpdGggdGhpcyBw
YXRjaCwgYm9vdGluZyBmcm9tIFNTRCBvciBVU0IgMyBwb3J0IHdvcmtzIGZsYXdsZXNzbHksIGFu
ZCBpIGhhdmUgbm90IHNlZW4gYW55IHJlZ3Jlc3Npb25zIHdpdGggU0QgY2FyZCBvciBVU0IgMiBi
b290LCBub3IgYW55IG90aGVyIGhhcmR3YXJlIGNvbXBvbmVudC4KPiA+IFRoaXMgc2V0dXAgaGFz
IHdvcmtlZCBmb3IgbXVsdGlwbGUgYm9vdHMgd2l0aG91dCBmYWlsLCBib3RoIHdpdGggdHJhZGl0
aW9uYWwgZXh0NCBhbmQgemZzIHJvb3RmcyBiZWluZyBsb2FkZWQgZnJvbSBVU0IgMyBhbmQgUENJ
ZS4KPiA+IEJlY2F1c2UgaSByZXF1aXJlIHRoaXMgcGF0Y2ggdG8gcnVuIG15IHJvY2sgNWMgZnJv
bSBTU0QsIGkgYW0gY3VycmVudGx5IHJ1bm5pbmcgYSBjdXN0b20gcGF0Y2hlZCBrZXJuZWwsIGJ1
dCB3b3VsZCBoaWdobHkgYXBwcmVjaWF0ZSB0aGlzIHBhdGNoIG1ha2luZyBpdHMgd2F5IHRvIG1h
aW5saW5lIGV2ZW50dWFsbHkuCj4gPiBUaGVyZSBtaWdodCB3ZWxsIGJlIHNvbWV0aGluZyBlbHNl
IGdvaW5nIG9uIGhlcmUuIFRoZSBwcm9wb3NlZCBwYXRjaCBtYXkgbm90IGJlIHRoZSAicHJvcGVy
IiBmaXggdG8gdGhlIGlzc3VlcyBpIGFtIHNlZWluZywgYnV0IGl0IGRvZXMgYXQgbGVhc3Qgd29y
ay4KPiA+Cj4gPiBJIGhhdmUgTk9UIHRlc3RlZCBib290IGZyb20gZU1NQyAoZWl0aGVyIHdpdGgg
b3Igd2l0aG91dCB0aGlzIHBhdGNoKSwgdGhvdWdoIGkgaGF2ZSBubyByZWFzb24gdG8gYmVsaWV2
ZSBpdCB3b3VsZCBiZSBpbXBhY3RlZC4KPiA+Cj4gPiBJIGFtIGhhcHB5IHRvIHByb3ZpZGUgbW9y
ZSBpbmZvIGFzIG5lZWRlZC4gRmlyc3QgdGltZSBwb3N0aW5nIHRvIHRoZSBMS01MLCBpIGhvcGUg
aSBhbSBkb2luZyB0aGlzIHJpZ2h0Li4uCj4gPgo+ID4gVGVzdGVkLWJ5OiBHcmltbWF1bGQgPGdy
aW1tYXVsZEBncmltbWF1bGQuZGU+ClRoYW5rcyBmb3IgdGVzdGluZyB0aGlzIHBhdGNoLgo+Cj4g
SSB0ZXN0ZWQgdGhpcyBwYXRjaCBhZ2FpbiBvbiB0aGUgbGF0ZXN0IGtlcm5lbCwgYW5kIGl0IHN0
aWxsIHJlc3VsdHMgaW4KPiB0aGUgInJlcXVlc3RpbmcgbG9hZGluZyBhIG1vZHVsZSB3aXRoIHdh
aXQgYWxsb3dlZCB3aGlsZSBiZWluZyBjYWxsZWQgZnJvbQo+IGFzeW5jIGNvbnRleHQgY2FuIHJl
c3VsdCBpbiBhIGRlYWRsb2NrIiB3YXJuaW5nIGZyb20gdGhlIG1vZHVsZXMgY29kZS4KPiAoV2l0
aCB0aGUgY2FsbGluZyBjb2RlIGJlaW5nIHBoeWxpYi4pCj4gU2VlIHRoZSBwaHlsaWIgc3BsYXQg
dGhhdCBJIHByZXZpb3VzbHkgcmVwb3J0ZWQgaW4gdGhpcyB0aHJlYWQuCj4KSeKAmXZlIGF0dGVt
cHRlZCB0byByZXByb2R1Y2UgdGhlIHdhcm5pbmcgYnV0IHdhcyB1bmFibGUgdG8gdHJpZ2dlciBp
dCBsb2NhbGx5LgoKPiBOb3RlIHRoYXQgSSd2ZSBidWlsdCB0aGUgbmV0d29yayBQSFkgZHJpdmVy
IHRoYXQgcGh5bGliIHdhbnRzIHRvIGxvYWQKPiAoQ09ORklHX1JFQUxURUtfUEhZPXkpIGFzIGJ1
aWx0LWluLiBBcyBsb25nIGFzIHRoZSBQSFkgZHJpdmVyIGlzIGJ1aWx0Cj4gYXMgYnVpbHQtaW4s
IEkgZG9uJ3QgdGhpbmsgdGhhdCB0aGUgcHJvYmxlbSB0aGUgbW9kdWxlcyBjb2RlIGlzIHdhcm5p
bmcKPiBhYm91dCBjYW4gaGFwcGVuLiAoQnV0IEkgYWxzbyBkb24ndCB1bmRlcnN0YW5kIHdoeSBp
dCBpcyB0cnlpbmcgdG8gbG9hZAo+IGEgbW9kdWxlIHdoZW4gdGhlIGRyaXZlciBpcyBidWlsdCBh
cyBidWlsdC1pbiBpbiB0aGUgZmlyc3QgcGxhY2UuLi4pCj4KQnV0IGJvdGggQ09ORklHX1BIWUxJ
QiBhbmQgQ09ORklHX1JFQUxURUtfUEhZIGFyZSBzZWxlY3RlZCBhcyBidWlsZGluCmZvciBSODE2
OSBtb2R1bGUuCgpJIGhhdmUgdGVzdGVkIHdpdGggdGhlIGJ1aWx0LWluIG1vZHVsZQpDT05GSUdf
UjgxNjk9eQpDT05GSUdfUjgxNjlfTEVEUz15CgpBcyB3ZWxsIGFzIHRoZSBtb2R1bGUKQ09ORklH
X1I4MTY5PW0KQ09ORklHX1I4MTY5X0xFRFM9eQoKPiBBbnl3YXksIG15IG5ldHdvcmtpbmcgaXMg
d29ya2luZyBwZXJmZWN0bHkgZmluZSBldmVuIHdpdGggdGhlIHNwbGF0Lgo+Cj4KPiBIYXZpbmcg
YXN5bmMgcHJvYmluZyBmb3IgdGhlIFJvY2tjaGlwIFBDSWUgY29udHJvbGxlciBkcml2ZXIsIHdo
aWNoIGlzCj4gdXNlZCBhIExPVCBvZiByb2NrY2hpcCBiYXNlZCBTb0NzLCBpcyBhIGdvb2QgdGhp
bmcsIHNvIEkgZG9uJ3QgdGhpbmsgaXQKPiBpcyByaWdodCB0byBhdm9pZCBlbmFibGluZyBhc3lu
YyBwcm9iaW5nIGp1c3QgYmVjYXVzZSBpdCByZXN1bHRzIGluIGEKPiBzcGxhdCBvbiBhIHNpbmds
ZSByb2NrY2hpcCBiYXNlZCBib2FyZCAocm9jazViKS4KPgpZZXMsIHRoaXMgY291bGQgaGVscCBp
biB0aGUgbW9kdWxlIHByb2JlIHBjaSBtb2R1bGUuCgpFYXJsaWVyLCBJIHRob3VnaHQgZ21hYyB3
aWxsIGNvbnRyb2wgdGhlIHI4MTY5IG1vZHVsZSwgYnV0IEkgd2FzIHdyb25nLgpDb3VsZCB5b3Ug
cGxlYXNlIHRyeSB0aGVzZSBjaGFuZ2VzIGF0IHlvdXIgZW5kPyBUaGVzZSBjaGFuZ2VzIGFyZQpy
ZWxhdGVkIHRvIE1JTU8uLgoKJCBnaXQgZGlmZiAuL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4LXJvY2stNWItNWJwLTV0LmR0c2kKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWItNWJwLTV0LmR0c2kKYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLTVicC01dC5kdHNpCmluZGV4IGIzZTc2YWQy
ZDg2OS4uZmIzYThiYTQwODVhIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC1yb2NrLTViLTVicC01dC5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LXJvY2stNWItNWJwLTV0LmR0c2kKQEAgLTQ3Nyw3ICs0NzcsNiBAQCAm
cGNpZTJ4MWwwIHsKICZwY2llMngxbDIgewogICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVs
dCI7CiAgICAgICAgcGluY3RybC0wID0gPCZwY2llMl8yX3JzdD47Ci0gICAgICAgcmVzZXQtZ3Bp
b3MgPSA8JmdwaW8zIFJLX1BCMCBHUElPX0FDVElWRV9ISUdIPjsKICAgICAgICB2cGNpZTN2My1z
dXBwbHkgPSA8JnZjYzN2M19wY2llMngxbDI+OwogICAgICAgIHN0YXR1cyA9ICJva2F5IjsKIH07
CkBAIC01MzUsNiArNTM0LDEyIEBAIHBjaWUzX3ZjYzN2M19lbjogcGNpZTMtdmNjM3YzLWVuIHsK
ICAgICAgICAgICAgICAgIH07CiAgICAgICAgfTsKCisgICAgICAgcnRsODIxMWYgeworICAgICAg
ICAgICAgICAgcnRsODIxMWZfMF9yc3Q6IHJ0bDgyMTFmLTAtcnN0IHsKKyAgICAgICAgICAgICAg
ICAgICAgICAgcm9ja2NoaXAscGlucyA9IDwzIFJLX1BCMCBSS19GVU5DX0dQSU8gJnBjZmdfcHVs
bF9ub25lPjsKKyAgICAgICAgICAgICAgIH07CisgICAgICAgfTsKKwogICAgICAgIHVzYiB7CiAg
ICAgICAgICAgICAgICB1c2JjMF9pbnQ6IHVzYmMwLWludCB7CiAgICAgICAgICAgICAgICAgICAg
ICAgIHJvY2tjaGlwLHBpbnMgPSA8MyBSS19QQjQgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9u
ZT47CkBAIC01NTAsNiArNTU1LDE5IEBAICZwd20xIHsKICAgICAgICBzdGF0dXMgPSAib2theSI7
CiB9OwoKKyZtZGlvMCB7CisgICAgICAgcmdtaWlfcGh5MDogZXRoZXJuZXQtcGh5QDEgeworICAg
ICAgICAgICAgICAgLyogUlRMODIxMUYgKi8KKyAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAi
ZXRoZXJuZXQtcGh5LWlkMDAxYy5jOTE2IjsKKyAgICAgICAgICAgICAgIHJlZyA9IDwweDE+Owor
ICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKyAgICAgICAgICAgICAg
IHBpbmN0cmwtMCA9IDwmcnRsODIxMWZfMF9yc3Q+OworICAgICAgICAgICAgICAgcmVzZXQtYXNz
ZXJ0LXVzID0gPDIwMDAwPjsKKyAgICAgICAgICAgICAgIHJlc2V0LWRlYXNzZXJ0LXVzID0gPDEw
MDAwMD47CisgICAgICAgICAgICAgICByZXNldC1ncGlvcyA9IDwmZ3BpbzMgUktfUEIwIEdQSU9f
QUNUSVZFX0xPVz47CisgICAgICAgfTsKK307CisKICZya25uX2NvcmVfMCB7CiAgICAgICAgbnB1
LXN1cHBseSA9IDwmdmRkX25wdV9zMD47CiAgICAgICAgc3JhbS1zdXBwbHkgPSA8JnZkZF9ucHVf
czA+OwoKPgo+IEtpbmQgcmVnYXJkcywKPiBOaWtsYXMKClRoYW5rcwotQW5hbmQKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
