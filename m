Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D825E77180
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Dec 2024 17:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3alaQFlU47VaHLBu17mJVcS3SaxCaQOvrKrIuPvWIsw=; b=kyjHitnyr1KhzN
	QUIlCoj01zHwTyBLCAazn5hEiVSZfFoYrw8pDi54o58rHvYz4x8fk1xOPET4v/WFVqAsnEjCAAsLD
	8gsIVWph/hrI0GfmnH5hYP0JCh9U+ypYgRzLVLGo2phM0WKh00hdE0lKmyRpHsHgn6HY/cDtxDZ71
	dYTzFpXJObZ19CZkUWILBGo0TTTGS516gVWxkvHBID2jmJNgUZ2fBh7wbT4/j8KX+Pa/bUmMqzq1E
	A/OcuBCpFukI9Tr0W3X3lB3mtWcKaulYNkjbV8TrHbgDv4koY2Aqzq2iXeTg+zzab2ovt4Zh/vV0k
	9ZzV9tDTZBhpc+IWM5og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLmqE-000000019VK-24WV;
	Thu, 12 Dec 2024 17:19:10 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLmOl-0000000138I-0ooT
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Dec 2024 16:50:48 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-46792996074so9408951cf.0
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Dec 2024 08:50:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734022246; x=1734627046; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5eC4jm2ifXPEMhG5HlQPs/z+6Fub5VcR25y8ToQTTMg=;
        b=Wmu/6M/tEAyPseSPJgaWPrILNppbvGcw9HQUn7i8JoKEjOoB8XU08H/+dDlNPcgyG0
         7mUZR6NIUSzABVPweA5827PX8E6PxKyR9VuOVLWz0Z0/cAF2k8fdT7qKwkWcxw78prD0
         sgxxroZRn2siUd34IKdmzWQKFytBD2HVJC9hF/m3WXOs5XRDsN4s7b/rmIZPwgca81c5
         xjwm+Q+i88a/YudwmN5llo4VNV40MMyZzdchSTvCBPXICgit5xE596Kf75IGsM2P9R1M
         6o1fZIrjXS/boBqRDzE3nc7mgTR8xoiGBz5S4x/mX4aCdNEC0kEfqnYC19La6R8QNbcT
         FG9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734022246; x=1734627046;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5eC4jm2ifXPEMhG5HlQPs/z+6Fub5VcR25y8ToQTTMg=;
        b=azLRb9vVH/lJMcWvq4tWQCKMzF9E7CnEuordLkH/VbqA/309wqoiFpZxmdhFqWVU6e
         SsZJqw4MFSXgLP5cqC/J0gEU2VjA3noxjd81qPg2Ig2jQsNE+w6EMslaktFnHFbM6qxm
         GjVcdDmo/kZ0241WT/pQJ3DltDX33Ve/NuLeN5DXIWRAty61W4FGo97S4QqZm8jPyXxi
         jK5MfMnzMTAvyZG6HI+pS6UdorgSA2/JuLEtskxZ9n3B7NAwkbZZiTsdicMk7HdI1kRc
         9AqBJOFjub4caWCsugE85L8/aqQkCP1eGquOO3gLedQYrF61XMxtYFp8E+gOublDX9Gs
         2Mfw==
X-Forwarded-Encrypted: i=1; AJvYcCV2pZYVJS3IV430E72bmtEzH3EBd/phi1aYqNVTZcluFRSv4dSLyZheVMnAwjJBs0QYYxnFUGXluMjb2b6qXw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy3jsgqQHRdq+O7phA4Y17FPzUfpRpyNQCQS24M/lDEGJwzReTF
	iNc2hu2n1LeN1PzzFRZqjUa/6T3qiAJIIeDD1/pNSgBT1Y5AGrYBNJE0qbk2C1otag58vF0E7bi
	VH4vMOWHNkEMBWx3Gx5AvkCdb756cRY46
X-Gm-Gg: ASbGncsePqwnUFmUyOmz4pmKiyXyLuKlzcHJc7DXp56iYaoW2uETOdtKxs0SDHMTHpO
	MColAXwP7a2UeQB8eeSZYvjbVcaMvUE8ybXpHKA==
