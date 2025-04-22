Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C331C369C2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Apr 2025 21:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZLcqdTLdxL0fQRkFOQJbvJQiR3YsLKRrZDXGUvsVy0=; b=ziflDQswda1SGi
	Goh3WVaxR9muiQMcgZUIsvrxxemI+9L0hZHzuaTdW5XFvf6PPBQ1E7DtGiXfCj7vZJ8hzidUdQtv1
	5K0mtNa/5PSHl9GcjZWBE5kjdi8Jzh/2UAiF6DNljdIn6PGkIeUcq3tbBNTVkvSO8MRaer/ox0lC/
	EmzDao6FpTXZgHtTl6a7db1M4KmENOz3RlGqWAD2sHPlNmhoTUsse8kPCkTdw0cHez1qP7LNd9QFL
	I3DC5SjJZNkEITnhFAdQfO1zix+OeuFJ9ZJXwigFbEUIOgwiwGC4mvL55TEicTDW3GEmbCImzzStz
	xVr7RhKvKZJhIZ1vURKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7LIf-00000008bl4-20SJ;
	Tue, 22 Apr 2025 21:37:05 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7K6W-00000008R0o-3Wch;
	Tue, 22 Apr 2025 20:20:30 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-43cfecdd8b2so40147925e9.2;
        Tue, 22 Apr 2025 13:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745353227; x=1745958027; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rO7p2Xz1WnscXWSSH5QPauUlR12Dd0rgVnR8sWH1ffU=;
        b=C2my+JlvnYlscWOr9OPM1jSyiTjaLJJABfXyEoPHBuEokN+4cRDUMpNZA1V6cxUoDg
         p9TaEifPfHqA1iPP00NC2aqJV/GBegNQpzohJRVmm+0fPfv9r1b969LEHKD7hQ8LHdTY
         E4+HQjcov4m4SglHt2V5qHFg0Z5/sFg1kudijwo5758sujBjH3x7rHbz5mRUDFJFHqwT
         mLrfIgpJM34IZWGqATQ3EBcF+7zNhMhxljyuJuJr1hfUP35BeVn+NZnT28dGdTvgTGVI
         FEp0Nce5NIR7ELOWM9kieWN6O5v8XO1sq3DAHZMj7Vu74xkno5XdO0cK/NZ0hMjGk8t4
         cEGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745353227; x=1745958027;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rO7p2Xz1WnscXWSSH5QPauUlR12Dd0rgVnR8sWH1ffU=;
        b=j0nE3SXXDWmwJEwEyZ7CwNUg5sGXMJM/maZi+/z2ninxZ/TitEOaQils/oaxFm2Eb8
         dcFiDjHyMs6P1uwdwbyHejvCY9AlM6ezOtOzGgfiVKrzgy5eFd4YXQ+N+RJJVgq97WrO
         ZRjJWp7PaYQ7mr3emop76Lfqx3urhvIghq9lFr89MgDOfFf8EK/0qQjRV0bxSnRlCj07
         rIJ7aiaJj2ih0A8Dli69hLc4ysC49AehBT+TiJXDBI90O6vn2+a6zgMIrSa9DpRB8mSB
         BiPqxkowcUF/FetpgO0sHRMPJ/5aVWPOZMPdN2c2Z3Pdotg+a9UoFyA9ix/5XeFCm6lV
         X8MA==
X-Forwarded-Encrypted: i=1; AJvYcCUgl73JE5FbWJPF6zZmN99DB3QF/HR3zrDoq+grf3Z9c3/DjEz7CKAGuZ1W3xeUScocPnTcpvWMtBu2tQE0Di3P@lists.infradead.org, AJvYcCVNxlvpqDdwqJZi+xtdDH8yEARkbng8J1e9oI/oQ6YaufXiQFFeOfXtrrmUR+Ghwy5iFqlBik94AxEe+thd2H4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwPpkoY1fOw4tnM3blT2xnJt28+T8DNaLSAytJrwJvgW85PlQcI
	Wt/F0E7xYsOAPYvWd4iV6Hn8pgDEeqDps0zRsgxsDIXutsHiy+ln8WS2E7CIen8=
