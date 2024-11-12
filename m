Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 704B8D597A4
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 21:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RCP/La0vLziUvpQ/qwSshxjpHqeiC2x23DRdhlQ/d8k=; b=k/d9agM0YOEyP6
	qdI8kCEcU/peeR/qbi8YYzfCOA9TPrs1w/c+y73lgy3cbzcWJEDUZmcLOVAbodH58w4kW12N/09yG
	sZRbYDnRU10t4atsVe91RBE6RGXo3BLXo7y8KSCmlSthu2AEOBw9E+NCjnQvnvYglcqUmCwDPj01J
	BhkIYq0WpDxk5Vk547HOnwGcn6SeMj6t2s1Mfi1tGi+YeLwlNe/+egbz4U1EdLBzo1v76p8ESgiKp
	S+7UTt7JmF62NvMNpOZua+z3nmch/RCemsjTUizvc7maxNxo2IdllmJmt80ZyfAYA8YqSJLCldbXZ
	7ZJlis0IlsBV/LA6guyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAy7r-00000004xcL-0sAk;
	Tue, 12 Nov 2024 21:08:39 +0000
Received: from mail-pl1-f182.google.com ([209.85.214.182])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAy4Y-00000004xDc-3vC9;
	Tue, 12 Nov 2024 21:05:16 +0000
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-20c7edf2872so574675ad.1;
        Tue, 12 Nov 2024 13:05:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731445514; x=1732050314;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qvfLiy46zAAc4YpHFE3RBOLl5fq2FOHK1NiPPVPoB5Q=;
        b=nLvJqcM5q2Sogvb6RgB94eekCqiqusGl6HNARD1KmEW/XkN6/ozLDhKxNImmqu4u9g
         jCoPcce+XK+rqmCZ8DQSq8/9DXzIQePYzIX/UX8hoG2nDdRd4wvdNEEyIKBsUpABp1Tg
         ZhT1HsKO+L22gieUj7taXSQtiqeAu+yr1pimYH+keGPds3/ILVzW+8mt+XK+8WgqViPE
         B3FEAQgXwSTr9razQJYTiswqm8o2SPasy10+OuhTor8fqNAriv2ubt6dnKU80XSENYUB
         Gk/dn+yKCRMiFJ9cvlP/TYq5l0Aqc1pNBbsqFSKPIeFw8u2HOmFq/M9prOdCRg7keWec
         GMPA==
X-Forwarded-Encrypted: i=1; AJvYcCVcTwBvAL7jSg0tuLykwO8czRd7HBwxvnCeNNaT/LfxmZfzL1YfeEwjDv0Dg4fhj/jCInxq7sLQsH3/q9B7EH8=@lists.infradead.org, AJvYcCWlcNxnwC96CMwmk7zidFdhl7JcZ32FzzYGte0TnA/nCFd6ijbmwxgGMbHanVr4yy7gIL/T6rCi5dPyuQIwO6w4@lists.infradead.org
X-Gm-Message-State: AOJu0YytZSb8kogN/Q0gKgzkj5y1iSAKCehp9RSLBQ5jZJ9mN7ILnc7q
	A8s/DxPJnn/bzycDt+LQgEvD6cylLOgCPB4ae6qlmlL8v89ws3JLcXhRfXMw
X-Google-Smtp-Source: AGHT+IGqdsB/KQZuLyb7XZJP0hqL+7wojjEHAqrXmV0hxO4W/7841LVSQcAeJC0PECmrSthPwlBKpQ==
X-Received: by 2002:a17:90b:4d01:b0:2e2:8ee3:b936 with SMTP id 98e67ed59e1d1-2e9b0a2fda4mr26848704a91.6.1731445513456;
        Tue, 12 Nov 2024 13:05:13 -0800 (PST)
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com. [209.85.215.178])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e9f396f501sm30190a91.40.2024.11.12.13.05.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2024 13:05:13 -0800 (PST)
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-7e6d04f74faso42173a12.1;
        Tue, 12 Nov 2024 13:05:12 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVk1Hv4NclAfyohmlEYDEQ5c5Jedx8yqFyBIrZjLDJ+T+Pg0T7mu9t25mbvJD2AalomWxn94JNfyXi2NH675gM=@lists.infradead.org, AJvYcCWTMoTDg3EKGHHyvoZRyn56cEfqu1wsS5BLJhGOVtQ6cCDY0d1mW28phQh5z6Rv3VRwT8rnyxXy3ECkO2zAgzeP@lists.infradead.org