X-Google-Smtp-Source: AGHT+IFr5yZkcDkI7tSX7OKAZ47XXkcKwhOeOOnC6lHxsSnjCtvQ60XzPBiQBxDO1UnFoHWC70VIanftmSFrgQdZ6LI=
X-Received: by 2002:a05:622a:1b8c:b0:467:6833:e316 with SMTP id
 d75a77b69052e-467a16f7ce5mr12593721cf.53.1734022246085; Thu, 12 Dec 2024
 08:50:46 -0800 (PST)
MIME-Version: 1.0
References: <CAAMcf8DL27-PYdEJ4eX1-PJnQDWB0osgHR0gbHAcr_oRniWOOg@mail.gmail.com>
 <CAAMcf8Bf_iD8qpE3FqRUTweHFAk-5HuDsA3Q56POVtOtqpa4NQ@mail.gmail.com>
 <CAAMcf8AahTpHBoMjK=bdBQFfuiat0Nefhr1DKENbEi147OnTEA@mail.gmail.com> <3008437.BaHzMo0RvP@diego>
In-Reply-To: <3008437.BaHzMo0RvP@diego>
From: Vicente Bergas <vicencb@gmail.com>
Date: Thu, 12 Dec 2024 17:50:34 +0100
Message-ID: <CAAMcf8DXwnMU2U18USsskus5sic=TsJb_WFwh1wuekaHmeiuZg@mail.gmail.com>
Subject: Re: PCIe missing on RK3399
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Johan Jonker <jbx6244@gmail.com>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_085047_233175_AD5DBA25 
X-CRM114-Status: GOOD (  33.42  )
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