X-Gm-Gg: ASbGnctO/k+Vb+sWf3HwmwRA8Esf2ondb1xi7xz/1kF0ULbSKF+Hv96exqlqqZRSJAJ
	B0sTzy3le6HPhC3yCv1p7q9ttzD9NT70sZCQVzR33D1eEYcQ/F76RSzY/rgc2H+YxSqp4tamYO9
	C86XHaZPJehqjJf7uTOLAAPt+gfFsEpcpmdSeeIS5Y6RY2Pi3E6hyGMZPGElmUv1uT7QuF+tfgM
	DPOz2uZxBKYkScB5vDd7QDY5XE+fKTLcv7zkMQwFYXd/Txd4MiZpiJ5P/f/183Gl9E0IneOYZ8D
	WMQF46TRvT8UF6FRaxgLlygpZ5AKuDAWD2618zoauL3LwbE/Kpmjpjz4AoKRvCIbrFeaL+p2EhN
	XhyYvcW0+i2JLU35ds1du7ZtT3w==
X-Google-Smtp-Source: AGHT+IGmBmm3C/2jLNoVcpiFNaVQBfRpos13JsgNqrg+d7vr+5IZSCkCD3uFqGqFACXb0v+yv5GQTA==
X-Received: by 2002:a05:6000:4029:b0:390:ee01:68fa with SMTP id ffacd0b85a97d-39efba454demr12515857f8f.24.1745353226923;
        Tue, 22 Apr 2025 13:20:26 -0700 (PDT)