X-Received: by 2002:a17:90b:1e45:b0:2c9:6abd:ca64 with SMTP id
 98e67ed59e1d1-2e9b1f074b1mr28605933a91.9.1731445512591; Tue, 12 Nov 2024
 13:05:12 -0800 (PST)
MIME-Version: 1.0
References: <20241111181807.13211-1-tszucs@linux.com> <20241111181807.13211-3-tszucs@linux.com>
 <9fbdf05c-42e6-4ac5-9542-805200bc8c87@kwiboo.se> <260af427ae64d6f3b02a1579ee83eb3b@manjaro.org>
 <CA+Gksr+WvS-S+jeYYG=Bo9cemvnJmjsmU4aj9YnD3t8-HY7wbw@mail.gmail.com> <303ad3910668e852d6670d1c79dc22e0@manjaro.org>
In-Reply-To: <303ad3910668e852d6670d1c79dc22e0@manjaro.org>
From: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>
Date: Tue, 12 Nov 2024 22:05:00 +0100
X-Gmail-Original-Message-ID: <CA+GksrLLbfyHdvu1VYB4S+W78C0T1DEWu5W6pP2-g3KdBeT-LQ@mail.gmail.com>
Message-ID: <CA+GksrLLbfyHdvu1VYB4S+W78C0T1DEWu5W6pP2-g3KdBeT-LQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Enable sdmmc2 on rock-3b and
 set it up for SDIO devices
To: Dragan Simic <dsimic@manjaro.org>
Cc: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, Chukun Pan <amadeus@jmu.edu.cn>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_130515_004139_E49C2D0A 
X-CRM114-Status: GOOD (  43.81  )
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