T24gVGh1LCBEZWMgMTIsIDIwMjQgYXQgMjowNuKAr1BNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Cj4gQW0gRG9ubmVyc3RhZywgMTIuIERlemVtYmVyIDIwMjQsIDEz
OjEyOjIyIENFVCBzY2hyaWViIFZpY2VudGUgQmVyZ2FzOgo+ID4gT24gV2VkLCBEZWMgMTEsIDIw
MjQgYXQgNjozMeKAr1BNIFZpY2VudGUgQmVyZ2FzIDx2aWNlbmNiQGdtYWlsLmNvbT4gd3JvdGU6
Cj4gPiA+Cj4gPiA+IE9uIFdlZCwgRGVjIDExLCAyMDI0IGF0IDQ6MzXigK9QTSBIZWlrbyBTdMO8
Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IEFtIE1pdHR3b2No
LCAxMS4gRGV6ZW1iZXIgMjAyNCwgMTY6MTA6MjEgQ0VUIHNjaHJpZWIgVmljZW50ZSBCZXJnYXM6
Cj4gPiA+ID4gPiBPbiBXZWQsIERlYyAxMSwgMjAyNCBhdCAyOjM24oCvUE0gSGVpa28gU3TDvGJu
ZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEhpIFZp
Y2VudGUsCj4gPiA+ID4gPgo+ID4gPiA+ID4gSGkgSGVpa28sCj4gPiA+ID4gPiB0aGFua3MgZm9y
IHRha2luZyBhIGxvb2sgYXQgaXQhCj4gPiA+ID4gPgo+ID4gPiA+ID4gPiBBbSBNaXR0d29jaCwg
MTEuIERlemVtYmVyIDIwMjQsIDEzOjU1OjAxIENFVCBzY2hyaWViIFZpY2VudGUgQmVyZ2FzOgo+
ID4gPiA+ID4gPiA+IGkndmUgdGVzdGVkIHRoZSBMaW51eCBrZXJuZWwgNi4xMy1yYzEgYW5kIHJj
MiBhbmQgaW4gYm90aCBjYXNlcyBQQ0llCj4gPiA+ID4gPiA+ID4gaXMgbm90IGRldGVjdGVkIG9u
IHRoZSBSSzMzOTkgcGxhdGZvcm0gKHJrMzM5OS1ncnUta2V2aW4pLCB3aGVyZWFzIHRoZQo+ID4g
PiA+ID4gPiA+IGtlcm5lbCB2ZXJzaW9uIDYuMTIuMyB3b3JrcyBmaW5lLgo+ID4gPiA+ID4gPiA+
Cj4gPiA+ID4gPiA+ID4gNi4xMyBjb25maWd1cmF0aW9uIGlzIGJhc2VkIG9uIHRoZSBzYW1lIG9u
ZSBhcyA2LjEyIGFuZCB0aGVyZSBhcmVuJ3QKPiA+ID4gPiA+ID4gPiBhbnkgc2lnbmlmaWNhbnQg
UENJLXJlbGF0ZWQgZGlmZmVyZW5jZXMuCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBUaGUg
bWVzc2FnZXMgZnJvbSBkbWVzZyBvbiA2LjEzIGRvbid0IHNob3cgYW55IFBDSS1yZWxhdGVkIGVy
cm9ycy4KPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IERvZXMgc29tZWJvZHkga25vdyB3aGF0
IGlzIGdvaW5nIG9uPwo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBzbyBJIGp1c3QgYm9vdGVkIGEg
cmszMzk5LXB1bWEtaGFpa291IHdpdGggYSBwY2ktbnZtZS1hZGFwdGVyIGluIHRoZQo+ID4gPiA+
ID4gPiBwY2llIHNsb3QuIEFuZCBJIGdldDoKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gWyAgICAw
LjAwMDAwMF0gQm9vdGluZyBMaW51eCBvbiBwaHlzaWNhbCBDUFUgMHgwMDAwMDAwMDAwIFsweDQx
MGZkMDM0XQo+ID4gPiA+ID4gPiBbICAgIDAuMDAwMDAwXSBMaW51eCB2ZXJzaW9uIDYuMTMuMC1y
YzItMDAxMDEtZzI2MGFlNjM3MzRmZi1kaXJ0eSAoaHN0dWVibmVyQHBoaWwpIChhYXJjaDY0LWxp
bnV4LWdudS1nY2MgKERlYmlhbiAxNC4yLjAtNikgMTQuMi4wLCBHTlUgbGQgKEdOVSBCaW51dGls
cyBmb3IgRGViaWFuKSAyLjQzLjEpICMxMTM0IFNNUCBQUkVFTVBUIFR1ZSBEZWMgMTAgMjE6MDY6
MzQgQ0VUIDIwMjQKPiA+ID4gPiA+ID4gLi4uCj4gPiA+ID4gPiA+IFsgICAgMy40MjgxMTRdIHJv
Y2tjaGlwLXBjaWUgZjgwMDAwMDAucGNpZTogaG9zdCBicmlkZ2UgL3BjaWVAZjgwMDAwMDAgcmFu
Z2VzOgo+ID4gPiA+ID4gPiBbICAgIDMuNDM1OTc4XSByb2NrY2hpcC1wY2llIGY4MDAwMDAwLnBj
aWU6ICAgICAgTUVNIDB4MDBmYTAwMDAwMC4uMHgwMGZiZGZmZmZmIC0+IDB4MDBmYTAwMDAwMAo+
ID4gPiA+ID4gPiBbICAgIDMuNDQ1NDc4XSByb2NrY2hpcC1wY2llIGY4MDAwMDAwLnBjaWU6ICAg
ICAgIElPIDB4MDBmYmUwMDAwMC4uMHgwMGZiZWZmZmZmIC0+IDB4MDBmYmUwMDAwMAo+ID4gPiA+
ID4gPiBbICAgIDMuNDU1Mjk4XSByb2NrY2hpcC1wY2llIGY4MDAwMDAwLnBjaWU6IHVzaW5nIERU
ICcvcGNpZUBmODAwMDAwMCcgZm9yICdlcCcgR1BJTyBsb29rdXAKPiA+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gU28gdGhlcmUgc2VlbXMgdG8gYmUgbm90IHNvbWUgZ2VuZXJhbCBmYWlsdXJlLgo+ID4g
PiA+ID4gPgo+ID4gPiA+ID4gPiBEb2VzCj4gPiA+ID4gPiA+ICAgICAgICAgIyBscyAvc3lzL2Rl
dmljZXMvcGxhdGZvcm0vZjgwMDAwMDAucGNpZQo+ID4gPiA+ID4gPiBsaXN0IHNvbWUgIndhaXRp
bmdfZm9yX3N1cHBsaWVzIiBvciBzb21ldGhpbmc/Cj4gPiA+ID4gPgo+ID4gPiA+ID4geWVzLCBp
bmRlZWQgdGhlcmUgaXMgc3VjaCBhIGZpbGUgaW4gdGhlcmU6Cj4gPiA+ID4gPgo+ID4gPiA+ID4g
IyMjIDYuMTMtcmMyCj4gPiA+ID4gPiAkIGxzIC9zeXMvZGV2aWNlcy9wbGF0Zm9ybS9mODAwMDAw
MC5wY2llCj4gPiA+ID4gPiBwb3dlcgo+ID4gPiA+ID4gZHJpdmVyX292ZXJyaWRlCj4gPiA+ID4g
PiBtb2RhbGlhcwo+ID4gPiA+ID4gb2Zfbm9kZQo+ID4gPiA+ID4gc3Vic3lzdGVtCj4gPiA+ID4g
PiBzdXBwbGllcjpwbGF0Zm9ybTpmZjcyMDAwMC5ncGlvCj4gPiA+ID4gPiBzdXBwbGllcjpwbGF0
Zm9ybTpmZjc3MDAwMC5zeXNjb246cGNpZS1waHkKPiA+ID4gPiA+IHN1cHBsaWVyOnBsYXRmb3Jt
OmZmNzgwMDAwLmdwaW8KPiA+ID4gPiA+IHN1cHBsaWVyOnBsYXRmb3JtOnBpbmN0cmwKPiA+ID4g
PiA+IHN1cHBsaWVyOnBsYXRmb3JtOnJlZ3VsYXRvci1wcDMzMDAtd2lmaS1idAo+ID4gPiA+ID4g
c3VwcGxpZXI6cGxhdGZvcm06cmVndWxhdG9yLXdsYW4tcGQtbgo+ID4gPiA+ID4gdWV2ZW50Cj4g
PiA+ID4gPiB3YWl0aW5nX2Zvcl9zdXBwbGllcgo+ID4gPiA+ID4KPiA+ID4gPiA+ICQgY2F0IC9z
eXMvZGV2aWNlcy9wbGF0Zm9ybS9mODAwMDAwMC5wY2llL3dhaXRpbmdfZm9yX3N1cHBsaWVyCj4g
PiA+ID4gPiAxCj4gPiA+ID4gPgo+ID4gPiA+ID4gIyMjIDYuMTIuMwo+ID4gPiA+ID4gJCBscyAv
c3lzL2RldmljZXMvcGxhdGZvcm0vZjgwMDAwMDAucGNpZQo+ID4gPiA+ID4gcGNpMDAwMDowMAo+
ID4gPiA+ID4gcG93ZXIKPiA+ID4gPiA+IGRyaXZlcgo+ID4gPiA+ID4gZHJpdmVyX292ZXJyaWRl
Cj4gPiA+ID4gPiBtb2RhbGlhcwo+ID4gPiA+ID4gb2Zfbm9kZQo+ID4gPiA+ID4gc3Vic3lzdGVt
Cj4gPiA+ID4gPiBzdXBwbGllcjpwaHk6cGh5LWZmNzcwMDAwLnN5c2NvbjpwY2llLXBoeS41Cj4g
PiA+ID4gPiBzdXBwbGllcjpwaHk6cGh5LWZmNzcwMDAwLnN5c2NvbjpwY2llLXBoeS42Cj4gPiA+
ID4gPiBzdXBwbGllcjpwaHk6cGh5LWZmNzcwMDAwLnN5c2NvbjpwY2llLXBoeS43Cj4gPiA+ID4g
PiBzdXBwbGllcjpwaHk6cGh5LWZmNzcwMDAwLnN5c2NvbjpwY2llLXBoeS44Cj4gPiA+ID4gPiBz
dXBwbGllcjpwbGF0Zm9ybTpmZjc3MDAwMC5zeXNjb246cGNpZS1waHkKPiA+ID4gPiA+IHN1cHBs
aWVyOnBsYXRmb3JtOmZmNzgwMDAwLmdwaW8KPiA+ID4gPiA+IHN1cHBsaWVyOnBsYXRmb3JtOnBp
bmN0cmwKPiA+ID4gPiA+IHN1cHBsaWVyOnBsYXRmb3JtOnBwMzMwMC13aWZpLWJ0Cj4gPiA+ID4g
PiBzdXBwbGllcjpwbGF0Zm9ybTpwcDkwMC1hcAo+ID4gPiA+ID4gc3VwcGxpZXI6cGxhdGZvcm06
d2xhbi1wZC1uCj4gPiA+ID4gPiBzdXBwbGllcjpyZWd1bGF0b3I6cmVndWxhdG9yLjE3Cj4gPiA+
ID4gPiBzdXBwbGllcjpyZWd1bGF0b3I6cmVndWxhdG9yLjIzCj4gPiA+ID4gPiBzdXBwbGllcjpy
ZWd1bGF0b3I6cmVndWxhdG9yLjI1Cj4gPiA+ID4gPiB1ZXZlbnQKPiA+ID4gPiA+Cj4gPiA+ID4g
PiBXaGF0IGRvZXMgdGhhdCBtZWFuPwo+ID4gPiA+Cj4gPiA+ID4gd2FpdGluZ19mb3Jfc3VwcGxp
ZXIgbWVhbnMgdGhhdCBzb21lIHN1cHBsaWVyIGhhcyBub3QgeWV0IHByb2JlZAo+ID4gPiA+IGFu
ZCB0aHVzIHRoZSBkcml2ZXIgYWxzbyBjYW5ub3QgcHJvYmUgeWV0Lgo+ID4gPiA+Cj4gPiA+ID4g
QnV0IHlvdXIgNi4xMy1yYzIgc3VwcGxpZXIgbGlzdCBkb2VzIGxvb2sgd2F5IHRvbyBzaG9ydC4g
SW4gbXkgYm9vdCBvbgo+ID4gPiA+IHJrMzM5OS1wdW1hLWhhaWtvdSBhYm92ZSwgSSBnb3Q6Cj4g
PiA+ID4KPiA+ID4gPiAkIGxzIC9zeXMvZGV2aWNlcy9wbGF0Zm9ybS9mODAwMDAwMC5wY2llCj4g
PiA+ID4gZHJpdmVyCj4gPiA+ID4gZHJpdmVyX292ZXJyaWRlCj4gPiA+ID4gbW9kYWxpYXMKPiA+
ID4gPiBvZl9ub2RlCj4gPiA+ID4gcGNpMDAwMDowMAo+ID4gPiA+IHBvd2VyCj4gPiA+ID4gc3Vi
c3lzdGVtCj4gPiA+ID4gc3VwcGxpZXI6cGh5OnBoeS1mZjc3MDAwMC5zeXNjb246cGNpZS1waHku
Mgo+ID4gPiA+IHN1cHBsaWVyOnBoeTpwaHktZmY3NzAwMDAuc3lzY29uOnBjaWUtcGh5LjMKPiA+
ID4gPiBzdXBwbGllcjpwaHk6cGh5LWZmNzcwMDAwLnN5c2NvbjpwY2llLXBoeS40Cj4gPiA+ID4g
c3VwcGxpZXI6cGh5OnBoeS1mZjc3MDAwMC5zeXNjb246cGNpZS1waHkuNQo+ID4gPiA+IHN1cHBs
aWVyOnBsYXRmb3JtOmZmNzcwMDAwLnN5c2NvbjpwY2llLXBoeQo+ID4gPiA+IHN1cHBsaWVyOnBs
YXRmb3JtOmZmNzkwMDAwLmdwaW8KPiA+ID4gPiBzdXBwbGllcjpwbGF0Zm9ybTpwaW5jdHJsCj4g
PiA+ID4gc3VwcGxpZXI6cGxhdGZvcm06cmVndWxhdG9yLWRjLTEydgo+ID4gPiA+IHN1cHBsaWVy
OnBsYXRmb3JtOnJlZ3VsYXRvci12Y2MzdjMtYmFzZWJvYXJkCj4gPiA+ID4gc3VwcGxpZXI6cGxh
dGZvcm06cmVndWxhdG9yLXZjY2EtMHY5Cj4gPiA+ID4gc3VwcGxpZXI6cGxhdGZvcm06cmVndWxh
dG9yLXZjY2EtMXY4Cj4gPiA+ID4gc3VwcGxpZXI6cmVndWxhdG9yOnJlZ3VsYXRvci4xMAo+ID4g
PiA+IHN1cHBsaWVyOnJlZ3VsYXRvcjpyZWd1bGF0b3IuMTEKPiA+ID4gPiBzdXBwbGllcjpyZWd1
bGF0b3I6cmVndWxhdG9yLjI5Cj4gPiA+ID4gc3VwcGxpZXI6cmVndWxhdG9yOnJlZ3VsYXRvci4z
Cj4gPiA+ID4gdWV2ZW50Cj4gPiA+Cj4gPiA+IEp1c3QgdGVzdGVkIDYuMTMtcmMyIHdpdGggdGhl
IERUQiBmcm9tIDYuMTIuMyBhbmQgaXQgd29ya3MgZmluZS4gU28sCj4gPiA+IGl0IGlzIGEgRFQg
aXNzdWUuCj4gPiA+IEkgc3VzcGVjdCB0aGlzIGNvbW1pdCBtYXkgYmUgdGhlIHJvb3QgY2F1c2U6
Cj4gPiA+IDVjOTZlNjMzMDE5NzhmNDY1N2M5MDgyYzU1YTA2Njc2M2M4ZGI3YjEKPiA+ID4gYXJt
NjQ6IGR0czogcm9ja2NoaXA6IGFkYXB0IHJlZ3VsYXRvciBub2RlbmFtZXMgdG8gcHJlZmVycmVk
IGZvcm0KPiA+Cj4gPiAoQWRkZWQ6IEpvaGFuIEpvbmtlcikKPiA+Cj4gPiBUaGUgNi4xMy1yYzIg
a2VybmVsIHdpdGggNWM5NmU2MzMwMTk3OGY0NjU3YzkwODJjNTVhMDY2NzYzYzhkYjdiMQo+ID4g
cmV2ZXJ0ZWQgd29ya3MgZmluZSwgaSd2ZSBqdXN0IHRlc3RlZCB0aGF0IHRvIGNvbmZpcm0uCj4K
PiB0aG91Z2ggaW50ZXJlc3RpbmdseSwgaW4gbXkgdGVzdCB5ZXN0ZXJkYXkgSSB1c2VkIDYuMTMt
cmMyIGtlcm5lbCBidXQKPiBpbmNsdWRpbmcgdGhlIDYuMTMtcmMyIGRldmljZXRyZWUgYnVpbHQg
ZnJvbSB0aGVyZS4gU28gdGhhdCBkb2VzIG5vdCBzZWVtCj4gdG8gYmUgYSBnZW5lcmFsIHByb2Js
ZW0sIGJ1dCBtb3JlIGxpbWl0ZWQgdG8gc29tZSBib2FyZHMuCj4KPiBXaGF0IGJvYXJkIGFyZSB5
b3UgdXNpbmc/CgpUaGUgcmszMzk5LWdydS1rZXZpbiBjaHJvbWVib29rLgpUaGUgd2lmaSBjYXJk
IGlzIGNvbm5lY3RlZCB0byB0aGUgUENJZSBidXMuCgo+IEhlaWtvCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
