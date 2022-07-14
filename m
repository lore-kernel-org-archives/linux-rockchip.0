Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99328C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jul 2022 12:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B1j/FcrNo3gHvjfirYEY9JGCiEPOwXnGGJ4PTXcb9+E=; b=qebBTZIXDm2wCV
	Vqgxo3I8egv92mliLPnOU+Ucsd/lnkSjmnkjdUXqtV8kJVA+3ldVYeKuQdSoyCZr6Ve+ebpj13Igj
	iuaLoOP/usEEaopR+q6p0VAZK3lu0IhglaF29WRsAYn83gCl6fhynuaKC0V5LxBwC224djVNThdTi
	xgpQctbzepZAjjwGlhVuEtUoYKBmgsmTo+NTAk6L5Usd5bba98tezlcTOUETNtCjBDEokC7hi4sXK
	VJtCdGbQeqMR4UIJjraTFDNt/YWM0vIAX5IJVwGo1S18ByNJrB70PyEnpnZk2KUsD9ZJ+KB8hQHeR
	01qYRkjsY22OkARHshAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBxjc-00E72g-Bt; Thu, 14 Jul 2022 12:14:24 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBxjO-00E6wz-Hu
	for linux-rockchip@lists.infradead.org; Thu, 14 Jul 2022 12:14:12 +0000
Received: by mail-ej1-x633.google.com with SMTP id l23so3069242ejr.5
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Jul 2022 05:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=io1aLTKdTpdVFlnqujmNPlo4oYNZZxJeBCS9meVocL0=;
        b=CeWiNxlZAbcouK3RkNKwezaE1z81eze3WW4P/p51909MqdufYLlp/sIXTsxGUwMNW8
         VQsB3+LoA+f2yzGTReV67D4y1XN47QyrRxLbl7qsHqt027P9Dpd7ryLXcuDpWI8Ow+OZ
         u9Ywst8kFKNn6prBNoll5cP+FIKXVcJQs8rFTst7bYrdKtEbK//N4Mhq54FgtmnZD0pa
         mXstZDB/KdmMdJj/MEZHvzr2NVdI+p2ZpIUgQWcpaQB3vO7kGxIgqyxWdclIriS2Djph
         SYR9hlPSbDHx7tDWBRZ+0AfwR7dmOpW2azZwAJG/qS+pDIyTWMN2XUAIUEJ/DAUjud9L
         SXdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=io1aLTKdTpdVFlnqujmNPlo4oYNZZxJeBCS9meVocL0=;
        b=ljFPf7LA4zHOjnQak6IINseSf/zmvx+bEBzhj6YzU4xvxidqoqCUEGb/7ck47emU8e
         ZS70/vrqT5kD9POX7Ais6M/FzAEkHv2iC7YSyQ5tcP4FDAts8KMtA8KRIwXh9GM82KIz
         T93yOY4f8cmgazFX9Jmi13lZludmxQ2f/UzinptP/+AhLlfuEmuVhXcSEKWkVNJjvdhY
         kow6TFQkHcGho1QI4hfVSq0knkFBxwOpv5+YuckMGBw2C5Piu3VgU7HWqxAsEk8Wfpvr
         rD+cSCxGgwKNhgUko5hceDRPUhB/oE5GgfAXni4rscMVvSHi4L3JKacdMkDCiB/RExc4
         Oy/A==
X-Gm-Message-State: AJIora98vj0l9YNpzSpNbIsWePwvBnbgaA5Pa2MFPw3tcls7yMVH8Ix6
	kVbxyG6tARXVlF3goJQ655QlIQ==