SGkgRHJhZ2FuLAoKT24gVHVlLCBOb3YgMTIsIDIwMjQgYXQgNDoxNuKAr1BNIERyYWdhbiBTaW1p
YyA8ZHNpbWljQG1hbmphcm8ub3JnPiB3cm90ZToKPgo+IEhlbGxvIFRhbWFzLAo+Cj4gT24gMjAy
NC0xMS0xMiAxNTozNSwgVGFtw6FzIFN6xbFjcyB3cm90ZToKPiA+IEkgdGhpbmsgaXQgd2FzIHRv
dGFsbHkgZmluZSB0byBkaXNhYmxlIHNkbW1jMiBhdCBmaXJzdCwgZXNwZWNpYWxseSBpZgo+ID4g
aXQgY291bGRu4oCZdCBiZSB0ZXN0ZWQgb3Igd2FzbuKAmXQgbmVlZGVkIHJpZ2h0IGF3YXkuIEZy
b20gd2hhdCBJ4oCZdmUKPiA+IHNlZW4sIHRoaXMgYm9hcmQgd29ya3MgZ3JlYXQgZXZlbiBhdCBo
aWdoZXIgY2xvY2sgc3BlZWRzIHRoYW4gd2hhdAo+ID4gcmszNTZ4LWJhc2UuZHRzaSBzdWdnZXN0
cy4gSSBkb27igJl0IGhhdmUgYWNjZXNzIHRvIHRoZSBSSzM1NjggZXJyYXRhLAo+ID4gYW5kIHRo
ZXJlIGRvbuKAmXQgc2VlbSB0byBiZSBhbnkgbGltaXRzIG1lbnRpb25lZCBpbiB0aGUgVFJNIGVp
dGhlci4KPiA+IE92ZXJhbGwsIHRoaXMgYm9hcmQgaXMgZG9pbmcganVzdCBmaW5lIGFzIGl0IGlz
Lgo+Cj4gU29ycnksIEknbSBtaXNzaW5nIHRoZSBwb2ludCBvZiBtZW50aW9uaW5nIHNvbWUgY2xv
Y2sgc3BlZWRzPyAgQW55Cj4gY2hhbmNlcywgcGxlYXNlLCB0byBjbGFyaWZ5IHRoYXQgYSBiaXQ/
CgpJdCdzIGFsbCBhYm91dCBzdHJlc3Mgc2NlbmFyaW9zLCByaWdodC4gU3VzdGFpbmVkIHRyYW5z
ZmVyIGF0IG1heGltdW0KY2xvY2ssIG11bHRpcGxlIFNEL01NQyBibG9ja3MgdXNlZCBjb25jdXJy
ZW50bHkuIFRoYXQga2luZCBvZiB0aGluZy4KRGlmZmVyZW50IGRhdGEgcmF0ZXMgZm9yY2VkLiBJ
IGhvcGUgdGhhdCBhbnN3ZXJzIHlvdXIgcXVlc3Rpb24uCgo+Cj4gPiBSZWdhcmRpbmcgZGV2aWNl
IHRyZWUgb3ZlcmxheXMsIHRoZXkgd291bGQgYmUgaWRlYWwgZm9yIGltcGxlbWVudGluZwo+ID4g
c2Vjb25kYXJ5IGZ1bmN0aW9ucywgc3VjaCBhcyBQQ0llIGVuZHBvaW50IG1vZGUgZm9yIHVzZXJz
IHdpdGgKPiA+IHNwZWNpZmljIHJlcXVpcmVtZW50cy4gSG93ZXZlciwgdGhlIHByaW1hcnkgZnVu
Y3Rpb25zIGZvciBQQ0llIG9uIHRoZQo+ID4gTTJFIHdpbGwgYmUgcm9vdCBjb21wbGV4IG1vZGUs
IGFsb25nIHdpdGggU0RJTyBob3N0LCBldGMuIEluIG15IHZpZXcsCj4gPiB0aGUgaGFyZHdhcmUg
aXMgd2VsbC1kZXNpZ25lZCBhbmQgaW50ZXJjb25uZWN0ZWQuIFVzZXJzIGhhdmUgYQo+ID4gcmVh
c29uYWJsZSBleHBlY3RhdGlvbiB0aGF0IHRoZXNlIHByaW1hcnkgZnVuY3Rpb25zIHNob3VsZCB3
b3JrCj4gPiBzZWFtbGVzc2x5IHdpdGhvdXQgYWRkaXRpb25hbCBjb25maWd1cmF0aW9uLCByaWdo
dCBvdXQgb2YgdGhlIGJveC4KPgo+IFRoYXQncyBiYXNpY2FsbHkgd2hhdCBJIHJlZmVycmVkIHRv
IGluIG15IGVhcmxpZXIgcmVzcG9uc2UsIGFuZCBpbiBteQo+IHByZXZpb3VzIHJlc3BvbnNlIHJl
Z2FyZGluZyB0aGUgVUFSVC4gIFVzZXJzIHdvdWxkIGV4cGVjdCB0aGUgQmx1ZXRvb3RoCj4gcGFy
dCB0byB3b3JrIGFzIHdlbGwsIGJ1dCB0aGUgZXJyb3IgbWVzc2FnZXMgSSBtZW50aW9uZWQgbG9v
ayBuYXN0eSwgc28KPiBwZXJoYXBzIHNvbWV0aGluZyBzaG91bGQgYmUgZG9uZSBhYm91dCB0aGF0
IGZpcnN0LgoKSSdtIG5vdCBhd2FyZSBvZiBhbnkgbmFzdHkgZXJyb3IgbWVzc2FnZXMgZXNwZWNp
YWxseSByZWxhdGVkIHRvIFVBUlQuCldlbGwsIE1NQyBjb3JlIHdpbGwgYWNrbm93bGVkZ2Ugd2hl
biB0aGUgcGxhdGZvcm0gcGFydCBmYWlscyB0bwplbnVtZXJhdGUgYSBkZXZpY2Ugb24gc2RtbWMy
LCBidXQgdGhlcmUncyBub3RoaW5nIHdyb25nIHdpdGggdGhpcy4KSXQncyBub3QgZXZlbiBhbiBl
cnJvciAtLSBjZXJ0YWlubHkgbm90IGEgbmFzdHkgb25lLgoKWyAgICAxLjc5OTcwM10gbW1jX2hv
c3QgbW1jMjogY2FyZCBpcyBub24tcmVtb3ZhYmxlLgpbICAgIDEuOTM1MDExXSBtbWNfaG9zdCBt
bWMyOiBCdXMgc3BlZWQgKHNsb3QgMCkgPSAzNzUwMDBIeiAoc2xvdCByZXEKNDAwMDAwSHosIGFj
dHVhbCAzNzUwMDBIWiBkaXYgPSAwKQpbICAgIDcuMTk1MDA5XSBtbWNfaG9zdCBtbWMyOiBCdXMg
c3BlZWQgKHNsb3QgMCkgPSAzNzUwMDBIeiAoc2xvdCByZXEKMzc1MDAwSHosIGFjdHVhbCAzNzUw
MDBIWiBkaXYgPSAwKQpbICAgMTMuMDI5NTQwXSBtbWMyOiBGYWlsZWQgdG8gaW5pdGlhbGl6ZSBh
IG5vbi1yZW1vdmFibGUgY2FyZAoKPgo+ID4gRHJhZ2FuLCB3aGF0IGRpZCB5b3UgbWVhbiBieSBT
RElPIHJlbGF0ZWQgcG93ZXIgdGltaW5nIHJlcXVpcmVtZW50cz8KPgo+IFdoZW5ldmVyIHRoZXJl
J3MgYW4gU0RJTyBtb2R1bGUsIHRoZXJlJ3MgdXN1YWxseSBzb21lIHJlcXVpcmVkIHRpbWluZwo+
IG9mIHRoZSBwb3dlciByYWlscy4gIFRob3VnaCwgSSBkb24ndCBrbm93IHdoYXQncyB0aGF0IGxp
a2Ugd2l0aCB0aGUKPiBub24tc3RhbmRhcmQgTS4yIFNESU8gbW9kdWxlcyB0aGF0IFJhZHhhIHNl
bGxzLCB3aGljaCBhcmUgaW50ZW5kZWQgdG8KPiBiZSB1c2VkIG9uIFJhZHhhIGJvYXJkcyB3aXRo
ICJoeWJyaWQiIE0uMiBzbG90cy4KCk9rLCBJIHNlZS4gTm90IGFsd2F5cy4gSSBjYW4ndCBjb21t
ZW50IG9uIFJhZHhhJ3MgU0RJTyBtb2R1bGUgYnV0IEknbQpzdXJlIGl0J3MgcmVhc29uYWJseSBz
dGFuZGFyZC4gQW5kIHNvIGlzIHRoZSBNLjIgS2V5IEUgb24gdGhpcyBib2FyZC4KQWN0dWFsbHks
IHBhcnQgb2YgdGhlIGFwcGVhbCBpcyB0aGF0IGFsbCBzdGFuZGFyZCBidXNlcyBhcmUgdmVyeQpu
aWNlbHkgd2lyZWQgdXAuIEkgd2FudCBldmVyeWJvZHkgdG8gYmUgYWJsZSB0byB1c2UgdGhlbS4K
Cgo+Cj4gT25jZSBhZ2FpbiwgcGxlYXNlIHVzZSBpbmxpbmUgcmVwbHlpbmcuIFsqXQo+Cj4gWypd
IGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL1Bvc3Rpbmdfc3R5bGUKPgo+ID4gT24gVHVl
LCBOb3YgMTIsIDIwMjQgYXQgNTo0MeKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8u
b3JnPgo+ID4gd3JvdGU6Cj4gPj4KPiA+PiBIZWxsbyBKb25hcyBhbmQgVGFtYXMsCj4gPj4KPiA+
PiBPbiAyMDI0LTExLTExIDIwOjA2LCBKb25hcyBLYXJsbWFuIHdyb3RlOgo+ID4+ID4gT24gMjAy
NC0xMS0xMSAxOToxNywgVGFtw6FzIFN6xbFjcyB3cm90ZToKPiA+PiA+PiBFbmFibGUgU0RJTyBv
biBSYWR4YSBST0NLIDMgTW9kZWwgQiBNLjIgS2V5IEUuIEFkZCBhbGwgc3VwcG9ydGVkIFVIUy1J
Cj4gPj4gPj4gcmF0ZXMgYW5kCj4gPj4gPj4gZW5hYmxlIDIwMCBNSHogbWF4aW11bSBjbG9jay4g
QWxzbywgYWxsb3cgaG9zdCB3YWtldXAgdmlhIFNESU8gSVJRLgo+ID4+ID4+Cj4gPj4gPj4gU2ln
bmVkLW9mZi1ieTogVGFtw6FzIFN6xbFjcyA8dHN6dWNzQGxpbnV4LmNvbT4KPiA+PiA+PiAtLS0K
PiA+PiA+PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHMg
fCA4ICsrKysrKystCj4gPj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPiA+PiA+Pgo+ID4+ID4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cwo+ID4+ID4+IGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHMKPiA+PiA+PiBpbmRleCAyNDJhZjUzMzdj
ZGYuLmI3NTI3YmE0MThmNyAxMDA2NDQKPiA+PiA+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cwo+ID4+ID4+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzCj4gPj4gPj4gQEAgLTY4OCwxNCArNjg4
LDIwIEBAICZzZG1tYzIgewo+ID4+ID4+ICAgICAgY2FwLXNkLWhpZ2hzcGVlZDsKPiA+PiA+PiAg
ICAgIGNhcC1zZGlvLWlycTsKPiA+PiA+PiAgICAgIGtlZXAtcG93ZXItaW4tc3VzcGVuZDsKPiA+
PiA+PiArICAgIG1heC1mcmVxdWVuY3kgPSA8MjAwMDAwMDAwPjsKPiA+PiA+PiAgICAgIG1tYy1w
d3JzZXEgPSA8JnNkaW9fcHdyc2VxPjsKPiA+PiA+PiAgICAgIG5vbi1yZW1vdmFibGU7Cj4gPj4g
Pj4gICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4+ID4+ICAgICAgcGluY3RybC0w
ID0gPCZzZG1tYzJtMF9idXM0ICZzZG1tYzJtMF9jbGsgJnNkbW1jMm0wX2NtZD47Cj4gPj4gPj4g
KyAgICBzZC11aHMtc2RyMTI7Cj4gPj4gPj4gKyAgICBzZC11aHMtc2RyMjU7Cj4gPj4gPj4gKyAg
ICBzZC11aHMtc2RyNTA7Cj4gPj4gPgo+ID4+ID4gSSB0aG91Z2h0IHRoYXQgbG93ZXIgc3BlZWRz
IHdhcyBpbXBsaWVkIGJ5IHVocy1zZHIxMDQ/Cj4gPj4KPiA+PiBMYXN0IHRpbWUgSSB3ZW50IHRo
cm91Z2ggdGhlIE1NQyBkcml2ZXJzLCB0aGV5IHdlcmUgaW1wbGllZC4gIElJUkMsCj4gPj4gc3Vj
aCBiYWNrd2FyZCBtb2RlIGNvbXBhdGliaWxpdHkgaXMgYWN0dWFsbHkgYSByZXF1aXJlbWVudCBt
YWRlIGJ5Cj4gPj4gdGhlIE1NQyBzcGVjaWZpY2F0aW9uLgo+ID4+Cj4gPj4gPj4gICAgICBzZC11
aHMtc2RyMTA0Owo+ID4+ID4+ICsgICAgc2QtdWhzLWRkcjUwOwo+ID4+ID4+ICAgICAgdm1tYy1z
dXBwbHkgPSA8JnZjYzN2M19zeXMyPjsKPiA+PiA+PiAgICAgIHZxbW1jLXN1cHBseSA9IDwmdmNj
XzF2OD47Cj4gPj4gPj4gLSAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4+ID4+ICsgICAgd2Fr
ZXVwLXNvdXJjZTsKPiA+PiA+PiArICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+PiA+Cj4gPj4gPiBU
aGlzIHNob3VsZCBwcm9iYWJseSBiZSBlbmFibGVkIHVzaW5nIGFuIGR0LW92ZXJsYXksIHRoZXJl
IGlzIG5vCj4gPj4gPiBTRElPIGRldmljZSBlbWJlZGRlZCBvbiB0aGUgYm9hcmQgYW5kIHRoZSBy
ZWFzb24gSSBsZWZ0IGl0IGRpc2FibGVkCj4gPj4gPiBpbiBvcmlnaW5hbCBib2FyZCBEVCBzdWJt
aXNzaW9uLgo+ID4+Cj4gPj4gSnVzdCB3ZW50IHRocm91Z2ggdGhlIFJPQ0sgM0Igc2NoZW1hdGlj
LCB2ZXJzaW9uIDEuNTEsIGFuZCBJIHRoaW5rCj4gPj4gdGhlcmUgc2hvdWxkIGJlIG5vIG5lZWQg
Zm9yIGEgc2VwYXJhdGUgb3ZlcmxheSwgYmVjYXVzZSBzZG1tYzIgZ29lcwo+ID4+IHRvIHRoZSBN
LjIgc2xvdCBvbiB0aGUgYm9hcmQsIHdoaWNoIGFueSB1c2VyIGNhbiBwbHVnIGFuIE0uMiBtb2R1
bGUKPiA+PiBpbnRvLCBhbmQgdGhlIFNESU8gaW50ZXJmYWNlIGlzIGtpbmQtb2Ygc2VsZi1kaXNj
b3ZlcmFibGUuCj4gPj4KPiA+PiBPZiBjb3Vyc2UsIGFsbCB0aGF0IHVubGVzcyB0aGVyZSBhcmUg
c29tZSBob3JyaWJseSBsb29raW5nIDopIGVycm9yCj4gPj4gbWVzc2FnZXMgZW1pdHRlZCB0byB0
aGUga2VybmVsIGxvZyB3aGVuIG5vdGhpbmcgaXMgYWN0dWFsbHkgZm91bmQsCj4gPj4gaW4gd2hp
Y2ggY2FzZSB0aGUgU0RJTy9NTUMgZHJpZXJzIHNob3VsZCBiZSBmaXhlZCBmaXJzdC4gIEFsc28s
IEknbQo+ID4+IG5vdCBzdXJlIHdoYXQgZG8gd2UgZG8gd2l0aCB0aGUgcG9zc2libGUgU0RJTy1y
ZWxhdGVkIHBvd2VyIHRpbWluZwo+ID4+IHJlcXVpcmVtZW50cz8KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