Received: from ?IPV6:2a02:8010:6606:0:c8cf:b8a9:b26:a03f? ([2a02:8010:6606:0:c8cf:b8a9:b26:a03f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39efa43bef1sm16008927f8f.49.2025.04.22.13.20.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Apr 2025 13:20:26 -0700 (PDT)
Message-ID: <1997854d-c501-493b-91d5-c3640137f7a6@gmail.com>
Date: Tue, 22 Apr 2025 21:20:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588-nanopc-t6: fix usb-c port
 functionality
To: John Clark <inindev@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 mjuszkiewicz@redhat.com, sebastian.reichel@collabora.com, jonas@kwiboo.se
References: <20250419023715.16811-1-inindev@gmail.com>
 <bda07179-1ff4-46e4-9dda-ece9c63fd613@gmail.com>
 <20250422000748.59664-1-inindev@gmail.com>
Content-Language: en-GB
From: Hugh Cole-Baker <sigmaris@gmail.com>
In-Reply-To: <20250422000748.59664-1-inindev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_132028_900335_F2C36783 
X-CRM114-Status: GOOD (  23.46  )
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

T24gMjIvMDQvMjAyNSAwMTowNywgSm9obiBDbGFyayB3cm90ZToKPiBPbiBUdWUsIEFwciAyMiwg
MjAyNSBhdCAwMDoxMjowMiArMDEwMCwgSHVnaCBDb2xlLUJha2VyIDxzaWdtYXJpc0BnbWFpbC5j
b20+IHdyb3RlOgo+PiBIaSBKb2huLAo+Pgo+PiBPbiAxOS8wNC8yMDI1IDAzOjM3LCBKb2huIENs
YXJrIHdyb3RlOgo+Pj4gVGhlIFVTQi1DIHBvcnQgb24gdGhlIE5hbm9QQy1UNiB3YXMgbm90IHBy
b3ZpZGluZyBWQlVTICh2YnVzNXYwX3R5cGVjCj4+PiByZWd1bGF0b3IgZGlzYWJsZWQsIGdwaW8t
NTggb3V0IGxvKSBkdWUgdG8gbWlzY29uZmlndXJhdGlvbi4gVGhlCj4+PiBvcmlnaW5hbCBzZXR1
cCB3aXRoIHJlZ3VsYXRvci1hbHdheXMtb24gYW5kIHJlZ3VsYXRvci1ib290LW9uIGZvcmNlZAo+
Pj4gdGhlIHBvcnQgb24sIG1hc2tpbmcgdGhlIGlzc3VlLCBidXQgcmVtb3ZpbmcgdGhlc2UgcHJv
cGVydGllcyByZXZlYWxlZAo+Pj4gdGhhdCB0aGUgZnVzYjMwMiBkcml2ZXIgd2FzIG5vdCBlbmFi
bGluZyB0aGUgcmVndWxhdG9yIGR5bmFtaWNhbGx5Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEpv
aG4gQ2xhcmsgPGluaW5kZXZAZ21haWwuY29tPgo+Pj4gLS0tCj4+PiAgLi4uL2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYuZHRzaSAgIHwgMjEgKysrKysrKysrKy0tLS0tLS0tLQo+
Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKPj4+
Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtbmFu
b3BjLXQ2LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMt
dDYuZHRzaQo+Pj4gaW5kZXggY2VjZmI3ODhiZjllLi44ZjJiZDMwNzg2ZDkgMTAwNjQ0Cj4+PiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYuZHRzaQo+
Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtbmFub3BjLXQ2LmR0
c2kKPj4+IEBAIC0xNzQsOCArMTc0LDYgQEAgdmJ1czV2MF90eXBlYzogcmVndWxhdG9yLXZidXM1
djAtdHlwZWMgewo+Pj4gIAkJZ3BpbyA9IDwmZ3BpbzEgUktfUEQyIEdQSU9fQUNUSVZFX0hJR0g+
Owo+Pj4gIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+ICAJCXBpbmN0cmwtMCA9IDwm
dHlwZWM1dl9wd3Jlbj47Cj4+PiAtCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+Pj4gLQkJcmVndWxh
dG9yLWJvb3Qtb247Cj4+PiAgCQlyZWd1bGF0b3ItbmFtZSA9ICJ2YnVzNXYwX3R5cGVjIjsKPj4+
IEBAIC00NjUsMjQgKzQ2MSwzMCBAQCByZWd1bGF0b3Itc3RhdGUtbWVtIHsKPj4+ICAmaTJjNiB7
Cj4+PiAtCWNsb2NrLWZyZXF1ZW5jeSA9IDwyMDAwMDA+Owo+Pj4gIAlzdGF0dXMgPSAib2theSI7
Cj4+Pgo+Pj4gLQlmdXNiMzAyOiB0eXBlYy1wb3J0Y0AyMiB7Cj4+PiArCXVzYmMwOiB1c2ItdHlw
ZWNAMjIgewo+Pj4gIAkJY29tcGF0aWJsZSA9ICJmY3MsZnVzYjMwMiI7Cj4+PiAgCQljb25uZWN0
b3Igewo+Pj4gIAkJCWNvbXBhdGlibGUgPSAidXNiLWMtY29ubmVjdG9yIjsKPj4+ICAJCQlkYXRh
LXJvbGUgPSAiZHVhbCI7Cj4+PiAgCQkJbGFiZWwgPSAiVVNCLUMiOwo+Pj4gLQkJCXBvd2VyLXJv
bGUgPSAic291cmNlIjsKPj4+ICsJCQkvKiBmdXNiMzAyIHN1cHBvcnRzIFBEIFJldiAyLjAgVmVy
IDEuMiAqLwo+Pj4gKwkJCXBkLXJldmlzaW9uID0gL2JpdHMvIDggPDB4MiAweDAgMHgxIDB4Mj47
Cj4+PiArCQkJcG93ZXItcm9sZSA9ICJkdWFsIjsKPj4+ICsJCQlvcC1zaW5rLW1pY3Jvd2F0dCA9
IDwxMDAwMDAwPjsKPj4+ICsJCQlzaW5rLXBkb3MgPSA8UERPX0ZJWEVEKDUwMDAsIDMwMDAsIFBE
T19GSVhFRF9VU0JfQ09NTSk+Owo+Pj4gIAkJCXNvdXJjZS1wZG9zID0gPFBET19GSVhFRCg1MDAw
LCAyMDAwLCBQRE9fRklYRURfVVNCX0NPTU0pPjsKPj4+ICsJCQl0cnktcG93ZXItcm9sZSA9ICJz
b3VyY2UiOwo+Pj4gKwkJCXR5cGVjLXBvd2VyLW9wbW9kZSA9ICIzLjBBIjsKPj4KPj4gQWNjb3Jk
aW5nIHRvIHRoZSBtYW51ZmFjdHVyZXIgd2lraSBbMV0gIlBvd2VyIE91dHB1dCBDYXBhY2l0eSIg
dGFibGUsIHRoZSBVU0ItQwo+PiBwb3J0IG1heGltdW0gb3V0cHV0IGlzIDVWLzJBLiBTbyBJIHRo
aW5rICIxLjVBIiB3b3VsZCBiZSBhIGJldHRlciB2YWx1ZSBoZXJlLgo+Pgo+PiBbMV06IGh0dHBz
Oi8vd2lraS5mcmllbmRseWVsZWMuY29tL3dpa2kvaW5kZXgucGhwL05hbm9QQy1UNgo+IAo+IEhp
IEh1Z2gsCj4gCj4gVGhhbmsgeW91IGZvciB5b3VyIGZlZWRiYWNrIGFuZCBmb3IgcmVmZXJlbmNp
bmcgdGhlIG1hbnVmYWN0dXJlcuKAmXMgd2lraS4gVG8gY2xhcmlmeSwgdGhlIGxpbmUgaW4gcXVl
c3Rpb246Cj4gCj4gc291cmNlLXBkb3MgPSA8UERPX0ZJWEVEKDUwMDAsIDIwMDAsIFBET19GSVhF
RF9VU0JfQ09NTSk+Owo+IAo+IHdhcyBub3QgbW9kaWZpZWQgaW4gbXkgcGF0Y2guIFRoaXMgdmFs
dWUsIHdoaWNoIHNldHMgdGhlIFVTQi1DIHBvcnTigJlzIHNvdXJjZSBjYXBhYmlsaXR5IHRvIDVW
LzJBLCBpcyB1bmNoYW5nZWQgZnJvbSB0aGUgZXhpc3RpbmcgZGV2aWNlIHRyZWUuCgpzb3VyY2Ut
cGRvcyBpcyBPSywgSSB3YXMgcmVmZXJyaW5nIHRvIHRoZSB0eXBlYy1wb3dlci1vcG1vZGUgPSAi
My4wQSIgbGluZSBqdXN0CmFib3ZlIHdoZXJlIEkgY29tbWVudGVkLiBBcyBJIHJlYWQgaXQsIHRo
YXQnZCBtZWFuIHRoZSBib2FyZCB3b3VsZCBhZHZlcnRpc2UKdmlhIHRoZSBDQyBwaW5zIHRoYXQg
aXQgY291bGQgc291cmNlIDVWLzNBIHdoZW4gVVNCIFBEIGlzIG5vdCBpbiB1c2UuClRoZSB3aWtp
IHNheXMgaXQgY2FuIG9ubHkgc291cmNlIHVwIHRvIDVWLzJBLgoKYnIsIEh1Z2gKCj4gCj4gRnVy
dGhlcm1vcmUsIHRoZSBzY2hlbWF0aWMgZm9yIHRoZSBOYW5vUEMtVDYgYW5kIHRoZSB2ZW5kb3Li
gJlzIHVwc3RyZWFtIExpbnV4IGRldmljZSB0cmVlIChlLmcuLCBGcmllbmRseUFSTeKAmXMga2Vy
bmVsIGF0IGh0dHBzOi8vZ2l0aHViLmNvbS9mcmllbmRseWFybS9rZXJuZWwtcm9ja2NoaXAvYmxv
Yi9uYW5vcGk2LXY2LjEueS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5v
cGk2LXJldjAxLmR0cyNMMzQ2KSBhbHNvIHNwZWNpZnkgdGhlIHNvdXJjZSBjYXBhYmlsaXR5IGFz
IDVWLzJBLiBHaXZlbiB0aGlzIGNvbnNpc3RlbmN5IGFjcm9zcyB0aGUgc2NoZW1hdGljIGFuZCB2
ZW5kb3Igc291cmNlcywgSSBiZWxpZXZlIDJBIGlzIGFuIGFwcHJvcHJpYXRlIHZhbHVlIGZvciB0
aGlzIGNvbmZpZ3VyYXRpb24uCj4gCj4gUGxlYXNlIGxldCBtZSBrbm93IGlmIHlvdSBoYXZlIGZ1
cnRoZXIgY29uY2VybnMgb3Igc3VnZ2VzdGlvbnMhCj4gCj4gQmVzdCByZWdhcmRzLAo+IEpvaG4g
Q2xhcmsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