X-Google-Smtp-Source: AGRyM1vqBZFmek01u+7xSqpw1dXClD+ulujeqQrElJLi0r7GH8mAkTo0HbqXH+C8YX+WDMMQMI6oFA==
X-Received: by 2002:a17:906:9c82:b0:6e1:2c94:1616 with SMTP id fj2-20020a1709069c8200b006e12c941616mr8567049ejc.64.1657800846315;
        Thu, 14 Jul 2022 05:14:06 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id u2-20020aa7db82000000b0043a253973aasm934973edt.10.2022.07.14.05.14.05
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jul 2022 05:14:05 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: Re: [PATCH] arm64: dts: rockchip: Fix SD card init on rk3399-nanopi4
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
In-Reply-To: <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
Date: Thu, 14 Jul 2022 14:14:04 +0200
Cc: =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Message-Id: <9AF1E75F-5947-49B0-887D-82C426527B99@kohlschutter.com>
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
 <12878108.O9o76ZdvQC@diego> <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_051410_598827_A6A53F48 
X-CRM114-Status: GOOD (  22.79  )
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

PiBBbSAxNC4wNy4yMDIyIHVtIDEzOjQxIHNjaHJpZWIgUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJw
aHlAYXJtLmNvbT46Cj4gCj4gT24gMjAyMi0wNy0xNCAwMDo0MSwgSGVpa28gU3TDvGJuZXIgd3Jv
dGU6Cj4+IEhpIENocmlzdGlhbiwKPj4gQW0gRG9ubmVyc3RhZywgMTQuIEp1bGkgMjAyMiwgMDA6
MjI6MjMgQ0VTVCBzY2hyaWViIENocmlzdGlhbiBLb2hsc2Now7x0dGVyOgo+Pj4gbW1jL1NELWNh
cmQgaW5pdGlhbGl6YXRpb24gbWF5IHNvbWV0aW1lcyBmYWlsIG9uIE5hbm9QaSByNHMgd2l0aAo+
Pj4gIm1tYzE6IHByb2JsZW0gcmVhZGluZyBTRCBTdGF0dXMgcmVnaXN0ZXIiIC8KPj4+ICJtbWMx
OiBlcnJvciAtMTEwIHdoaWxzdCBpbml0aWFsaXNpbmcgU0QgY2FyZCIKPj4+IAo+Pj4gTW9yZW92
ZXIsIHJlYm9vdGluZyB3b3VsZCBhbHNvIHNvbWV0aW1lcyBoYW5nLgo+Pj4gCj4+IE5pdDogaGVy
ZSB0aGUgY29tbWl0IG1lc3NhZ2Ugc2hvdWxkIGNvbnRpbnVlIHdpdGggc29tZXRoaW5nIGxpa2U6
Cj4+IC0tLS0tCj4+IFRoaXMgaXMgY2F1c2VkIGJ5IHRoZSB2Y2MzdjAtc2QgcmVndWxhdG9yIHJl
ZmVyZW5jaW5nIHRoZSB3cm9uZyBncGlvLgo+PiBGaXggdGhlIHJlZ3VsYXRvciB0byB1c2UgdGhl
IGNvcnJlY3QgcGluIGFuZCBkcm9wIHRoZSBhbHdheXMtb24gcHJvcGVydHkuCj4+IC0tLS0tCj4+
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS29obHNjaMO8dHRlciA8Y2hyaXN0aWFuQGtvaGxz
Y2h1dHRlci5jb20+Cj4+PiAtLS0KPj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1uYW5vcGk0LmR0c2kgfCA2ICsrKy0tLQo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+PiAKPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kKPj4+IGluZGV4IDhjMGZmNmM5NmUwMy4u
OTE3ODk4MDFhYjAzIDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTktbmFub3BpNC5kdHNpCj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kKPj4+IEBAIC02NywxMCArNjcsMTAgQEAgdmNjMXY4X3Mz
OiB2Y2MxdjgtczMgewo+Pj4gIAl2Y2MzdjBfc2Q6IHZjYzN2MC1zZCB7Cj4+PiAgCQljb21wYXRp
YmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4+PiAgCQllbmFibGUtYWN0aXZlLWhpZ2g7Cj4+PiAt
CQlncGlvID0gPCZncGlvMCBSS19QQTEgR1BJT19BQ1RJVkVfSElHSD47Cj4+PiArCQlncGlvID0g
PCZncGlvMCBSS19QRDYgR1BJT19BQ1RJVkVfSElHSD47Cj4+IFRoZSBpbnRlcmVzdGluZyBxdWVz
dGlvbiB3b3VsZCBiZSBob3cgbmFuby1waS1zcGVjaWZpYyB0aGF0IGdwaW8gaXMuCj4+IEkuZS4g
dGhpcyBpcyB0aGUgcmszMzk5LW5hbm9waTQuZHRzaSB0aGF0IGlzIHNoYXJlZCBieSBtdWx0aXBs
ZSBib2FyZCB0eXBlcywKPj4gc28gY2FuIHlvdSBjaGVjayBpbiBzY2hlbWF0aWNzIGlmIGdwaW8w
LWQ2IGlzIGFsd2F5cyB1c2VkIG9uIGFsbCBvZiB0aGVtPwo+IAo+IE9uIHRoZSBSNFMgc2NoZW1h
dGljLCB0aGlzIGlzIEdQSU8wX0ExIHNhbWUgYXMgdGhlIG90aGVycy4gR1BJTzAgZG9lc24ndCBl
dmVuIGhhdmUgYSBiYW5rIEQgb24gUkszMzk5LCBpdCBvbmx5IGdvZXMgdXAgdG8gQjUgOi8KPiAK
Pj4gVGhhbmtzCj4+IEhlaWtvCj4+PiAgCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+Pj4g
IAkJcGluY3RybC0wID0gPCZzZG1tYzBfcHdyX2g+Owo+Pj4gLQkJcmVndWxhdG9yLWFsd2F5cy1v
bjsKPj4+ICsJCXJlZ3VsYXRvci1ib290LW9uOwo+Pj4gIAkJcmVndWxhdG9yLW1pbi1taWNyb3Zv
bHQgPSA8MzAwMDAwMD47Cj4+PiAgCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMDAwMDAw
PjsKPj4+ICAJCXJlZ3VsYXRvci1uYW1lID0gInZjYzN2MF9zZCI7Cj4+PiBAQCAtNTgwLDcgKzU4
MCw3IEBAIHdpZmlfcmVnX29uX2g6IHdpZmktcmVnX29uLWggewo+Pj4gICAgCXNkbW1jIHsKPj4+
ICAJCXNkbW1jMF9kZXRfbDogc2RtbWMwLWRldC1sIHsKPj4+IC0JCQlyb2NrY2hpcCxwaW5zID0g
PDAgUktfUEE3IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwPjsKPj4+ICsJCQlyb2NrY2hpcCxw
aW5zID0gPDAgUktfUEQ2IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwPjsKPiAKPiAuLi5hbmQg
Y2xhaW1pbmcgdGhlIGNhcmQgZGV0ZWN0IGlzIG9uIHRoZSBzYW1lIG5vbi1leGlzdGVudCBwaW4g
YXMgdGhlIHJlZ3VsYXRvciBlbmFibGUgaXMgY2xlYXJseSBldmVuIG1vcmUgd3JvbmcuCj4gCj4g
SXMgdGhpcyBhbm90aGVyIGNhc2Ugd2hlcmUgYSBVSFMgY2FyZCBpcyBpbnZvbHZlZCwgc3VjaCB0
aGF0IFZDQ19TRElPIGdldHMgbGVmdCBhdCAxLjhWIGFmdGVyIGEgcmVib290LCBzbyBzdWJzZXF1
ZW50IGF0dGVtcHRzIHRvIGRvIHRoZSBpbml0aWFsIGhhbmRzaGFrZSB3aGVyZSB0aGUgY2FyZCBp
cyBleHBlY3RpbmcgM1YgbG9naWMgbGV2ZWxzIGZhaWw/IChBS0EgdGhlIFRpbmtlcmJvYXJkIHBy
b2JsZW0pLiBIb2JibGluZyB0aGUgcmVndWxhdG9yIHN1Y2ggdGhhdCBMaW51eCBjYW4gbmV2ZXIg
YWN0dWFsbHkgdHVybiBWQ0MzVjBfU0Qgb2ZmLCB0aHVzIHRoZSBjYXJkIG5ldmVyIGdldHMgcmVz
ZXQsIG1pZ2h0IGFwcGVhciB0byAid29yayIsIGJ1dCBpc24ndCB0aGUgcmlnaHQgdGhpbmcgdG8g
ZG8uCj4gCj4gUm9iaW4uCgpSaWdodCwgdGhpcyBpcyBhbGwgdmVyeSBzdHJhbmdlLiAKCkluZGVl
ZCwgSSBoYXZlIGEgVUhTIGNhcmQgYW5kIHRoZSBwcm9ibGVtIHlvdSBkZXNjcmliZS4KSSd2ZSBh
Y3R1YWxseSBsb29rZWQgaW50byB0aGUgb3RoZXIgUkszMzk5IGR0cyBmaWxlcyB0byBjb21lIHVw
IHdpdGggdGhhdCBwYXRjaCAoZS5nLiByazMzOTktcm9jLXBjLmR0c2ksIHdoaWNoIGRvZXMgdGhp
czsgYWxzbyBzZWUgWzFdKQoKSSB1bmRlcnN0YW5kIHRoYXQgd2Ugc2hvdWxkIGRvIHRoZSByaWdo
dCB0aGluZywgYnV0IEkgYW0gYnkgbm8gbWVhbnMgc3VyZSB3aGF0IHRoZSAicmlnaHQiIHRoaW5n
IGZvciB0aGlzIHByb2JsZW0gaXMuClRoYXQgc2FpZCwgSSB3aXNoZWQgc29tZW9uZSB3aXRoIGV4
cGVydGlzZSBhbmQgYXV0aG9yaXR5IGluIHRoZSBtbWMvcm9ja2NoaXAgY29tbXVuaXR5IHdvdWxk
IGZpeCB0aGlzIGZvciBnb29kLgoKVGhlcmUgYXJlIHNldmVyYWwgcGF0Y2hlcyBhcm91bmQgdGhp
cyAxLjhWLzNWIHZvbHRhZ2UgZGFuY2UgdGhhdCBkbyB3b3JrLCBnZXQgdXNlZCBieSBzZXZlcmFs
IGRpc3RyaWJ1dGlvbnMgYnV0IGRpZG4ndCBnZXQgbWVyZ2VkIHRvIG1haW5saW5lIGJlY2F1c2Us
IHdlbGwsIHRoZXJlIGNvdWxkIGJlIGEgYmV0dGVyIHJpZ2h0IHRoaW5nIHRvIGRvIChsaWtlIFsy
XSwgd2hpY2ggaXMgYWxzbyBzdGlsbCBuZWVkZWQgd2hlbiB1c2luZyBtYWlubGluZSB1LWJvb3Qp
LgoKR2l2ZW4gdGhlIHN0YXRlIG9mIHRoaXMgaXNzdWUsIGF0IGxlYXN0IGFsaWduaW5nIHRoZSBj
b2RlIHRvIG1hdGNoIGFub3RoZXIgYm9hcmQncyBmaXgg4oCUIHdoaWNoIGFscmVhZHkgaXMgaW4g
dGhlIG1haW5saW5lIGtlcm5lbCDigJQgc2VlbXMgYSBzZW5zaWJsZSBhcHByb2FjaCB0byBtZS4g
SXQgdW5ibG9ja3MgdXNlcnMgbGlrZSBtZSB3aG8gd291bGQgcGVyaGFwcyBvdGhlcndpc2UganVz
dCBnaXZlIHVwIG9uIHVzaW5nIHRoZXNlIGRldmljZXMuCgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGludXgtbW1jLzMzNjQ4MTMuQVBiVzMyTmxnSkBwaGlsL1QvI20xYjIzY2QyYzQzYjYw
MGI1YTZmMDg0NDYxYWU1M2U0ODJhZDY1MzE2ClsyXSBodHRwczovL3BhdGNod29yay5rZXJuZWwu
b3JnL3Byb2plY3QvbGludXgtbW1jL3BhdGNoL0FNM1BSMDNNQjA5NjY0MTYxQTdGQTJCRDY4QjI4
MDBBN0FDNjIwQEFNM1BSMDNNQjA5NjYuZXVycHJkMDMucHJvZC5vdXRsb29rLmNvbS8KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
